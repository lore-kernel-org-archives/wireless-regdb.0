Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOD-0006HN-1u
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:22:49 +0000
Received: by mail-pb0-f48.google.com with SMTP id ma3so1344870pbc.35 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=C/uDiWXPL9H+ctn9Dj2ufNpsK3OzEXHwOTXXa3qAX1o=;
 b=tT1OoyoSJBOQLRJBd3aQ1xhPjCetifLUtMORxzXqZWb6HUJmNK7hvrCTYRBB5MvCaE
 Win2mUlwTTYkaF4viztuefs+jJy0jXFXVsqobsQNwl/E813P+tNmcmCQ8dQVVuFcKVQq
 XtTz8RtqexcBZldCygzWPE4CFP1hAp+TkvQEkXI8452Q+xjk4BzVW/dSCUaXSOjIMYu+
 p8n7WIvkq+hLdqqjZ3ayYie3ICLyMtsSA45m9LISrSKLz9d/dXfbfrraCE2QgVanlIP6
 9b06GSM0KL7ZeI8sp5MOGWsxqEYOR8i0Q/huYAx6pF2v0V5bw2kgHZ1RH9dlv/zB0rBr 3R8g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:32 -0700
Message-Id: <1374027522-18488-44-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 43/53] wireless-regdb: IL,
	Isreal - enable VHT80
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
index 6aa57a7..0dc6767 100644
--- a/db.txt
+++ b/db.txt
@@ -394,8 +394,8 @@ country IE: DFS-ETSI
 
 country IL:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5150 - 5250 @ 40), (N/A, 200 mW), NO-OUTDOOR
-	(5250 - 5350 @ 40), (N/A, 200 mW), NO-OUTDOOR, DFS
+	(5150 - 5250 @ 80), (N/A, 200 mW), NO-OUTDOOR
+	(5250 - 5350 @ 80), (N/A, 200 mW), NO-OUTDOOR, DFS
 
 country IN:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

