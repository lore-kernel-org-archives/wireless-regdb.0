Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22b.google.com ([2607:f8b0:400e:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEox-0005YZ-RU
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:00 +0000
Received: by mail-pb0-f43.google.com with SMTP id ma3so1396965pbc.16 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=YM1h3yF0SXsku71fpJxYyxPvyCE+v43/VR08piN0mlI=;
 b=jZEmp123U7Tks32iAPA70Gf+88AgT9fYQx/GbRSMau4UtuFXEyU5PMrNcB04Kk/2xo
 EesPgt0icingpuYuhI7/3zZ0GNPOQEwNm3D9J3K3jGm/yydEIdMasE32/+T1X18sTFOL
 kdwKYS7lBx3d/zu1C4oJZZTCyNh4xw8OBjGeNYGeFwgJGWra1o1y0z95NrOQo9QmDDGj
 czS9hG5Ggbfue+N6KEUOqOQMPHf4ceStUi157PBUciY7PgBJ1HEKkNm7kjPrt8hQjrWp
 cG+uE5xkqmP7h048MWh4JsqOg7jvX2u8g5GXomacBb3rd/uDbV2EAgco6A7DDrqHkJUf d/1Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:16 -0700
Message-Id: <1369966169-23640-28-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 27/40] crda: rename is_world_regdom() to
	reglib_is_world_regdom()
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
 intersect.c |    2 +-
 reglib.h    |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/intersect.c b/intersect.c
index 22b3225..bc1e63e 100644
--- a/intersect.c
+++ b/intersect.c
@@ -24,7 +24,7 @@ int main(int argc, char **argv)
 
 	/* We intersect only when we have to rd structures ready */
 	reglib_for_each_country(rd, idx, argv[1]) {
-		if (is_world_regdom((const char *) rd->alpha2)) {
+		if (reglib_is_world_regdom((const char *) rd->alpha2)) {
 			free((struct ieee80211_regdomain *) rd);
 			continue;
 		}
diff --git a/reglib.h b/reglib.h
index 4c0ec6d..98aadcc 100644
--- a/reglib.h
+++ b/reglib.h
@@ -31,7 +31,7 @@ struct ieee80211_regdomain {
 	struct ieee80211_reg_rule reg_rules[];
 };
 
-static inline int is_world_regdom(const char *alpha2)
+static inline int reglib_is_world_regdom(const char *alpha2)
 {
 	if (alpha2[0] == '0' && alpha2[1] == '0')
 		return 1;
@@ -54,7 +54,7 @@ static inline int is_alpha2(const char *alpha2)
 
 static inline int is_valid_regdom(const char *alpha2)
 {
-	if (!is_alpha2(alpha2) && !is_world_regdom(alpha2))
+	if (!is_alpha2(alpha2) && !reglib_is_world_regdom(alpha2))
 		return 0;
 
 	return 1;
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

