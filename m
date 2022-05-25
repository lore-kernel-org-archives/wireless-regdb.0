Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=P3EDkhxtj4ikG4BkjA4UcplsO+c4bD7ZInu2xi861XQ=;
 b=Xdak6p32owvVbN
 hXNuCMmtd5DuOfZNY+mnM6bRSWsembnE98E8XtoF94mrDLT3Aub2JOR4dIkRQ0JkCmjabn9Ysugi+
 Qiqcziiavm3rL1k4NSRdcS8dwET4oTlZLTecdKhIBR4sidQO9oduS9Vbk4ShtiksKMxQE0gfsLrL9
 MDS6IDTNLb5xZvkMQMqQk/xQlPHkeOscECFfHvXgwmxL216I1ACbFSz9wyMpoQh3SxpOkjPgBVoIc
 346H5GIHe77UMiVb3dloC86Ju5LQyW6Dnht7JPr+ezkF+vx6un0+YqOVt1Mj9pU50ixx2hehdlVrT
 +BwH7l8Ka4/2TqkMFMog==;
Received: from mail.tintel.eu ([51.83.127.189])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntrBO-00BFpA-Dw
	for wireless-regdb@lists.infradead.org; Wed, 25 May 2022 13:36:16 +0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu A6DC64541E34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
	s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1653485770;
	bh=h45dum25SYcDiIOd9Ov43qD2SBgSfhB7rTLuBrPU0GU=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=rICKj1208hKZ99EaJ/CAjWnmTJOE4heTuSNEUHfX3+PApYf2jYPVVREm0kB8l2CGR
	 S26d3WFCADezCOZgWoa/mLMPJBiw9cC25K3VuyAYZMCVcp0xN47jNy32OLbYqGh5+c
	 QiLcdDwL2RK9zqjlZcpk9xdFhXielRuD2ZQNN2e4=
From: Stijn Tintel <stijn@linux-ipv6.be>
Date: Wed, 25 May 2022 16:36:09 +0300
Message-Id: <20220525133609.1740457-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update regulatory rules
 for Bulgaria (BG) on 6GHz
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Petko Bordjukov <bordjukov@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Reviewed-by: Petko Bordjukov <bordjukov@gmail.com>
Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index fcdc74a..0d24e96 100644
--- a/db.txt
+++ b/db.txt
@@ -219,6 +219,10 @@ country BF: DFS-FCC
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # BG: https://crc.bg/files/_en/Electronic_Communications_Revised_EN1.pdf
 # BG: acceptance of 2006/771/EC https://crc.bg/files/Pravila_06_12_2018.pdf
+#
+# Amendment of the rules for free use of radio frequency spectrum
+# (Изменение и допълнение на Правилата за свободно използване на радиочестотния спектър)
+# https://dv.parliament.bg/DVWeb/showMaterialDV.jsp?idMat=168250
 country BG: DFS-ETSI
 	# Wideband data transmission systems (WDTS) in the 2.4GHz ISM band, ref:
 	# I.22 of the List, BDS EN 300 328
@@ -232,6 +236,8 @@ country BG: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	# I.43 of the List, BDS EN 300 440-2, BDS EN 300 440-1
 	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	# II.H03 of the List, BDS EN 302 567-2
 	(57000 - 66000 @ 2160), (40)
-- 
2.35.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
