Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F14C3ABD8
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 09:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:MIME-Version:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0Kx9ib+Ofl/vDR5bndogDZ9PCi/VQn+K6y2Dhv2ezE4=; b=dWJQ9e9B4ShnCntFIG2JFjSScx
	MQeiWSzubM0Ns2NRYBipMJyf3/nfEUpjmI9ecmQC2+sVBNb+AqoTDKAUjyc1oC3umFy7f8ilbOIgz
	2OdGQriKov4L8Zi+IkJe/gdg2e1X/SIt4HrQqWTj1zh55dIufzAbk9ceBvm7/dAXXnaN/k8xrGbQj
	DpyJcf1fBH3wrYOlQ7VdvzHZIE0fPJZ7/jqmj75nKaX0HS8u3uj8cVpDmy99spSKkFFxlsDXmy39U
	2Ffjwv23TPTJ9oQuCnkX+3kspb99prX/huNd2RLk+yVLi374c0NdbzJzk55clxKC3RMrxR5BB19lm
	zjxGjNHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqxc-00000002wFX-110o;
	Fri, 16 May 2025 09:02:32 +0000
Received: from forward100d.mail.yandex.net ([2a02:6b8:c41:1300:1:45:d181:d100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqxY-00000002wDV-0KIB
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 09:02:30 +0000
Received: from mail-nwsmtp-mxback-production-main-39.klg.yp-c.yandex.net (mail-nwsmtp-mxback-production-main-39.klg.yp-c.yandex.net [IPv6:2a02:6b8:c43:4784:0:640:7e86:0])
	by forward100d.mail.yandex.net (Yandex) with ESMTPS id 49F0A60B04;
	Fri, 16 May 2025 12:02:19 +0300 (MSK)
Received: from mail.yandex.com (2a02:6b8:c43:bc8:0:640:a01e:0 [2a02:6b8:c43:bc8:0:640:a01e:0])
	by mail-nwsmtp-mxback-production-main-39.klg.yp-c.yandex.net (mxback/Yandex) with HTTPS id I2FWFo3L2Sw0-13Witsxj;
	Fri, 16 May 2025 12:02:18 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etylix.me; s=mail;
	t=1747386138; bh=0Kx9ib+Ofl/vDR5bndogDZ9PCi/VQn+K6y2Dhv2ezE4=;
	h=Message-Id:Date:Subject:To:From:Cc;
	b=TIpUGNmvWCVH3lL94cjU2+gunftQQK65xI5513cPLxWSskZfNrA81GMfoQFeN4Pzo
	 q4Nj3iYT+EGAcn1aXsQ/27ZHw/B17leUOtfjoPxTFue9MS8a87wRot0KK7IzV2/vkS
	 w+EplfpQvtENn9AlBzkgN5yBioQQffgTzJbJ5P3k=
Authentication-Results: mail-nwsmtp-mxback-production-main-39.klg.yp-c.yandex.net; dkim=pass header.i=@etylix.me
Received: by mail-sendbernar-production-main-36.klg.yp-c.yandex.net with HTTP;
	Fri, 16 May 2025 12:02:18 +0300
From: Duy Hoang <duy@etylix.me>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Vietnam (VN) for 2025
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 16 May 2025 16:02:18 +0700
Message-Id: <12521651747386138@mail-sendbernar-production-main-36.klg.yp-c.yandex.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_020228_298048_B254515E 
X-CRM114-Status: UNSURE (   8.13  )
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

According to [1] and [2]:
- Update frequency range to match with Circular
- Update units from dBm to mW to match values listed in Circular
- Add AUTO-BW flags to allow the use of 160 MHz based on other rules
- Update to allow use of 6 GHz band

Detail:
* 2400 - 2483.5 MHz
  - 200 mW (23 dBm)
* 5150 - 5250 MHz
  - 200 mW (23 dBm)
  - Indoor only
* 5250 - 5350 MHz
  - 100 mW (20 dBm)
  - DFS/TPC
* 5470 - 5725 MHz
  - 500 mW (27 dBm)
  - DFS/TPC
* 5725 - 5850 MHz
  - 1000 mW (30 dBm)
* 5925 - 6425 MHz
  - LPI
    * 200 mW (23 dBm)
    * Indoor only
  - VLP
    * 25 mW (14 dBm)
    * Indoor and outdoor
* 57000 - 66000 MHz
  - 10000 mW

[1] https://datafiles.chinhphu.vn/cpp/files/vbpq/2021/10/08-btttt.signed.pdf
[2] https://mic.gov.vn/van-ban-phap-luat/25099.htm

Signed-off-by: Hoang Pham Anh Duy <duy@etylix.me>
---
Patch v2:
  - Since Linux does not support TPC, reduce 5250 - 5350 MHz to 100 mW and 5470 - 5725 MHz to 500mW
  - Add AUTO-BW for 6GHz band
  - Add 60GHz
---
 db.txt | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index e331d4f..4e9539b 100644
--- a/db.txt
+++ b/db.txt
@@ -2001,12 +2001,17 @@ country VI: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# https://datafiles.chinhphu.vn/cpp/files/vbpq/2021/10/08-btttt.signed.pdf
+# https://mic.gov.vn/van-ban-phap-luat/25099.htm
 country VN: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5730 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (200 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW
+	(5470 - 5725 @ 80), (500 mW), DFS, AUTO-BW
+	(5725 - 5850 @ 80), (1000 mW), AUTO-BW
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR, AUTO-BW
+	(57000 - 66000 @ 2160), (10000 mW), NO-OUTDOOR
 
 # Source:
 # http://www.trr.vu/attachments/category/130/GURL_for_Short-range_Radiocommunication_Devices2.pdf
-- 
2.46.0.windows.1

