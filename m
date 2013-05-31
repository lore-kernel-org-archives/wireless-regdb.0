Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x233.google.com ([2607:f8b0:400e:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEn5-0005Je-RE
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:04 +0000
Received: by mail-pb0-f51.google.com with SMTP id jt11so1376130pbb.24 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=DtETCPxruaL/qiv+lzVRcfnGvOgOCDkNsY6CjVF63qs=;
 b=R7Jk4WMPzn3tORuBSoqX35U86ScquXtUZGzE1Cs/gnlxAjZJB/r8CHWMaQplVv6+jd
 soose7/L0FMUrdDTCjyh6n+79pEmGwuBWdk4Jg+cAfpW1H0fPKVxDJtcY9woWoy5Dx2O
 VCA5ASXEHGz0SUCwA/Ue/cqTPOcHUa9/SSxGQCgmnnrlbdZ/7O9IFlfKeai/cE5S7Ywi
 g+DwqoSkvS/i+8Kzr4gIkGoUuC6/HdtgK7fxdcX5cQ6N9rMPWpuy4VvwPnC7VowV/sPy
 L1DdGueN4s3WGvvVlTemc3aaorITqPO0HbTZiUHQnNXV84cKzNhy+T9mZnFZXPDYnxIR vDMg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:50 -0700
Message-Id: <1369966169-23640-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 01/40] crda: make reg_rules_intersect()
	style match Linux
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

This makes reg_rules_intersect() style match exactly
as it is upstream as of next-20130522.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/intersect.c b/intersect.c
index 012750d..aa67dbc 100644
--- a/intersect.c
+++ b/intersect.c
@@ -56,11 +56,11 @@ static int reg_rules_intersect(
 	power_rule = &intersected_rule->power_rule;
 
 	freq_range->start_freq_khz = max(freq_range1->start_freq_khz,
-		freq_range2->start_freq_khz);
+					 freq_range2->start_freq_khz);
 	freq_range->end_freq_khz = min(freq_range1->end_freq_khz,
-		freq_range2->end_freq_khz);
+				       freq_range2->end_freq_khz);
 	freq_range->max_bandwidth_khz = min(freq_range1->max_bandwidth_khz,
-		freq_range2->max_bandwidth_khz);
+					    freq_range2->max_bandwidth_khz);
 
 	freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;
 	if (freq_range->max_bandwidth_khz > freq_diff)
@@ -71,7 +71,7 @@ static int reg_rules_intersect(
 	power_rule->max_antenna_gain = min(power_rule1->max_antenna_gain,
 		power_rule2->max_antenna_gain);
 
-	intersected_rule->flags = (rule1->flags | rule2->flags);
+	intersected_rule->flags = rule1->flags | rule2->flags;
 
 	if (!is_valid_reg_rule(intersected_rule))
 		return -EINVAL;
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

