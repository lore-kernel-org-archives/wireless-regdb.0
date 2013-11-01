Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKY-000175-Ui
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:07 +0000
Received: by mail-we0-f174.google.com with SMTP id u56so3991281wes.19 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VjahwhHOA9HFwIgHmQTDxLtruXBRhs6Z027M2vjuLlw=;
 b=altYt8EJZbV8Z5lNxodhK9ehmGrPao22YH5IrlaCDI5H1KBeVTq6ThVXUIAP65zRHP
 PtsXemyWpglPYxL7S/R1hROkX7O8EJ2CBPfn+J5lVPkWsuwVOhqF6Yvb09zMnPemNB98
 xqRP5ND4S5xPmZDdtkv+p/kwct64wGxga1IAyP7nZKvrRf1NqpadAYGq+yegYPbU31+c
 0+Pmjuz6atNt+ruvAEKty3bSd+TeEXWMocLzdbTLBncm176nJw5Oik+yQZyuttM+gm7m
 naDBEVNfKvw2OE2AAp/PnnVB6S0lgajJ0JNxLSzHs5mWF0EZ9f7iFouxiFn3cogoRj7Q IL9Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:01 +0100
Message-Id: <1383314598-21240-7-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 06/23] wireless-regdb: update MA's 5 GHz
	rules
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

This:

  o removes the edge 5 GHz DFS frequency range
  o reduces the max EIRP from 23 dBm to 20 dBm on 5 GHz
  o adds a new 5 GHz DFS frequency range

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index b8aa9d9..db20fd0 100644
--- a/db.txt
+++ b/db.txt
@@ -534,8 +534,8 @@ country MC: DFS-ETSI
 
 country MA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23)
-	(5735 - 5835 @ 80), (23)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
 
 country MO:
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

