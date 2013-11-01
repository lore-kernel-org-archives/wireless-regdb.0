Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFw-0000VI-TT
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:21 +0000
Received: by mail-wg0-f44.google.com with SMTP id n12so4069735wgh.35 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wPFyQ1KkT8ENvmIAKVu19J1l5Wpt4/n1s0KmHGmR36Q=;
 b=KKamzJf/RuwN6+zjJn4yWC7q+Ch8478+iqYeugvDhTqb14P41FUqCRsMRmmkmJUHxq
 5+ZmACO5AwQCpmKs/f9vUicTCdD8XgIb5Cmkih7unibsU43KUd6KSK3LNZHXfrg9DY0T
 4elTFHn8iE70ElF6EJynnDhTGq41SK3lpyFLLLb+MTlDztLtBTL+05W56jeCWtGBe49T
 7LTDiSYdCgDfwxWOCAVU8eTlyTHzEoQ9EWxkojqH5yKYl3IWEaPh62Vp/laQte5/Gm2H
 tKZCtOs3OhyXmGUYpG21tV0lkhsGqkLzEiBBc7bSB3YMF0N4MNRfuDmKKRSWKlk7zPNS Vrjw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:17 +0100
Message-Id: <1383314275-20960-28-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 27/65] wireless-regdb: enable VHT80 for LI
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
index ed3edc4..3f6753a 100644
--- a/db.txt
+++ b/db.txt
@@ -477,9 +477,9 @@ country LB: DFS-FCC
 
 country LI: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country LK: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

