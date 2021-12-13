Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
 Message-ID:Date:CC:To:From:Reply-To:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=WsWv9UTA5S5/1uhr1lgyThm2JYzT3WOMhNJKwu2RMHA=;
 b=h72
 dHk1f9gVTVsLPywXhynUeQKcsYqBcHlerVQDbZ2vtaEWbPaLBcUsFKc1k1FN8wFxe8YTPSaeWOvKu
 Vi37xmN/4PKXu0woTQzCWZI6V7iqiEDuvUYuYv3IZfXYNNw3z+en0YwYRa1A7ZPgNScmmBm+YFKPd
 tmkS4fhPaZ3J4KLBUEjzAiQxG6lYmHpEf72vfijhSELz3QJQtKy4UBJrgWMi/ekgZTgVnJfX7Mv7P
 JvWJk104DAAB7HVTMdFbnAfQW2ZEwdNH0eN2ktCqyAgHszZ6B+PkWUy9S8i+ecscwbbiYi4ecSS7S
 ZWUcx/4/On4VV0ARLVPX8OgCUpgWR3Q==;
Received: from alln-iport-3.cisco.com ([173.37.142.90])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwhUw-008acC-MH
 for wireless-regdb@lists.infradead.org; Mon, 13 Dec 2021 09:19:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3958; q=dns/txt; s=iport;
 t=1639387194; x=1640596794;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=c7O5EJd7QZuVLxge+g9no7XW4gKwxq1J+Rp1pBeBir8=;
 b=TZgXvaqpuLiq8D2nXQyaWE/iaYVVaXXG500hvzPKtd0xBp8+ZC4w2Ah0
 vQNq39hZbeiwZSJvHsdrJynOo9xkcfPXioAJE5pOVWZByCpEoGPv/JD47
 KdQU+LZX7yw+GLg4yze3rkRJPwTy4OuF7kY2k2FSYYOXbg9zLIiwoXVc3 o=;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cisco.onmicrosoft.com;  s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7O5EJd7QZuVLxge+g9no7XW4gKwxq1J+Rp1pBeBir8=;
 b=a/FwAs03g1w5a4FQ5bLmkGExWRe7HJ2rPVf1FCBjZUcApKUJiEqLr3I78rTFUNWsVniBbZRe4ZErPG8v+3/qn6xN1ig2eSAFXNbH6QV7RB3ge67YbzoSvUS/53fXs/hPwaRGn4O58pSlrfbeW1z5gTrOouI3mmEtMcT53N5/bRc=
From: "Asura Liu (asuliu)" <asuliu@cisco.com>
Date: Mon, 13 Dec 2021 09:19:50 +0000
Message-ID: <DM6PR11MB3116340921B7E66B0E4176A1D7749@DM6PR11MB3116.namprd11.prod.outlook.com>
Content-Language: en-US
Content-ID: <1D4F3AE8C17AFF4799D57C3F816BB2FF@namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for the
 US on 6 GHz band
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
To: "sforshee@kernel.org" <sforshee@kernel.org>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

From 3db25ea674232fea6a5efca292f6ed3fd8eba7a2 Mon Sep 17 00:00:00 2001
From: Asura Liu <asuliu@cisco.com>
Date: Mon, 13 Dec 2021 16:46:28 +0800
Subject: [PATCH] wireless-regdb: Update regulatory rules for the US on 6 GHz
band
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

According to FCC 20-51, FCC adopts rules to unlicensed use of the 6 GHz band:
"59. Third, the Commission limits the low-power indoor access points to lower power levels than the standard-power access points that operate under the control of an AFC. Consistent with the Commission's approach for the existing U-NII bands, the Commission specifies both a maximum power spectral density and an absolute maximum transmit power, both in terms of EIRP. Specifically, the Commission allows a maximum radiated power spectral density of 5 dBm per 1 megahertz and an absolute maximum radiated channel power of 30 dBm for the maximum permitted 320-megahertz channel (or 27 dBm for a 160-megahertz channel). In addition, to ensure that client devices remain in close proximity to the indoor access points, the Commission limits their PSD and maximum transmit power to 6 dB below the power permitted for the access points."
See https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6-ghz-band

And 47 CFR § 15.407 describe this as following:
(a) (5) For an indoor access point operating in the 5.925-7.125 GHz band, the maximum power spectral density must not exceed 5 dBm e.i.r.p. in any 1-megahertz band. In addition, the maximum e.i.r.p. over the frequency band of operation must not exceed 30 dBm.
(a) (8) For client devices operating under the control of an indoor access point in the 5.925-7.125 GHz bands, the maximum power spectral density must not exceed −1 dBm e.i.r.p. in any 1-megahertz band, and the maximum e.i.r.p. over the frequency band of operation must not exceed 24 dBm.
---
db.txt | 6 ++++++
1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index b898799..c6ef9b6 100644
--- a/db.txt
+++ b/db.txt
@@ -1606,6 +1606,12 @@ country US: DFS-FCC
	# https://www.federalregister.gov/documents/2021/05/03/2021-08802/use-of-the-5850-5925-ghz-band
	# max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
	(5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
+	# 6ghz band
+	# https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6-ghz-band
+	# https://docs.fcc.gov/public/attachments/FCC-20-51A1_Rcd.pdf
+	# max. 30 dBm AP @ 320MHz, 27 dBm AP @ 160MHz, 6 dB less for clients
+	(5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW
+	(5925 - 7125 @ 320), (24), NO-OUTDOOR, AUTO-BW, NO-IR
	# 60g band
	# reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
	# channels 1-6 EIRP=40dBm(43dBm peak)
-- 
2.30.1 (Apple Git-130)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
