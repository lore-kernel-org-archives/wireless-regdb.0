Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFq-0000Tq-7M
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:14 +0000
Received: by mail-wg0-f48.google.com with SMTP id b13so4005916wgh.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GG6v8IOQ2kewZs0hcamnrKpfdXPao3MKqIM89kBey1M=;
 b=N4H788LjpZRUHsJZcufp7r3GoazaFTMn2cMdNLu84QwH8H8+/UweukPdQa1GYpnOb3
 8hzDw0Ke5PJP8ayZUkO+RjoFmHcu4WwMjL4fFP2iH1twp/DK62CWUY/nh00nni66+qHo
 TkKYnZQaSBRDQyxTRCumBNPEcVpTZvpIsXWfXlyBr7r4PSTUa8ENz3wNQMe/iBd2B1y6
 i65BQV6jronKULMdKhJfPfxXNAnth06SRySos4Bqi9KE+Km/nHW5U3CYFuJZgvCfSucu
 H83QZMoBCsp/hYivKX/svQYc+9A5jcGTj4IKDob2M38gZjXIRvxHkEGRuCUKNMnM1pv3 +YTw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:14 +0100
Message-Id: <1383314275-20960-25-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 24/65] wireless-regdb: enable VHT80 for IR
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
index 0602a80..accba4b 100644
--- a/db.txt
+++ b/db.txt
@@ -408,7 +408,7 @@ country IS: DFS-ETSI
 
 country IR: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 40), (30)
+	(5735 - 5835 @ 80), (30)
 
 country IT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

