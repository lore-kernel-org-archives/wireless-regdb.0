Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHG-0000pA-ST
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:43 +0000
Received: by mail-we0-f182.google.com with SMTP id t61so3946320wes.41 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kjRdbeDD4PLF99Gx3Jg1VNZGF2z+QSwRgARdLVlFVe8=;
 b=HC3WfVPDaUItSv/b9m7NnUs+GCikstReX/RODH31J+lPzJWmk4fG6XU/X+tiW7md+A
 Q5agkaQbpz+ae6VlKQL47WlRk95G1fh4pCEpCtvzckc5Szav76UhTjhCxjBftT7Zaf/9
 I+NFWpcDaXlFI7tiZ2h7zujp7Pz3LP7vfT3eVOwN0ZYo+jyA5/zoAeDLjBxM/X6UYSVF
 /J7xyOkKLwyuFwWDmn0CpS8BBLPJEBjaQduFPXv2C6a+hHuEQNeZpZ+xSQe0kv3wD9bJ
 PA/6GlxOZzWD4St4vU/B1Nh2VdkzZpXzOU4nz0QYLqLQm2xmdSgzZFKCjLyAVefBXWcf s/bQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:50 +0100
Message-Id: <1383314275-20960-61-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 60/65] wireless-regdb: extend 5 GHz range
	for VN
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
index b1d8115..7bafcfe 100644
--- a/db.txt
+++ b/db.txt
@@ -818,7 +818,7 @@ country VN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country YE:
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

