Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY2e-00035f-Rj
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:09:01 +0000
Received: by mail-pb0-f48.google.com with SMTP id ma3so663699pbc.35 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=l2gK8IPE9mANof5ZoxaJLErD6vek8+Glstu0xIFfZ2k=;
 b=J7SO6SZHKghiuMr2MW3gEN0evO3Ghix6Wd/4ppKmiAwXOjp7mvztY4opgyaXZSwlcP
 wGr3loRh8rd9caev1ggoMQKONc/cVAbnyLgMY6skXwhWMzl4XwtcY5vkIeHbU6HCHc9m
 6tuQu6nyuaIqLeXepnMOqQWMIBLoEdHKU3H91gpZoY34z5P+3Eo+I7BOzIIiqOj4QA1y
 SK0/VIfIdCTizTTcJfHmYz37LVCOmoD18uYklKAZuWJ1wm8FI/2FJ2eJWE12VIOLNJ5s
 JG1z1G5pX/l+K1CbQSmmD5D61GHom4vmIdot/kdTKVEK3RAIuNUxfpyGZSYSk9fjEPNp JlcA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:47 -0700
Message-Id: <1372899889-19183-52-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 51/53] wireless-regdb: add 802.11ad 60 GHz
	channels 1..3 to world regdom
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

This is a port of what Vladimir Kondratiev sent to the
Linux kernel for the static world regulatory domain.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index 767aee3..b4f9ffa 100644
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

