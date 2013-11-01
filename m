Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFT-0000LZ-VI
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:52 +0000
Received: by mail-wg0-f46.google.com with SMTP id m15so4014751wgh.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Dj+Fm5AjRKGlJzg1CrEw8oZ8nUngu9/bpVCToyswFdg=;
 b=DFfRDbp1nFxyxj9/ZOXMAR+jJHyrO/LUqBT7GduALop/+/wlOjgGBDBXaV/N3Re4AJ
 3tQzqIjlcjjPjA/oE+NG0Is7mtQ3CkMU/NsGMYAmHy0ExkXLy8DCfLr/na9UAMqhx/bV
 b8kQpxERnX1RBxWHy67I5BkwIIkdZheBy4jleGi38iLzvNeYLuqP7HMstgY12cedbOQa
 48UdY7A6UvJzp5Qn5z9V+UtNMccJhikh/W/6h/geCcpzeeXqoZMFp5z4TALrJuclPdAA
 tc1bFWsaU3kd8582suhPROIfOhV9ggFscJ82Tv/eragqcNtKnorgin+bTSSBZM63i6p5 CwdQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:04 +0100
Message-Id: <1383314275-20960-15-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 14/65] wireless-regdb: enable VHT80 for EE
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
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index b77fc0b..8019df0 100644
--- a/db.txt
+++ b/db.txt
@@ -255,9 +255,9 @@ country EC: DFS-FCC
 
 country EE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

