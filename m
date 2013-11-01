Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFF-0000J4-MX
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:38 +0000
Received: by mail-we0-f176.google.com with SMTP id w62so3988648wes.35 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oNIlN412kJeoEi2K/n1jNViGtcYjh5INGWbDsNaBPcU=;
 b=a5bmYyGBEpe+hdj4JomgFGyOvqPJOZoZ4VzYauT11bVdlY2nH0SnD+YuYuZ1KXYd0B
 omzaAibh+tAYJ+2CSeMP3PWX5OEypkFV5LE/rm2NCKPiS63R4eMyOy17FbEa8c7GtP0J
 7uIaU8hlfKaGoWt1U4Y8syeW6Im1k6b/oxP9KbNweWcIWvojNILLU223NdL1EQ/kr3ha
 X1vYreQl8K8nBKumU4qtK4sFnFP2B6eXLTu7j6SkZcs/ZTzt6E5UbfCu/AWSPAs2orK8
 nhSsiJzUZETBHTi9w4AWYTgpin0Fecgf1+JygXsXOt7dhgAJewCDmf4qzTFIFY45erEB Lzww==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:57 +0100
Message-Id: <1383314275-20960-8-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 07/65] wireless-regdb: enable VHT80 for BB
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
index 11060e3..f49d8f4 100644
--- a/db.txt
+++ b/db.txt
@@ -82,9 +82,9 @@ country BA: DFS-ETSI
 
 country BB: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (23)
-	(5250 - 5330 @ 40), (23), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (23)
+	(5250 - 5330 @ 80), (23), DFS
+	(5735 - 5835 @ 80), (30)
 
 country BD: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

