Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=WJTQDAX2W1Qj8vXKfi5gMLMwRTmwwc3cxLhXuTGms10=;
 b=DAisW4GNm5l8Ug
 0U7lkaA5eQt9TmlVKIQgs23Km6JDPpPzGWABjh1zrXJRv2eqajH1YYqJddxsNyeaf8mrBOVu+rdbB
 nUVcRrTHxhP1UrWgDdngHBB4bxptUx+JOoBXHEOJMHGFxaCrz9kh58BHXEVS35J4T4ddoR3bPvtqi
 9wfQBejZNbCZZkIuvsvApLQd44Z/gQeU31CrVllB6GzhJyxijPxxWU8rxshNX/oPzd6cnB2IJ5P6k
 A8e20Z/ROpgLaNNcALP4k5InRlATaL7asIW5DKIYD0ks28JTchr5/l3VK5c1OPRbZk6F6otFynEgu
 KEDLjgn4JdEKhZJJtNiw==;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dl94e-0000kK-R5
 for wireless-regdb@lists.infradead.org; Fri, 25 Aug 2017 07:30:40 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47]) by
 mailout.nyi.internal (Postfix) with ESMTP id 52ADC2105A for
 <wireless-regdb@lists.infradead.org>; Fri, 25 Aug 2017 03:30:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
 :x-sasl-enc; s=fm1; bh=VjwaqKA51wYUS61EkgdXhhxnhf3R2XjcgC/5NN3Ob
 hU=; b=fWqSY1a8mP/KT5l9S3pw1U48ZFk0mMTmA6Uk/riXL2gd7gmF09YJIhMwQ
 fAzS+bhuV3HN1aicjNnGwAHzD71cuVMnPfD20phctv2WqYzCCd5rep6meXPIzByl
 nZZ1/eEJzHuov01oaBIL4lFTC+fGD1PUOiTfeuDiXidZBzmfpIAHt7Ls2sYhx2LX
 87pSnalgAroh4WQN6Vf3E+WJ2qXOKkPr/FL3ANo9wHUsxCet4DVNbKYxiSiGqWVM
 hsdDnkyffVUGjos8udXDScGWFnDDQwLLbu5Xzpt4DVj7WRMAr6Pbs2mICoTmg0VN
 5nXoJ9oohoG27H7hD+1OSewl2lJ/w==
Received: from localhost (110-175-0-221.tpgi.com.au [110.175.0.221]) by
 mail.messagingengine.com (Postfix) with ESMTPA id 5D276247A2 for
 <wireless-regdb@lists.infradead.org>; Fri, 25 Aug 2017 03:30:10 -0400 (EDT)
Date: Wed, 23 Aug 2017 18:11:00 +1000
From: Edwin Steele <edwin@wordspeak.org>
Message-ID: <20170823081100.GB44003@mercury.local>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH] Update rules for Turkey 5ghz
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


Update rules for Turkey 5ghz

Based on the information from [1] the power limit for 5Ghz channels
can be increased. Additionally 5170-5330Mhz are restricted to indoor
use.

There are references to e.i.r.p density in [1] that will affect the
power available for wide channels, but they are not reflected in
this change as it's unclear how they would be specified.

[1] https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf                                                                                                 
Signed-off-by: Edwin Steele <edwin at wordspeak.org>

diff --git a/db.txt b/db.txt                         
index 0bc068e..9a1192f 100644                        
--- a/db.txt                                         
+++ b/db.txt                                         
@@ -1158,11 +1158,15 @@ country TN: DFS-ETSI         
        (5170 - 5250 @ 80), (20), AUTO-BW            
        (5250 - 5330 @ 80), (20), DFS, AUTO-BW       
                                                     
+# Source:                                           
+# By-Law on Short Range Radio Devices (SRD) Oct 2015
+# https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf                                                                                                 
+# Article 8                                         
 country TR: DFS-ETSI                                
-       (2402 - 2482 @ 40), (20)                     
-       (5170 - 5250 @ 80), (20), AUTO-BW            
-       (5250 - 5330 @ 80), (20), DFS, AUTO-BW       
-       (5490 - 5710 @ 160), (27), DFS               
+       (2400 - 2483.5 @ 40), (20)                   
+       (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+       (5250 - 5330 @ 80), (23), DFS, NO-OUTDOOR, AUTO-BW                                                
+       (5470 - 5725 @ 160), (30), DFS               
        # 60 GHz band channels 1-4, ref: Etsi En 302 567                                                  
        (57000 - 66000 @ 2160), (40)                 
                                                     


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

