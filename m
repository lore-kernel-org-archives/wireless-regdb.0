Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-f47.google.com ([209.85.220.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPRUZ-0000Il-EA
 for wireless-regdb@lists.infradead.org; Tue, 09 Apr 2013 05:53:15 +0000
Received: by mail-pa0-f47.google.com with SMTP id bj3so3655983pad.6 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Apr 2013 22:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer
 :in-reply-to:references; bh=00Gt0JfnvzqGD2+v9nAbq4ALAQncWQv0FOrwBlFLgH8=;
 b=IckRmvL7y1YQrkG+aoM8ogTMLrChjYlKcOFl/lYQgv8iMbat11q4/jWlnbls6lpib+
 eiYbPjAW2Z3zqFcidsUv0tBej4qZgv6juMATzs/IJ0QaW3MkcwU2djbYWof//lasEehv
 cHrQ+qDfzWjgF0OEfFxsUbW9sTXDVVKgPd/z+mcGAFUq96o4+Vr3ezlQXlYrUTm9ZYbR
 U1VXqbktIaO2oASsDgJSTbzw140PzINiVjRFMa7/+ZPeM+TNBuWaQU+N76dP3fHjnq51
 ip8hIJj2y3H5wut0iTk4UR83KkUEBpab9bR1Bwt/T8ZATpVmNYcptGlvEMAHQqRK+Ss+ bWmg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon,  8 Apr 2013 22:52:57 -0700
Message-Id: <1365486778-2336-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
References: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 2/3] wireless-regdb: enable VHT80 when
	world roaming
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
Cc: wireless-regdb@lists.infradead.org, kandala@qca.qualcomm.com, "Luis R.
 Rodriguez" <mcgrof@do-not-panic.com>, linux-wireless@vger.kernel.org, qca_vkondrat@qca.qualcomm.com, green@qca.qualcomm.com, yunsenw@qca.qualcomm.com
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

For VHT, the wider bandwidths (up to 160 MHz) need
to be allowed. Since world roaming only covers the
case of connecting to an AP, it can be opened up
there, we will rely on the AP to know the local
regulations.

Based on a patch by Johannes Berg for upstream Linux.

Cc: Yunsen Wang <yunsenw@qca.qualcomm.com>
Cc: Michael Green <green@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org
Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 2d09a3c..ae0f83d 100644
--- a/db.txt
+++ b/db.txt
@@ -6,10 +6,10 @@ country 00:
 	# Channel 14. Only JP enables this and for 802.11b only
 	(2474 - 2494 @ 20), (3, 20), PASSIVE-SCAN, NO-IBSS, NO-OFDM
 	# Channel 36 - 48
-	(5170 - 5250 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
+	(5170 - 5250 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
 	# NB: 5260 MHz - 5700 MHz requies DFS
 	# Channel 149 - 165
-	(5735 - 5835 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
+	(5735 - 5835 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
 
 
 country AD:
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

