Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEoJ-0005Rb-EW
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:19 +0000
Received: by mail-pb0-f44.google.com with SMTP id wz12so1400277pbc.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=n8DG+lCvzn9oTRFpKgTtW3GPBV5grpOIUy+fqmTgw/Q=;
 b=TPvEeEVs0SMAgiutcPs8Zsbzk8s1yeCs8dh7uDbKxqct9DiN2Thv8VWHCTje9yAoES
 WrX+tq5yYKYWLseDwsZo2HkCxqTjYiczbXNDctJLQTXpOChskYk0tEQA53Qa5LaRBM1U
 4ZdirxKSdn2ylM3eVhG5RAMkg7mmxbKge18gYn37z3BZkmZS2KBL3iuYVJUS2ojKj8nz
 i9Iu/r2W8IglaqtcpRaNrMpawHpa71+Io5InRqLKLOOtsKYjwcuKVd33RXKlJC+kvXj6
 KSk6J/2bOU3wmVYRvkVP5mrQ3vDdqQJ01hKXZFnbkD67yWID8cOaKGh99rw+PNvXQS8W Zw1A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:06 -0700
Message-Id: <1369966169-23640-18-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 17/40] crda: use gcry_mpi_release() when
	using gcry_mpi_scan()
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

Its not well documented you should do this but I found out
through valgrind. This fixes the last 4 valgrind issues
I was seeing with regdbdump.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/reglib.c b/reglib.c
index 3d13782..72ea78f 100644
--- a/reglib.c
+++ b/reglib.c
@@ -158,10 +158,14 @@ int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
 				    "(public-key (rsa (n %m) (e %m)))",
 				    mpi_n, mpi_e)) {
 			fprintf(stderr, "Failed to build RSA S-expression.\n");
+			gcry_mpi_release(mpi_e);
+			gcry_mpi_release(mpi_n);
 			goto out;
 		}
 
 		ok = gcry_pk_verify(signature, data, rsa) == 0;
+		gcry_mpi_release(mpi_e);
+		gcry_mpi_release(mpi_n);
 		gcry_sexp_release(rsa);
 	}
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

