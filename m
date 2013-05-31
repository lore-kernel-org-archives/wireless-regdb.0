Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x231.google.com ([2607:f8b0:400e:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnu-0005OJ-Ou
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:55 +0000
Received: by mail-pb0-f49.google.com with SMTP id rp8so1388155pbb.36 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=J28UC6JClXR7wpdK7l6W9ArHrq9f/5xG1MD5poFo96U=;
 b=m3lUgaBtQnNM3sq3VMXYAub5KL7FO3/nj8kcDph6MVBCQqEQAAN+rPnTOhfSikCNOp
 noNF8aSpRZyEMBlD+QqyT0EifcYQOTIorEb/V1PGfDzhIGNCo2iPqDz4Z+Z0L/ttTmFT
 c+5WlhG6DHTi3abs6FHQkuWKfPtY6mxhDQBlAk6YQiWKf5qh4qD1R0Tlf4QXDevedx/r
 80wvF9hZlH0Bc2dL2gMsb336TlPOqqKw5jiEey5vJKzcfnnV405D+yPSED/EQV0eVjY3
 8r7TtFl78IhWY/MUnCP8MbdeS5yIEWPCxJS/Puvic0sbA0CevDrEf31jg550GQzeSH4H Ff0A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:00 -0700
Message-Id: <1369966169-23640-12-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 11/40] crda: fix intersect.c memory
	management
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

We didn't free memory in some cases, fix this and
to help with the complexity also simplify the case
where any regdom_intersect() fails by completely
failing. In such cases we need an alternative strategy
to build "world regulatory" domains.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   34 +++++++++++++---------------------
 1 file changed, 13 insertions(+), 21 deletions(-)

diff --git a/intersect.c b/intersect.c
index 169fe1a..970f4db 100644
--- a/intersect.c
+++ b/intersect.c
@@ -24,8 +24,10 @@ int main(int argc, char **argv)
 
 	/* We intersect only when we have to rd structures ready */
 	reglib_for_each_country(rd, idx, argv[1]) {
-		if (is_world_regdom((const char *) rd->alpha2))
+		if (is_world_regdom((const char *) rd->alpha2)) {
+			free((struct ieee80211_regdomain *) rd);
 			continue;
+		}
 
 		if (!prev_world) {
 			prev_world = (struct ieee80211_regdomain *) rd;
@@ -39,18 +41,10 @@ int main(int argc, char **argv)
 
 		world = regdom_intersect(prev_world, rd);
 		if (!world) {
-			/* Could be something else but we'll live with this */
-			r = -ENOMEM;
-			if (intersected)
-				fprintf(stderr, "Could not intersect world "
-					"with country (%.2s)\n",
-					rd->alpha2);
-			else
-				fprintf(stderr, "Could not intersect country (%.2s) "
-					"with country (%.2s)\n",
-					prev_world->alpha2,
-					rd->alpha2);
-			continue;
+			free(prev_world);
+			free((struct ieee80211_regdomain *) rd);
+			fprintf(stderr, "Intersection not possible\n");
+			return -ENOENT;
 		}
 
 		if (intersected)
@@ -71,6 +65,7 @@ int main(int argc, char **argv)
 				rd->n_reg_rules,
 				world->n_reg_rules);
 		intersected++;
+		free((struct ieee80211_regdomain *) rd);
 	}
 
 	if (!idx) {
@@ -83,28 +78,25 @@ int main(int argc, char **argv)
 		printf("%d regulatory domains intersected\n", intersected);
 	else {
 		world = prev_world;
+		prev_world = NULL;
 		printf("No intersections completed\n");
 		if (idx > 1) {
 			printf("Since more than one regulatory domain is "
 			       "present and no intersections were possible "
 			       "no globally allowed spectrum is possible so "
 			       "consider enabling passive scan flags\n");
+			free(world);
 			return r;
 		}
 	}
 
+	if (prev_world)
+		free(prev_world);
+
 	/* Tada! */
 	printf("== World regulatory domain: ==\n");
 	print_regdom(world);
 
-	if (!intersected) {
-		free(world);
-		return r;
-	}
-	if (intersected > 1) {
-		free((struct ieee80211_regdomain *)rd);
-		free(prev_world);
-	}
 	free(world);
 	return r;
 }
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

