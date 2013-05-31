Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpM-0005bm-Sk
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:25 +0000
Received: by mail-pb0-f45.google.com with SMTP id mc17so1388639pbc.32 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=6P82nEkNkCMCFBQoIKZ/11o6WzRkmC0ms0QlmV7dkqQ=;
 b=jgJpmrEKQuNwFnhBxR+2cmnQHQtdeADcwJspZVM1utyj08Cz52QL5gAs1VJghZX8mt
 O7NDmnffrOzRE8an4P3Nnr5zcfVxEehv2GfAgCLmUkRJu7YgYNTVlMDf7DIxMgVc2cAP
 EWeUvg4ATQ6W7qN1ddTtLVJyW9z3Ja2u1+UbEa+jPnjr3+6tmle3vbBw8oWHEHXT0FYR
 1z+ZKoEPypAZhT8lWjcyX8/rq5vayzxDIXk8PTgfobassitHG5xE4LcIcGLOuFu5JVZ0
 n2E32I1WYc3Iz1JUTj6/dK6NP+WmwqXROhJKCIpZQ8ZWsg6bqLRXqCZLfDvjT5kz3lTf klcg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:21 -0700
Message-Id: <1369966169-23640-33-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 32/40] crda: rename min() to reglib_min()
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
 reglib.c |    8 ++++----
 reglib.h |    2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/reglib.c b/reglib.c
index 57bb22b..4643fa8 100644
--- a/reglib.c
+++ b/reglib.c
@@ -440,18 +440,18 @@ static int reg_rules_intersect(const struct ieee80211_reg_rule *rule1,
 
 	freq_range->start_freq_khz = reglib_max(freq_range1->start_freq_khz,
 					 freq_range2->start_freq_khz);
-	freq_range->end_freq_khz = min(freq_range1->end_freq_khz,
+	freq_range->end_freq_khz = reglib_min(freq_range1->end_freq_khz,
 				       freq_range2->end_freq_khz);
-	freq_range->max_bandwidth_khz = min(freq_range1->max_bandwidth_khz,
+	freq_range->max_bandwidth_khz = reglib_min(freq_range1->max_bandwidth_khz,
 					    freq_range2->max_bandwidth_khz);
 
 	freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;
 	if (freq_range->max_bandwidth_khz > freq_diff)
 		freq_range->max_bandwidth_khz = freq_diff;
 
-	power_rule->max_eirp = min(power_rule1->max_eirp,
+	power_rule->max_eirp = reglib_min(power_rule1->max_eirp,
 		power_rule2->max_eirp);
-	power_rule->max_antenna_gain = min(power_rule1->max_antenna_gain,
+	power_rule->max_antenna_gain = reglib_min(power_rule1->max_antenna_gain,
 		power_rule2->max_antenna_gain);
 
 	intersected_rule->flags = rule1->flags | rule2->flags;
diff --git a/reglib.h b/reglib.h
index 21518d2..8a31e0d 100644
--- a/reglib.h
+++ b/reglib.h
@@ -65,7 +65,7 @@ static inline uint32_t reglib_max(uint32_t a, uint32_t b)
 	return (a > b) ? a : b;
 }
 
-static inline uint32_t min(uint32_t a, uint32_t b)
+static inline uint32_t reglib_min(uint32_t a, uint32_t b)
 {
 	return (a > b) ? b : a;
 }
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

