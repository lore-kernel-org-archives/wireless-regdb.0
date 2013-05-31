Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f177.google.com ([209.85.192.177])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEoN-0005Si-Vz
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:24 +0000
Received: by mail-pd0-f177.google.com with SMTP id u11so1382604pdi.36 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=pzxywYOPyhrsm/NE4xmxKStbFq8nwacbLEah2erPeYg=;
 b=xIoRLwuw/ya06kSAt1BBg+88f4C1U/1J9Zb7DBLKNy8Kb4SJtyxEhE/Xqrxa5dSfhh
 N4saylMYo2Y6eLm4TLDbOHi0h2r2/Ym76TBs7ZdFRwxobW39mLV0z7E52pU41FZFd7I5
 3H17eZveQJ4bNMcsrB5MOnhG+Ed92nzHvWedEWmdgCgdY+hGYJT8V4uzFtBJGfSkllZ6
 xSmMiYbhSb35lv+bIVSZT9HyVa6hirMvqEuEE6Zy0OGBkc9uILrB75hT9B1GIIAghmXP
 1MBT0s2hUj7qzzgGt1roZWKmQqWG3WHs0GvjbaSnvi5SJLirZOlXvevSiP2kx3jaGMri JbdQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:07 -0700
Message-Id: <1369966169-23640-19-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 18/40] crda: rename world and prev_world
 on intersect.c
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

The assumption was that intersect.c was creating a world
regulatory domain for by doing an intersection of all
regulatory domains. This is technically still true however
it does not add passive scan flag'd frequency ranges and
as such to be precise lets just rename the "world" and
"prev_world" variables as intersection variables.

This change introduces no functional changes.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   44 ++++++++++++++++++++++----------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/intersect.c b/intersect.c
index 970f4db..7903dd7 100644
--- a/intersect.c
+++ b/intersect.c
@@ -13,7 +13,7 @@ int main(int argc, char **argv)
 {
 	int r = 0;
 	const struct ieee80211_regdomain *rd;
-	struct ieee80211_regdomain *prev_world = NULL, *world = NULL;
+	struct ieee80211_regdomain *prev_rd_intsct = NULL, *rd_intsct = NULL;
 	int intersected = 0;
 	unsigned int idx = 0;
 
@@ -29,19 +29,19 @@ int main(int argc, char **argv)
 			continue;
 		}
 
-		if (!prev_world) {
-			prev_world = (struct ieee80211_regdomain *) rd;
+		if (!prev_rd_intsct) {
+			prev_rd_intsct = (struct ieee80211_regdomain *) rd;
 			continue;
 		}
 
-		if (world) {
-			free(prev_world);
-			prev_world = (struct ieee80211_regdomain *) world;
+		if (rd_intsct) {
+			free(prev_rd_intsct);
+			prev_rd_intsct = (struct ieee80211_regdomain *) rd_intsct;
 		}
 
-		world = regdom_intersect(prev_world, rd);
-		if (!world) {
-			free(prev_world);
+		rd_intsct = regdom_intersect(prev_rd_intsct, rd);
+		if (!rd_intsct) {
+			free(prev_rd_intsct);
 			free((struct ieee80211_regdomain *) rd);
 			fprintf(stderr, "Intersection not possible\n");
 			return -ENOENT;
@@ -50,20 +50,20 @@ int main(int argc, char **argv)
 		if (intersected)
 			/* Use UTF-8 Intersection symbol ? (0xE2,0x88,0xA9) :) */
 			printf("WW (%d) intersect %c%c (%d) ==> %d rules\n",
-				prev_world->n_reg_rules,
+				prev_rd_intsct->n_reg_rules,
 				rd->alpha2[0],
 				rd->alpha2[1],
 				rd->n_reg_rules,
-				world->n_reg_rules);
+				rd_intsct->n_reg_rules);
 		else
 			printf("%c%c (%d) intersect %c%c (%d) ==> %d rules\n",
-				prev_world->alpha2[0],
-				prev_world->alpha2[1],
-				prev_world->n_reg_rules,
+				prev_rd_intsct->alpha2[0],
+				prev_rd_intsct->alpha2[1],
+				prev_rd_intsct->n_reg_rules,
 				rd->alpha2[0],
 				rd->alpha2[1],
 				rd->n_reg_rules,
-				world->n_reg_rules);
+				rd_intsct->n_reg_rules);
 		intersected++;
 		free((struct ieee80211_regdomain *) rd);
 	}
@@ -77,26 +77,26 @@ int main(int argc, char **argv)
 	if (intersected > 1)
 		printf("%d regulatory domains intersected\n", intersected);
 	else {
-		world = prev_world;
-		prev_world = NULL;
+		rd_intsct = prev_rd_intsct;
+		prev_rd_intsct = NULL;
 		printf("No intersections completed\n");
 		if (idx > 1) {
 			printf("Since more than one regulatory domain is "
 			       "present and no intersections were possible "
 			       "no globally allowed spectrum is possible so "
 			       "consider enabling passive scan flags\n");
-			free(world);
+			free(rd_intsct);
 			return r;
 		}
 	}
 
-	if (prev_world)
-		free(prev_world);
+	if (prev_rd_intsct)
+		free(prev_rd_intsct);
 
 	/* Tada! */
 	printf("== World regulatory domain: ==\n");
-	print_regdom(world);
+	print_regdom(rd_intsct);
 
-	free(world);
+	free(rd_intsct);
 	return r;
 }
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

