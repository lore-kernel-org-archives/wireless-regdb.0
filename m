Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x233.google.com ([2607:f8b0:400e:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY9g-0003Qa-Fg
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:16:16 +0000
Received: by mail-pa0-f51.google.com with SMTP id lf11so779842pab.24 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=4e5h6rYGLgRtC0VIasNlo8PfDKb3Rp2ufaVScIPQs8Q=;
 b=vgWnL2A0cwbNP53frx0h/zsZ66Y23eudwlazv+Grb2rQV5g/ziYuTvrKHbmD1K6xvm
 QrJiwMqsn66RX6GQcGioybH1oTQVlRdAZXzfxXZO7ZpStv/T3WzMIhcSnfNugjnUrmqI
 2RjAjM43arA1eo+2RemimcS6Gk4FGa/XQWxUrQvRvOd9tWfHbs1lfGL23/3EB9+76INr
 O+ChSSkwCVwcakrp6Xs8w4xKGcZusp3oPvXUSbZxHGjDJuuPISUs01SjNYM8Nh2H0F9D
 rYU8fa7E4FmJsF26lP05NkqlmMHv9c1+5n5jo6sZrDUiVqa5zsaND4lep5tVcX4kmfm9 raTw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:40 -0700
Message-Id: <1372899889-19183-45-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 44/53] wireless-regdb: KW,
	Kuwait - enable VHT80
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

This enables 80 MHz bandwidth usage on 5 GHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index a4d0587..16d9f8c 100644
--- a/db.txt
+++ b/db.txt
@@ -469,8 +469,8 @@ country KR:
 
 country KW:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
+	(5170 - 5250 @ 80), (N/A, 20)
+	(5250 - 5330 @ 80), (N/A, 20), DFS
 
 country KZ:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

