Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YcWy8-0002y9-CX
 for wireless-regdb@lists.infradead.org; Mon, 30 Mar 2015 10:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1427711456; x=1459247456;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=C9V+xmAjkAbSYiRU6A5Bu1V5gasu4A0ltubXaQfFgWI=;
 b=tGvmUof2tr6Eow5yBeja6fzqPnQvBPwWjhnwZdVg1Gew2TAJHqfN1jzC
 PlosxSME3eKzXdtbvz/s7b4EM19gc0kyHvv/4URZl09xZiFQu3NZTFKE/
 ALLqF0cFHPIGDX9J6gRFozNvVNQyHjrcPP1BKXhtLQwZt+5X2w3reGzg6 g=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 30 Mar 2015 13:30:22 +0300
Message-ID: <1427711422-4967-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update Macau (MO) rules
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

source: http://www.dsrt.gov.mo/por/laws/198_2014.html
on July 30, 2014

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index dff2fba..317bfb1 100644
--- a/db.txt
+++ b/db.txt
@@ -751,11 +751,12 @@ country MN: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country MO:
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (23)
-	(5250 - 5330 @ 40), (23), DFS
-	(5735 - 5835 @ 40), (30)
+country MO: DFS-FCC
+	(2402 - 2482 @ 40), (23)
+	(5170 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (30), DFS
+	(5735 - 5835 @ 80), (30)
 
 country MP: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

