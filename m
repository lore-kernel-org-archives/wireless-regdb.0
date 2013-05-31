Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x236.google.com ([2607:f8b0:400e:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpZ-0005dc-9v
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:37 +0000
Received: by mail-pb0-f54.google.com with SMTP id ro12so1390184pbb.27 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=JE0osr0QNNb1YgieZRh+UqkPpoGPcSSWjNFfq+h9IOA=;
 b=meeRQIm6emA+7Q8MPa+JUegT933czAk8QXMTD3DzoqivqEUrIyijb2u9KLs565vwNG
 VY1vI4mTz63yWYv1Iizvx+1ZWHZ9tXTVG9PrQ5MKHp7A1uZqYuPWQ2zQ6V+oU5Vy9hdw
 5TwPZ9lDsmJrwDn+QoeaTZzWPVv3dH5LIJmixDTwnS3QHRWx9DrZ+iQMhhhEhemeC2Ta
 qIbx9WTESH4GwMST1hUYPrc5jS1v1xCJa13CeU8ks23YEJMe0vpTzb3ZoRZas32WGhY6
 OIH1MH5aOPARkuvVdxaHbq0pGuhTtcfc6OoFIgWUxGAPzNQUQ6GTsnUEgTo+2zOJpleN 1ikQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:24 -0700
Message-Id: <1369966169-23640-36-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 35/40] crda: separate intersecting a full
	db into a helper
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

This should make it easier to review the code and allow
us to stuff it next into reglib. This has no real functional
changes except that of returning NULL in case of any failure
while reading the regdb.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   58 +++++++++++++++++++++++++++++++++++++---------------------
 1 file changed, 37 insertions(+), 21 deletions(-)

diff --git a/intersect.c b/intersect.c
index baca5f1..b9e3429 100644
--- a/intersect.c
+++ b/intersect.c
@@ -6,24 +6,25 @@
 
 #include "reglib.h"
 
-/* Intersects regulatory domains, this will skip any regulatory marked with
- * an alpha2 of '00', which is used to indicate a world regulatory domain */
-
-int main(int argc, char **argv)
+/**
+ * reglib_intersect_regdb - intersects a regulatory database
+ *
+ * @regdb_file: the regulatory database to intersect
+ *
+ * Goes through an entire regulatory database and intersects all regulatory
+ * domains. This will skip any regulatory marked with an alpha2 of '00', which
+ * is used to indicate a world regulatory domain. If intersection is able
+ * to find rules that fit all regulatory domains it return a regulatory
+ * domain with such rules otherwise it returns NULL.
+ */
+const struct ieee80211_regdomain *reglib_intersect_regdb(char *regdb_file)
 {
-	int r = 0;
 	const struct ieee80211_regdomain *rd;
 	struct ieee80211_regdomain *prev_rd_intsct = NULL, *rd_intsct = NULL;
 	int intersected = 0;
 	unsigned int idx = 0;
 
-	if (argc != 2) {
-		fprintf(stderr, "You must specify a file\n");
-		return -EINVAL;
-	}
-
-	/* We intersect only when we have to rd structures ready */
-	reglib_for_each_country(rd, idx, argv[1]) {
+	reglib_for_each_country(rd, idx, regdb_file) {
 		if (reglib_is_world_regdom((const char *) rd->alpha2)) {
 			free((struct ieee80211_regdomain *) rd);
 			continue;
@@ -43,7 +44,7 @@ int main(int argc, char **argv)
 		if (!rd_intsct) {
 			free(prev_rd_intsct);
 			free((struct ieee80211_regdomain *) rd);
-			return -ENOENT;
+			return NULL;
 		}
 
 		intersected++;
@@ -51,25 +52,40 @@ int main(int argc, char **argv)
 	}
 
 	if (!idx)
-		return -EINVAL;
+		return NULL;
 
 	if (intersected <= 0) {
 		rd_intsct = prev_rd_intsct;
 		prev_rd_intsct = NULL;
 		if (idx > 1) {
-			r = -ENOENT;
 			free(rd_intsct);
-			return r;
+			return NULL;
 		}
 	}
 
 	if (prev_rd_intsct)
 		free(prev_rd_intsct);
 
-	/* Tada! */
-	printf("Intersected regulatory domain:\n");
-	reglib_print_regdom(rd_intsct);
+	return rd_intsct;
+}
+
+int main(int argc, char **argv)
+{
+	const struct ieee80211_regdomain *rd;
+
+	if (argc != 2) {
+		fprintf(stderr, "You must specify a file\n");
+		return -EINVAL;
+	}
+
+	rd = reglib_intersect_regdb(argv[1]);
+	if (!rd) {
+		fprintf(stderr, "Intersection not possible\n");
+		return -ENOENT;
+	}
+
+	reglib_print_regdom(rd);
+	free((struct ieee80211_regdomain *) rd);
 
-	free(rd_intsct);
-	return r;
+	return 0;
 }
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

