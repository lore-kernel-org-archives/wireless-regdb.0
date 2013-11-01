Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHD-0000oj-TE
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:40 +0000
Received: by mail-wg0-f52.google.com with SMTP id k14so4090881wgh.19 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lnlVsjTGT6MmXYKX7S/sSm+9UuEpRM3pmE+NdVCdR1Y=;
 b=Ogi8FeKuizTY59ZRaSSiRDZWR0BtgLlCx1RYiJOjOTIGSS3xlsdpxWebdOWIt8DMcI
 Bf51uI9/q35zwbnXkrlD8plY892rPqz/wdf/JX1+phLTJxkD3H3YEvjPubWwlP8lLtuS
 jpBL9WJGqmMPcs97QsIORuW4Dg7Na1nDjDse68d907ZqoVhRXlDLCqjIYiOGIJKikdTp
 Y1T5suFyX3MgtTlJQhOWdJe3fc5Y0Ae+1XJSCfy9pUAeF6wfoQHmEkXQjMtpmnE22Uwj
 hg+lGr6/laf9uVkheNEasJyWW78h4xZAqQ1kFln2TWW2NMf+5+6GvniBoz6dPZ1wXvHg U+zQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:49 +0100
Message-Id: <1383314275-20960-60-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 59/65] wireless-regdb: extend 5 GHz range
	for NZ
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
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 61df4fc..b1d8115 100644
--- a/db.txt
+++ b/db.txt
@@ -592,7 +592,7 @@ country NZ: DFS-FCC
 	(2402 - 2482 @ 40), (30)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country OM: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

