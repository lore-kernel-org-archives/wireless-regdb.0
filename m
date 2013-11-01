Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHT-0000rc-D6
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:55 +0000
Received: by mail-wg0-f45.google.com with SMTP id z12so4136136wgg.24 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o1nj7qWgj6POrwRh8TtslcWZ/LGJQAXNJWJDS2sn1h8=;
 b=PIOTSXKqfEGq7RT+do4YcqMGQdUe0355na7Z8FoAxbRkpXddLFiIcJDR6ghFs5C36x
 Hm0Woo89PIFndcLSKf5Sznb9oZ+6s7fY2NkI+W9vMfi/efcAykZJVf/1ZoXwj0rMoFnI
 va9I+orf97zpPi+2qbr2vKa2P2XETccUArg6ahvd7+X5aEMPKpLxMkmbt8/9rHYX92hL
 OVyeZXaa6iXzW43bCpJTwkCPvUB8jEMECraY3859m2zt0wJyAtpdy6SG1IvwPUo7BtwI
 dtJKlvdfhDy/isVj0VNTUvVfv4g4WhZLlD/TRZmOD0E89NNuQTDhtH/rKZv2dNjKQb5F gzmA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:55 +0100
Message-Id: <1383314275-20960-66-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 65/65] wireless-regdb: increase 5 GHz
 power for IL
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

This increases the max EIRP for the only 5 GHz frequency
range on IL from 20 dBm to 23 dBm.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 7ec31a1..591bdab 100644
--- a/db.txt
+++ b/db.txt
@@ -387,7 +387,7 @@ country HU: DFS-ETSI
 country ID: DFS-JP
 	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5815 @ 80), (20)
+	(5735 - 5815 @ 80), (23)
 
 country IE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

