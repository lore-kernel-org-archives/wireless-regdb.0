Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGC-0000ZM-4G
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:36 +0000
Received: by mail-wg0-f51.google.com with SMTP id l18so3987539wgh.18 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LAlu/yQRq/hyI/mXAnxDh7FWHvSMP2pqSMCpM3pEwZc=;
 b=DWWYf6aYkFepm+ZuDPXLuFK5BOJhvddzjkgo1+H9E4DDKL1trK/6XsySH1ejICwhbK
 pnmlH4M2AiOUx4+OUVSwkL+kOKvn9qTWjPi8THpvuKCQFhfW+B+aciTsFcB3+/VW0AAF
 7ulPKaoD5ZHp8cksgOz2yC2kDE9VJcwm2xkj6OXIxIOk0YUF7gRiieqI8YOq/hOhd07q
 DpX4nN8XBxTm6nYWg1H23NxVugCLSifWuTFnzwVKZP/Bv/hbRpiliuxvhS+L4kGkdTM2
 sG5F9+oYLGYSlTaJhmxOKFe4/rveqsYWynm9gKWvq04ogDvAFnLmlh8TD6wEjrt8Rjc7 euZA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:24 +0100
Message-Id: <1383314275-20960-35-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 34/65] wireless-regdb: enable VHT80 for PK
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
index 186bcb0..ecdec07 100644
--- a/db.txt
+++ b/db.txt
@@ -618,7 +618,7 @@ country PH: DFS-FCC
 
 country PK: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 40), (30)
+	(5735 - 5835 @ 80), (30)
 
 country PL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

