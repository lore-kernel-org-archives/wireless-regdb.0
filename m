Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFLR-0001IR-Hj
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:05:02 +0000
Received: by mail-wg0-f46.google.com with SMTP id m15so4080916wgh.25 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UiXgYlsRQ0RgfaHSK/CJvypkmoxn6s2oClETN+fEgEA=;
 b=Ue9kXPSCAnrccVj0HJVwZzm/odn+oDPafHe24BkhH2qYuNZ2x1JfjI89w+5cUfTAU+
 DOOzaRONBAy+z3wgRll59j7cUyfCcPBVEajPVWGjOVjIVhFw0DVtCRJPiANFjNihVgJR
 hfuehPW4NrsXNKLSQfhXw5DiKjr1QRgHejOnzX0YSFNRvoeQNlduLmw50AYLgdgF3v8V
 g9efN3X8xSOZPZALPnJP2Bu3ZDAtW9l3t4V1aXpecbc5QqvgWveIzCF9a8MAjlAP9EIF
 m5LmSKC09nfI3VSxMXW3hXvBY14JeCa9brh471Foz4GqZI7USIZmSMHta8V0Ll0IPlcV p0Tw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:18 +0100
Message-Id: <1383314598-21240-24-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 23/23] wireless-regdb: update US'
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

  o Increases the max EIRP on the 2.4 GHz band from
    27 dBm to 30 dBm

  o Decreases the max EIRP for the first DFS frequency
    range by 1 dBm

  o Removes the two lower 5 GHz DFS frequency ranges

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index e45991f..752dfc9 100644
--- a/db.txt
+++ b/db.txt
@@ -793,11 +793,9 @@ country UA: DFS-ETSI
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
 country US: DFS-FCC
-	(2402 - 2472 @ 40), (27)
+	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5600 @ 80), (24), DFS
-	(5650 - 5710 @ 40), (24), DFS
+	(5250 - 5330 @ 80), (23), DFS
 	(5735 - 5835 @ 80), (30)
 	# 60g band
 	# reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

