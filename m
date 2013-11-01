Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFn-0000TN-JN
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:11 +0000
Received: by mail-we0-f176.google.com with SMTP id w62so3933384wes.7 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0WuZu7X3Er92QqaepSSrrSaLfUKfL7Get69LUMsI7o4=;
 b=hWRxr0BcHMAfViw7LQNNzRoIsITCX3xAQi+jW5ZkNph4d3igQVAg7I650i6JbAnB+l
 4stekj6S3vHptVUCL/2Dmp6GiPxz8OQRleP1eLEcvtihpgivabOY46vzcvq8wxG9X/sd
 EILzNqt0/qpWhvoYraYT8vPAssP4X90+lXpsoJm1c5koI/Wwgq2HFio2uXCoeEkWozX1
 uXLOHvlcx9E8IRhbSSH5CDfnZ6tpD9AZl4m+XHjCIeRuE9wLDkzy3Z4mz48qiZwawrrc
 UtQdZzrdVOPgMHlVamGGEInq/j5eMSQKwZc9k3SwNHRfuipTGgcFOgyukk8Wk++34F+B Zcmw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:13 +0100
Message-Id: <1383314275-20960-24-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 23/65] wireless-regdb: enable VHT80 for IS
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 1b03d74..0602a80 100644
--- a/db.txt
+++ b/db.txt
@@ -400,9 +400,9 @@ country IN: DFS-JP
 
 country IS: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

