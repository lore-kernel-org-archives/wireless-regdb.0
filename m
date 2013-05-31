Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x233.google.com ([2607:f8b0:400e:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpq-0005gZ-AD
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:55 +0000
Received: by mail-pb0-f51.google.com with SMTP id jt11so1383820pbb.38 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=dRkHQnrSR2kL8Rt3v4Qe2yHYThaNcnzBXid2iti20RI=;
 b=XyzWMl7tpXG3xNYFAXwCnvAR+b+0rc8hdXVJ+OdLniYcNC24fnwWClM/Mx/VmbYScg
 Uj4S07aJdGuTM8KX5938CUbaizV7v9no37RFCz5oJo5f4Kl7K7W6aCfZ/V/dsgym3dvi
 SuPXC0ecG+vZ8opKgIPsHwR+X351vZqGxiP05UnHwC2VDC/kLQKT7qpl5yAIJfbgJUY/
 G4SByyVPB8BccNFAuK0sXf9oU357N7TbwUaAwZNy1LfxE5WsFoezxsuFwQxrQ6r/xmEj
 uK4niTgdiuKmcNYAbp5swtvPAcVxhzC7cI2hKKOME5cS2L837czB5GTS4DSzRGB1QfEj i+xQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:29 -0700
Message-Id: <1369966169-23640-41-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 40/40] crda: make
 reglib_for_each_country() use the reglib context
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

This allows users of reglib to iterate over the regdb
with just one open() and mmap() to be kept sharing as
much code as possible. This makes the regdbdump and
intersection code use the context therefore sharing
all that boiler plate code.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   15 +++++++++++++--
 regdbdump.c |   28 ++++++++++++++--------------
 reglib.c    |   23 +++++++++--------------
 reglib.h    |   11 ++++++-----
 4 files changed, 42 insertions(+), 35 deletions(-)

diff --git a/intersect.c b/intersect.c
index 56d0d35..ae9ca1b 100644
--- a/intersect.c
+++ b/intersect.c
@@ -8,21 +8,32 @@
 
 int main(int argc, char **argv)
 {
+	const struct reglib_regdb_ctx *ctx;
 	const struct ieee80211_regdomain *rd;
 
 	if (argc != 2) {
-		fprintf(stderr, "You must specify a file\n");
+		fprintf(stderr, "Usage: %s <regulatory-binary-file>\n", argv[0]);
 		return -EINVAL;
 	}
 
-	rd = reglib_intersect_regdb(argv[1]);
+	ctx = reglib_malloc_regdb_ctx(argv[1]);
+	if (!ctx) {
+		fprintf(stderr, "Invalid or empty regulatory file, note: "
+			"a binary regulatory file should be used.\n");
+		return -EINVAL;
+	}
+
+	rd = reglib_intersect_regdb(ctx);
 	if (!rd) {
 		fprintf(stderr, "Intersection not possible\n");
+		reglib_free_regdb_ctx(ctx);
 		return -ENOENT;
 	}
 
 	reglib_print_regdom(rd);
+
 	free((struct ieee80211_regdomain *) rd);
 
+	reglib_free_regdb_ctx(ctx);
 	return 0;
 }
diff --git a/regdbdump.c b/regdbdump.c
index edf3e7c..cc7eb85 100644
--- a/regdbdump.c
+++ b/regdbdump.c
@@ -2,35 +2,35 @@
 #include <errno.h>
 #include "reglib.h"
 
-static int reglib_regdbdump(char *regdb_file)
+static void reglib_regdbdump(const struct reglib_regdb_ctx *ctx)
 {
 	const struct ieee80211_regdomain *rd = NULL;
 	unsigned int idx = 0;
 
-	reglib_for_each_country(rd, idx, regdb_file) {
+	reglib_for_each_country(rd, idx, ctx) {
 		reglib_print_regdom(rd);
 		free((struct ieee80211_regdomain *) rd);
 	}
-
-	if (!idx) {
-		fprintf(stderr, "Invalid or empty regulatory file, note: "
-		       "a binary regulatory file should be used.\n");
-		return -EINVAL;
-	}
-
-	return 0;
 }
 
 int main(int argc, char **argv)
 {
-	int r;
+	const struct reglib_regdb_ctx *ctx;
 
 	if (argc != 2) {
 		fprintf(stderr, "Usage: %s <regulatory-binary-file>\n", argv[0]);
-		return 2;
+		return -EINVAL;
+	}
+
+	ctx = reglib_malloc_regdb_ctx(argv[1]);
+	if (!ctx) {
+		fprintf(stderr, "Invalid or empty regulatory file, note: "
+			"a binary regulatory file should be used.\n");
+		return -EINVAL;
 	}
 
-	r = reglib_regdbdump(argv[1]);
+	reglib_regdbdump(ctx);
+	reglib_free_regdb_ctx(ctx);
 
-	return r;
+	return 0;
 }
diff --git a/reglib.c b/reglib.c
index ff05aaa..c4d00f8 100644
--- a/reglib.c
+++ b/reglib.c
@@ -336,28 +336,19 @@ country2rd(const struct reglib_regdb_ctx *ctx,
 }
 
 const struct ieee80211_regdomain *
-reglib_get_rd_idx(unsigned int idx, const char *file)
+reglib_get_rd_idx(unsigned int idx, const struct reglib_regdb_ctx *ctx)
 {
-	const struct reglib_regdb_ctx *ctx;
 	struct regdb_file_reg_country *country;
-	const struct ieee80211_regdomain *rd = NULL;
 
-	ctx = reglib_malloc_regdb_ctx(file);
 	if (!ctx)
 		return NULL;
 
 	if (idx >= ctx->num_countries)
-		goto out;
+		return NULL;
 
 	country = ctx->countries + idx;
 
-	rd = country2rd(ctx, country);
-	if (!rd)
-		goto out;
-
-out:
-	reglib_free_regdb_ctx(ctx);
-	return rd;
+	return country2rd(ctx, country);
 }
 
 const struct ieee80211_regdomain *
@@ -552,14 +543,18 @@ reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
 	return rd;
 }
 
-const struct ieee80211_regdomain *reglib_intersect_regdb(char *regdb_file)
+const struct ieee80211_regdomain *
+reglib_intersect_regdb(const struct reglib_regdb_ctx *ctx)
 {
 	const struct ieee80211_regdomain *rd;
 	struct ieee80211_regdomain *prev_rd_intsct = NULL, *rd_intsct = NULL;
 	int intersected = 0;
 	unsigned int idx = 0;
 
-	reglib_for_each_country(rd, idx, regdb_file) {
+	if (!ctx)
+		return NULL;
+
+	reglib_for_each_country(rd, idx, ctx) {
 		if (reglib_is_world_regdom((const char *) rd->alpha2)) {
 			free((struct ieee80211_regdomain *) rd);
 			continue;
diff --git a/reglib.h b/reglib.h
index f1bd6b8..86087e3 100644
--- a/reglib.h
+++ b/reglib.h
@@ -139,12 +139,12 @@ const struct reglib_regdb_ctx *reglib_malloc_regdb_ctx(const char *regdb_file);
 void reglib_free_regdb_ctx(const struct reglib_regdb_ctx *regdb_ctx);
 
 const struct ieee80211_regdomain *
-reglib_get_rd_idx(unsigned int idx, const char *file);
+reglib_get_rd_idx(unsigned int idx, const struct reglib_regdb_ctx *ctx);
 
-#define reglib_for_each_country(__rd, __idx, __file)		\
-	for (__rd = reglib_get_rd_idx(__idx, __file);		\
+#define reglib_for_each_country(__rd, __idx, __ctx)		\
+	for (__rd = reglib_get_rd_idx(__idx, __ctx);		\
 	     __rd != NULL;					\
-	     __rd = reglib_get_rd_idx(++__idx, __file))		\
+	     __rd = reglib_get_rd_idx(++__idx, __ctx))		\
 
 const struct ieee80211_regdomain *
 reglib_get_rd_alpha2(const char *alpha2, const char *file);
@@ -166,6 +166,7 @@ reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
  * to find rules that fit all regulatory domains it return a regulatory
  * domain with such rules otherwise it returns NULL.
  */
-const struct ieee80211_regdomain *reglib_intersect_regdb(char *regdb_file);
+const struct ieee80211_regdomain *
+reglib_intersect_regdb(const struct reglib_regdb_ctx *ctx);
 
 #endif
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

