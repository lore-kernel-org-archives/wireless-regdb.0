Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A393D35697
	for <wireless-regdb@archiver.kernel.org>; Wed, 28 Jan 2026 10:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oMa+ftwzu5Zxyl8tszsEemLVa3VTrTazl/Cz2Z7s67E=; b=YQ++WmbGsM0tVcm52qcYeR5VbA
	r/trFhWoqPklIVr8sKxX0HaRK+YGOBJ9WKTp1kT05ypAyk7DOe6RpZDxEcJaLy8gCderHfTtOyPto
	nvw1LCNfaWzKmqw165sTM6r8elS4JTBr0v81YC0RYV+yUSNNyFURaVkZtyHbxd0ot+qIzJFRRYC7y
	RqyJkZQ20vO+5t3stqgUCwJJaMT+TWbGpX6vAn9K1cl9a1y7WT8p3Ec7EONXwHrZPhJD2+Kea9SbQ
	ajR145liI6NTkAyVKBSvLOR6OjLSUJoPa4MvFYPpfjAvTqV+UOe9gTQHrswjzO5MDY6mfra5lCDMz
	yyhDV+Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl2kC-0000000FpXi-3usZ;
	Wed, 28 Jan 2026 10:25:52 +0000
Received: from relayout18.nic.in ([164.100.14.114])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl2k6-0000000FpX1-1vv8
	for wireless-regdb@lists.infradead.org;
	Wed, 28 Jan 2026 10:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=nic.in; i=@nic.in; q=dns/txt; s=NIC; t=1769595946;
  x=1801131946;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=3NDOijO22Tft7cIxE6M7OHKY8F0iaf8RKCkERV1nsbA=;
  b=xZdFlT3ik5qoF5gbcjS3GNuU1Gch9kZ25Ys7HkHHaJZDs2BPpMhm5J/N
   N8TKlXc/L5mFvDS9Ywt5jS35bdp+6CUW1FEgBRV3+z0zLMPqHT+3gaZCF
   hGoifwaOcsDh6JcvcUjCW4eH+mXpt1xIlLu6HBViGcf0j2yw/e/RB3Gc3
   E=;
X-IPAS-Result: =?us-ascii?q?A2AkAADkiuNo/yh6KAo+HBwBAQEBAQEHAQESAQEEBAEBQ?=
 =?us-ascii?q?AmBNgcBAQsBg0GBZYRUg1iERIlVnh2Bfw8BAQEBAQEBAQE9HQQBAYRBRoxJJ?=
 =?us-ascii?q?zQJDgECBAEBAQEDAgMBAQEBAQEQAQEGAQEBAQEBBgWBIYYJRg2GXQIlDwFGK?=
 =?us-ascii?q?AgFAiYCaQiDAgGCchQGQat5gTIaAmU7gx8DBAcBBg8KCxraI4FQBoEbLgGBa?=
 =?us-ascii?q?YZnAYR8cIJIgi+CT4EUAYNogVABgRABAQEBAReBKDsJJ4MOgmkEgiKBFoQOg?=
 =?us-ascii?q?iiJe4F6jgFIgQIcA1ksAVUTDQoLBwWBYwM1DAsuFW4yDg+BJ4ULhB4rT4UCg?=
 =?us-ascii?q?RiDUyJrDwaBFYNaBolmD4ImAwsYDUgRLDcUGwY9AW4HmFSDSmEDKioClVETk?=
 =?us-ascii?q?jmhEQeQPZU5TZd9A5JqAZkGjFqBLoh6jH1ZhlGBZBwCAwkHgR+DCFIZlQYRg?=
 =?us-ascii?q?iyrCnACOgIHAQoBAQMJk2cBAQ?=
IronPort-Data: A9a23:zS7MT6JSnIf7zu7TFE+RmJQlxSXFcZb7ZxGr2PjKsXjdYENS1mZTn
 2JJUG+OOvmPamKnc41+PYSw/U1X68PVyIU2SFAd+CA2RRqmi+KcXo3BcR2Y0wB+jyHnZBg6h
 ynLQoCYdKjYdleF+lH3dOGJQUBUjcmgXqD7BPPPJhd/TAplTDZJoR94kobVuKYx6TSEK1rlV
 e3a8pW31GCNhmYc3lI8s8qrtB5ptfLujzIU1nRWiSdj5QK2e9E9VfrzFInpR5fKatA88t2SG
 44v+IqEElbxpH/BPD8KfoHTKSXmSpaKVeSHZ+E/t6KK2nCurQRquko32WZ1hUp/0120c95NJ
 NpltIGbVx0jMKP2pfkGWQUCEXFXPZ9oweqSSZS/mZT7I0zub3/3x/xkFwcwPIZd8ettHSdI9
 PdeKTZlghKr3rrwnOr9E7M2wJh7RCXoFNp3VnVIwjjEF/84B5PKRb7D4fde3Tx2h8Ym8fP2P
 pFCOGAxMkueC/FJEktKMa0Tnb2Vv2e8c2ZUjxHJmrAx+HeGmWSd15CoarI5YOeiQcRTg1bdu
 WPc8mD0GQoyKtOS03yG/2iqi+uJmjn0MKoNFae18vNxmxiJy2MfAjUSVECnur+4jECkUt5SI
 kBS/TAhxYAt+UqwZtrwRRu1pDiDpBF0ZjZLO7Rirl3VjPOOuUDFXgDoUwJ8VTDvj+duLRRC6
 7NDt4mB6eBH2FFNdU+gyw==
