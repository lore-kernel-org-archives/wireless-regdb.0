Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f178.google.com ([209.85.192.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPTwl-0003ZB-VJ
 for wireless-regdb@lists.infradead.org; Tue, 09 Apr 2013 08:30:32 +0000
Received: by mail-pd0-f178.google.com with SMTP id w11so3706974pde.37 for
 <wireless-regdb@lists.infradead.org>; Tue, 09 Apr 2013 01:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
 bh=eobw94i/X22PAUGgAWnrEl2ckvkLFu9evnZS+1bB6qc=;
 b=QlS4dGhtuKM3yQNv3udhla2fj5VaFXYUiXT4xZ8tmz1a2lYNbsKzdKzdAtEhiH5/nO
 OtH/UqLiG4sFS+mJP7Qsvvht2dKY0gw5k6oRrrAUXQYmmBsUUFAx4IAscJo6ZtpZP26M
 u3xVMYd0pKEmmyKxn+nZJiUKajWTE71lTV9DZUNLOaWlgTzZCeLhSUZ7leQziGwhUnf4
 r402vY0kgCu2OcDjxSga/CNsNNtEU6v9d5kHtbkzldAcn4rTQC/v3k/I/g6gHsyKVrkJ
 78ja8VyUQVFTSIn6OohB7aPiu1NtBl8snUCVuMl54jf+SMenjn1a12LyROooqqDw02mG g+mg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue,  9 Apr 2013 01:30:23 -0700
Message-Id: <1365496223-23908-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH v2 3/3] wireless-regdb: add 802.11ad 60
 GHz channels 1..3 to world regdom
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

This is a port of what Vladimir Kondratiev sent to the
Linux kernel for the static world regulatory domain.

Cc: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Cc: Yunsen Wang <yunsenw@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org
Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---

Fix subject and comments below.

 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index ae0f83d..c878b27 100644
--- a/db.txt
+++ b/db.txt
@@ -10,6 +10,8 @@ country 00:
 	# NB: 5260 MHz - 5700 MHz requies DFS
 	# Channel 149 - 165
 	(5735 - 5835 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
+	# IEEE 802.11ad (60GHz), channels 1..3
+	(57240 - 63720 @ 2160), (N/A, 0)
 
 
 country AD:
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

