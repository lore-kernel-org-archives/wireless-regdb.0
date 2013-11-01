Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFLI-0001H4-0n
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:52 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so4083009wgh.17 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zh8J+w3PL3I/6Q3inKZSUoAnSQxGgok+A0DTYNldB/4=;
 b=cA+inJaLtIvFC/C/ElDyr8ylZH4BFX1fVimh2rLBXSq8TyWSUNtwDvrytQvPWUkYQm
 6/XCw9WnMv3H1CunwM/RisS9JjlDJM//TDM18v3UhYZsMEyUWSxB9IObEEA+eyH4btDr
 D7tiVRaFFcicJSEaYomGDLs9hYKoXz5UzdtOdOs9lFrzzHlAgVU12B4EUElSqh5JQjMg
 yJg1LFgPs/Y854X2EkDg/GRttlWBEVQvAXRTddfsMH0jM5juP16R4jHQygf6bpKOnfGG
 UHdHae5n2NLbNLc2jGx4yAG9smQmKqfa5irvzm3ncmc0WJ82Bzkhdt8rhkHNX77Iuj4c vZzw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:16 +0100
Message-Id: <1383314598-21240-22-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 21/23] wireless-regdb: update PA's
	regulatory rules
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

This:

  o increases the max EIRP on the 2.4 GHz frequency
    range from 27 dBm to 30 dBm
  o enables VHT80 on all the 5 GHz frequency ranges

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 40a64d7..97165ed 100644
--- a/db.txt
+++ b/db.txt
@@ -608,10 +608,10 @@ country OM: DFS-ETSI
 	(5490 - 5710 @ 80), (27), DFS
 
 country PA: DFS-FCC
-	(2402 - 2472 @ 40), (27)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (23), DFS
-	(5735 - 5835 @ 40), (30)
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (23), DFS
+	(5735 - 5835 @ 80), (30)
 
 country PE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

