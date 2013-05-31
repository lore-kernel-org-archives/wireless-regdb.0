Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnD-0005Jt-8e
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:11 +0000
Received: by mail-pb0-f44.google.com with SMTP id wz12so1398833pbc.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Xi+qxye4ED1sGG4CEYxLnAPUW3qufph23snnbLCuvsA=;
 b=dH0uMg2gWAS31MKnvdIOmmd8wzvrkqT1XkHKQ1rSKKPTNo0vBZhnHkDNoOvWUUH+Kt
 A1if46Y+rz+7nuaoVvtXalugBTO8Oeai3XRosbBk0xHahCRiXHmIv/4lh4fPdHqWZz6E
 Lbtnjk1aTb00eWR9K4oAMnWE9j2nz5Zu+3Jblm5yrMOLz5cGW4V2VJTbhxwezSV33yMp
 Basj02NAuoQbSGCZ7rHeeGvBEihIrF6Kyv9vX7THLPeGKQAaYTgvytMPN8jOitWbCe/h
 /JNPztQFNYNJH+D+j0fm7FI1tMzDv1ZiXhQBYWXSeZLbMXnOse4TNS71/qwQ1CTGPGxr j6/g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:52 -0700
Message-Id: <1369966169-23640-4-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 03/40] crda: remove verbose errors out of
	regdom_intersect()
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

We want to move this to reglib so nuke all that fluff.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/intersect.c b/intersect.c
index e35f2cc..bd2976f 100644
--- a/intersect.c
+++ b/intersect.c
@@ -110,10 +110,8 @@ static struct ieee80211_regdomain *regdom_intersect(
 
 	memset(intersected_rule, 0, sizeof(struct ieee80211_reg_rule));
 
-	if (!rd1 || !rd2) {
-		fprintf(stderr, "rd1 or or rd2 is null\n");
+	if (!rd1 || !rd2)
 		return NULL;
-	}
 
 	/* First we get a count of the rules we'll need, then we actually
 	 * build them. This is to so we can malloc() and free() a
@@ -133,19 +131,15 @@ static struct ieee80211_regdomain *regdom_intersect(
 		}
 	}
 
-	if (!num_rules) {
-		fprintf(stderr, "error: num_rules == 0\n");
+	if (!num_rules)
 		return NULL;
-	}
 
 	size_of_regd = sizeof(struct ieee80211_regdomain) +
 		((num_rules + 1) * sizeof(struct ieee80211_reg_rule));
 
 	rd = malloc(size_of_regd);
-	if (!rd) {
-		fprintf(stderr, "no memory left\n");
+	if (!rd)
 		return NULL;
-	}
 
 	memset(rd, 0, size_of_regd);
 
@@ -166,7 +160,6 @@ static struct ieee80211_regdomain *regdom_intersect(
 	}
 
 	if (rule_idx != num_rules) {
-		fprintf(stderr, "Error while doing regdom interesection :(\n");
 		free(rd);
 		return NULL;
 	}
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

