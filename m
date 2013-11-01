Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGw-0000kv-QP
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:23 +0000
Received: by mail-we0-f173.google.com with SMTP id u57so3972077wes.18 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GisLLGiX+BUsyKHnXnz8AqG4ZQjVmRnb13XC5iVSo1E=;
 b=Oh4Yq8Bkavh8BiNC/X+jSOJ8rjsWHQmkTZmG6WHEQOtG700KsW1j0fkqEOuAvezlAb
 dPssBsrkGL7D3EThKoCOXnoh880wwtzwpVngZIIcrfSzx+Z72uh1To34knyjhOhgaD1z
 HCAa5HiNi5DitLAn79SSyatzlUOCpcXeaTqOVV7dyfc82WTbJ7SnS7utn8lmsaB+wRFk
 RZyucZOTq4jn+aN+Kz2d6seVLaHznkczE9byPP9jbzriVi6NLlMT/hMFSbYNnH4vizfq
 mJ/XPqVy2FDeDstu0WSPPP15iDCpZEcc2nafTpQdV8qsZwPJn7vSXQJ0OliheHT1G5ts TU/w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:44 +0100
Message-Id: <1383314275-20960-55-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 54/65] wireless-regdb: extend 5 GHz range
	for AR
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
index 10a7194..70b0b9d 100644
--- a/db.txt
+++ b/db.txt
@@ -46,7 +46,7 @@ country AR: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country AT: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

