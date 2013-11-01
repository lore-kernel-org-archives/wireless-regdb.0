Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFW-0000MB-1b
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:54 +0000
Received: by mail-wi0-f174.google.com with SMTP id cb5so1112013wib.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U7ZxeTAeYnU6MTW5WELa18Tkt2djJLAsKp+07ng8aqw=;
 b=f8j6jJVERxVNIQo0De6KOvl7ZH65levFKI+s+iZOWGAabyhBWq7RhZaSnGkJri+4m2
 ROyOHwOQ/60fFNVOCcLCYmCJzePQlsIyshvDeoGToWfQJRFKVhFYrbJRysUso1xG+Z00
 bGH3G6eKP7d7wkUqBIVt9AvwK7IqfEfIdEwp1jqWxAVMpvGPwZRFgiuDd/xUigArU5z2
 j5h6SyLG7TkEFrkaCu4cUGG5wOAkQVuADtvyyM/HwoFlMQOFdnaokvPnhlSYzfOSen2u
 UdvFlcl5e3LdZy4o3xJwK1+QdCmcCK4SOTXspWfotKI/uPrJSdOvLvUYjIMsHaBCQD9t SHQg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:05 +0100
Message-Id: <1383314275-20960-16-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 15/65] wireless-regdb: enable VHT80 for EG
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
index 8019df0..d162eba 100644
--- a/db.txt
+++ b/db.txt
@@ -263,8 +263,8 @@ country EE: DFS-ETSI
 
 country EG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (20)
-	(5250 - 5330 @ 20), (20), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
 
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

