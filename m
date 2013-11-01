Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFz-0000Vp-AP
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:23 +0000
Received: by mail-wi0-f169.google.com with SMTP id cb5so1202196wib.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ag4JCLkG3E2DUt+8IZ13eX7ZHRY4HNgUNI/y+44jkQM=;
 b=YMs2kNdQ7v7YzlnoN8R2BTwa3xpIZBkT8LEmbvAEDnWPVWeO4HF/L5MT34SHqiw0ff
 CiDpBK/ayZ13OJxqd6CviVN3gyQe+1ErEw+S1sqpdmsU2NwKO1AcioaEeBhgecv1RrPI
 zcG4vvv+x9VVppXRAhtBMrC8O/zBBypLTc9HD/ocQ5GChWbERtOWzOvKahAdTTP9HoGB
 motbN11rIMtx/DqZ/6crOIjDak86PHkhSPNv63ZGa0XTFqwjvxXNKeFRxLJEY46CmXr+
 PKh1zoW6s1V35M5Ps07rvMldDN31ECChUr/TIaFCMa0oOMsXZII4Cm0t+KFWQGjHsaz4 rweQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:18 +0100
Message-Id: <1383314275-20960-29-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 28/65] wireless-regdb: enable VHT80 for LK
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

This enables VHT80 for LK but also extends the DFS
frequency range and augments its max EIRP from 20 dbm
to 24 dBm.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 3f6753a..00029d9 100644
--- a/db.txt
+++ b/db.txt
@@ -483,10 +483,10 @@ country LI: DFS-ETSI
 
 country LK: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (17)
-	(5250 - 5330 @ 20), (20), DFS
-	(5490 - 5710 @ 20), (20), DFS
-	(5735 - 5835 @ 20), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country LT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

