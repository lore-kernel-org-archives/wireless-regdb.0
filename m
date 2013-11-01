Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFCu-00008P-HP
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:56:13 +0000
Received: by mail-wi0-f169.google.com with SMTP id cb5so1193500wib.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TcZTUuZyXjethMtLJlM3LmL9GVWStI8enIlAmPHVwZE=;
 b=N8YA4EXUCqBT4S0NwKEFeM89zspCRJF3X9VWtWvnwhING4KmENMvXXgg3C9dTka9y4
 V6n0rRBCBxdabkPXW/anHwa0jcX8UqpXmp92qktM9xYdL6t8zEfaHbOzryVgQ7GbvUBR
 KsGnYceHUD/lkrGSTV2TveHF5/tmJqUcPZt1Qko4fiaHs5uQIQMdGYDXshxhGFCcyOLd
 ILMfkEwJo/N7HSxelGkuTKXEmYUuEbJqEFtfwrhhA3im+HZLZsCHwexTZaL3ELlKJ00F
 Hvwm5NXe/ootxkFV3ABEojpvuJEVPykn8i0V3jwdFfAuGf0PiApoU9a89t5HdtR0zuJs uwBg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:55:30 +0100
Message-Id: <1383314131-20774-8-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 7/8] wireless-regdb: optimize two of IL's
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

There's no reason not to merge these two rules.
This as picked up by the new CRDA optimizer.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 22b6561..ddfbc04 100644
--- a/db.txt
+++ b/db.txt
@@ -390,8 +390,7 @@ country IE: DFS-ETSI
 
 country IL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR
-	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR
+	(5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
 
 country IN: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

