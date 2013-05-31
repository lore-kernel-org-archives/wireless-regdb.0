Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x229.google.com ([2607:f8b0:400e:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEoW-0005TE-OB
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:33 +0000
Received: by mail-pb0-f41.google.com with SMTP id xb12so1397409pbc.14 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=ggn/26yvZwXEt0ZLZGwFELLJC7P0cBM1ftOTJ+g6lFw=;
 b=RHAGmY0f7ra2HgVz1I7AXljPJBka3W2QkpaM71JxRxY/KRK1DeSpbHdG/UOMsggfVM
 D0PNvOfNMqaPWRSveckOOC8zz8JMi7WF37BWKCqTmHETD69yqMEuxFMauaCb4vNhF07L
 w1n8hve8uQDUvNTudFmzyDJMHgF8CO+FAxBsK6oSYMJ0hE3wQNppDJZsOsDkRF1mm/ql
 HRr5jddDqcan5QQXjYkkViHwM0BAML8MIx7EGGZGej0BvTrihUDGzO6HMRpC4R5bgxC5
 SzzNBJlo1nMv64wQzUTNQyjbxRbjkrhbgDuTK0baG8R+8C/280Hklhbp8Y8uT45sS/bv TTOw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:09 -0700
Message-Id: <1369966169-23640-21-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 20/40] crda: rename regdom_intersect() to
	reglib_intersect_rds()
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

This fits more in line with the reglib prefix usage.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    2 +-
 reglib.c    |    8 ++++----
 reglib.h    |    4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/intersect.c b/intersect.c
index bce7eb3..51479e4 100644
--- a/intersect.c
+++ b/intersect.c
@@ -39,7 +39,7 @@ int main(int argc, char **argv)
 			prev_rd_intsct = (struct ieee80211_regdomain *) rd_intsct;
 		}
 
-		rd_intsct = regdom_intersect(prev_rd_intsct, rd);
+		rd_intsct = reglib_intersect_rds(prev_rd_intsct, rd);
 		if (!rd_intsct) {
 			free(prev_rd_intsct);
 			free((struct ieee80211_regdomain *) rd);
diff --git a/reglib.c b/reglib.c
index 72ea78f..333db7a 100644
--- a/reglib.c
+++ b/reglib.c
@@ -417,7 +417,7 @@ static int is_valid_reg_rule(const struct ieee80211_reg_rule *rule)
 }
 
 /*
- * Helper for regdom_intersect(), this does the real
+ * Helper for reglib_intersect_rds(), this does the real
  * mathematical intersection fun
  */
 static int reg_rules_intersect(const struct ieee80211_reg_rule *rule1,
@@ -463,7 +463,7 @@ static int reg_rules_intersect(const struct ieee80211_reg_rule *rule1,
 }
 
 /**
- * regdom_intersect - do the intersection between two regulatory domains
+ * reglib_intersect_rds - do the intersection between two regulatory domains
  * @rd1: first regulatory domain
  * @rd2: second regulatory domain
  *
@@ -476,8 +476,8 @@ static int reg_rules_intersect(const struct ieee80211_reg_rule *rule1,
  * malloc() this structure for you.
  */
 struct ieee80211_regdomain *
-regdom_intersect(const struct ieee80211_regdomain *rd1,
-		 const struct ieee80211_regdomain *rd2)
+reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
+		     const struct ieee80211_regdomain *rd2)
 {
 	int r, size_of_regd;
 	unsigned int x, y;
diff --git a/reglib.h b/reglib.h
index 8bd9e03..529772d 100644
--- a/reglib.h
+++ b/reglib.h
@@ -87,7 +87,7 @@ reglib_get_rd_alpha2(const char *alpha2, const char *file);
 /* reg helpers */
 void print_regdom(const struct ieee80211_regdomain *rd);
 struct ieee80211_regdomain *
-regdom_intersect(const struct ieee80211_regdomain *rd1,
-		 const struct ieee80211_regdomain *rd2);
+reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
+		     const struct ieee80211_regdomain *rd2);
 
 #endif
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

