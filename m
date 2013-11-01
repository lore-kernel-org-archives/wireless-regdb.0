Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFf-0000QU-6s
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:03 +0000
Received: by mail-we0-f175.google.com with SMTP id t61so3931777wes.6 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EgXXWtOVzU4Hlua1O42jsuii9r2tmZJYxoDRlzaf4ZY=;
 b=X9rhUdufMeq/AxFVdVb11WnywR8SpXkJ2R1xOYoQrTUc8yJm2hwLylFSKc2d+QmiQl
 1XSkFPvq7cOCblAPPPFIhipXUs0C90zj+7qcmlZ+UXjWiMsQHktuc47Yx5SKO4AuHXBg
 b3De4Rr1D9nTRK+RCf0FnFg8b1cRAwQ6mHW2N61fzmrJOAUlI6zn6E22ePPVMi3Fqw1D
 SzPcTo/buu/60DtZveydVSelfB467Nj+8Qg+v29RNIi67/mTmjowEhNNHywUKopPx+no
 IVTSVdnBwgQXrUcJ5m6303FsEze6pifw0a7wW7oO3+RDYWJu8InSQHi06PPylbGaJLUh Z9lw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:09 +0100
Message-Id: <1383314275-20960-20-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 19/65] wireless-regdb: enable VHT80 for HT
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
index 9f2fd2a..88dd152 100644
--- a/db.txt
+++ b/db.txt
@@ -363,9 +363,9 @@ country HR: DFS-ETSI
 
 country HT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country HU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

