Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGi-0000h4-Qh
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:09 +0000
Received: by mail-we0-f172.google.com with SMTP id q58so3992329wes.17 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=150uop/qLy+ZJstwh+pmel18+xdxkSqBq0pU/z/G++A=;
 b=CASOrt6P8Oo2G7SWsPYCepl+eQTQtqSpFzkiUzKlaRA22MxZD+CFfR20/bVG1uYhL0
 o62O6dwePnpqIy7nmCu8+9ICbWbnSdn2DUO3N+Y+ERyQoN6iH/8FH7CTDXeCCWKa3CzT
 c8wcKy2BXbgXFQ7juuRyvzhvSZFJvlPAcJn3xa522NPYFnOBWKH7WSGSBEFNv5nju4oV
 9X3Mi9FII/gWNGyZNNFa5riTB/uOrMThwEVnKpWPnIW92RBroeJT+PdzEUJQ4G6sF4LU
 xzH+24c+wJksKbL/OsFOhkjzqpQ86uP87A63SQn5am6a+2oXmejWC56q5IcLbDndC4i5 lLPw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:38 +0100
Message-Id: <1383314275-20960-49-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 48/65] wireless-regdb: add VHT80 rules for
	LB
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
 db.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index f63565c..551fe14 100644
--- a/db.txt
+++ b/db.txt
@@ -477,7 +477,10 @@ country KZ:
 
 country LB: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country LI: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

