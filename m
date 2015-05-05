Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpYHR-00011I-9s
 for wireless-regdb@lists.infradead.org; Tue, 05 May 2015 08:32:42 +0000
Received: by lbbuc2 with SMTP id uc2so122547103lbb.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 01:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubnt.com; s=google;
 h=date:from:to:subject:message-id:mime-version:content-type
 :content-transfer-encoding;
 bh=6jK8KQCANAG11OwRQMa79W/lbYdPLIegl6/fWbH3JdY=;
 b=AEG/PRLC+y4FeAT8RJ3HgFC8M/38gKunxyw26Vj56MMjx93ixbL8gAq0+975CFCXxt
 llskJZG0Ah50PXblnxmor5W7Rn0kForrI9Wit9yYCQvL/HhPeGUGK6j5yjidLx90TeA8
 hLiPX8WEN6F3+PVgbYrcs4wgT62OQb9y6v78s=
Received: from di ([80.233.186.214])
 by mx.google.com with ESMTPSA id jq15sm3893577lab.27.2015.05.05.01.32.17
 for <wireless-regdb@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2015 01:32:17 -0700 (PDT)
Date: Tue, 5 May 2015 11:32:16 +0300
From: Dmitry Ivanov <dmitrijs.ivanovs@ubnt.com>
Message-Id: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] Specify Australian DFS region as DFS-ETSI
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
List-ID: <wireless-regdb@lists.infradead.org>

Currently, DFS region for Australia is not specified. This prevents starting AP with AU country code on DFS-affected channel in 5 GHz band with latest cfg80211 and hostapd because there is an explicit check for such condition.

This patch specifies DFS region for Australia as DFS-ETSI. Alternatively, DFS-FCC can be used.

Source: AS/NZS 4268 (not avilable online).

---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ad2acf5..057c8e6 100644
--- a/db.txt
+++ b/db.txt
@@ -85,7 +85,7 @@ country AT: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country AU:
+country AU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

