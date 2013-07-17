Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x234.google.com ([2607:f8b0:400e:c02::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOk-0006Lf-Sf
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:23 +0000
Received: by mail-pd0-f180.google.com with SMTP id 10so1290387pdi.39 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=7FxQRUQBLGoR95rGFgmOz8WqmQOFS6W4G4QJ/T72X34=;
 b=bAM9j+v+/Nkkyh4/qVjzii+6q5GXGsQB3AT/BLL2r6f1u+oj3IrOnCNxWgtgQl0heg
 HKtlRQ+jKRbaOGIW2x0xyRgwdzxPQo9WxTn9OwGWnHkyBx2yO0mc/j6BXgUIWb0TY0lF
 x2/zE6z60udQDRKPkI78uZzgCs5isGvZzWdqCXEyRPs7IvODNrfFPuFY1kIl0Ppe9s6o
 IsoJhSvcu1JwJtSF7sZNF1b3/Cgj2kxLozOBSiTjlE0XcYix83t0dF7DGzbskEcZ9o47
 hXLAXp8UyehZC33+mCW+TTNNid/l5pqsseRl9PRxaVs6AC83UI6Te8YERCzTg7iZ5PEX gVqg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:39 -0700
Message-Id: <1374027522-18488-51-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 50/53] wireless-regdb: enable VHT80 when
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

For VHT, the wider bandwidths (up to 160 MHz) need
to be allowed. Since world roaming only covers the
case of connecting to an AP, it can be opened up
there, we will rely on the AP to know the local
regulations.

Based on a patch by Johannes Berg for upstream Linux.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 0a4b56f..c6def1c 100644
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

