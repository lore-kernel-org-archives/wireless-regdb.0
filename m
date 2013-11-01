Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGN-0000bf-8C
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:47 +0000
Received: by mail-wi0-f178.google.com with SMTP id hn9so1108644wib.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wc54DnjI56uC1yNBGn4mD+PcjYew2fdtUBkNVRuHc4g=;
 b=DCyi6H4ARWLwjcNPJNyhYsxrvGH+MhBJIQHdOMsbsGLAYW2BzGH4QCkKieGNL81ScF
 ePHk6rQmnGrLAtA/dMsOKWXvQsxLIr9B/4A/2gCHNtW+U0OiACollX1wNWUk5wXzdpSg
 xjSqZeiLy/048U2MJVIT8qsIfgSSEKObcr9Rv8xoL9gYgYW3mQjTjFeYN2gH+ZEysoW7
 hUpS17rSm5DR4PqBflApukYK0wFzmFS+Ei6jf7LADIXpudQO5NF7OGbJOeV92pCeliu+
 HqMwQ4AC6sLBbK5uCzkEnyuyLlCJ0YR95u2NA8m5r3lASWVBbvJGwJDZ18tcAVEQiP2+ rFEQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:29 +0100
Message-Id: <1383314275-20960-40-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 39/65] wireless-regdb: enable VHT80 for TN
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
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index c35d06d..f155d7b 100644
--- a/db.txt
+++ b/db.txt
@@ -744,8 +744,8 @@ country TT: DFS-FCC
 
 country TN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (20)
-	(5250 - 5330 @ 20), (20), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
 
 country TR: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

