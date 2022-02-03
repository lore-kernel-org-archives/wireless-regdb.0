Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309;
 h=Sender:List-Subscribe:List-Help
 :List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:From:To:MIME-Version
 :Date:Message-ID:Content-Type:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=N1Z/UwBKXzjvC81WbYnTLOIME8iYkDuTa1Na3lFE4fI=;
 b=Soetw808uj3scFXcymL33jeJ2b
 Jye/hO8HbVW0+oAkypRSXCtOZfdZYmB/L1Q03WRL5NfJhG/bt5MRffWbNCSb+y2q4SKQvsxpV3/yI
 fWhzaa1mUE/am7wAOGX84MwlJUWO8LMkAcFuiwNTYfjixcx7ufktn6GFtp3QGbCKDhekOUG0NuiwQ
 L8D1XOEQo4bOMF9xzYs1kZ3S5YpR2LCHnvWtuM0b16j8P50g9yE7t8DTgI0LpnUiI7YwvBflyGNx+
 JRfMA46e5+9g8j/F9Iq0tBJ0j6zjs8d5tJWxNnVMj0vqeG9/I+4leBJO5rD26P1O/mcpWudgluPkW
 jaGEh1DQ==;
Received: from mta.synnack.net ([2001:470:7b66:0:5054:ff:fe28:5f39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFZO0-000oF7-N5
 for wireless-regdb@lists.infradead.org; Thu, 03 Feb 2022 10:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=baanhofman.nl; s=exim; h=Subject:From:To:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T1U2OsGRorxdPNVkx39utiZFadX+8JPE7HyZru8ceNg=;
 b=LDBfXp7ysvS/NnAttPKqZeRx6T
 PrbTyXOW6VTXE0YqzrwLaCPL1TsgsuR05vLp1b/FyFCTpDFTwb0/HikeJNV8WwKoL/Pp5EBtVf7hs
 OPysdxlOwRfeg7YSrzb0+mE+zeK5FAKnXSYK4h5ICoB8uglIMrEboQot7coOORNSB+9k=;
Received: from [2a05:2d01:1:5:6f33:b7f7:ab11:9222]
 by mta.synnack.net with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <wilco@baanhofman.nl>) id 1nFZNs-0007Rc-Ka
 for wireless-regdb@lists.infradead.org; Thu, 03 Feb 2022 11:30:38 +0100
Content-Type: multipart/mixed; boundary="------------f98GJ1M0AyTCyTreL2QMMbv3"
Message-ID: <f05ace72-4ac3-4035-1cff-0ae12ebbf995@baanhofman.nl>
Date: Thu, 3 Feb 2022 11:30:36 +0100
MIME-Version: 1.0
Content-Language: en-US
From: Wilco Baan Hofman <wilco@baanhofman.nl>
Subject: [wireless-regdb] Update for the Netherlands
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This is a multi-part message in MIME format.
--------------f98GJ1M0AyTCyTreL2QMMbv3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,

I noticed the regulatory DB entry for the Netherlands has not been 
updated to match the rest of ETSI, despite the government opening up 
this spectrum in december 2021.

I have attached a patch, based on the announcement and law in the 
Netherlands.

NL official announcement: 
https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
NL effective law: https://wetten.overheid.nl/BWBR0036378/2021-12-15

Unfortunately only Dutch, but it matches 2021/1067/EU. (Indoor, 23dBm, 
only lower part of 6GHz)

Regards,

Wilco Baan Hofman


--------------f98GJ1M0AyTCyTreL2QMMbv3
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-wireless-regdb-Update-regulatory-rules-for-the-Nethe.patch"
Content-Disposition: attachment;
 filename*0="0001-wireless-regdb-Update-regulatory-rules-for-the-Nethe.pa";
 filename*1="tch"
Content-Transfer-Encoding: 8bit

From 2379e97eb143985b51ebb2895e68a9f330a8bb41 Mon Sep 17 00:00:00 2001
From: Wilco Baan Hofman <wilco@baanhofman.nl>
Date: Thu, 3 Feb 2022 11:21:28 +0100
Subject: [PATCH]     wireless-regdb: Update regulatory rules for the
 Netherlands (NL) on 6GHz

    In accordance with the EU Commision decision 2021/1067/EU the
    Dutch Ministry of Economic Affairs and Climate Policy has opened
    the use of the lower 6GHz spectrum, for indoor use, up to 23dBM (200mW).

    NL Announcement https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
    NL Law: https://wetten.overheid.nl/BWBR0036378/2021-12-15

    Unfortunately, only available in dutch.
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index 6dbda3c..2fb4b97 100644
--- a/db.txt
+++ b/db.txt
@@ -1178,6 +1178,10 @@ country NI: DFS-FCC
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # NL: http://wetten.overheid.nl/BWBR0036378/2015-03-05
+# Updated 14 december 2021 to allow the lower part of the 6GHz spectrum for WiFi 6E
+# mobile short distance equipment, broadband transmission equipment, license free, from day after publication
+# NL announcement: https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
+# NL law: https://wetten.overheid.nl/BWBR0036378/2021-12-15
 country NL: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1185,6 +1189,8 @@ country NL: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.31.1


--------------f98GJ1M0AyTCyTreL2QMMbv3
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--------------f98GJ1M0AyTCyTreL2QMMbv3--


