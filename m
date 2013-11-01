Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFl-0000S3-7h
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:09 +0000
Received: by mail-wg0-f47.google.com with SMTP id c11so4106118wgh.14 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xzwvXhu8/EHkZU0/gMgTu9pH0H8TjsN7ApWpCmI8qLc=;
 b=B3ffj6/qOjdnR+T70JwSUQ8SCD/p/0lRqpPHlIibsX91TTghKtaP1LFJKaMPdqGX53
 uW/Xwu24tO0l3irIr316w0wMzSVC+mbiA4SODDHGtC6vPdMWxEhgTFyjZ8JIXhkb1FaA
 CBOcZY/ehhlnfV+Sr6jfHUIAurPiPqXBMoPPPuPEWd6Og99F6AyCq7wnEoigkC2Oj/Ka
 2aa5rNzQZ7SnII9v9S1debVv3CSnNgJY+ov4TBABZGt9Tfu0U2uJVPMXdBdTZBkwfK99
 MFfPlczO9Qk67/pCAQ6aExVsIcdVklS8GcSr1+io+dD5uU6LYB7+MsiBDuwuoEchgtog dZcA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:11 +0100
Message-Id: <1383314275-20960-22-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 21/65] wireless-regdb: enable VHT80 for GL
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
index cabf2d8..ec9abb2 100644
--- a/db.txt
+++ b/db.txt
@@ -322,9 +322,9 @@ country GR: DFS-ETSI
 
 country GL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (20)
-	(5250 - 5330 @ 20), (20), DFS
-	(5490 - 5710 @ 20), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country GT: DFS-FCC
 	(2402 - 2472 @ 40), (27)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

