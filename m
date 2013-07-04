Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x22c.google.com ([2607:f8b0:400e:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuXzO-0002ev-9V
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:05:38 +0000
Received: by mail-pa0-f44.google.com with SMTP id lj1so773060pab.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Q3KQpdgm7NM0arQ75/yDQppZolnkmSjzcR6tMfa+OBY=;
 b=xX1+0fQ32vgzv4gqdeoH2tYajVSixm5yH0i9Lw4qRDxIQuMgVk63jQdXmfEP82T/ai
 WEI5PqKvDwPVS8RfhEF3Apry58ooiCY+FXrnUqS+XZJ4sd56E45Q+K/paf7GhqiX0HfE
 rEeIiqch/uIQ9Y2CNBj9J3x+yC/cYUgTUF0+NXZ4XD5IVso54tBrYmTjZlS6rtDUvd7o
 UBEen0eN8yeq8Xs2HLRimevqK8q38DCqYkLQ6m2RX9S2niyPekKuWFzYNBcAbTM59CCC
 HJkoSPAx5Arb1XjxS4+Xmgqk5qDjmiYj4RqUiBTW/nPyJN1UC0g/WmvBkTx+o5PcB+YT C0Kg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:01 -0700
Message-Id: <1372899889-19183-6-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 05/53] wireless-regdb: NZ,
	New Zealand - enable VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and increases the max EIRP on two
5 GHz bands, decreases the max EIRP on the first
5 GHz band and adds a new band 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index bb846af..1f16aff 100644
--- a/db.txt
+++ b/db.txt
@@ -574,9 +574,10 @@ country NP:
 
 country NZ:
 	(2402 - 2482 @ 40), (N/A, 30)
-	(5170 - 5250 @ 20), (3, 23)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country OM:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

