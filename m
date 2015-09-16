Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f171.google.com ([209.85.223.171])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcDbs-0001mG-48
 for wireless-regdb@lists.infradead.org; Wed, 16 Sep 2015 14:22:56 +0000
Received: by iofb144 with SMTP id b144so232675971iof.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 16 Sep 2015 07:22:35 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Wed, 16 Sep 2015 09:22:00 -0500
Message-Id: <1442413320-69656-1-git-send-email-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add ETSI as the DFS
 region for Hong Kong
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
Cc: Atul Joshi <atul.suresh.joshi@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Based on [1], Hong Kong follows ETSI requirements for DFS.

[1] http://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkta1039.pdf

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 982db34..d57ea84 100644
--- a/db.txt
+++ b/db.txt
@@ -490,7 +490,7 @@ country GY:
 	(2402 - 2482 @ 40), (30)
 	(5735 - 5835 @ 80), (30)
 
-country HK:
+country HK: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

