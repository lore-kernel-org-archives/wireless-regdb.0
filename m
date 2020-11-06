Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=5MDJd6KajVYmg3fbCL+5jC0YqhmsBZK9CcftGr//5+k=;
 b=nnIY/FC8Sl71zCVSuxgyfGgp9V
 JfomOwsoAsQ40w62vQ9FqFoGTmzAjCkLSQauojE3HGxnDbqxl/wRoIZtrMXceHOSFAjE/c2gZ+JIy
 mhourmez/VtvWygw/zQVcDGsC4CJJ5V7sHp8z1XkUKek3Mmyfi6JaOf7vEC8AOEQbNUkF7swAdHft
 41X4qpdn9x1CRl+tQ9k6kU0ZcEWYzxat8zcjjesUe2ICNAF7KrfsyEOa+oo/BsSTkIHRVwUmw2cbI
 y17c9MzwZ1BINDuO008WVrT09MRqe4P4QddA/Sj85CGQhqZG++7hZCln1CDVD8MazxuDei1zLWiIj
 MYUCnzeA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb9fm-0000cD-6H
 for wireless-regdb@lists.infradead.org; Fri, 06 Nov 2020 21:53:31 +0000
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kb9fi-0001wk-LN
 for wireless-regdb@lists.infradead.org; Fri, 06 Nov 2020 21:53:26 +0000
Received: by mail-il1-f199.google.com with SMTP id c9so2110679ilu.20 for
 <wireless-regdb@lists.infradead.org>; Fri, 06 Nov 2020 13:53:26 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri,  6 Nov 2020 15:53:24 -0600
Message-Id: <20201106215324.91265-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update 5.8 GHz regulatory
 rule for GB
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
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Based on [1], the 5.8 GHz limit for GB is 200 mW and requires DFS
and TPC. Update the rule accordingly.

While at it, expand the 5470 - 5725 rule to 5730 as specified in
the same document to allow channel 144 to be used.

[1] https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 699bce9fb9d8..39e1928fe384 100644
--- a/db.txt
+++ b/db.txt
@@ -593,9 +593,9 @@ country GB: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
-	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
+	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
-	(5725 - 5875 @ 80), (25 mW)
+	(5725 - 5875 @ 80), (100 mW), DFS
 	# 60 GHz band channels 1-6
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.27.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

