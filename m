Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGp-0000ir-LP
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:16 +0000
Received: by mail-we0-f180.google.com with SMTP id q59so3941687wes.25 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zOb7l9Zl8apfZXQq5Zp851sS3PdzJp0MW97rsv8Y6BM=;
 b=ihqyES9PWwiKfaUAonFBi4x8WQKCVeI2FmztZfreR6MEQEE8xjlsd5u5ApIihkmxJO
 yTcumsJadq54Pu3uA1svW7aMMS05YNb2XBbvaSdNdFTiwL5jZQILjKSJoWwlWwUCxVPK
 zH+ctvBeKJO6arHNnyZUC8we3xJ5J65YDO15K5+Yxp+jpMJrtL55wCu/+5FuHiv9EjX0
 xhbSDX5QrC1uZtZJuMcv8oq1tNeKHelSjmERZDa3tqoQYKf+rwU9E79iLJSPpTbv+WJ0
 IVJj2Brk+uuhDJLr2UfGdcCawQv7fvQhzFJSvSblBEMwWoHskQt3zXTslHK+h91uKVFF +rKw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:41 +0100
Message-Id: <1383314275-20960-52-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 51/65] wireless-regdb: add VHT80 rules for
	DZ
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
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index aa92c37..82219e5 100644
--- a/db.txt
+++ b/db.txt
@@ -251,6 +251,9 @@ country DO: DFS-FCC
 
 country DZ: DFS-JP
 	(2402 - 2482 @ 40), (20)
+	(5170.000 - 5250.000 @ 80.000), (23.00)
+	(5250.000 - 5330.000 @ 80.000), (23.00), DFS
+	(5490.000 - 5670.000 @ 80.000), (23.00), DFS
 
 country EC: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

