Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f180.google.com ([209.85.192.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEok-0005Vh-1l
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:46 +0000
Received: by mail-pd0-f180.google.com with SMTP id 14so1380326pdc.39 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=mrTcrldtA8prfavS9cLkFYeydPSJWDq+zIn4c+ASpkc=;
 b=fwQIevS/JASPuB6KNBdeyUMbtf8mgi2GKWHg7YMb5WxVQE4ZCnIF+7B7fueAFgKPd9
 o1VsOo0IJdXX75Ci1KIe+WawuiOUz5U18YH3S44GViHs6WlvSbyoZKm63pmEHm3DaKXZ
 IJ1dUIZ4aqyKg4s5OQ81xjLyFnp5/tgcO8e2cPBFGmBd9RsvzEdnvMNblIifQWez+xyH
 MxzY884G9iy5ZGQsPikE5Hf4FufqtB2ze187yZV6CjmX1OSXYSz8t7JAGw0GO7+TgXRx
 dY3bDMcry3cpj6t7xyA+nCc3h4uPuFBK66+9VNQd5ehbmcWqOhcBZXHSEvBGD6iPEBz6 MP6w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:12 -0700
Message-Id: <1369966169-23640-24-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 23/40] crda: rename print_regdom() to
	reglib_print_regdom()
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
 intersect.c    |    2 +-
 print-regdom.c |    2 +-
 regdbdump.c    |    2 +-
 reglib.h       |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/intersect.c b/intersect.c
index 51479e4..22b3225 100644
--- a/intersect.c
+++ b/intersect.c
@@ -68,7 +68,7 @@ int main(int argc, char **argv)
 
 	/* Tada! */
 	printf("== World regulatory domain: ==\n");
-	print_regdom(rd_intsct);
+	reglib_print_regdom(rd_intsct);
 
 	free(rd_intsct);
 	return r;
diff --git a/print-regdom.c b/print-regdom.c
index abd6488..ab122db 100644
--- a/print-regdom.c
+++ b/print-regdom.c
@@ -70,7 +70,7 @@ static void print_reg_rule(const struct ieee80211_reg_rule *rule)
 	printf("\n");
 }
 
-void print_regdom(const struct ieee80211_regdomain *rd)
+void reglib_print_regdom(const struct ieee80211_regdomain *rd)
 {
 	unsigned int i;
 	printf("country %.2s: %s\n", rd->alpha2,
diff --git a/regdbdump.c b/regdbdump.c
index dcbed71..ea14730 100644
--- a/regdbdump.c
+++ b/regdbdump.c
@@ -13,7 +13,7 @@ int main(int argc, char **argv)
 	}
 
 	reglib_for_each_country(rd, idx, argv[1]) {
-		print_regdom(rd);
+		reglib_print_regdom(rd);
 		free((struct ieee80211_regdomain *) rd);
 	}
 
diff --git a/reglib.h b/reglib.h
index 2f49a32..4c0ec6d 100644
--- a/reglib.h
+++ b/reglib.h
@@ -85,7 +85,7 @@ const struct ieee80211_regdomain *
 reglib_get_rd_alpha2(const char *alpha2, const char *file);
 
 /* reg helpers */
-void print_regdom(const struct ieee80211_regdomain *rd);
+void reglib_print_regdom(const struct ieee80211_regdomain *rd);
 struct ieee80211_regdomain *
 reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
 		     const struct ieee80211_regdomain *rd2);
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

