Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHB-0000oN-36
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:37 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so4110041wgh.29 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H1todB9Su2SPWjZg7Zy6kvMx9B6Ld6v88sz6xp/OPrA=;
 b=Yeb9qjnsZ2tU4CQhBjpQU5h/rbj2sE5bSxf+NQgThjPW2tFxNMINLffIb+dB+3e1Cy
 SHl2BlkMBG7Ii7yXgtOvnli+FGaxogs6OPCEzUySsa3LrSSlSOq3zxeytg0f37GMF/Ew
 JxfbolaeKW4A+2Eagq6hcRqLB1LqLLj/KhNhsM5ePYgE5xMpulBUh3or1Qo/oK0PGbDw
 lW31Ooaiwd/HpROoi5bnFfGJrZldn4NPq598wzuMxVKHVEQ6Wqqefeu3qa8sE0IvPrQh
 Bne3rjZrIJnuLPUeNmtT01UWGPiDvUq6+Lr0WsOhIXJE0vxKS6cCx2owBSOzE/TUjDC5 dzqQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:48 +0100
Message-Id: <1383314275-20960-59-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 58/65] wireless-regdb: extend 5 GHz range
	for GU
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

Also increase the 2.4 GHz max EIRP.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 1131900..61df4fc 100644
--- a/db.txt
+++ b/db.txt
@@ -342,10 +342,10 @@ country GT: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 
 country GU: DFS-FCC
-	(2402 - 2472 @ 40), (27)
+	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country HN: DFS-FCC
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

