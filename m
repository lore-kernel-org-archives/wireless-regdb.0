Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKQ-000165-7R
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:03:58 +0000
Received: by mail-wg0-f44.google.com with SMTP id n12so4076598wgh.23 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZUE19FXXvbLUpE0aK9eLtF2yWN+Pocn3xrLlkmUsew0=;
 b=Bj2iNFu9xGTd3KuIoKuPO0SkTrSe1O6hRf0D5szv1mAmkwXwku5v6u5T8M30jYalKH
 eGMA2ClgouOEEfHWkqi8He7cFr0A9Xo4+6692wTaYCtpDgr9i7UrnPdOcBmnApF826C6
 +Y12scsVFhr6PGuledt3jCzvNAsKFU7cmJe3q/ZDgFlspyH8N0dlYRfwNdCXumS/YFqr
 xk29X7uNsPNUuFagmo9rkkfVwsld5VzREIMlwNp/WrnB5WRDCJKi6kCqMWN/JUuHdZh4
 6oP9/mgkshbBHz7+atYOQrk+sVuvMaDGf1TqA/Ze9wFUT1rd6c7VBhpiPwnjLNr/Cjl5 oSrA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:02:57 +0100
Message-Id: <1383314598-21240-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 02/23] wireless-regdb: update CA's 5 GHz
	rules
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

This increases the 2.4 GHz max EIRP from 27 dBm
to 30 dBm, and extends the 5 GHz DFS range.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 3c03886..16c4865 100644
--- a/db.txt
+++ b/db.txt
@@ -148,10 +148,10 @@ country BZ: DFS-JP
 	(5735 - 5835 @ 80), (30)
 
 country CA: DFS-FCC
-	(2402 - 2472 @ 40), (27)
+	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country CH: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

