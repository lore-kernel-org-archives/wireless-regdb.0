Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZ3Zt-0005fI-MA
 for wireless-regdb@lists.infradead.org; Wed, 23 Oct 2013 18:54:46 +0000
Received: by mail-wi0-f170.google.com with SMTP id l12so8792568wiv.5 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Oct 2013 11:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=7W8Ddtfl74Zhp5PGT0lZYAmfGmVBCUgKMeO+Ojj8GHQ=;
 b=wSQ1uRmLrxaEH4M1JISHrJgnx6G0ESVwazeXcfAFqdDXxj+LzYcxBn1OgXUOjt9dK2
 Ckxv0qf8aqzbIwiMeWj7Jy/fglqaraiRkWJs7HW1aOI5mDU5IkWF04ZCsVeDw1vqQu3q
 wPF/to/VrqA/Qzh0tESvKG8gz6ltfNlKtZUz2iQJrze1EejIIWWCIFarsTyJRB4y9EET
 l2ItAfApJPr2khyFZ+nyO8eQgSmNXNYH8wEBhrx5pMFNZJuX2vS6tKPrNa7olTwbpaXu
 dZiFmVN7eTW+enVRMdAMmQchgO4EI+H0M2zhvrL6dfVUVk6+E436FitZkw1lmQlmYeAB CHiQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 23 Oct 2013 20:54:21 +0200
Message-Id: <1382554461-27746-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC] crda: remove antenna gain
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/reglib.c b/reglib.c
index fa6efe0..b0c61e5 100644
--- a/reglib.c
+++ b/reglib.c
@@ -673,11 +673,6 @@ static void print_reg_rule(const struct ieee80211_reg_rule *rule)
 
 	printf("(");
 
-	if (power->max_antenna_gain)
-		printf("%.2f, ", ((float)(power->max_antenna_gain)/100.0));
-	else
-		printf("N/A, ");
-
 	if (power->max_eirp)
 		printf("%.2f)", ((float)(power->max_eirp)/100.0));
 	else
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

