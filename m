Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=cSl6Jul9N6XYEieDa3oRQTwyZwn3gfFbro8z9dHKeBM=;
 b=sHdkdoEC6FUJ3B
 03mbDfSugGg5F0aRdRrC/6nvaPuvmVE871nR9EY7NugULnc0oh+/eZ2HsImWaZpPg18887eel3zNi
 F1BGz7Hz+aZ9bDFKxNCRVjB/lqCVWGW2bqJQOmNwtsp1Bj8Rj5a+NcqUR3d+hl3seRHa+VYIiZT1p
 eilyUB4F38yMoiJlgp9Prpr1iFQTAb0rXuilZgrcquXT4qXLanVa0lxA7WxF3H3GW/qk04IV6jlMN
 K4uOoYwjnUAPjCKNkq+dvBtrCP0diMRdTTL/dWdUHtwiFSPSHsTRiOvmuSkEtGYsmhsfZiu2NOqMA
 1yw8Zir7Z6XoMTLkXE2g==;
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nugSJ-000v1b-W8
	for wireless-regdb@lists.infradead.org; Fri, 27 May 2022 20:21:11 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id
 f5-20020a4aa685000000b0040e7e819183so994926oom.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 27 May 2022 13:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NQPVix0l199KR/Bz/1aC7K+1MGHksFC4dlRtceJIrl0=;
 b=fEpzcNnJxkH2EDRTIuZdS3UatwguXX9WN9nBe6IdHLZ4XaGePJoUnYKu9Z4IG0G4Lj
 9Myz68VHZjzAxFz0/kAQUp4Qe3Y0+NK+xtgIfOTq00HI+QYcIjwDxDMRjkF4ooSwoaVI
 6nbUuADhaKnNv2+9HguUpM3uhmf+TlHeViaOIUSVc6WhYHcoT8UUEuZUlgXdz75Y6K3P
 VwF6SB+i8rVKeYlhIL1hT1NwBTDjpsqxzDH16uPLd8Zofl9JGgcI1VY2ZPwJDI0FN3SL
 9vxCCMSkTZGD3+wCtFMRKT6TUnW4PpnMTD3V5vgDQuj0PEdvjaK+/Rf9FJVUVYf9x3pq ssNA==
From: Seth Forshee <seth@forshee.me>
Date: Fri, 27 May 2022 15:21:03 -0500
Message-Id: <20220527202103.134799-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Unify 6 GHz rules for EU
 contries
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
Cc: linux-wireless@vger.kernel.org, Dennis Bland <dennis@dbperformance.com>
List-ID: <wireless-regdb@lists.infradead.org>

Article 3 of Decision (EU) 2021/1067 states that member states must
adopt rules for harmonised use of the 5945-6425 MHz band by Dec 1, 2021.
Update rules for all member states to include a reference to the
decision, and add the rule for countries which do not yet have it.

Some countries currently have the power limit specified as 200 mW.
Update these countries to use the 23 dBm limit specified by the decision
instead, which is equivalent.

Suggested-by: Dennis Bland <dennis@dbperformance.com>
Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 76 ++++++++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 71 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index d3555ff6e625..16b38b7cb2b2 100644
--- a/db.txt
+++ b/db.txt
@@ -107,6 +107,7 @@ country AS: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # AT: https://www.rtr.at/en/tk/Spektrum5GHz/1997_bmvit-info-052010en.pdf
 # AT: acceptance https://www.ris.bka.gv.at/Dokumente/BgblAuth/BGBLA_2014_II_63/BGBLA_2014_II_63.pdfsig
@@ -117,6 +118,8 @@ country AT: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -176,6 +179,7 @@ country BD: DFS-JP
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # BE: https://www.ibpt.be/public/files/en/21760/B03-01_2.1_EN.pdf
 # BE: https://www.ibpt.be/public/files/en/21761/B03-02_2.1_EN.pdf
@@ -188,6 +192,8 @@ country BE: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -216,6 +222,7 @@ country BF: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # BG: https://crc.bg/files/_en/Electronic_Communications_Revised_EN1.pdf
 # BG: acceptance of 2006/771/EC https://crc.bg/files/Pravila_06_12_2018.pdf
@@ -408,6 +415,7 @@ country CX: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # CY: http://www.mcw.gov.cy/mcw/dec/dec.nsf/all/292484CFC7013DD4C2256EBA0023D447/$file/Sxedio%20Radiosyxnothtwn%20ths%20Dhmokratias-3-8-2018-E2.2(English%20Unified%20Unofficial).pdf?openelement
 country CY: DFS-ETSI
@@ -417,6 +425,8 @@ country CY: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -424,6 +434,7 @@ country CY: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # CZ: https://www.ctu.cz/cs/download/vseobecna-opravneni/archiv/vo-r_12-06_2010-09.pdf
 # CZ: https://www.ctu.cz/sites/default/files/obsah/ctu/vseobecne-opravneni-c.vo-r/10/12.2017-10/obrazky/vo-r10-122017-10.pdf
@@ -434,6 +445,8 @@ country CZ: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -441,6 +454,7 @@ country CZ: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 #
 # Allocation for the 2.4 GHz band (Vfg 10 / 2013, Allgemeinzuteilung von
@@ -476,7 +490,7 @@ country DE: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -484,6 +498,7 @@ country DE: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # DK: https://ens.dk/sites/ens.dk/files/Tele/frekvensplan_0.pdf
 # 5GHz: https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
