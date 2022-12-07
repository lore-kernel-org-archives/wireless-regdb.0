Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309;
 h=Sender:List-Subscribe:List-Help
 :List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
 MIME-Version:Message-Id:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=nmBYeMgSu/RaAFfuAeVBlb3oyOoiPlrAtWkXOn8fZlM=;
 b=iZF2wTB/bH9LoTBOk/YNaF8v/O
 rsiuLa5K5Mvz5ZEHkTfkAyZQa9co9r2Ln8UkaMPOYmcHz85oiLtQM4OASNNLebdwSJCDAcoxv8FVn
 1TswhNitVEdDyHRMswaDtiBSZvinFANLwA6I0ZgiC8mAeWk0BNNdvaTukoEC7bby/i1Eh8yoQN/Mw
 a6u3SBylxRKt2BbTsl3prXT8ghcOXip6PEUgAFxJ5DADu8BIwjaSbzwNvAuWBd66X7AthsfcDpwbx
 fzVUhlCbonGFw7XC7BWWJu/1iWXajU1QRbhRnM0ksMlAna6h2UwxGR8aLDWeEITU+rWGte7PtE+7/
 jCfdhMJQ==;
Received: from sender11-of-o52.zoho.eu ([31.186.226.238])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2s5t-000EDf-E0
	for wireless-regdb@lists.infradead.org; Wed, 07 Dec 2022 10:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 t=1670410561; s=zmail; d=hak.dog; i=kleo@hak.dog;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-Id:Message-Id:Subject:Subject:MIME-Version:Content-Type:Reply-To;
 bh=27mX4Vxa84Q/vH0D2HA7DK/SXxiwCdpXDqEyWLB3wRc=;
 b=GqG3nLvlM6aRel4/aVbD3u8h4P77txAWNxj/WNV/urHMp/KJ8XwO/uWM5EAPiHZE
 2VainlA7zUs9QN+hmOHSZL+DZWkaKEmmH1o5nGsUpaBlLUxO0ZQ+PE7G/D2h7o39DM0
 sJU1QT8pBSIF1S8L1cZaF2PqNyLb/ZHRDvxH42fI=
Date: Wed, 07 Dec 2022 18:56:00 +0800
From: kleo <kleo@hak.dog>
Message-Id: <184ec3a63fe.d96b82f6427171.7593361304891506395@hak.dog>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1234383_1310708108.1670410560511"
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Philippines (PH)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: sforshee <sforshee@kernel.org>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

------=_Part_1234383_1310708108.1670410560511
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

diff --git a/db.txt b/db.txt
index 3f74194..fa9ffd7 100644
--- a/db.txt
+++ b/db.txt
@@ -1368,11 +1368,17 @@ country PG: DFS-FCC
        (5735 - 5835 @ 80), (30)
 
 country PH: DFS-FCC
-       (2402 - 2482 @ 40), (20)
-       (5170 - 5250 @ 80), (17), AUTO-BW
-       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
-       (5490 - 5730 @ 160), (24), DFS
-       (5735 - 5835 @ 80), (30)
+       # https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2003/MC-09-09-2003.pdf
+       # https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2013/MC-03-08-2013.pdf
+       # https://ntc.gov.ph/wp-content/uploads/2016/MC/Explanatory-MC-No-01-01-2016.pdf
+       # https://ntc.gov.ph/wp-content/uploads/2022/mc/Memorandum_Cicurlar_No._002-09-2021.pdf
+       (915 - 918 @ 2), (30)
+       (2400 - 2483.5 @ 40), (24)
+       (5150 - 5250 @ 80), (24), AUTO-BW
+       (5250 - 5350 @ 80), (24), DFS, AUTO-BW
+       (5470 - 5730 @ 160), (24), DFS
+       (5730 - 5850 @ 80), (30)
+       (57000 - 66000 @ 2160), (40)
 
 country PK: DFS-JP
        # https://fab.gov.pk/type-approval/

c5da72a2fef48891aceb3f3378afbb12a2778c83e9f053f5d23e589630536b61  country-ph.patch

kleo




------=_Part_1234383_1310708108.1670410560511
Content-Type: application/octet-stream; name=country-ph.patch
Content-Transfer-Encoding: 7bit
X-ZM_AttachId: 138896930253290500
Content-Disposition: attachment; filename=country-ph.patch

diff --git a/db.txt b/db.txt
index 3f74194..fa9ffd7 100644
--- a/db.txt
+++ b/db.txt
@@ -1368,11 +1368,17 @@ country PG: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 
 country PH: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	# https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2003/MC-09-09-2003.pdf
+	# https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2013/MC-03-08-2013.pdf
+	# https://ntc.gov.ph/wp-content/uploads/2016/MC/Explanatory-MC-No-01-01-2016.pdf
+	# https://ntc.gov.ph/wp-content/uploads/2022/mc/Memorandum_Cicurlar_No._002-09-2021.pdf
+	(915 - 918 @ 2), (30)
+	(2400 - 2483.5 @ 40), (24)
+	(5150 - 5250 @ 80), (24), AUTO-BW
+	(5250 - 5350 @ 80), (24), DFS, AUTO-BW
+	(5470 - 5730 @ 160), (24), DFS
+	(5730 - 5850 @ 80), (30)
+	(57000 - 66000 @ 2160), (40)
 
 country PK: DFS-JP
 	# https://fab.gov.pk/type-approval/

------=_Part_1234383_1310708108.1670410560511
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

------=_Part_1234383_1310708108.1670410560511--



