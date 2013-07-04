Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x236.google.com ([2607:f8b0:400e:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY1y-0002xe-HB
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:19 +0000
Received: by mail-pb0-f54.google.com with SMTP id ro2so670520pbb.27 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=McXuVXYuo5+wTF45286B+bs3VjKnxz0aATS3Hangdck=;
 b=qOhPi/QhJKf9dCqKfeiRfuY4jZXHcOEO/+12Sg8vdqSBHxKl9nY4zw3gRpuI3b8K6I
 imVOZEUquomo8xSd8TNl7UDeQMdyWgbVsucgIWO5+72xce9yWoh6g3vbdigtzyI0x9zS
 AzUQ5jFuA5Dcg2o0uRNicYJReMprwba1d+rKaaxTFInnmNBqTv263wuCRCTCWGVOqstD
 nWMvkMyn3gQZojInAo68o/P8Hzd+L5EZp3tY8JyMQIwsIQz1Aw5esZhTPcfNfiF4Qdjq
 PNO7JWsaDYkpi4Wvw31g/Grk7UJq/Ifqs7ZrL7NKvcz4dTaUsJxygyo48AvXNpRWs/Wd YH+w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:37 -0700
Message-Id: <1372899889-19183-42-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 41/53] wireless-regdb: US,
	United States - enable VHT80
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

This enables 80 MHz bandwidth support on the US 5 GHz
frequencies. This also updates the 5 GHz bands with higher
max EIRP.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 63ee9b4..0ebb934 100644
--- a/db.txt
+++ b/db.txt
@@ -767,11 +767,11 @@ country UA:
 
 country US: DFS-FCC
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5600 @ 40), (3, 20), DFS
-	(5650 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5600 @ 80), (3, 24), DFS
+	(5650 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 	# 60g band
 	# reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
 	# channels 1,2,3, EIRP=40dBm(43dBm peak)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

