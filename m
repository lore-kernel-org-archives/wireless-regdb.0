Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjBC0-0006GE-HY
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 19:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1444072380; x=1475608380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=72FcNbViF/iIYCDPmymuV7jwuIjSAyeiaCuJcR9eO7U=;
 b=eKg9eNOILpRoz93UH1t7yKACPW1mO8bpWaVdc5OQJKSUVDn9NlzKC0wJ
 kC+Xm5YT3NWVfgIiVlGlv1ZdXDbIn/tyEOCUqXR6rlXM2nf2pNpZeJdxy
 mrkqRJ2oxcU9dcinjpnJ0WzhOA2wRLz/aGMjN6j9p6kA4EpNRwC1cBZXz M=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 5 Oct 2015 22:11:58 +0300
Message-ID: <1444072321-20728-2-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
References: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 2/5] wireless-regdb: Update regulatory
	rules for Uruguay (UY)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is QCA's regulatory team's efforts.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 226057e..2f2e460 100644
--- a/db.txt
+++ b/db.txt
@@ -1164,9 +1164,8 @@ country US: DFS-FCC
 
 country UY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
+	(5170 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
 # Source:
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