IronPort-HdrOrdr: A9a23:fgurGK6YPgVHIZu7JQPXwNfXdLJyesId70hD6qm+c3Fom6uj5q
 KTdZUgpHzJYVkqN03I9erqBEDiexPhHPxOj7X5VI3KNDUO01HFEGgN1+HfKkXbehHDyg==
X-Talos-CUID: 9a23:QtFYBWxGQ2fhRP0mrkdiBgUVB+s7aHfTwk3tPlSyFTxrGJSVe3GprfY=
X-Talos-MUID: =?us-ascii?q?9a23=3AhjWu1w04jOLDm2XVCT+huXmuAzUj//mXN20My6g?=
 =?us-ascii?q?/pYqEbiBXeGuiljKsXdpy?=
X-IronPort-Anti-Spam-Filtered: true
Received: from unknown (HELO tlslabs.nic-cert.nic.in) ([10.40.122.40])
  by relayin.nic.in with ESMTP; 28 Jan 2026 15:55:30 +0530
From: gaurav.kansal@nic.in
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	Gaurav Kansal <gaurav.kansal@nic.in>
Subject: [PATCH] wireless-regdb: add IN rules for lower 6 GHz (5925-6425 MHz) LPI and VLP
Date: Wed, 28 Jan 2026 15:55:24 +0530
Message-ID: <20260128102525.872517-1-gaurav.kansal@nic.in>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_022548_313755_6E0A18D0 
X-CRM114-Status: UNSURE (   5.26  )
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

From: Gaurav Kansal <gaurav.kansal@nic.in>

    DoT / Gazette notification (20 Jan 2026) delicensed lower 6 GHz (5925-6425 MHz).
    Add rules for:
     - Low Power Indoor (LPI) 5925-6425 MHz, up to 1000 mW (30 dBm) EIRP, NO-OUTDOOR
     - Very Low Power (VLP) 5925-6425 MHz, up to 25 mW (14 dBm) EIRP

    References:
     - DoT / Gazette notification (Jan 20, 2026)
       https://blog.gauravkansal.in/2026/01/Gazette%20on%20the%20Use%20of%20Low%20Power%20and%20Very%20Low%20Power%20Wireless%20Access%20System%20in%20Lower%206%20GHz%20band%20-%202026.pdf
       https://blog.gauravkansal.in/2026/01/Opening-India-Lower-6-GHz-Band-for-Wireless-Use:-A-Strategic-Regulatory-Landmark.html
       https://en.wikipedia.org/w/index.php?title=List_of_WLAN_channels#India_2
     - Linux wireless-regdb db.txt format docs
    Signed-off-by: Gaurav Kansal gaurav.kansal@nic.in
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index dc72989..0f90f6e 100644
--- a/db.txt
+++ b/db.txt
@@ -974,12 +974,20 @@ country IL: DFS-ETSI
 # Source:
 # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
 # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018
+# Info about 6 GHz added by Gaurav Kansal (gaurav.kansal@nic.in)
+# Lower 6 GHz delicensed for India: 5925-6425 MHz (on 21.Jan.2026)
+# LPI: Low Power Indoor (indoor only) — 1000 mW = 30 dBm EIRP
+# VLP: Very Low Power (outdoor allowed at very low EIRP) — 25 mW = 14 dBm EIRP
+# https://blog.gauravkansal.in/2026/01/Opening-India-Lower-6-GHz-Band-for-Wireless-Use:-A-Strategic-Regulatory-Landmark.html
+# https://blog.gauravkansal.in/2026/01/Gazette%20on%20the%20Use%20of%20Low%20Power%20and%20Very%20Low%20Power%20Wireless%20Access%20System%20in%20Lower%206%20GHz%20band%20-%202026.pdf 
 country IN:
 	(2402 - 2482 @ 40), (30)
 	(5150 - 5250 @ 80), (30)
 	(5250 - 5350 @ 80), (24), DFS
 	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5875 @ 80), (30)
+	(5925 - 6425 @ 320), (1000 mW), NO-OUTDOOR, AUTO-BW
+        (5925 - 6425 @ 320), (25 mW), AUTO-BW
 
 # Source:
 # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
-- 
2.47.3


