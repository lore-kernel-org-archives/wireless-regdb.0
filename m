Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHQ-0000rR-VC
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:53 +0000
Received: by mail-wg0-f51.google.com with SMTP id l18so3989188wgh.18 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iIeg3BPBgFdidEyqj0COE75f/4v9BNAnrCzhXgFNv0k=;
 b=SJbEmsgullGJgXW58Ux4w1SysoSHw2I21SsHiM1iHXi0KvObX8A10pj1UqaXIy6+KL
 kpKJX+cy2Ls0ApJJ9TnuB5+XutTFvZbrtgzbOArRtuhh7S5mkhOLhfC5u4+COV6HR0Av
 MIpBlwOIP8HgXPfvCawQKgXxGaRiRSbzmYDV4j72PhDfrMuQ68QJWydoAlL00zSLClvT
 bRExt797vhh000VNGL/K6kQFBCACjLqHMUFtPHC5weg23ZSBbVT9zvrNjuw2pYb8l3qL
 FlZzMyaLAeFhhJvw3f47dO+CHS29AhrEm9e3oaKz684Le85WD8idlMRRbKbqw1YKRcJi zc/g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:54 +0100
Message-Id: <1383314275-20960-65-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 64/65] wireless-regdb: extend 5 GHz range
	for TH
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

This extends the end 5 GHz DFS frequency range by 20 MHz.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index b641f1b..7ec31a1 100644
--- a/db.txt
+++ b/db.txt
@@ -744,7 +744,7 @@ country TH: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country TT: DFS-FCC
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

