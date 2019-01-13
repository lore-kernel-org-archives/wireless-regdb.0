Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ROwCXPtqIUUBj4sRFFVF4Io1QsVxHzYjLUYKKIeaoQc=;
 b=MCAjJblR066GjK
 YYn16Rn8j7b0fgM1d+NXS4fry0UrrmiUbysSlzBVns5Dw/4w37Nn1BHo+t12yJAfbiGPk1/Mh4ANz
 8sSd4BrNrD8f0kzLCBLHmLHF9LOjKPB3vVIqVOTEYk3tUcK/DaHkOLthGAueKWA/sgUbxoK6vMXzi
 hDlCzj3aDA4LYhSPsLhZ7BM28LygG5tBMC+JJ/2HoVpremlkH5cCdwMMGLCM5x3RrXBN9vtbLiySu
 UjAKTpAS4WzADSzUaS3zj8PE7QkwfDLhU2hTz4JoLXIgpzIHscMVxskFdwUU+GYJ/WNZXmcqEDcep
 9xH5Hjo7TLjPT4Cz9Llw==;
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ginik-0004Ot-AL
 for wireless-regdb@lists.infradead.org; Sun, 13 Jan 2019 21:55:08 +0000
Received: by mail-lj1-x242.google.com with SMTP id k15-v6so17282370ljc.8
 for <wireless-regdb@lists.infradead.org>; Sun, 13 Jan 2019 13:55:03 -0800
 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VPcTufBhaTj5rDFovmBtSAvrtYbycehrNyinLsKdWAM=;
 b=I9aXSoO/VIyqDHHkFrJ7LRecKGPltbAXsxg+AUmsn5K+Vm5VddAcTUt2gUPgIdSE9l
 cw+jqncqARlXEIIUXaOYzKEuQp6WozijT3EBHA10MixinHgiZe4bmvDDA+mgrcH3Gn1R
 XhKjK7k32ZYG1lHXPi9mfDOIzVff04JRfrEgPjnUCYnL5mRKOO/uS682+R9QafgJh9gI
 nbqQL72fdYyPhMaG6HMW0mUhAwqERDEEMXsrEnVPXrxOoQ6MUYNUU1IfZZC4PB5YJIL9
 c5/VKR1W6mzR8BN9+s7KoXwOdcsk6ZI3E/WZPgHgjYsLGQ+7eAfRk0KpQfoMMTBjJZJA xHsw==
From: Peter Lundkvist <peter.lundkvist@gmail.com>
Date: Sun, 13 Jan 2019 22:55:00 +0100
Message-Id: <20190113215500.22292-1-peter.lundkvist@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Sweden (SE) on 2.4/5/60 GHz
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
To: seth.forshee@canonical.com
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

In reference to the current "Regulations on exemptions from the
licence obligation for certain radio transmitters" issued by
the Swedish Post and Telecom Authority (PTS) on 18 Sep 2018
and valid from 1 Nov 2018 [1]:

* 2400-2483.5M: extend bounds (§ 154)
* 5150-5250M: extend bounds, add NO-OUTDOOR, no TPC so +3dB (§ 162)
* 5250-5350M: extend bounds, add NO-OUTDOOR (§ 162)
* 5470-5725M: extend bounds (§ 164)
* 5725-5875M: introduce; EU SRD provisions have been implemented (§ 166)
* 57-66G: add NO-OUTDOOR (§ 202)

[1] https://pts.se/globalassets/startpage/dokument/legala-dokument/foreskrifter/radio/beslutade_ptsfs-2018-3-undantagsforeskrifter.pdf

Signed-off-by: Peter Lundkvist <peter.lundkvist@gmail.com>
---
 db.txt | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index fa5c0e0..4ed40e8 100644
--- a/db.txt
+++ b/db.txt
@@ -1115,13 +1115,18 @@ country SA: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+# Source:
+# https://pts.se/globalassets/startpage/dokument/legala-dokument/foreskrifter/radio/beslutade_ptsfs-2018-3-undantagsforeskrifter.pdf
 country SE: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	# note: max would be +3dB with TPC @ 5250-5725
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 # Source
 # https://www.imda.gov.sg/~/media/imda/files/regulation%20licensing%20and%20consultations/ict%20standards/telecommunication%20standards/radio-comms/imdatssrd.pdf?la=en
-- 
2.15.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
