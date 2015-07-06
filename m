Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ie0-x22b.google.com ([2607:f8b0:4001:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC9ut-0008Ev-ES
 for wireless-regdb@lists.infradead.org; Mon, 06 Jul 2015 17:10:51 +0000
Received: by iebmu5 with SMTP id mu5so117397653ieb.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Jul 2015 10:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=20120113; h=from:to:cc:subject:date:message-id:mime-version:content-type
 :content-transfer-encoding;
 bh=mVTHIDOoIGkZ4MrPYpx9BG/MM96y3HTL1C6CkbVuE/M=;
 b=BmybK1Rvqs7wDAcfO8pQq6eHF+njgRRzeiQRebeg+lWhvkjJL7Honsxk1KxgeuZYqN
 FEUSHAtZWkzBi2LlIKic/u5iOJeA2LKun3MTR0VHFS8uoaS2jwdbp3OspMVaToS0wZ/u
 IzpGWO8b1olHumRHtA1LfA1VIpeLVHaEG2+BPACWqUkgXoid9gPjE1WPiuuF3RtUZhAW
 qyngkOxQ+1bGUfIz3lJoI9MBkayjre9fVgGOAyYHacHEzwyzUXXsz9l51MqCNKB3zqno
 l2QVGfc1KWSQ/cpMPKL1k/GYbRiBt0+vcJQQc326wLxhKJgVSOk+yUUxFBEYJSDGbScg /0wg==
From: Wei Zhong <wzhong@google.com>
Date: Mon,  6 Jul 2015 10:09:53 -0700
Message-Id: <1436202593-12701-1-git-send-email-wzhong@google.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update CA rules for 5600
 - 5650 mHz
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Wei Zhong <wzhong@google.com>
List-ID: <wireless-regdb@lists.infradead.org>

Related regulation:
http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3

Frequency Bands 5470-5600 MHz and 5650-5725 MHz
Until further notice, devices subject to this section [i.e. Wifi device
supporting 5 GHz bands] shall not be capable of transmitting in the band
5600-5650 MHz. This restriction is for the protection of Environment
Canada’s weather radars operating in this band.

Signed-off-by: Wei Zhong <wzhong@google.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 809cd3c..74bcf6b 100644
--- a/db.txt
+++ b/db.txt
@@ -216,7 +216,8 @@ country CA: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
+	(5490 - 5590 @ 80), (24), DFS
+	(5650 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 # Source:
-- 
2.4.3.573.g4eafbef


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
