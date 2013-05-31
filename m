Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x233.google.com ([2607:f8b0:400e:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEo6-0005Pi-NK
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:11 +0000
Received: by mail-pb0-f51.google.com with SMTP id jt11so1377463pbb.24 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=04zUiIEfDIGXqMF6VATP94IaRdEAIhf3kcZrMTHao0M=;
 b=q6T8KfIJA5VRxnVECwcs/h72USFX2A715+6Jd4A9m5lSBzoWlDUmrcgKL/kbEdTgeR
 KAPOR6ftdgqhe/lbQXdEZJ9B4+V/Y6IQj1rtEFo8PFyg5KV5y0FpTF0zzOkoEXrcx6mI
 jf0eRldZZvSwo4tYNJN7YBL3aEArrfOPlhWTEZrwCtbyY34nihfTr1FR0cJeUzOiKlmr
 L3sXp9ftoaKayz8wHpGUiyjC1gYcyJJmGfMI0bWPboS1noq0ADzRP7zd2ioXB3zVKFN8
 RcrKWl9b0MFnlhToo4Opq7/5w/Vb2drE+dUiyYgZGBJkJyW0ZNoxKKmX6RpVW/J9SRqO DCYg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:03 -0700
Message-Id: <1369966169-23640-15-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 14/40] crda: separate
	crda_verify_db_signature() implementations
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

This will allow us to handle the error codes more cleanly
and in a readible manner. This change should have no
functional change.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |   27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/reglib.c b/reglib.c
index cbe9676..17e3f31 100644
--- a/reglib.c
+++ b/reglib.c
@@ -50,14 +50,17 @@ void *crda_get_file_ptr(uint8_t *db, int dblen, int structlen, uint32_t ptr)
 }
 
 /*
+ * crda_verify_db_signature():
+ *
  * Checks the validity of the signature found on the regulatory
  * database against the array 'keys'. Returns 1 if there exists
  * at least one key in the array such that the signature is valid
  * against that key; 0 otherwise.
  */
+
+#ifdef USE_OPENSSL
 int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
 {
-#ifdef USE_OPENSSL
 	RSA *rsa;
 	uint8_t hash[SHA_DIGEST_LENGTH];
 	unsigned int i;
@@ -105,9 +108,18 @@ int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
 		}
 		closedir(pubkey_dir);
 	}
-#endif
+
+	if (!ok)
+		fprintf(stderr, "Database signature verification failed.\n");
+
+out:
+	return ok;
+}
+#endif /* USE_OPENSSL */
 
 #ifdef USE_GCRYPT
+int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
+{
 	gcry_mpi_t mpi_e, mpi_n;
 	gcry_sexp_t rsa, signature, data;
 	uint8_t hash[20];
@@ -150,18 +162,21 @@ int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
 
 		ok = gcry_pk_verify(signature, data, rsa) == 0;
 	}
-#endif
 
-#if defined(USE_OPENSSL) || defined(USE_GCRYPT)
 	if (!ok)
 		fprintf(stderr, "Database signature verification failed.\n");
 
 out:
 	return ok;
-#else
+}
+#endif /* USE_GCRYPT */
+
+#if !defined(USE_OPENSSL) && !defined(USE_GCRYPT)
+int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
+{
 	return 1;
-#endif
 }
+#endif
 
 static void reg_rule2rd(uint8_t *db, int dblen,
 	uint32_t ruleptr, struct ieee80211_reg_rule *rd_reg_rule)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

