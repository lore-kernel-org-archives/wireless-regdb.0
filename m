Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKd-00017z-7b
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:12 +0000
Received: by mail-wg0-f41.google.com with SMTP id b13so1070480wgh.4 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Q2dNKl6TXAqAtbZ2Z3I84VAZuplE8K7NEuFHqGkcVDg=;
 b=MQDmOkZwJiSXMCZN3f2/cz/KdXiTjg3H3FmIvYZVa/5+bLAhx2cK4PMeknYxsgom50
 sn/76Pne8jt4iDByVePXHba8TpNhUT7i706CPdXbAaFoDWuh9Pyam0UxxoX7HbwrOC+o
 DOyQyWlDj8QCbtE+xmZ8/IQvezD3qMNtfEXMPm8NzCLvR+fFGbJtMIJH5YYAaIpzS/Hp
 DBlClWFA21rK/Un6xLydlFLELyfKdUd5tvDv2LtC6LKgCpox6PzT2mFzVOZiu6iy2U7c
 mEb6IthJiHd9M0Pz4iDjfQ5cZGfkoPVYzdvXBMrEhEvZAe2wjcUNY/F55P5U+qKolRar tCsw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:03 +0100
Message-Id: <1383314598-21240-9-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 08/23] wireless-regdb: update OM's 5 GHz
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

  o removes the last 5 GHz frequency range
  o increases the max EIRP on the first 5 GHz
    frequency range from 17 dBm to 20 dBm
  o enables VHT80 for all 5 GHz frequency ranges

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index e2740a6..8366b3b 100644
--- a/db.txt
+++ b/db.txt
@@ -602,10 +602,9 @@ country NZ: DFS-FCC
 
 country OM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country PA: DFS-FCC
 	(2402 - 2472 @ 40), (27)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

