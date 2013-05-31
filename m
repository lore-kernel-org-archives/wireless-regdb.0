Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEoC-0005QP-UK
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:15 +0000
Received: by mail-pb0-f48.google.com with SMTP id md4so1382816pbc.35 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=1FComLDdctaGNgMOiVA6ABW/fBqEyd5b0R6BnBiRmBE=;
 b=SMNAlB2viN4u8YkaUa7HWBsNyw/v7ovQ4y54gPtQn9jUM2gpMTuoE0DK1YKfnOhr4x
 0A8jTP6zX1FDe0ltgcg0myk7x5dpbs7hAfQE4YqS0L06sW/HCB+v/FrGFZzsPl5Jw5VS
 eLjw/V4XXmBD78FT9Wh/6LBQnBNm0AQ9zy6pttbn1zKXLCxKrn9B6DwcaCz+LeyOywNf
 33TWz3P8US2tzuhrxOdb44qNOoZnIeWOwEDbFjob5IWxtShiACqz3BUwEg/uH5S9tNhC
 SwuJNDXsb1xjyT9bo62m/vFSMBRuqyeTzhA6T2sYlolPTwt6oMVTcSCNvqMtcjBqKDgy WKRA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:04 -0700
Message-Id: <1369966169-23640-16-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 15/40] crda: use gcry_sexp_release() on
	crda_verify_db_signature()
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This fixes 6 of 10 reported valgrind errors when
crda_verify_db_signature() is used through regdbdump.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/reglib.c b/reglib.c
index 17e3f31..634525b 100644
--- a/reglib.c
+++ b/reglib.c
@@ -135,13 +135,14 @@ int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
 	if (gcry_sexp_build(&data, NULL, "(data (flags pkcs1) (hash sha1 %b))",
 			    20, hash)) {
 		fprintf(stderr, "Failed to build data S-expression.\n");
-		goto out;
+		return ok;
 	}
 
 	if (gcry_sexp_build(&signature, NULL, "(sig-val (rsa (s %b)))",
 			    siglen, db + dblen)) {
 		fprintf(stderr, "Failed to build signature S-expression.\n");
-		goto out;
+		gcry_sexp_release(data);
+		return ok;
 	}
 
 	for (i = 0; (i < sizeof(keys)/sizeof(keys[0])) && (!ok); i++) {
@@ -161,12 +162,15 @@ int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
 		}
 
 		ok = gcry_pk_verify(signature, data, rsa) == 0;
+		gcry_sexp_release(rsa);
 	}
 
 	if (!ok)
 		fprintf(stderr, "Database signature verification failed.\n");
 
 out:
+	gcry_sexp_release(data);
+	gcry_sexp_release(signature);
 	return ok;
 }
 #endif /* USE_GCRYPT */
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

