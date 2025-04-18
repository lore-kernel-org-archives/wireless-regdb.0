Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 095DBC369C9
	for <wireless-regdb@archiver.kernel.org>; Fri, 18 Apr 2025 19:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:MIME-Version:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gqf9MNMQv1izUarlmFAo3gQSnimgXjxG/3jtSrbUYSA=; b=NmcboA7i+uOe0FbxhaR5KfruTQ
	aMMI+nCt+IsuyxRVx8cTpS+Fz23FWHPNaMSh1BlX5qeErpEXkbgMgBcGp2/IwKjPcTdql9qOb8hRn
	u/5DAmdJHiWIv4VEBQawof3DfisaEZ7jBWVlKBqwRFxdmWt2BdByj43tf9+YYmOaK8hS+wtLbcrAq
	Dkzoup48EXkOBMAlbcKcwyN89Y5PPfIK+eAnz/fQ15PEUZobLwc2GYKg1CxZNUBsetc2PBX0Lqcjw
	MHlVVf/a0qLZQj5zTTFfGIo3Ol3N8a67G6lV5JlDUgTiAkyFg7lFvCCcg+ax038kIu6jhswh0796h
	GPwql1CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5rUx-000000001SK-2dLx;
	Fri, 18 Apr 2025 19:35:39 +0000
Received: from forward401d.mail.yandex.net ([178.154.239.222])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5rUs-000000001QB-2noV
	for wireless-regdb@lists.infradead.org;
	Fri, 18 Apr 2025 19:35:39 +0000
Received: from mail-nwsmtp-mxback-production-main-46.klg.yp-c.yandex.net (mail-nwsmtp-mxback-production-main-46.klg.yp-c.yandex.net [IPv6:2a02:6b8:c43:7cf:0:640:f67c:0])
	by forward401d.mail.yandex.net (Yandex) with ESMTPS id 26F66627AE;
	Fri, 18 Apr 2025 22:35:30 +0300 (MSK)
Received: from mail.yandex.com (2a02:6b8:c43:4b0f:0:640:cb38:0 [2a02:6b8:c43:4b0f:0:640:cb38:0])
	by mail-nwsmtp-mxback-production-main-46.klg.yp-c.yandex.net (mxback/Yandex) with HTTPS id HYQFXn0L2Cg0-oPnIjwbU;
	Fri, 18 Apr 2025 22:35:29 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etylix.me; s=mail;
	t=1745004929; bh=Gqf9MNMQv1izUarlmFAo3gQSnimgXjxG/3jtSrbUYSA=;
	h=Message-Id:Date:Subject:To:From:Cc;
	b=5ZUImbyPVAolIyFTCGMlPiUQl4kj3QeNnHxaBsjOcQ3amWEYbZJl7017NgVgcl8Tf
	 kOdP0mdPAPQpTJ4aB5wfJgIsgPAxrnzHieXYZ4VERollau2DE1qPJgO0WQiyOSfz0t
	 0ZMDbOLSfa4Ai95ruiTea3amNQsdBQc+bGs7WAyI=
Authentication-Results: mail-nwsmtp-mxback-production-main-46.klg.yp-c.yandex.net; dkim=pass header.i=@etylix.me
Received: by mail-sendbernar-production-main-32.klg.yp-c.yandex.net with HTTP;
	Fri, 18 Apr 2025 22:35:29 +0300
From: Duy Hoang <duy@etylix.me>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Vietnam (VN) for 2025
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Sat, 19 Apr 2025 02:35:29 +0700
Message-Id: <2199341745004929@mail-sendbernar-production-main-32.klg.yp-c.yandex.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_123534_888459_26AD2D90 
X-CRM114-Status: UNSURE (   7.43  )
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
  - 200 mW (23 dBm)
  - DFS
* 5470 - 5725 MHz
  - 1000 mW (30 dBm)
  - DFS
* 5725 - 5850 MHz
  - 1000 mW (30 dBm)
* 5925 - 6425 MHz
  - LPI
    * 200 mW (23 dBm)
    * Indoor only
  - VLP
    * 25 mW (14 dBm)
    * Indoor and outdoor

[1] https://datafiles.chinhphu.vn/cpp/files/vbpq/2021/10/08-btttt.signed.pdf
[2] https://mic.gov.vn/van-ban-phap-luat/25099.htm

Signed-off-by: Hoang Pham Anh Duy <duy@etylix.me>
---
 db.txt | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index e331d4f..eb882de 100644
--- a/db.txt
+++ b/db.txt
@@ -2001,12 +2001,16 @@ country VI: DFS-FCC
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
+	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW
+	(5470 - 5725 @ 80), (1000 mW), DFS, AUTO-BW
+	(5725 - 5850 @ 80), (1000 mW), AUTO-BW
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
 # Source:
 # http://www.trr.vu/attachments/category/130/GURL_for_Short-range_Radiocommunication_Devices2.pdf
-- 
2.46.0.windows.1

