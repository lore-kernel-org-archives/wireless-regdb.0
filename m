Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=63bxAxDm9JtYnwRVcIVckF5QV/rqWxggLklaKHIvtK0=;
 b=ldA
 Xp5ZPQbQiB+JngG1LKnSv53kMLNXeptQzhq5RFtBFkZ/VCIUVJAK5rXutgb81bDy+UG/OvQ0Fm98T
 w9bgbElTnN11RTg+szsSJBEExw1Nf1OXibEI4+ppCk92bwHZN3KtRADiCjs5HAt3oDCcc4bK/jE/I
 8ueFsWGLFIp5BK2gU7owgrynqnKmmZkFKjyQ2yNrY+ppwUPSUL+iuuRBHhqTaw1+IrplEBGLjaDQz
 Tmo7cJsyAA3ZAypIevnZbm3skH04kBC23T0vx1NTAxSeb6Plyz4EVDNNVhCsGPaf7umDZEKPxUU47
 05wJ9sRlTLARjiTpwnfEj12qj6WZZqw==;
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgTXO-006URh-1P
	for wireless-regdb@lists.infradead.org;
	Wed, 13 Sep 2023 17:20:28 +0000
Received: by mail-lf1-x12a.google.com with SMTP id
 2adb3069b0e04-501eec0a373so14340e87.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 13 Sep 2023 10:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20221208; t=1694625620; x=1695230420; darn=lists.infradead.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to; bh=1r3jJ+YZm9ntMr/g21WVh5DmQT7w85D0oBrnSVgMVFQ=;
 b=WOckrS7RBMaLTARm94sOVgmdJ5qNuOmijbeIaX5Xg/QUjYFvBwooAjZq552qCNc2Zu
 iLemnsv8DhT6JOPP3yD99GFXPEiwJb16RH6/eHzminM8hQH8X7SBzd0sm95ZrK0dJ1ow
 EXt7P/KHFBeholsleiv+jSt40TaCscuC9rk22FORajq/gxiOnXzK3NuGybN7By/UTD1o
 fiXj2BsuxWvjb5RYJHeCh2h84OK5/UL94WkPoTNTKk1J6hPI6xlaT0E6FBjfTgbXbLxD
 qTmfTQ91u98vVKoIxdnCxUzdYJb7YK7AUNrAMNK0LHGeCPficXj50WwaiZZUGLSqyZm9 39lA==
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Wed, 13 Sep 2023 11:20:04 -0600
Message-ID: <CAE+BM3kzS-xYjLWyBqTaYpEAmR1p=8UuxR957QZW1soKwakmZQ@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] Correctly parse power with gain and eirp
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

From 082a38a3de11701ea1edf40a2f3268ec5115c691 Mon Sep 17 00:00:00 2001
From: Rusty Howell <rhowell@control4.com>
Date: Wed, 13 Sep 2023 11:13:19 -0600
Subject: [PATCH] Correctly parse power with gain and eirp

Parse a power entry like "(6, 20)" or "(20", or "(N/A, 20)".
Previously, the example ASCII file format show in this page would not parse.
https://wireless.wiki.kernel.org/en/developers/regulatory/wireless-regdb#mailing_list_for_regulatory_updates
---
 dbparse.py | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/dbparse.py b/dbparse.py
index 1e87813..b36ff9c 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -264,16 +264,25 @@ class DBParser(object):

     def _parse_power_def(self, pname, line, dupwarn=True):
         try:
-            max_eirp = line
-            if max_eirp == 'N/A':
-                max_eirp = '0'
-            max_ant_gain = float(0)
+            max_eirp = ''
+            max_ant_gain = ''
+            if ',' in line:
+                max_ant_gain, max_eirp = line.split(',')
+                if max_ant_gain == 'N/A':
+                    max_ant_gain = '0'
+            else:
+                max_ant_gain = '0'
+                max_eirp = line
+                if max_eirp == 'N/A':
+                    max_eirp = 0.0
+
             def conv_pwr(pwr):
                 if pwr.endswith('mW'):
                     pwr = float(pwr[:-2])
                     return 10.0 * math.log10(pwr)
                 else:
                     return float(pwr)
+            max_ant_gain = float(max_ant_gain)
             max_eirp = conv_pwr(max_eirp)
         except ValueError:
             self._syntax_error("invalid power data")
-- 
2.25.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