@@ -495,6 +510,8 @@ country DK: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -531,6 +548,7 @@ country EC: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # EE: https://www.ttja.ee/et/ettevottele-organisatsioonile/sideteenused/raadioseadmed/wifi-seade
 # EE: https://www.itu.int/ITU-D/study_groups/SGP_1998-2002/JGRES09/pdf/estonia.pdf
@@ -541,6 +559,8 @@ country EE: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -554,6 +574,7 @@ country EG: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # ES: https://avancedigital.mineco.gob.es/espectro/Paginas/cnaf.aspx
 country ES: DFS-ETSI
@@ -564,7 +585,7 @@ country ES: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -603,6 +624,7 @@ country FM: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # FR: https://www.anfr.fr/fileadmin/mediatheque/documents/tnrbf/TNRBF_2021-12-14.pdf
 country FR: DFS-ETSI
@@ -613,7 +635,7 @@ country FR: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E low power indoor
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-6 (ETSI EN 302 567 v2.2.1)
 	(57000 - 71000 @ 2160), (40)
 
@@ -679,6 +701,7 @@ country GP: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # GR: https://www.eett.gr/opencms/export/sites/default/EETT_EN/Electronic_Communications/Radio_Communications/TelecommunicationEquipment/Radio_equipment_interface_requirement_2012.pdf
 # GR: https://www.eett.gr/opencms/export/sites/default/EETT_EN/Electronic_Communications/Radio_Communications/TelecommunicationEquipment/Radio_equipment_interface_requirement_107.pdf
@@ -689,6 +712,8 @@ country GR: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -728,6 +753,7 @@ country HR: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # HR: http://tablice.hakom.hr:8080/vis?lang=en
 # 6E: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_236.pdf
@@ -738,7 +764,7 @@ country HR: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -753,6 +779,7 @@ country HT: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # HU: http://stir.nmhh.hu/?oldal=dokumentumGeneralo&root_rendeletelem_id=3&hatalyos=1
 # HU: http://english.nmhh.hu/cikk/297/Eljarasi_tajekoztato_a_24_GHzes_es_az_5_GHzes_savban_mukodo_berendezesek_engedelyezeserol
@@ -764,6 +791,8 @@ country HU: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -777,6 +806,7 @@ country ID: DFS-JP
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # IE: https://www.comreg.ie/publication-download/interface-requirements-for-radio-services-in-ireland
 # IE: https://www.comreg.ie/publication-download/permitted-short-range-devices-ireland
@@ -787,6 +817,8 @@ country IE: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -835,6 +867,7 @@ country IS: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country IT: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -843,6 +876,8 @@ country IT: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -991,6 +1026,7 @@ country LS: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # LT: https://www.rrt.lt/en/radio-spectrum/frequency-management/ or direct link:
 # LT: https://www.e-tar.lt/portal/lt/legalAct/6e718fd037a011e69101aaab2992cbcd/dGRioCBBHb
@@ -1001,6 +1037,8 @@ country LT: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1008,6 +1046,7 @@ country LT: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # LU: https://assets.ilr.lu/frequences/Documents/ILRLU-1723895916-183.pdf#search=en%20300%20440
 country LU: DFS-ETSI
@@ -1017,6 +1056,8 @@ country LU: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1024,6 +1065,7 @@ country LU: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # LV: http://likumi.lv/doc.php?id=198903
 country LV: DFS-ETSI
@@ -1033,6 +1075,8 @@ country LV: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1151,6 +1195,7 @@ country MR: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # MT: https://www.mca.org.mt/sites/default/files/NFP_edition%206-1.pdf
 country MT: DFS-ETSI
@@ -1160,6 +1205,8 @@ country MT: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1214,6 +1261,7 @@ country NI: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # NL: http://wetten.overheid.nl/BWBR0036378/2015-03-05
 # Updated 14 december 2021 to allow the lower part of the 6GHz spectrum for WiFi 6E
@@ -1228,7 +1276,7 @@ country NL: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1318,6 +1366,7 @@ country PK: DFS-JP
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country PL: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -1326,6 +1375,8 @@ country PL: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1346,6 +1397,7 @@ country PR: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # PT: https://www.anacom.pt/render.jsp?categoryId=336334
 country PT: DFS-ETSI
@@ -1355,6 +1407,8 @@ country PT: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1390,6 +1444,7 @@ country RE: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # RO: http://www.ancom.org.ro/en/uploads/links_files/ordin_262_2006.pdf
 country RO: DFS-ETSI
@@ -1399,6 +1454,8 @@ country RO: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1443,6 +1500,7 @@ country SA: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # SE: https://pts.se/globalassets/startpage/dokument/legala-dokument/foreskrifter/radio/beslutade_ptsfs-2018-3-undantagsforeskrifter.pdf
 country SE: DFS-ETSI
@@ -1452,6 +1510,8 @@ country SE: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1479,6 +1539,7 @@ country SG: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # SI: https://www.akos-rs.si/bwa
 country SI: DFS-ETSI
@@ -1488,6 +1549,8 @@ country SI: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1495,6 +1558,7 @@ country SI: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # SK: https://www.teleoff.gov.sk/data/files/25911.pdf
 # SK: https://www.teleoff.gov.sk/data/files/41072.pdf
@@ -1506,6 +1570,8 @@ country SK: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# 6 GHz band
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

