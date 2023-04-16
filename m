Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=WDH0qPn9zKJu8u7JGB68JX2rRGdioyk+eP4zqnRIXs0=;
 b=IJAUJSiTuqZwNT
 EnDqIplRoLxnhx/1atLBZ3ayRoWYnDUYl5qufDIADNE0+Y+SIl7I2I/+Yg4h83OOkDJfm2hL3ql4r
 BAlZhkSbg6P/C1C/Q10PaDP21/xr8iXEEJeDr1lEka6/aBN3YbeETqfoJjmotUtu9zbaQ1kcDmCIk
 Ymdz7eR6FEVh0aTtNizVYFUbxWSwd7PfF2J0uINp4gOI1y1lvyftIAz9q6XnquTwsTaOKYSUkgX6J
 QXbf1a1pdexqFd6Hx0mcSrHRqwUu81XRDFFMBDkiEI4Q+FyFcQiNzk4uHI/Gl+csT9iH7De+HmmIl
 oamphgWdUXlYF6duqpOg==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnwA5-00DFgZ-0H
	for wireless-regdb@lists.infradead.org;
	Sun, 16 Apr 2023 06:46:58 +0000
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-4ec816c9d03so757999e87.2 for
 <wireless-regdb@lists.infradead.org>; Sat, 15 Apr 2023 23:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20221208; t=1681627614; x=1684219614;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5kzjc0m3n/HBNEngFJPQreLN49X01EVyeWOqOYCCxE4=;
 b=akE6ALMsMvivugWKCDqVA3mT0Fbr25siLHjG3Ys0CIyRLsa5Jdf+7t3JelaN73XxL5
 029vkQP+wIpDLx3LqOz0GjHhgIvhLqWiBXePz/ifhbdarJWsoTHSN7166mE1yNzFIHHb
 Qry7zPVOF8ATmD1shRYm/wJZsEtQvRr4l18WFFvkEt6/yDbWjo35TNPLZEstypKVMOdA
 r+1w4GDpQ/jLXTlXoa6PihBXXKjjS+uZMi3cvgio3vSqOUZknDr/2PHq3zyPfhfEy0XW
 PZ7e4xs60XWxDa0toIV8G/+hkiBlcF4WY6x8E1ZwRkT9LYgMws4hfgL+0efZx37Q1FeE fiQg==
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sun, 16 Apr 2023 09:46:48 +0300
Message-Id: <20230416064648.3227-1-hanipouspilot@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Russia (RU). Remove DFS requirement.
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Dmitry Tunin <hanipouspilot@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Use of Wi-Fi devices are regulated by the Decision of the State Commission for Radio Frequencies
 under the Ministry of Communications of Russia of February 29, 2016 No. 16-36-03
 “On Amendments to the Decision of the State Committee for Radio Frequencies of May 7, 2007 No. 07-20-03-001
 “On the allocation of radio frequency bands to short-range devices »

https://www.garant.ru/products/ipo/prime/doc/71249926/

The document sets 100mW for 2.4 GHz and 200 mW for 5 GHz. The is also TPC requirement (see the footnote).
There is a special limitation 100mW for 5 GHz onboard aircraft.

DFS was never required in Russia.
Instead the authority chose to prohibit outdoor use for 5 GHz totally.

So we reduce power to 100 mW because of TPC on 5 GHz.

Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
---
 db.txt | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 915a3b9..6a05141 100644
--- a/db.txt
+++ b/db.txt
@@ -1501,11 +1501,10 @@ country RS: DFS-ETSI
 	(57000 - 66000 @ 2160), (40)
 
 # Source: https://docs.cntd.ru/document/902048009?section=text
-country RU: DFS-ETSI
-	(2400 - 2483.5 @ 40), (20)
-	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS
-	(5650 - 5850 @ 160), (100 mW), NO-OUTDOOR, DFS
-	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
+country RU:
+	(2400 - 2483.5 @ 40), (100mW)
+	(5150 - 5350 @ 160), (200 mW), NO-OUTDOOR
+	(5650 - 5850 @ 160), (200 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country RW: DFS-FCC
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
