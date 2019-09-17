Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=fjxkRobYQ5UszubAiVqRBLjW6Vl+XOx2LVXVxPzyWUc=;
 b=pTTE+l7CKSjGxXifDEvQjD0rs
 piD5Js9MR2FMTvQbxBrX0AXX8KaHkU3CvrosjKjssFHBc87s58KF2YQb3y6ipgK8pzrMGJqbAzsom
 QWDL9AkoKtC59ED3z8w8ShteiJph4MU4U5Sr2DNUTHsdDce0seKBgx+AhrtL7uNHwENhf9gaq2cmK
 SDz5N2/zX/lsdIsj5MiZsMhKUzaLVIMv6KG8sn9Wh1uKqljVjm6NY1eJ7lOqF4nQxIte/8ehB6Jee
 vSqRDvrYh/8KyZkdj+J8Rp8p/Fie0u0Bth6Ho838X2uYc9gYT49ehYJylSOOzRgpEUwf7nqm99SCo
 yBGZY4xhw==;
Received: from bsmtp.bon.at ([213.33.87.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9KJ-0007k2-Vf
 for wireless-regdb@lists.infradead.org; Tue, 17 Sep 2019 08:59:16 +0000
From: Emil Petersky <emil.petersky@streamunlimited.com>
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
 <20190907235636.GA8256@ubuntu-xps13>
 <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
Message-ID: <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
Date: Tue, 17 Sep 2019 10:59:08 +0200
MIME-Version: 1.0
In-Reply-To: <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
Content-Type: multipart/mixed; boundary="------------4DCDE98B4E62D76823876336"
Content-Language: en-US
Subject: [wireless-regdb] [PATCH] wireless-regdb: Harmonize ranges of CEPT
 countries (stand of July 2019)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

This is a multi-part message in MIME format.
--------------4DCDE98B4E62D76823876336
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch unites entries for CEPT countries according
https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
(CEPT ERC Recommendation70-03, Edition of June 2019) which lists all
CEPT countries, who has harmonized those standards.

The most important (definition) entries are:
  Table 1 / rows i and j (SRDs for 2.4 and 5GHz bands)
  Table 3 / row b (2.4 GHz band)
  Table 14 / rows e1, e2 and f (5GHz bands)

and Appendix 1 - National implementation
with sub-tables and rows representing implementation of above standards:
  ANNEX 1: NON-SPECIFIC SHORT RANGE DEVICES
    Annex i: 2400-2483.5 MHz
    Annex j: 5725-5875 MHz
  ANNEX 3: WIDEBAND DATA TRANSMISSION SYSTEMS
    Annex b: 2400-2483.5 MHz
  ANNEX A: INFORMATIVE ANNEX COVERING THE APPLICATIONS OPERATING UNDER
GENERAL AUTHORISATION...
    Annex e1: 5150-5350 MHz    ECC/DEC/(04)08
    Annex e2: 5470-5725 MHz    ECC/DEC/(04)08
    Annex f: 5875-5905 MHz    ECC/DEC/(08)01

-- 
Emil Petersky

________________________________________________________________________

StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Office: +43 1 667 2002 4679 Fax: +43 1 667 2002 4401
Mail to: emil.petersky@streamunlimited.com
Visit us: www.streamunlimited.com

Meet us at:
IFA - Berlin, 6-11 September, hall 1.2/booth 224
CEDIA - Denver, 12-14 September
Hong Kong Electronics show - Hong Kong, 13 - 16 October


--------------4DCDE98B4E62D76823876336
Content-Type: text/plain; charset="utf-8"; name="0001-wireless-regdb-Harmonize-ranges-of-CEPT-countries-st.patch"
Content-Disposition: attachment;
 filename*0="0001-wireless-regdb-Harmonize-ranges-of-CEPT-countries-st.pa";
 filename*1="tch"
Content-Transfer-Encoding: 8bit

From 954f4ac85682e51945d7d40f8e90b5c0329cb546 Mon Sep 17 00:00:00 2001
From: Emil Petersky <emil.petersky@streamunlimited.com>
Date: Tue, 17 Sep 2019 10:47:15 +0200
Subject: [PATCH] wireless-regdb: Harmonize ranges of CEPT countries (stand of
 July 2019)

This patch unites entries for CEPT countries according
https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
(CEPT ERC Recommendation70-03, Edition of June 2019) which lists all
CEPT countries, who has harmonized those standards.

The most important (definition) entries are:
  Table 1 / rows i and j (SRDs for 2.4 and 5GHz bands)
  Table 3 / row b (2.4 GHz band)
  Table 14 / rows e1, e2 and f (5GHz bands)

and Appendix 1 - National implementation
with sub-tables and rows representing implementation of above standards:
  ANNEX 1: NON-SPECIFIC SHORT RANGE DEVICES
    Annex i: 2400-2483.5 MHz
    Annex j: 5725-5875 MHz
  ANNEX 3: WIDEBAND DATA TRANSMISSION SYSTEMS
    Annex b: 2400-2483.5 MHz
  ANNEX A: INFORMATIVE ANNEX COVERING THE APPLICATIONS OPERATING UNDER
GENERAL AUTHORISATION...
    Annex e1: 5150-5350 MHz    ECC/DEC/(04)08
    Annex e2: 5470-5725 MHz    ECC/DEC/(04)08
    Annex f: 5875-5905 MHz    ECC/DEC/(08)01

Signed-off-by: Emil Petersky <emil.petersky@streamunlimited.com>
---
 db.txt | 155 +++++++++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 122 insertions(+), 33 deletions(-)

diff --git a/db.txt b/db.txt
index b08935e..30b9318 100644
--- a/db.txt
+++ b/db.txt
@@ -26,12 +26,18 @@ country 00:
 	# IEEE 802.11ad (60GHz), channels 1..3
 	(57240 - 63720 @ 2160), (0)
 
-
-country AD:
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, wmmrule=ETSI
-	(5490 - 5710 @ 80), (27), DFS, wmmrule=ETSI
+# AD as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries: https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+country AD: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -56,11 +62,18 @@ country AI: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
 	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
 
+# AL as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country AL: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20.00), AUTO-BW
-	(5250 - 5330 @ 80), (20.00), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27.00), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 
 country AM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -91,6 +104,7 @@ country AS: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # AT: https://www.rtr.at/en/tk/Spektrum5GHz/1997_bmvit-info-052010en.pdf
 # AT: acceptance https://www.ris.bka.gv.at/Dokumente/BgblAuth/BGBLA_2014_II_63/BGBLA_2014_II_63.pdfsig
 country AT: DFS-ETSI
@@ -129,11 +143,18 @@ country AZ: DFS-ETSI
 	(5170 - 5250 @ 80), (18), AUTO-BW
 	(5250 - 5330 @ 80), (18), DFS, AUTO-BW
 
+# BA as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country BA: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -151,6 +172,7 @@ country BD: DFS-JP
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # BE: https://www.ibpt.be/public/files/en/21760/B03-01_2.1_EN.pdf
 # BE: https://www.ibpt.be/public/files/en/21761/B03-02_2.1_EN.pdf
 # BE: https://www.ibpt.be/public/files/en/21762/B03-03_2.1_EN.pdf
@@ -190,6 +212,7 @@ country BF: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # BG: https://crc.bg/files/_en/Electronic_Communications_Revised_EN1.pdf
 # BG: acceptance of 2006/771/EC https://crc.bg/files/Pravila_06_12_2018.pdf
 country BG: DFS-ETSI
@@ -290,10 +313,12 @@ country CF: DFS-FCC
 	(5490 - 5730 @ 40), (24), DFS
 	(5735 - 5835 @ 40), (30)
 
+
 # CH as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # CH: https://www.ofcomnet.ch/api/rir/1010/05
 # CH: https://www.ofcomnet.ch/api/rir/1010/04
 # CH: https://www.ofcomnet.ch/api/rir/1008/12
@@ -360,10 +385,12 @@ country CX: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+
 # CY as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # CY: http://www.mcw.gov.cy/mcw/dec/dec.nsf/all/292484CFC7013DD4C2256EBA0023D447/$file/Sxedio%20Radiosyxnothtwn%20ths%20Dhmokratias-3-8-2018-E2.2(English%20Unified%20Unofficial).pdf?openelement
 country CY: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -379,6 +406,7 @@ country CY: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # CZ: https://www.ctu.cz/cs/download/vseobecna-opravneni/archiv/vo-r_12-06_2010-09.pdf
 # CZ: https://www.ctu.cz/sites/default/files/obsah/ctu/vseobecne-opravneni-c.vo-r/10/12.2017-10/obrazky/vo-r10-122017-10.pdf
 country CZ: DFS-ETSI
@@ -395,6 +423,7 @@ country CZ: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 #
 # Allocation for the 2.4 GHz band (Vfg 10 / 2013, Allgemeinzuteilung von
 # Frequenzen für die Nutzung in lokalen Netzwerken; Wireless Local Area
@@ -415,7 +444,6 @@ country CZ: DFS-ETSI
 # Bereich 57 GHz - 66 GHz für Funkanwendungen für weitbandige
 # Datenübertragungssysteme; „Multiple Gigabit WAS/RLAN Systems (MGWS)“).
 # https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2011_08_MGWS_pdf.pdf
-
 country DE: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -430,6 +458,7 @@ country DE: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # DK: https://ens.dk/sites/ens.dk/files/Tele/frekvensplan_0.pdf
 # 5GHz: https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
 # 60GHz: https://erhvervsstyrelsen.dk/sites/default/files/radiograenseflader-63.pdf
@@ -474,6 +503,7 @@ country EC: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # EE: https://www.ttja.ee/et/ettevottele-organisatsioonile/sideteenused/raadioseadmed/wifi-seade
 # EE: https://www.itu.int/ITU-D/study_groups/SGP_1998-2002/JGRES09/pdf/estonia.pdf
 country EE: DFS-ETSI
@@ -495,6 +525,7 @@ country EG: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # ES: https://avancedigital.gob.es/espectro/Paginas/cnaf.aspx
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -516,6 +547,7 @@ country ET: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country FI: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -537,6 +569,7 @@ country FM: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country FR: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -551,6 +584,7 @@ country FR: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0019/136009/Ofcom-Information-Sheet-5-GHz-RLANs.pdf
 # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
 country GB: DFS-ETSI
@@ -606,6 +640,7 @@ country GP: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # GR: https://www.eett.gr/opencms/export/sites/default/EETT_EN/Electronic_Communications/Radio_Communications/TelecommunicationEquipment/Radio_equipment_interface_requirement_2012.pdf
 # GR: https://www.eett.gr/opencms/export/sites/default/EETT_EN/Electronic_Communications/Radio_Communications/TelecommunicationEquipment/Radio_equipment_interface_requirement_107.pdf
 country GR: DFS-ETSI
@@ -654,6 +689,7 @@ country HR: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # HR: http://tablice.hakom.hr:8080/vis?lang=en
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -675,6 +711,7 @@ country HT: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # HU: http://stir.nmhh.hu/?oldal=dokumentumGeneralo&root_rendeletelem_id=3&hatalyos=1
 # HU: http://english.nmhh.hu/cikk/297/Eljarasi_tajekoztato_a_24_GHzes_es_az_5_GHzes_savban_mukodo_berendezesek_engedelyezeserol
 # HU: http://nmhh.hu/dokumentum/319/kis_hatotavolsagu_eszkozok_srdk.pdf
@@ -697,6 +734,7 @@ country ID: DFS-JP
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # IE: https://www.comreg.ie/publication-download/interface-requirements-for-radio-services-in-ireland
 # IE: https://www.comreg.ie/publication-download/permitted-short-range-devices-ireland
 country IE: DFS-ETSI
@@ -729,6 +767,7 @@ country IR: DFS-JP
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # IS: https://www.pfs.is/library/Skrar/Tidnir-og-taekni/MHZ_21022019.pdf
 country IS: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -744,6 +783,7 @@ country IS: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country IT: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -857,6 +897,7 @@ country LC: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # LI: https://www.ofcomnet.ch/api/rir/1010/05
 # LI: https://www.ofcomnet.ch/api/rir/1010/04
 # LI: https://www.ofcomnet.ch/api/rir/1008/12
@@ -890,6 +931,7 @@ country LS: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # LT: https://www.rrt.lt/en/radio-spectrum/frequency-management/ or direct link:
 # LT: https://www.e-tar.lt/portal/lt/legalAct/6e718fd037a011e69101aaab2992cbcd/dGRioCBBHb
 country LT: DFS-ETSI
@@ -906,6 +948,7 @@ country LT: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # LU: https://assets.ilr.lu/frequences/Documents/ILRLU-1723895916-183.pdf#search=en%20300%20440
 country LU: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -921,6 +964,7 @@ country LU: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # LV: http://likumi.lv/doc.php?id=198903
 country LV: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -937,27 +981,48 @@ country MA: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 
+# MC as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country MC: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 
 # Source:
 # http://www.cnfr.md/index.php?pag=sec&id=117&l=en
+# MD as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country MD: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 
 # Source:
 # http://www.cept.org/files/1050/Tools%20and%20Services/EFIS%20-%20ECO%20Frequency%20Information%20System/National%20frequency%20tables/Montenegro%20NAFT%20-%202010.pdf
+# ME as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country ME: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 
 country MF: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -972,11 +1037,18 @@ country MH: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# MK as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country MK: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1019,6 +1091,7 @@ country MR: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # MT: https://www.mca.org.mt/sites/default/files/NFP_edition%206-1.pdf
 country MT: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -1081,6 +1154,7 @@ country NI: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # NL: http://wetten.overheid.nl/BWBR0036378/2015-03-05
 country NL: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -1096,6 +1170,7 @@ country NL: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # NO: https://eng.nkom.no/technical/temporary-licenses/mobile-videolink/wireless-cameras-mobile-video-links/_attachment/9947
 # NO: http://www.lovdata.no/dokument/SF/forskrift/2012-01-19-77
 # In addition to EU NO can use 5725–5795 MHz and 5815–5850 bands with limit of 4 W EIRP (with DFS and TPC)
@@ -1173,6 +1248,7 @@ country PK: DFS-JP
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country PL: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1200,6 +1276,7 @@ country PR: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # PT: https://www.anacom.pt/render.jsp?categoryId=336334
 country PT: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -1243,6 +1320,7 @@ country RE: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # RO: http://www.ancom.org.ro/en/uploads/links_files/ordin_262_2006.pdf
 country RO: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -1256,10 +1334,18 @@ country RO: DFS-ETSI
 
 # Source:
 # http://www.ratel.rs/upload/documents/Plan_namene/Plan_namene-sl_glasnik.pdf
+# RS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country RS: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
-	(5150 - 5350 @ 40), (200 mW), NO-OUTDOOR
-	(5470 - 5725 @ 20), (1000 mW), DFS
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1289,6 +1375,7 @@ country SA: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # SE: https://pts.se/globalassets/startpage/dokument/legala-dokument/foreskrifter/radio/beslutade_ptsfs-2018-3-undantagsforeskrifter.pdf
 country SE: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -1316,6 +1403,7 @@ country SG: DFS-FCC
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # SI: https://www.akos-rs.si/bwa
 country SI: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
@@ -1331,6 +1419,7 @@ country SI: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # SK: https://www.teleoff.gov.sk/data/files/25911.pdf
 # SK: https://www.teleoff.gov.sk/data/files/41072.pdf
 # SK: https://www.teleoff.gov.sk/data/files/49125_vpr-01_2018-rusi-vpr-10_2014a21_2012-nespecifik-srd_021018.pdf
-- 
2.23.0.windows.1


--------------4DCDE98B4E62D76823876336
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--------------4DCDE98B4E62D76823876336--


