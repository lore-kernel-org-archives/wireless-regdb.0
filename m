Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-da0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPRUd-0000Jb-CR
 for wireless-regdb@lists.infradead.org; Tue, 09 Apr 2013 05:53:19 +0000
Received: by mail-da0-f43.google.com with SMTP id u36so2934166dak.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Apr 2013 22:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer
 :in-reply-to:references; bh=ysr2qb2drncq7Kxm62Dw4e/VbIIMPfoYcMK+r9Qrby0=;
 b=G1/5jl7ONIkBcOCxN0IauOexBw3w/A2FZmPE4v2670yzqOnuIug/mCN5xyjJZ2ZnCY
 mOCwjdhKBusbCCtjnHSWqerq34tyrMv1+vwIdUtI7skdtmT79HWHv84welaAhqRFEvO4
 b1BdlNobXm70qiG6DTepYBekTRA1rEBCbiR4HaLEu/mLTphHig0wYs9JbyNOaFChHsBH
 EySP5TqyZ+HYlDt5NLZvklgtb8cLcVqbP2tw7sQpx2oCDw/6rH3ERLT1vwi+UtE86gPE
 P+DMTj+083/UCjm9H7kvIdghFapXdzjAIKBUOGJ7gEZETa6DkqUGlaCWPy6ILJKPgM3O GGkw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon,  8 Apr 2013 22:52:58 -0700
Message-Id: <1365486778-2336-4-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
References: <1365486778-2336-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 3/3] wireless-regdb: add VHT channels 1..3
	to world regdom
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
 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index ae0f83d..5657c11 100644
--- a/db.txt
+++ b/db.txt
@@ -10,6 +10,8 @@ country 00:
 	# NB: 5260 MHz - 5700 MHz requies DFS
 	# Channel 149 - 165
 	(5735 - 5835 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
+	# IEEE 802.11ad (60gHz), channels 1..3
+	(57240 - 63720 @ 2160), (N/A, 0)
 
 
 country AD:
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

