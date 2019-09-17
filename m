Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=dXIf6O5hGvpggicqaTIKMt88RoZrLhiZ2llcV+vFRJg=;
 b=KesCwAyKC8RWU2JgVJQeJNOJJ
 gUWPmup3K20hg2CYjIAEwh+LGQDZcQZj4mo8tlD2ep1sJUv+189xOnvQep3+98ptxxHYRGBNIMnF7
 iE2und6K9CgQoS61PV6DcA0TZgqzioStJN6Cg2Lhsvlr7a9B0sgTMWbrtjog8Nq0e9tQE3YhHIKR8
 jSLahXJweK/hVvoKW7i7kk76XJJJVPYcYwJFrPVPG6acyx7FaOIvLqzu6146aWbY/MJQ/5cn0cI2C
 Kg6zEBvoKGQHuVFyhFT1sbo9Y+JA216/bBX2WxcpOQwDvt05r1jkRsngcNOHJ5WerJwKLG5gmMyvc
 nL9R96T4w==;
Received: from bsmtp.bon.at ([213.33.87.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAACT-000457-8Y
 for wireless-regdb@lists.infradead.org; Tue, 17 Sep 2019 09:55:11 +0000
From: Emil Petersky <emil.petersky@streamunlimited.com>
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
 <20190907235636.GA8256@ubuntu-xps13>
 <a5bdfce7-e974-37bb-c1d1-956d4572703c@streamunlimited.com>
 <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
Message-ID: <76f464e9-8806-ecbf-2dc8-67bb4190ecc7@streamunlimited.com>
Date: Tue, 17 Sep 2019 11:55:07 +0200
MIME-Version: 1.0
In-Reply-To: <39933518-6a65-fab3-4a66-8f44fc319d57@streamunlimited.com>
Content-Type: multipart/mixed; boundary="------------721EDA64A3BDC61691136963"
Content-Language: en-US
Subject: [wireless-regdb] [PATCH] wireless-regdb: Create entry for united
 European region
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
--------------721EDA64A3BDC61691136963
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Create entry for united European region, as usage of frequency bands
is harmonized over EU and almost all CEPT countries as well.

All EU countries and almost all CEPT countries accepted decisions
2005/513/EC (5GHz RLAN, EN 301 893)
and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 EU decision 2005/513/EC:
https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 EU decision 2006/771/EC:
https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
Harmonized CEPT countries:
https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
Such decision make sense to create united European region (EU) in regdb

United region for EU in regdb will enable much easier handling of proper
wlan parameters on embedded devices sold across the Europe.

Following 40 EU/CEPT countries are fully harmonized:
AD    Andorra
AL     Albania
AT     Austria
BA     Bosnia and Herzegovina
BE     Belgium
BG     Bulgaria
CH     Switzerland
CY     Cyprus
CZ     Czechia
DE     Germany
DK     Denmark
EE     Estonia
ES     Spain
FI     Finland
FR     France
GB     United Kingdom of Great Britain and Northern Ireland
GR     Greece
HR     Croatia
HU     Hungary
IE     Ireland
IS     Iceland
IT     Italy
LI     Liechtenstein
LT     Lithuania
LU     Luxembourg
LV     Latvia
MC     Monaco
MD     Moldova
ME     Montenegro
MK     Macedonia
MT     Malta
NL     Netherlands
NO     Norway
PL     Poland
PT     Portugal
RO     Romania
RS     Serbia
SE     Sweden
SI     Slovenia
SK     Slovakia

Best regards,

Emil

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


--------------721EDA64A3BDC61691136963
Content-Type: text/plain; charset=UTF-8;
 name="0001-wireless-regdb-Create-entry-for-united-European-region.patch"
Content-Disposition: attachment;
 filename*0="0001-wireless-regdb-Create-entry-for-united-European-region.";
 filename*1="patch"
Content-Transfer-Encoding: 8bit

From b0500d84ea0c247f71ecbed90d38ce68cd2af8b8 Mon Sep 17 00:00:00 2001
From: Emil Petersky <emil.petersky@streamunlimited.com>
Date: Tue, 17 Sep 2019 11:45:04 +0200
Subject: [PATCH] wireless-regdb: Create entry for united European region

Signed-off-by: Emil Petersky <emil.petersky@streamunlimited.com>

Create entry for united European region, as usage of frequency bands
is harmonized over EU and almost all CEPT countries as well.

All EU countries and almost all CEPT countries accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
Harmonized CEPT countries: https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
Such decision make sense to create united European region (EU) in regdb

United region for EU in regdb will enable much easier handling of proper
wlan parameters on embedded devices sold across the Europe.
---
 db.txt | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/db.txt b/db.txt
index 30b9318..8964573 100644
--- a/db.txt
+++ b/db.txt
@@ -26,6 +26,19 @@ country 00:
 	# IEEE 802.11ad (60GHz), channels 1..3
 	(57240 - 63720 @ 2160), (0)
 
+# All EU countries and almost all CEPT countries accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
+# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
+#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
+#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+# Harmonized CEPT countries: https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+country EU: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
+
 # AD as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
-- 
2.23.0.windows.1


--------------721EDA64A3BDC61691136963
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--------------721EDA64A3BDC61691136963--


