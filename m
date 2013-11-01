Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKd-00018S-0K
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:11 +0000
Received: by mail-we0-f180.google.com with SMTP id q59so3986235wes.39 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nfAD3iBM5WomA+FpG3VmWUW3RM8/FO8w8rt/KaoakTo=;
 b=q3j2ZQxU0R25zkrU9CuxegwJqGvlsCDfmLkJCrpOqicOMh1GicZ+vJEFhUQf5WzLeX
 rT5K+QGu5nwKn56Kgv1/cHXBMDcTMMTiP0pd1dDUazXj3Iq7ry55Y5A0NdOCPNmTgdB4
 u3LuvoZPPktInf0WsfcMV01nWU7EjkJIeV4VbHsm0+DLdA6axCONO3TgfroczZJTaWjW
 YXBDWlV9bfbwDi9xoZkjJgjQW0V0kTgogJIpiCiu/KyK3pT9W81/v3GpQjDBdbdNKRny
 gX2zOKCSshbyQp4z0XSR49fpCCf1dNbJK0KuL9UPT/IxwlEs9VpRxBqa/z7RRQiL86Z9 9AyA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:05 +0100
Message-Id: <1383314598-21240-11-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 10/23] wireless-regdb: update RU's 5 GHz
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

  o Splits up the first 5 GHz rules into two parts,
    one without  aDFS requirement and one with DFS
    required

  o extends the second 5 GHZ DFS frequency range by
    20 MHz and forces DFS on it

  o enables VHT80 for all 5 GHz frequency ranges

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index a1eafa4..908a369 100644
--- a/db.txt
+++ b/db.txt
@@ -684,9 +684,10 @@ country RS: DFS-ETSI
 
 country RU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5330 @ 40), (20)
-	(5650 - 5710 @ 40), (30)
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5650 - 5730 @ 80), (30), DFS
+	(5735 - 5835 @ 80), (30)
 
 country RW: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

