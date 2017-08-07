Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=JcbUQhVWvhbDJoBVv4J0vwJpfAdqik3MHWl+xSRPr2o=;
 b=qZj4yl5TnIgVzv
 iC0F2lmv/3gy+KJAf751ltgAhibozOWEh1vEs2F6FZmbKSdWZbqnjm3tFLk7lFBuMcFRGfJeh1hFc
 BjFzMDnVvDDCnI1NONsWueOWJHI8oe7DAxGzkCSG1THsRbnJITN5pLyi4bkyhz+2hEAwRFnj9vMuv
 IRU6G+bLXh0tcFJzqVBYVM2Nu0eJVEc/1gqyfU6HRmL+WXjo6ji4Q2ARmAwUOpXOwWWkDmHY7tivt
 Y1isEmRhV3Y5RlZokNbMnI6QGkKUYk1N27XzJXfbQxxXYL5wyN4X4/EjNXU1sz6247UO3zL2E0M/m
 +Zhq5IHZROyY17dc9YPw==;
Received: from mail-qt0-x22f.google.com ([2607:f8b0:400d:c0d::22f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dedH1-0004rc-DP
 for wireless-regdb@lists.infradead.org; Mon, 07 Aug 2017 08:20:29 +0000
Received: by mail-qt0-x22f.google.com with SMTP id p3so36426227qtg.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 07 Aug 2017 01:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openmesh-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oI6q8Q8qfB06k4GTyLFgfz3TV9FNk+qvzswkjEjxOtU=;
 b=uvcfLZ8FEee3GQemEIqhuOPjNFznwEG7aa5hlfKaWyQGcZRUpz70hE+c3pA4lfMm8r
 eYtkEIqGnZlURRL0jXWYxyFFC4lRqBDPNNW+ZO8LykA4lhJ7Od7LTG2LcLct7OQ2cDtf
 nNfbH2utP3L4f6+tRo4kUtPjpfiZxgyzyLMmLLW4klh+mqjlfbu5t3f7ZDU8+uW5tOjH
 /x+v653mdj2Vp8pJNDMDi5dOcRaxwzbvfE9uwmTs2yZ2SCJpQopVJXgQvrv9u2r6pX0K
 GxolHYpZAEzg8xHgmjyumGpltGtCo6inAxB8+wTojQ5MJocAJ01e/JdMQBLVkIbPEGyf
 k4Bg==
From: Sven Eckelmann <sven.eckelmann@openmesh.com>
Date: Mon,  7 Aug 2017 10:19:50 +0200
Message-Id: <20170807081950.13327-1-sven.eckelmann@openmesh.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Singapore (SG)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Sven Eckelmann <sven.eckelmann@openmesh.com>
List-ID: <wireless-regdb@lists.infradead.org>

2.4GHz and the lower 5GHz band can now be use with up to 23dBm. But the DFS
channels in general require TPC to be usable. Only 5150 - 5250 has an
exception which allows the use of it without TPC when reducing the power to
20 dBm.

Signed-off-by: Sven Eckelmann <sven.eckelmann@openmesh.com>
---
Please check this twice because this is my first attempt in converting an
official regulatory document to an wireless-regdb entry.

 db.txt | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 0bc068e..df30f37 100644
--- a/db.txt
+++ b/db.txt
@@ -1078,12 +1078,17 @@ country SE: DFS-ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
+# Source
+# https://www.imda.gov.sg/~/media/imda/files/regulation%20licensing%20and%20consultations/ict%20standards/telecommunication%20standards/radio-comms/imdatssrd.pdf?la=en
+# page 12-14
+# The EIRP for 5250 – 5350 can be increased by 3dB if TPC is implemented.
 country SG: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (23)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
+	# 5470 - 5725 is only allowed when TPC is implemented
+	# (5470 - 5725 @ 160), (30), DFS
+	(5725 - 5850 @ 80), (30)
 
 country SI: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
