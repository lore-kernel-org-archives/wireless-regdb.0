Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuXzk-0002iK-Gn
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:06:00 +0000
Received: by mail-pb0-f48.google.com with SMTP id ma3so660778pbc.7 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=7XhNivPi8VimNHjvSsj+pgEPDENCiBY1wPNMsJ8fmX0=;
 b=M9bTLufYIJNGLK+JPW7TEXns6L3im6grn/MZ/7MVmMi5lJIxJpg/v7Xx1u3Fg6LFZx
 9QJ5zfAlL6gdeyDd6hdefHElkF2FgRyZZOW4mvwqOlF1j7iqdzfGjWkyZIzND7+DeAOF
 aiSng+GW9b4OPUxW6Zg9k4lN1fNKl0V6TWkx/AjZhEXKDE2XUySkSW37+5vYU7233gAN
 F+LOdySRP1I7zD5EoTuvsn6EGA7PylZJ18fKqQK4Zeihexrfp9f+IOgBD9B+oIsWz76B
 e0oen/ta3F0F2/UMd50jLKKhW43eXGZTFOU1JuRp6PCogSX+ourrqEI9NL0qmgW0GzBk RU/w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:06 -0700
Message-Id: <1372899889-19183-11-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 10/53] wireless-regdb: PE, Peru - enable
 VHT80
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

This enables 80 MHz bandwidth usage the existing only
5 GHz band but also adds 3 other new 5 GHz bands with
80 MHz bandwidth support.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 570a951..00e5993 100644
--- a/db.txt
+++ b/db.txt
@@ -597,7 +597,10 @@ country PA:
 
 country PE:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 40), (N/A, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country PG:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

