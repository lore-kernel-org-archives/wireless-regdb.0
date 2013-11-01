Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFL7-0001Eh-4H
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:41 +0000
Received: by mail-wg0-f44.google.com with SMTP id n12so3995218wgh.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H3ZV0CUnqNvIVKCTXKaFh/bNmaQJtx5K5rlTwwLG/7Y=;
 b=kuTPIdHkFPoXVy/DCGb4BKjkFKuow5qJRqaCId5b+M2LKi3rGMIe04wCPv/21yv2Rd
 aDqHP0Gev3RC/PqbdgfjbXVr9N6NM20Et2JXPR4WYVRK9blGWXb52GvlZ8XjQIWoyXCW
 8N0dmXcYOOiOMlWrsFkrTCdayDN2lJMYQEi9ES2zW/HW4AMN1Iu/7lF80rdsnEzpXXre
 OBLJFL3HEKmXYAyMRA4H1ScLiW08xFivKktXo3BIHLpJqXCzF2PlCsGZFbviO90Zxqlm
 dODmB7jSoZWz4Jk4xa3r8WOW9KhaVAo95ahGetyGee6sup38icTB7TebyIKmb/0uvfBt tvoA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:13 +0100
Message-Id: <1383314598-21240-19-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 18/23] wireless-regdb: update PR's
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

  o Increases max EIRP from 27 dBm to 30 dBm on the
    2.4 GHz frequency range

  o Extends the 5 GHz DFS frequency range by 20 MHz

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index e9d1540..b54ebd8 100644
--- a/db.txt
+++ b/db.txt
@@ -654,10 +654,10 @@ country PT: DFS-ETSI
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
 country PR: DFS-FCC
-	(2402 - 2472 @ 40), (27)
+	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country QA: DFS-JP
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

