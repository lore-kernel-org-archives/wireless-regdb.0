Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f182.google.com ([209.85.192.182])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnm-0005NK-1X
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:46 +0000
Received: by mail-pd0-f182.google.com with SMTP id g10so1380377pdj.27 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=dPEq5hZSCWssVlnBFdzhCAtBhwnKLKU7bcDAXzERCsY=;
 b=AvznP2ZkYgmlIe0rlNWBeQS59bQMQBJ7URKGTDCuIyP6zy1L8w0arzHpU/RMZeFEMd
 1V0bVUFYigAsC/wP9+1wU4Gafy1seE3MnAvOkc1OkFmBpsDxFU0aGaBSpLvwzbEC/VrD
 ZJz/XsZjlj5kvHxHp7ej6XrcuaAlGnhQLEPcSsDYmlxVAfNB3cRGr8f/kRtkcxMOLh6U
 Zf1h85OilbKYSiXdl1bCpJ3henoDxphcsseH+zMyA90yEI0hSMu4M1tStPuHXRMfoY+6
 ifWMtPNlHk/BSK9wZmbMwFCfXsOaURiJavCsXo2O3FZKaAbg01TDr3Yum0X5ZvAW5sno jezA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:58 -0700
Message-Id: <1369966169-23640-10-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 09/40] crda: do not double count on
	reglib_for_each_country()
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

Commit ebcbfcf4 introduced reglib_for_each_country() used
by regdbump and later intersect. This helper however only
increased the index count after we requestd getting a new
regulatory domain, this is incorrect and causes us to iterate
over the same element twice in the beginning. This means
intersection and regdb printing was going over the first
element twice. This has been present since v1.1.

This also requires an adjustment on intersect due to the
way things were being handled before.

mcgrof@frijol ~/devel/crda (git::master)$ git describe --contains ebcbfcf4
v1.1.3~9

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   10 +++-------
 reglib.h    |    3 +--
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/intersect.c b/intersect.c
index 5cb7d7c..dea9145 100644
--- a/intersect.c
+++ b/intersect.c
@@ -79,16 +79,12 @@ int main(int argc, char **argv)
 		return -EINVAL;
 	}
 
-	if (idx == 1) {
-		world = (struct ieee80211_regdomain *) rd;
-		rd = NULL;
-	}
-
-
 	if (intersected > 1)
 		printf("%d regulatory domains intersected\n", intersected);
-	else
+	else {
+		world = prev_world;
 		printf("Only one intersection completed\n");
+	}
 
 	/* Tada! */
 	printf("== World regulatory domain: ==\n");
diff --git a/reglib.h b/reglib.h
index b52d717..8bd9e03 100644
--- a/reglib.h
+++ b/reglib.h
@@ -79,8 +79,7 @@ reglib_get_rd_idx(unsigned int idx, const char *file);
 #define reglib_for_each_country(__rd, __idx, __file)			\
 	for (__rd = reglib_get_rd_idx(__idx, __file);		\
 	     __rd != NULL;						\
-	     __rd = reglib_get_rd_idx(__idx, __file),		\
-	     __idx++)
+	     __rd = reglib_get_rd_idx(++__idx, __file))		\
 
 const struct ieee80211_regdomain *
 reglib_get_rd_alpha2(const char *alpha2, const char *file);
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

