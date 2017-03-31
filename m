Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=yPeN2rc/tJ2RdJqewTSdfZh2OdFTlqi92HJThuRXVis=;
 b=GT0
 SExC6jh+EOhm5awO0u37PnO5yIRkgAWqc3fhYYKkZhSoXx+GcIrbU20ZwHEvNjh8VVaOQmYmcTMOT
 351EezNeOcs0Hx5CYB0PJn43JA/DEXYPe6HzTF7Fr2y3IrQz5asvLOKpJ12kpzdzzuUaAt3tgeifu
 4uS5Euom80Q2eZfWfEkSORHIbEoo7WLq7S84ogDqic0jdkHN/jl75FK0liIgbcHTGJpdNIki9B+5V
 1hFmFLOu0i0u8FZvxjX4+rc5GqMrwCYBM62L4CSud5opBZF5xyIRJbS9kN7i8AvKX/U3xFrG1qLUX
 npjppX708fP6dAoPv/fnnP/X+CxTUfg==;
Received: from mail-yw0-x230.google.com ([2607:f8b0:4002:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctlwI-0001Xq-Gr
 for wireless-regdb@lists.infradead.org; Fri, 31 Mar 2017 02:05:24 +0000
Received: by mail-yw0-x230.google.com with SMTP id d191so32595419ywe.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 Mar 2017 19:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=logitech-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=aRxr34axpEvvr3HGDw3prf6AGwxvRf4xnwictobJf0o=;
 b=Q/nqqorC4ZvGuojzgW/Tw/eq/gfJUrkQW0E2FqzWu2uz5K0HOkqDqOL7yNpv3P25/R
 PsbYspxY2zi8orI4g4u6k+bcb/7LRlt0fxaTX23MXmP6V3HmaSSg6a5+Ynhq8Tev3FHY
 DzSDmtu94dS5EyEL4VpZvDHPyjUjPCLfECNJqCXTaz4GBXCxB+XH0aG0fDJtbx8ExAeu
 FSa9KJ375ol5kJJ4mYSAX1kVNB6zf+f4bGftRlu4s+AyYW07PRKCW9lsmUtdbJuYCLTM
 XafRNgB8EVcb3RtMnWqQwYkZGjY9I4leDq8PdB97kiItEI7qVAJgXSgHzEbmanJkXLIU
 wEBQ==
MIME-Version: 1.0
From: Aron Rosenberg <arosenberg@logitech.com>
Date: Thu, 30 Mar 2017 19:04:39 -0700
Message-ID: <CA+XFNZ6WnzJhegQfo-zRk2bbVOT9U4tPHYmPhYdwOXjBSknP0g@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] Set NO-OUTDOOR Flag on Canada 5Ghz 5150
 to 5250
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

wireless-db: Update rules for Canada 5ghz to add NO-OUTDOOR

According to [1] Canada requires NO-OUTDOOR to set be on 5150 to 5250

[1] http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html Section 6.2.1

Signed-off-by: Aron Rosenberg <arosenberg@logitech.com>

diff --git a/db.txt b/db.txt
index 88444a0..0bc068e 100644
--- a/db.txt
+++ b/db.txt
@@ -236,9 +236,11 @@ country BZ: DFS-JP
        (2402 - 2482 @ 40), (30)
        (5735 - 5835 @ 80), (30)

+# Source:
+# https://www.ic.gc.ca/eic/site/smt-gst.nsf/vwapj/rss-247-i2-e.pdf/$file/rss-247-i2-e.pdf
 country CA: DFS-FCC
        (2402 - 2472 @ 40), (30)
-       (5150 - 5250 @ 80), (23), AUTO-BW
+       (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
        (5250 - 5350 @ 80), (24), DFS, AUTO-BW
        (5470 - 5600 @ 80), (24), DFS
        (5650 - 5730 @ 80), (24), DFS

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

