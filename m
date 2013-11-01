Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFG2-0000WK-CB
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:26 +0000
Received: by mail-we0-f169.google.com with SMTP id q58so4058750wes.14 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EjGaRfgwI/WLYtUiuYhCNnpcpt9DBVOZXIEahpAeHeo=;
 b=IBNUixCcLTbFdprMHi+TYBzzrEJ16/JrS2HPoi/JnpAPMntL5p1TxrJ2/j/YxBjhQF
 9vg19m4KvuM1PJvoZDxtOLy46KoZg1jdLhk4l6XN01uJz+wehUZh+WLRv3oJyHhRghV8
 mmUZu86z7lv97oRnt6G3BjbVnFcl2UaOb7RnoJXwvler8vtHE1sCRYzC4+Wx9ah6VbTt
 m7TxT97VEBAgL49LTJQtyKH3eqnZRhYbolE+RuWc4ZOb7Hk51hYo90zewK4qGrlg/tj7
 c+QNH3KQbmb8n8QHlPpwFjU/jd83xNGFpwfybo88P8lkfNqUfqXt561eCt4A/C3pUlN/ kexA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:19 +0100
Message-Id: <1383314275-20960-30-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 29/65] wireless-regdb: enable VHT80 for LT
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
index 00029d9..c84624f 100644
--- a/db.txt
+++ b/db.txt
@@ -490,9 +490,9 @@ country LK: DFS-FCC
 
 country LT: DFS-ETSI
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

