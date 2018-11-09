Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=79nE27DRWIeMtXis781QSXkiWVY4Pl3h5H5U33Di4SY=;
 b=oZQqf2G0S2x5/0
 a88JpEn82qlnleXoYmVVxp+wi+o7g76GDGahAPm33VtK9M7PtwlLseff9Ky7UbywDH2n5iOxIQ6Gr
 gH12YSIcqRlFOY0Uv9Y7tnkQReG9H2aSV3KXCO9AHBppdt6yD77RyMQOj53z7hiIcUg+eJhC1X1I4
 n9rah8IlHcVPOIzyxCdE0CCFk63ORCmU5Nr0dF/p/Ge2vTauYQp1EqAyS5i2BTOGBZ2o74LGg+utj
 iBRxYvS1nlbZ0/EThDdBvvWZnrbNWJiqFQfo/jT1vwTHsNWW0lKMdrdfeTBuy5y0mLF+Jnpem0w0T
 FTmheHHsJj7ORId/3qPg==;
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL9ZJ-00060g-2z
 for wireless-regdb@lists.infradead.org; Fri, 09 Nov 2018 16:23:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id b203-v6so2467554wme.5
 for <wireless-regdb@lists.infradead.org>; Fri, 09 Nov 2018 08:23:26 -0800
 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uFNSWfjEVRjxBVi/h0p6c5lkg8AafdP2KyZdJzBrb98=;
 b=JYNw3e4JXPurJLVbVKsKlXe4aWnP+mmgFjbPALew/gjv2XixpxlfkX6sfLc76E8nKb
 Xyf+VBf21x80Yy+X35kN9okgvYamvvm7VjM8n++8SAOY1CJnV+4qMR505dbVr+ank8ED
 ZKnsToQ0XofGGAbDf87NhARNitwpMhm/w2kqjFt0XaxtqM0Vmd5SzxLvglC0WrVTlpsr
 HluLqmG7FAD4d8APdJtaKquQscmsdeiktTEpHwRHYBNyXNS4lJXdy4unF67zdSVtj6CT
 tkE3yG3H8d6cGIALbG8k5K8Hb5RwasE8HY0+iZEdhOqN71IFYpamofwqrbC1LQR9yZK1 GPIA==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Fri,  9 Nov 2018 17:23:23 +0100
Message-Id: <20181109162323.25024-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] crda: add URLs to README
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
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>, "Luis R . Rodriguez" <mcgrof@kernel.org>, Xose Vazquez Perez <xose.vazquez@gmail.com>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Cc: Luis R. Rodriguez <mcgrof@kernel.org>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 README | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/README b/README
index 5d89b83..88f2623 100644
--- a/README
+++ b/README
@@ -1,5 +1,6 @@
  Central Regulatory Domain Agent (CRDA)
 ========================================
+<https://wireless.wiki.kernel.org/en/developers/regulatory/crda>
 
 This is the Central Regulatory Domain Agent for Linux. It serves one
 purpose: tell Linux kernel what to enforce. In essence it is a udev
@@ -46,6 +47,7 @@ with this package as regulatory.rules
 
  OVERVIEW
 ==========
+<https://wireless.wiki.kernel.org/en/developers/regulatory>
 
 The database is maintained on the wireless-regdb.git tree. This git
 tree maintains a binary regulatory database file which is produced
-- 
2.19.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

