Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ZzJBkYKVwHnBy4PQoVhCMbR6bal5ER1NDaJhhZa49BA=;
 b=Qd01B2JqRHL4yC
 2xL2Aj7LmN5DrAataDsV1kAfKqMkpX+Hebd6Rv5Qh6Tf0RtcQ1rJXjwljoV09OuwmaLPmO9W1N3p8
 YbrXNneiyD9IXzGO2Sn5pxpxcOwHCnWCPmrFtLkv/XNxcB8F6xOIazR6z3N+4uSLCUVBb8rVHQ4I6
 iPNBWGmtNJjkEj5cke0eZ6nNWYDGt3EW1/IAG6YrnxuIah6lTagx454UWieOeAhlJ2275lb99bV2c
 P9jSxOhXNw+/f+eo7Pt6a7KNQJvD2yWfxNSVxGgJix11ZxAsVCXE3d6w9SVSbOOGOYXuSWG+UIV1z
 LLrv0uMoQ+armX+3Jc8w==;
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chSl4-0003Pa-Gf
 for wireless-regdb@lists.infradead.org; Sat, 25 Feb 2017 03:10:56 +0000
Received: by mail-pg0-x242.google.com with SMTP id s67so5217755pgb.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 24 Feb 2017 19:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OnIR6vT3NH2jqmDJ26r6vokkF6/ZN4b2adsWQ2a3CF0=;
 b=O7WRMsG6R/OcOJ/yE+twSWCV0oaObERivkIfD4ejQg4ar29/DHK9QQv/jGx34nY6cx
 CAEE9mkr4yDwcG1lxJp5CUN1HCrrPZ599+eYQsSGwUmcGa1s8kVxCnEZZGrahnjCJocU
 RkN0MTWvyP8M4BeSrCn8rAOrWMbz1FBkg8r14FawDksNEdy0+oopNuyemuVi+q9bKNWf
 bYhYEjotZ596iLUww30bdzkS7ZdzoJis/0MbaaRXQURzara6VNo3i0FU+mY0+CgxbaWr
 uqCndZwPseNQ8WA8+kYNmfrStDSSSCRMoKY2Qkg6obylCE93m1mrbN4j6+YrCKsaZS3X
 Sb/Q==
From: Ryan Mounce <ryan@mounce.com.au>
Date: Sat, 25 Feb 2017 13:40:27 +1030
Message-Id: <20170225031027.7871-1-ryan@mounce.com.au>
In-Reply-To: <20170224145519.GD3479@ubuntu-hedt>
References: <20170224145519.GD3479@ubuntu-hedt>
Subject: [wireless-regdb] [PATCH v3] wireless-regdb: Update rules for
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

Sourced from the current legislation at
https://www.legislation.gov.au/Details/F2016C00432

The current rules exceed legal limits between 5250-5330MHz, and permit
illegal operation in 5600-5650MHz (disallowed regardless of DFS).

Frequency ranges and EIRP limits for all ranges have been updated to
match items 59-63, 65 in the linked document. As the rules for AU have
never previously mirrored local regulations, changes include a
significant increase in the allowable 2.4GHz EIRP and smaller increases
in most other bands.

In order to allow 80MHz operation between 5650-5730MHz (bordering two
bands) the lower, more restrictive band has been rounded up by 5MHz.

Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
---
 db.txt | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 05108e0..0f1e151 100644
--- a/db.txt
+++ b/db.txt
@@ -85,12 +85,20 @@ country AT: DFS-ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
+# Source:
+# https://www.legislation.gov.au/Details/F2016C00432
+# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
+# The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
+# In order to allow 80MHz operation between 5650-5730MHz the upper boundary
+# of this more restrictive band has been shifted up by 5MHz from 5725MHz.
 country AU: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (36)
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW, DFS
+	(5470 - 5600 @ 80), (27), DFS
+	(5650 - 5730 @ 80), (27), DFS
+	(5730 - 5850 @ 80), (36)
+	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
 
 country AW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

