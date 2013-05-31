Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x234.google.com ([2607:f8b0:400e:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEof-0005V4-5B
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:41 +0000
Received: by mail-pb0-f52.google.com with SMTP id xa12so1391089pbc.11 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=5Nv1kj/+ZV0aZA76+HoIWSZshT5NtmQSFz2LQ67QcUs=;
 b=rdJbWkKJanUMelDr0egmeT8+z4qc83JaMwtcL3XqM6zTjsPaCMqkchhRatqLMrQUkT
 1kkpVl0RkRfrkGY/1uEFKWeNIx5wkLkFBJTY9GkiS9P9P4eTRRTU7yX17H3YOQzyH9Lv
 Sm4EB1ASj5bqw+XKNf1aIfWiINPdueTKN1r47yim4xt+gDURKyMTGRFnXgGWwkz6gex1
 WlLamceuwV0M1iLDlISZ8OLUTJ+6y4A6qWHDGHCwUGIY/HOIUKITVcxjTNMBH7n2w65/
 r9BL3bIgtJPEFScwdWeRbOyc2oHbzzcXQMWbr6JeI57yRDQeQgMgVfiaLPFWzfhHW3A5 eitQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:11 -0700
Message-Id: <1369966169-23640-23-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 22/40] crda: rename
	crda_verify_db_signature() to reglib_verify_db_signature()
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

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |   12 ++++++------
 reglib.h |    2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/reglib.c b/reglib.c
index a957f0e..316e201 100644
--- a/reglib.c
+++ b/reglib.c
@@ -50,7 +50,7 @@ void *reglib_get_file_ptr(uint8_t *db, int dblen, int structlen, uint32_t ptr)
 }
 
 /*
- * crda_verify_db_signature():
+ * reglib_verify_db_signature():
  *
  * Checks the validity of the signature found on the regulatory
  * database against the array 'keys'. Returns 1 if there exists
@@ -59,7 +59,7 @@ void *reglib_get_file_ptr(uint8_t *db, int dblen, int structlen, uint32_t ptr)
  */
 
 #ifdef USE_OPENSSL
-int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
+int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen)
 {
 	RSA *rsa;
 	uint8_t hash[SHA_DIGEST_LENGTH];
@@ -118,7 +118,7 @@ out:
 #endif /* USE_OPENSSL */
 
 #ifdef USE_GCRYPT
-int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
+int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen)
 {
 	gcry_mpi_t mpi_e, mpi_n;
 	gcry_sexp_t rsa, signature, data;
@@ -180,7 +180,7 @@ out:
 #endif /* USE_GCRYPT */
 
 #if !defined(USE_OPENSSL) && !defined(USE_GCRYPT)
-int crda_verify_db_signature(uint8_t *db, int dblen, int siglen)
+int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen)
 {
 	return 1;
 }
@@ -295,7 +295,7 @@ reglib_get_rd_idx(unsigned int idx, const char *file)
 		goto out;
 
 	/* verify signature */
-	if (!crda_verify_db_signature(db, dblen, siglen))
+	if (!reglib_verify_db_signature(db, dblen, siglen))
 		goto out;
 
 	num_countries = ntohl(header->reg_country_num);
@@ -366,7 +366,7 @@ reglib_get_rd_alpha2(const char *alpha2, const char *file)
 		goto out;
 
 	/* verify signature */
-	if (!crda_verify_db_signature(db, dblen, siglen))
+	if (!reglib_verify_db_signature(db, dblen, siglen))
 		goto out;
 
 	num_countries = ntohl(header->reg_country_num);
diff --git a/reglib.h b/reglib.h
index 3510889..2f49a32 100644
--- a/reglib.h
+++ b/reglib.h
@@ -71,7 +71,7 @@ static inline uint32_t min(uint32_t a, uint32_t b)
 }
 
 void *reglib_get_file_ptr(uint8_t *db, int dblen, int structlen, uint32_t ptr);
-int crda_verify_db_signature(uint8_t *db, int dblen, int siglen);
+int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen);
 
 const struct ieee80211_regdomain *
 reglib_get_rd_idx(unsigned int idx, const char *file);
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

