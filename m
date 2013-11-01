Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGI-0000aq-Ua
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:43 +0000
Received: by mail-wi0-f171.google.com with SMTP id f4so1109461wiw.10 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lp7RxVxLVkFzQqoZcrdm/xX7qZ00qLBkZzq31TiVwzQ=;
 b=YFU6a2R06EXrPPawTA3/JS2iDT4rbHkYtX1eO3CWMSsG/N3GdIXoolL7V9yPltjb7h
 7d7FLroDcE+TngY15WMX60KmE30oapJoNH50/iPn/nRNJfu9ofk5PuNROLNHXfkfGhkG
 LnDqJua5K4D7FCqpnWYxfYIHuVPGV4EY3JGp1NJQLkYbQGw1YWuqVGqqDw9PJcdwCQNd
 YSgPzfXXxUqvyryNwPBplmfvw1qhNlMlD91D3Kipo01Vk414wZBWFOYfQjXlUZDq+iVX
 1zRQ89yxiNeslgBwfpDjKnsgQWQdeu63sUxS9OXC3fHLPwfJUa5FVtyjAa/RyK4J9Ryf IGpQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:27 +0100
Message-Id: <1383314275-20960-38-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 37/65] wireless-regdb: enable VHT80 for SI
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
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index f5d6121..b64d7a7 100644
--- a/db.txt
+++ b/db.txt
@@ -699,9 +699,9 @@ country SG: DFS-FCC
 
 country SI: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

