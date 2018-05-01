Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=WkN0ncqHcso8jo4PzXeTQsWp/2ysH8CzhKiTTf+B+b8=;
 b=Bu3PXkV7EoqB28
 rTXEb4ZxUdfP9ytMl5zIfTB1Wasdp/aUPqq4bfs7amEdewCEogWZpwcFYoFSph/5YNIDHgM7yU6vr
 NG25ol5+E68j52dXdg5cI/7dc9BhBBq+AECb9hJPD3JN+vBv3YGeO6Qrn4bSKq1zm7zfoKJcVAv33
 cf2ePLumm+b3q3yzil9cPr87OpCO+fl2QRBsHwfIrtTvcXGm5+f8cFvGf9oeyjREJFrIE2E4J40Mo
 8ne238nSoaLzvs3MgOrO5yzyQqGT/cYS/p3tj7oiA2eeZnIit6cx0fx+ShpvluZpbyn6NHphK7eyv
 jjd+g9M3fMTWeSQbbsaw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDbhB-00034R-0F
 for wireless-regdb@lists.infradead.org; Tue, 01 May 2018 20:16:18 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fDbgy-0007nS-Di
 for wireless-regdb@lists.infradead.org; Tue, 01 May 2018 20:16:04 +0000
Received: by mail-io0-f198.google.com with SMTP id g5-v6so7321068ioc.4 for
 <wireless-regdb@lists.infradead.org>; Tue, 01 May 2018 13:16:04 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Tue,  1 May 2018 15:16:00 -0500
Message-Id: <20180501201600.29126-1-seth.forshee@canonical.com>
In-Reply-To: <863d1ab01d8e45b9a16d53e56ec6c5a0@NASANEXM01E.na.qualcomm.com>
References: <863d1ab01d8e45b9a16d53e56ec6c5a0@NASANEXM01E.na.qualcomm.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update rules for QA and
 add 5 GHz and 60 GHz rules
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
To: wireless-regdb@lists.infradead.org
Cc: Faisal Wiryasantika <faisal.wiryasantika@gmail.com>, Michael Green <green@qti.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 990abf997a12..153d837e6928 100644
--- a/db.txt
+++ b/db.txt
@@ -1031,9 +1031,13 @@ country PY: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country QA: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 80), (30)
+country QA: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
+	(5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
+	(5725 - 5875 @ 80), (100 mW), NO-OUTDOOR, DFS
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country RE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.17.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

