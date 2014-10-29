Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XjahI-0004vu-2X
 for wireless-regdb@lists.infradead.org; Wed, 29 Oct 2014 21:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414617748; x=1446153748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=+KcXP3Bl9xqcHWX/UqWUEwWfexNPNzTVO5Z4ffRbxIg=;
 b=zY4jJb1cylMnHImT82dAsPsO5Cn3kfZ4UOBnrwUbDfnAyHtQjSD193pR
 AQJ835MNFKGhahq2RvQZUQzf9SQto0z2xapZMrXXQ4OeieY+FPBaWNRZv
 4Pcr/vDpxZx5ylNDP0y5N4LqonWpo1wkV0YHWdGkk7dmeU6HtvlBzmECX Y=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Wed, 29 Oct 2014 23:21:28 +0200
Message-ID: <1414617690-29786-5-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 5/7] wireless-regdb: Add 160 MHz channel
	bandwidth for Malaysia (MY)
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This extends regulatory rules for Malaysia to allow 160 MHz VHT channels
to be used in 5.15-5.25 GHz, 5.25-5.35 GHz. Since the rules between
5.15-5.25 and 5.25-5.35 GHz ranges are different (e.g., DFS
requirement), the AUTO-BW flag needs to be used to allow the maximum
channel bandwidth to be determined automatically based on two rules.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 10aaf44..0df4644 100644
--- a/db.txt
+++ b/db.txt
@@ -801,8 +801,8 @@ country MW: DFS-ETSI
 
 country MY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (23), DFS
+	(5170 - 5250 @ 80), (17), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
 country MX: DFS-FCC
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

