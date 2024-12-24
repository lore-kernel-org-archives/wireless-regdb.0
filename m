Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019F5E77188
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Dec 2024 15:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iBHrC4Ss9zY2busqHImL1SrchJYSMB8blH021r3lAKE=; b=O5G+bS4ZCSwcTSJyGKQ56NRZXj
	z0WpEPdWgcZQdqeFDZO4R9n0I7oN8hQNDYlR6uMBE5S9ul1YpZeNNqd6OmC8HyQcToY+1VIAg+vIl
	9GQTloDrPFaScdgV0JTRKxhuMpmybBWL5LYJtPsj9mVvfKqQmKBcYbeiog5XSruHtd+kRhkGh4dY6
	iiBfXLbhEQv9uHEPxkogz/qr3ZpfZIH/XY1FxrAZTjdrlUuY79y0YBMI3Lf0P8ofDabrTkkaP+aC1
	bL3YVeb0zLVtD2hE3VVz9mL5ILYeS0sF/1PE0O6UAnWfuczjLxIgKuVBzlLZ5TyyQe2gSejgbmNd8
	+7n6o9rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6z2-0000000CDrJ-3nkN;
	Tue, 24 Dec 2024 15:38:08 +0000
Received: from mailtransmit05.runbox.com ([2a0c:5a00:149::26])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6uZ-0000000CDe5-2F3M
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Dec 2024 15:33:34 +0000
Received: from mailtransmit02.runbox ([10.9.9.162] helo=aibo.runbox.com)
	by mailtransmit05.runbox.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <desu@rainwalker.ee>)
	id 1tQ6uS-0057KE-Mf
	for wireless-regdb@lists.infradead.org; Tue, 24 Dec 2024 16:33:24 +0100
Received: from [10.9.9.72] (helo=submission01.runbox)
	by mailtransmit02.runbox with esmtp (Exim 4.86_2)
	(envelope-from <desu@rainwalker.ee>)
	id 1tQ6uS-0004gd-3B; Tue, 24 Dec 2024 16:33:24 +0100
Received: by submission01.runbox with esmtpsa  [Authenticated ID (1227212)]  (TLS1.2:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.93)
	id 1tQ6uE-007NoX-5u; Tue, 24 Dec 2024 16:33:10 +0100
From: Veronika Baranova <desu@rainwalker.ee>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: wireless-regdb: Update regulatory rules for Estonia (EE) on 5GHz
Date: Tue, 24 Dec 2024 17:33:08 +0200
Message-ID: <2968514.e9J7NaK4W3@nakatomi>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_073331_578554_FB078818 
X-CRM114-Status: UNSURE (   4.96  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 24 Dec 2024 07:38:07 -0800
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

Hello,

The current values in the database seems to be out of date for the range 5470 
- 5725, the max power should be 1W instead of 500mW. And 200 mW in 5250 - 5350 
MHz. Also, V-band is permitted up to 71GHz.

diff --git a/db.txt b/db.txt
index e282e3b..2ada200 100644
--- a/db.txt
+++ b/db.txt
@@ -618,15 +618,15 @@ country EC: DFS-FCC
 # EE: https://www.itu.int/ITU-D/study_groups/SGP_1998-2002/JGRES09/pdf/
estonia.pdf
 country EE: DFS-ETSI
        (2400 - 2483.5 @ 40), (100 mW)
-       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-       (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
-       (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+       (5150 - 5250 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+       (5250 - 5350 @ 160), (200 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+       (5470 - 5725 @ 160), (1000 mW), DFS, wmmrule=ETSI
        # short range devices (ETSI EN 300 440-1)
        (5725 - 5875 @ 80), (25 mW)
        # 6 GHz band
        (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
        # 60 GHz band channels 1-4 (ETSI EN 302 567)
-       (57000 - 66000 @ 2160), (40)
+       (57000 - 71000 @ 2160), (40)


Related links from Estonian Consumer Protection and Technical Regulatory 
Authority:
https://www.ttja.ee/uudised/ttja-ja-keskkonnaagentuur-teevad-koostood-et-peatada-wi-fi-haireid-riiklikes-ilmaradarites [20.02.2023, in Estonian]
https://www.ttja.ee/eraklient/side-ja-meediateenused/raadioside/wifi-seadmete-kasutus [in Estonian]
https://www.riigiteataja.ee/aktilisa/1170/5202/4018/MKM_m15_Lisa6.pdf [in 
Estonian]
https://www.ttja.ee/ru/chastnoe-lico/svyaz-i-media-uslugi/radiosvyaz/
radiooborudovanie [in Russian]



