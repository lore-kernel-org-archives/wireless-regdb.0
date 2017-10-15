Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=6wrqZJgE1P7dp8MYDwkMVkkeHDBVecQAanUmXI2W0Ek=;
 b=C3d1NHIeUR3V85
 wR89Oq0BwQcnR7dMoi+yMyX7Ffv5J3OM+JEVYxs5Q7id6Dd+/W+V86fYuzNAdm33YX6uiBn+Rs6jr
 Ahe8eJjqdrbQeL6bWWXISLxmlFAaQjU+hVkty223q73NPqiqWkrwIjWUs1cPj4OdkJv08J/KgQMta
 crIupOm0G1b8XZcgvDmge/ZwAmq2alrcR6y79vTIU+5EAgGNwcpgo7irNf+qpLX8Gg5eHcrWutfeM
 b/ONrAmuwlkmMqEhhrwPz70ZWS0wbzCwWh//iX+2FKcjon7aGzLARBP83tMv8U4BEnlOOn1R3dwOd
 Pj9pOAgRG1+8YHJ68KjA==;
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3jFv-000820-0U
 for wireless-regdb@lists.infradead.org; Sun, 15 Oct 2017 13:47:05 +0000
Received: by mail-wm0-x243.google.com with SMTP id u138so5811254wmu.0 for
 <wireless-regdb@lists.infradead.org>; Sun, 15 Oct 2017 06:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id;
 bh=f5V5El3w5bM+GWDRvzoXtruzybmbb9qBnlw6URN1Z6Y=;
 b=IZc7KcrJwx7MHw4K1P/b2krA6z25jVGQFo6+nrl5HmJL7tGBxvRjHkff/8BMFSgSP8
 1RuYqhkxqzdsi/S4Gv88ZCrUOa02xYWCbVO5BqRESBllIivh+qKutaR+ZC67drV4QN6W
 Ck/OWTxdsD7Mpzz/F7+FqsT0rqEpGyqGHwzQXVUOSQDiA+fWPduVOtSX/Mnyio5FTN1C
 +8bRqqsLf/Zu091rXH21tLlFo5BHzUUBSjfb8ot+fIimohV2M/Fi+LBSjAaXgwrQaI2t
 7nrSSI5m1yKbpA/E8ibn+fOCTel9YP3KNNuHmnr5eJlMKR5xhDX2YotuTOVy4SOIS/z8 We9Q==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Sun, 15 Oct 2017 15:46:37 +0200
Message-Id: <20171015134637.2760-1-xose.vazquez@gmail.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: add Short Range Devices
 (SRD) (ETSI EN 300 440) for Spain
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
Cc: linux-wireless@vger.kernel.org, Seth Forshee <seth.forshee@canonical.com>, Xose Vazquez Perez <xose.vazquez@gmail.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

UN - 130 Dispositivos de corto alcance en 5 GHz :
https://www.boe.es/buscar/act.php?id=BOE-A-2013-4845&tn=1&p=20150410

Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index e48f9a6..1509491 100644
--- a/db.txt
+++ b/db.txt
@@ -431,6 +431,8 @@ country ES: DFS-ETSI
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (500 mW), DFS
+	# Short Range Devices (SRD) (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.14.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

