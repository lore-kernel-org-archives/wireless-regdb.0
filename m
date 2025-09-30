Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F7BCAC5B8
	for <wireless-regdb@archiver.kernel.org>; Tue, 30 Sep 2025 04:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qyh1WBTvR57FgPlYsfMk+HhJtZIG1Rd5qQY7Ahkj6/s=; b=OcZbnNZ19JeXGJMQwGqjtvWXf1
	gzyExAHLl0rEsgnVfoGdW0UJPV8rjSl1pbEepBX0pZNa7g5RYrns96eihcyq9l3QX3X+k/T/RCSXY
	pxKOWj80O6KxllKWzW2H/HFil+M5xWFCf/Tf275rZ/ZSu68P5crvrXyyss0rjJWtX7eIxUIsFSICq
	fZDJMkmw2u+yOQnj2vnveA8xWGm+8gGTOXHhjUZwMTc7ZY9Eknmb3mBdioufUkRCryWcI+RKWDPNv
	M42oxxb2KLdXUBlu6kB4UcxNi3Htgj3KQfqbSOYII5hqug27FnWWt3JUA/Nd9UPN3Z6U5NlaMj9ss
	uRo5R1iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3S04-00000004AbM-3aJM;
	Tue, 30 Sep 2025 04:30:04 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3S02-00000004AYt-27dk
	for wireless-regdb@lists.infradead.org;
	Tue, 30 Sep 2025 04:30:04 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id CFFB25FE36; Tue, 30 Sep 2025 12:29:54 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>,
	Pavel Starosek <starosekpd@gmail.com>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	wireless-regdb@lists.infradead.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH] wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
Date: Tue, 30 Sep 2025 12:29:46 +0800
Message-ID: <20250930042948.427154-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_213002_685381_B0DA0365 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

By Order of the Minister of Digital Development No. 564/NK dated
September 19, 2024 [1], an amendment was made to the assignment of
frequency bands, opening up the lower part of the 6 GHz band (5,945 MHz
to 6,425 MHz) was opened up to "SRD (wideband data transmission systems)
WAS/RLAN Data transmission systems/radio local area networks".

The power is limited to 200 mW e.i.r.p. with a spectral density of 10
mW/MHz. Only indoor use is permitted.

While at it, also change the power limits to use mW units to match the
official documents.

Initial information was provided by the Wi-Fi Alliance website, which
has a map [2] showing all countries that have enabled 6 GHz WiFi, and
links to official documents. This document was not sufficient as it did
not include power limits or other restrictions.

A subsequent search found a blog post [3] providing details and titles
of the official documents in English. An AI agent was used to search
for the original text of said order [1] after rummaging through
government websites in Russian and Kazakh failed to find anything.

[1] https://adilet.zan.kz/rus/docs/V2400035100
[2] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
[3] https://www.onewindow.pro/blog-posts/6-ghz-band-regulation-in-the-republic-of-kazakhstan

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
If you received this patch, please help review it. The changes are
based on translations of the original text / tables, so a second set
of eyes would be appreciated.

 db.txt | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 6e1ad30..16bcb32 100644
--- a/db.txt
+++ b/db.txt
@@ -1136,11 +1136,12 @@ country KY: DFS-FCC
 # http://adilet.zan.kz/rus/docs/V1500010730
 # http://adilet.zan.kz/rus/docs/V1500010375
 country KZ: DFS-ETSI
-	(2400 - 2483.5 @ 40), (20)
-	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
-	(5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
-	(5725 - 5850 @ 80), (20), NO-OUTDOOR
+	(5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
+	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (40)
 
 country LB: DFS-FCC
-- 
2.47.3


