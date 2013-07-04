Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY0C-0002lc-Dg
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:06:28 +0000
Received: by mail-pb0-f45.google.com with SMTP id mc8so664100pbc.32 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=FtEyV8qCvbfXazBL1g++tbD6y29Qs7aTx2Sxho2iKGw=;
 b=vy4oE/QYYmQkeA+V5eXEDeoC9nnE9MiBU67/hEhru4VK+DNtu4g6As+tteMd/ZkOSW
 0Blqz2HPivYMe0+QcDLa7ZlLFWRHmAFalKvDkHntkLs0wehXpjnoq++RsjKLrwRuy1d8
 epykzqmVhu5u7BnpSMQvYsbxLUsBsNZyx4g4JKXMhf9jaLB5prhsqwbUVvXAoXYx2j1H
 kvsf9iVUV5xVXfzhozf+9Jc8BHSLnzIRRmG8JDUNb3gn6FFjHdyXy+o1iAKF9f7QlnrG
 mD9mJul2H1DNPhcykBjhPewdB4VDRRrMF4pmgLYRfbne5G4V9/7wc5486WzZMdHO+cW4 yaKA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:12 -0700
Message-Id: <1372899889-19183-17-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 16/53] wireless-regdb: TH,
	Thailand - enable VHT80
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
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and update the max EIRP.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 4475019..84214b0 100644
--- a/db.txt
+++ b/db.txt
@@ -726,10 +726,10 @@ country TW:
 
 country TH:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country TT:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

