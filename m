Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjBCc-0006bh-4z
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 19:13:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1444072418; x=1475608418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OWoy9iVyuYg+PqLHwLSFIWC5qpgzf03DMPxwEQUe3Gc=;
 b=RdzDDeYccyTsQg4XgzL/bf7mKWKSwdSTss/PYfR/6gH37jtsvaMNkH82
 4TMOdXIX4EpzXTZBWyvdATnwO/t/mLJfgot7wLTWiVujXQOeeOGZ0+Jwl
 7ZREVGQbbIcFuqAwA8MCn5UFf5VyyddMmBizTuSKWjU/eSUToEvtQmqd7 k=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 5 Oct 2015 22:11:59 +0300
Message-ID: <1444072321-20728-3-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
References: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 3/5] wireless-regdb: Add VHT channel
	bandwidth for Russia (RU)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is QCA's regulatory team's efforts.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 2f2e460..93242ec 100644
--- a/db.txt
+++ b/db.txt
@@ -995,10 +995,10 @@ country RS: DFS-ETSI
 
 country RU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5650 - 5730 @ 40), (30), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (20), AUTO-BW
+	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(5650 - 5730 @ 80), (30), DFS
+	(5735 - 5835 @ 80), (30)
 	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
 	(57000 - 66000 @ 2160), (40)
 
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
