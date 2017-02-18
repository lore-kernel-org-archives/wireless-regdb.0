Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=2T3aAEo+O/xB1vSxT5zbhlABla4M3yQGAtRkxXTSZ9I=;
 b=Jz0rxL5EwsVkXs
 zr5EMt0+E3p4T6/wsy+jS3BK8i7cd+U6/xiQszJriY+z7f7h6Ie3DK5xX2mjpj7qODsCiaF3VDAWH
 pHq3XPGUxNyXaFpB/SdRvVB4F3HQfyRK13WaIwZPYd2WWSdgCOH3w2aM7JaMBRCmo6gj6MfarFEhb
 tpd4vnj0pQ1jihz2xoukqob6ODFVEo7mqpHm0iFIDQjCqBRLkBq3w/iLnLO06/4bofVkxU9fI/HrD
 pOvEq0MkW0XTxHhRzjDOI9MEcblERFSBSv/+IVhPehx1YxsQaNzlU/sijVmtFap6Bux9M8ZsJ3Z7m
 T95CZZGLTKBbnWSj0e2w==;
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceydt-0003lF-3H
 for wireless-regdb@lists.infradead.org; Sat, 18 Feb 2017 06:37:15 +0000
Received: by mail-pg0-x241.google.com with SMTP id y6so5610143pgy.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 17 Feb 2017 22:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=JUhNv6EtYIqKYpkpdVs+LbUeDFkTJ/66rSkpsDsN8nc=;
 b=q/uaVubsn2PJqk0SELdGE6D+I5QapHOwNUVUTmQfQPAZbrmGRoUnMqDO6LtlFgxmd/
 UzHEzf5g8QoWPwadn0FIMRXDhwM7CyT1lJzGYOigI8yjlv/dQaDHtHoPCEmYiIvFDACV
 gcoQ7ezt4mDqgaz+IAz/K4InhCUcZGqSSC9kJCYlMGAzgCvIsLGm4RBs1VruvQ/puA+l
 feL0pNX/S8uyPYyUhiJRhLHbDrl4A6j9/iWO+VLWQewcsmQKoe9An8s87gCe+CduRaR+
 o06I7L3DYtezzl4zk6tsrbgvEKsdULf7OTNfCsNyVgcRpA0NE21uvNDqpNyz9J1Tz9uE
 S0fg==
From: Ryan Mounce <ryan@mounce.com.au>
Date: Sat, 18 Feb 2017 17:05:15 +1030
Message-Id: <20170218063515.16071-1-ryan@mounce.com.au>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Australia (AU) and add 60GHz rules
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Sourced from the latest legislation at
https://www.legislation.gov.au/Details/F2016C0043

The current rules exceed legal limits between 5250-5330MHz, and permit
illegal operation in 5600-5650MHz (reserved for weather radar).

Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
---
 db.txt | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 05108e0..b951e0c 100644
--- a/db.txt
+++ b/db.txt
@@ -85,12 +85,17 @@ country AT: DFS-ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
+# Source:
+# https://www.legislation.gov.au/Details/F2016C00432
+# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
 country AU: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2402 - 2482 @ 40), (36)
+	(5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+	(5250 - 5330 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
+	(5490 - 5590 @ 80), (30), DFS
+	(5650 - 5730 @ 80), (30), DFS
+	(5735 - 5835 @ 80), (36)
+	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
 
 country AW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

