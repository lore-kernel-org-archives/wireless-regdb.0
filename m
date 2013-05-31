Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f178.google.com ([209.85.192.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEoS-0005T6-Ti
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:29 +0000
Received: by mail-pd0-f178.google.com with SMTP id w11so1378735pde.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=NND/x5JCGzpkiWHHbWQumqm+H5wh3D78cB+MIbxQeX8=;
 b=zdoN4JWo7vM2b4JqaK7vxpbPnyP0tMs5Bo0FuCColb8DLy1XzwI7o1YaQ90F9TrMmQ
 SngGyINH+OhPkgWD3YWoF2yx5bSpKOIT+Zx6HBFtFLmbJRE+UKThjrlQtbsggV5vanOs
 Nr3yH6nw9/y9YJXHl66sc7rMFjxFn9BSFxRUVLIpQFq4FZz1XB4sK3DfEs/w2hl7Jk9f
 qDC6xDq0esDtiadd8RKP+oYK2T8pCc/oatTq30T5BN3cHoMW4wDIpX1mffhmGvr6mqU8
 2YwU8dpEYWh05wCPwsUB+/s4sUaoE6eUgOGujByHfCg2mPvbXvlqbonaH+HQIAde21ve dLkQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:08 -0700
Message-Id: <1369966169-23640-20-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 19/40] crda: remove verbosity out of
	intersect.c
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

No need for such much verbosity, additionally,
we'll move this eventually to reglib.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   33 +++------------------------------
 1 file changed, 3 insertions(+), 30 deletions(-)

diff --git a/intersect.c b/intersect.c
index 7903dd7..bce7eb3 100644
--- a/intersect.c
+++ b/intersect.c
@@ -43,48 +43,21 @@ int main(int argc, char **argv)
 		if (!rd_intsct) {
 			free(prev_rd_intsct);
 			free((struct ieee80211_regdomain *) rd);
-			fprintf(stderr, "Intersection not possible\n");
 			return -ENOENT;
 		}
 
-		if (intersected)
-			/* Use UTF-8 Intersection symbol ? (0xE2,0x88,0xA9) :) */
-			printf("WW (%d) intersect %c%c (%d) ==> %d rules\n",
-				prev_rd_intsct->n_reg_rules,
-				rd->alpha2[0],
-				rd->alpha2[1],
-				rd->n_reg_rules,
-				rd_intsct->n_reg_rules);
-		else
-			printf("%c%c (%d) intersect %c%c (%d) ==> %d rules\n",
-				prev_rd_intsct->alpha2[0],
-				prev_rd_intsct->alpha2[1],
-				prev_rd_intsct->n_reg_rules,
-				rd->alpha2[0],
-				rd->alpha2[1],
-				rd->n_reg_rules,
-				rd_intsct->n_reg_rules);
 		intersected++;
 		free((struct ieee80211_regdomain *) rd);
 	}
 
-	if (!idx) {
-		printf("Invalid or empty regulatory file, note: "
-		       "a binary regulatory file should be used.\n");
+	if (!idx)
 		return -EINVAL;
-	}
 
-	if (intersected > 1)
-		printf("%d regulatory domains intersected\n", intersected);
-	else {
+	if (intersected <= 0) {
 		rd_intsct = prev_rd_intsct;
 		prev_rd_intsct = NULL;
-		printf("No intersections completed\n");
 		if (idx > 1) {
-			printf("Since more than one regulatory domain is "
-			       "present and no intersections were possible "
-			       "no globally allowed spectrum is possible so "
-			       "consider enabling passive scan flags\n");
+			r = -ENOENT;
 			free(rd_intsct);
 			return r;
 		}
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

