Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFL4-0001EP-Oh
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:39 +0000
Received: by mail-we0-f180.google.com with SMTP id q59so3986657wes.39 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EM9uzZEsJvSjRsoBjS97/nZNDnNqDuH9nZVILMyVRYA=;
 b=n//dbfRcy6Zdqccf5hPSUngo+uFVjM42wyetyTsH1oqmZlZkGmGcaKZs3OixWZlHp1
 TxUPIyZ18Roeh37i8hY3UfwPtWYMOR5qTslW/b76rX7e7yLRaMQZqH3Iw15b9us6jJo5
 TSOaVVH+yu8zUGVULT5rGKB5DpYjgCbLBKALRvzDP0V4FlRlCYoa2EVq0qhBAMmdSFaF
 wWMFLgZmnCiuJqg8wk4KsHJj4nD4tsRVrH7+mnql4f6sL4ecXA798QkwEiIrv6pq19Oh
 KbPiFxX9VpWxSjhhUS+cc9qXUgLipAhtWiYWLOtynh+xUy3K4xuO9MnRECjAg1pmDTTN dVIA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:12 +0100
Message-Id: <1383314598-21240-18-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 17/23] wireless-regdb: update GE's
	regulatory rules
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

  o increases the max EIRP for 2.4 GHz from 27 dBm to 30 dBm.
  o Enables VHT80 on 5 GHz
  o Increases max EIRP from 20 dBm to 24 dBm on 5 GHz DFS freqs

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 50c81ce..e9d1540 100644
--- a/db.txt
+++ b/db.txt
@@ -315,11 +315,11 @@ country GB: DFS-ETSI
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
 country GD: DFS-FCC
-	(2402 - 2472 @ 40), (27)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country GR: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

