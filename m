Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKf-00018B-J2
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:14 +0000
Received: by mail-we0-f169.google.com with SMTP id q58so4059385wes.28 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uyUkN8PL6tU7vu2RZbqgzhcrP9LAdIKw8LLZBS4of2w=;
 b=e4P247mEVSM4+EPWjyKDc3itoTZNkzUISXG2DS/fvwi0xgHxw6GCwTj4mYDXhaNnic
 ALZ3t11qlDN+Sd7R8KbLfTOS2mGtAnBLZtECvJzaoSPUJFpZLRqxDiAfQueGRwDMuPE8
 9BhRg8wKTJzH447HaFxMAxKWoMCJVBllM2SIPdRcNX9nVonWymEfYJNfxUMjkpSyEKVJ
 cHPZWpWs3r3sGjnruZVQYG9zIn41zJZYI0vGHfVrtwOTRPdlNDXrOb0o350hAgwbeebd
 sdHKr5NZ58YJoEqvG1H/7GCCZHeTP6k17i2tpa5Ul4mE5nysJ+BAxdpLCZlQ/+19IhNo cGsg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:04 +0100
Message-Id: <1383314598-21240-10-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 09/23] wireless-regdb: update PG's 5 GHz
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

This:

  o enables VHT80 on all 5 GHz frequency rules
  o adds a new DFS 5 GHz frequency range
  o increases max EIRP on the 5 GHZ DFS frequency
    range from 23 dBm to 24 dBm

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 8366b3b..a1eafa4 100644
--- a/db.txt
+++ b/db.txt
@@ -621,9 +621,10 @@ country PE: DFS-FCC
 
 country PG: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (23), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country PH: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

