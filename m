Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x236.google.com ([2a00:1450:400c:c00::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHO-0000qr-G5
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:51 +0000
Received: by mail-wg0-f54.google.com with SMTP id c11so4069474wgh.33 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cHDtDmaFmY4eiI77pQpgRub2SKrjjh7juACZRpTSdWk=;
 b=OCztoraCqWOzPaBt3QPM5nb/BT1N8TQZemUDRnFS4Cwv+8Qg/+c1oeOOzfmcjfS+lp
 fhnONWabfveE8yHmnLxFRyjAyGYIyQYKFFkxTc96JMN+P8GkxanME09cdfKlo6cVfwQv
 +mm2NTsVzAUV9bxXQaTDlg+3mGi7SbDJSnRTZ72Ck9VRkPVQgHy3ZhwoFqwrqZRIDOeo
 tUmwgpmLNetrtiQu6bX3Im4a4Kcd5GkDuxO1xb9NSrJsSMXfWOdagr7I7IcgkWqgbgAB
 CBKF53YewsGIPJe4CW6eBY7MdToeXd0hWqZSYsJPzn3lt08Jw+8X1GzOaG/+zx0sFd/r MQBw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:53 +0100
Message-Id: <1383314275-20960-64-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 63/65] wireless-regdb: extend 5 GHz range
	for SG
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
index 17e679b..b641f1b 100644
--- a/db.txt
+++ b/db.txt
@@ -706,7 +706,7 @@ country SG: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country SI: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

