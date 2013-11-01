Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x235.google.com ([2a00:1450:400c:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKn-00019e-8t
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:21 +0000
Received: by mail-wg0-f53.google.com with SMTP id y10so4089175wgg.20 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Pc/pl8Gcn3+Tpg+GTZFg2Gel9S8bwsvKpM+ymS2vobg=;
 b=oZz4H0qvufzbIeKuG/8mPk34AD52jHhTkCVGg3Ww86XXYx7YIE/yHHX5ZlI2OjsQRw
 OR2oSP19en/ohBkwEU9brj/IWDmljws3KSN6Y4xdGYW0Uum7HDLuJd62ulpsGBCMR4OI
 5jkaYtGi/GAb58qJIXwK2QEzgTlijBsWwUDWtmLHmYI/8RNafuIfmXTz6DwHZpw0hhTH
 OdmgIDjQB6D2EGvQBc623Cw74f2npGPrMtPG8dnUXdFrdVWwcYBta+QmZ7VqjjxBz+P0
 /mRirKIIl1cu1p8LnbjIsLewiJ1Nb+AY+yhkWcmF6OUypP108ivmlqltM/ER/3IbY10U j5mg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:07 +0100
Message-Id: <1383314598-21240-13-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 12/23] wireless-regdb: update SA's 5 GHz
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

  o increases the max EIRP from 17 dBm to 20 dBm
    on its first 5 GHz frequency range

  o reduces the max EIRP on its first DFS frequency
    range from 24 dBm to 20 dBm

  o increases the max EIRP on its second DFS frequency
    range from 24 dBm to 27 dBm

  o removes the last 5 GHz frequency range

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 983fdf9..bd5994d 100644
--- a/db.txt
+++ b/db.txt
@@ -698,10 +698,9 @@ country RW: DFS-FCC
 
 country SA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country SE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

