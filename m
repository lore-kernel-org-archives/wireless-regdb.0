Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f181.google.com ([209.85.192.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpJ-0005b5-GC
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:21 +0000
Received: by mail-pd0-f181.google.com with SMTP id bv13so1366369pdb.40 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=a+165dPsI/5h8QwTax1XAcsmXMwa8hGi0xFwP/r0KGE=;
 b=u7QTb+RFkNQPeM6Iul+qwce0FLi11OsU4TFz84sgaSiNfnVaRkz8TK1Tuno9FwRXDi
 S69F+EvoM4MGo/tj/Xoa/HvXWFgaKjMk6jXjMA3XYHBHCsNXC7EB1J+o5cQ54J6BT3E9
 C6LruQeGxDDown2RdXpo2uT/cwVyJR9Y5iEErwgzwfY1MOoIzcKnOPt3CQ+LcWUWSa4h
 /jtdK4wmlY4ClVUX35aznUpo0xkEGp/LMQ1GQ6z1AjgJGpF4k9FS0OmOajnf83nVmhrj
 oV4JxuxJBbDP3Hkx7hXU2o+J1z1wflFo49wKRMuWfb35sI3mIz2STvgYr/yHJK2PhFCb NPxA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:20 -0700
Message-Id: <1369966169-23640-32-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 31/40] crda: rename max() to reglib_max()
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
 reglib.c |    2 +-
 reglib.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/reglib.c b/reglib.c
index 0d258d8..57bb22b 100644
--- a/reglib.c
+++ b/reglib.c
@@ -438,7 +438,7 @@ static int reg_rules_intersect(const struct ieee80211_reg_rule *rule1,
 	power_rule2 = &rule2->power_rule;
 	power_rule = &intersected_rule->power_rule;
 
-	freq_range->start_freq_khz = max(freq_range1->start_freq_khz,
+	freq_range->start_freq_khz = reglib_max(freq_range1->start_freq_khz,
 					 freq_range2->start_freq_khz);
 	freq_range->end_freq_khz = min(freq_range1->end_freq_khz,
 				       freq_range2->end_freq_khz);
diff --git a/reglib.h b/reglib.h
index 8ed94d9..21518d2 100644
--- a/reglib.h
+++ b/reglib.h
@@ -60,7 +60,7 @@ static inline int reglib_is_valid_regdom(const char *alpha2)
 	return 1;
 }
 
-static inline uint32_t max(uint32_t a, uint32_t b)
+static inline uint32_t reglib_max(uint32_t a, uint32_t b)
 {
 	return (a > b) ? a : b;
 }
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

