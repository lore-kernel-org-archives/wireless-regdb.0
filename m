Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x230.google.com ([2607:f8b0:400e:c02::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY62-0003Dt-J9
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:12:31 +0000
Received: by mail-pd0-f176.google.com with SMTP id t12so585007pdi.7 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=UxpGyAEC3tSN9d46AZSzvli+ylzI9bYNE3GOMxmWa58=;
 b=0Ac8bE7GDnHbIfMMl/xcbEzd2krp4gCymhP1xiCTUlXGEaeCClS84S5U9MfSkgvjmY
 XiRcgMyCp9OXS0ry6yIhUUD2sQQJGTI5N6PwD/gZfHEDkCOZKzhatvuGfP4TH1z9gL+D
 YaoOpq0Aun8JIlwMlUw8lgP2MRabv32XdofXvxa7KX/kubbISjWlfNBFC0esw9Wcq5kO
 de7ek6nJQ8rgYPVWfCi79PrSKqN98UbHK6Gz7Zd2kG6unQa9kDqMJ8/cYl/9S6yPBiuV
 L7w03yz0NPL4hls8tcCp7dlFDNCPMNL3Q5H2uMEmlxiTFfNR29A5iN5JtrY49ub5MBpV idDw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:13 -0700
Message-Id: <1372899889-19183-18-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 17/53] wireless-regdb: AE,
	United Arab Emirates - enable VHT80
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

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and update the max EIRP. This also adds
a new DFS 5 GHz band: 5735 - 5835 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 84214b0..f714982 100644
--- a/db.txt
+++ b/db.txt
@@ -18,9 +18,10 @@ country AD:
 
 country AE:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
-	(5490 - 5710 @ 40), (N/A, 27), DFS
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country AL:
 	(2402 - 2482 @ 20), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

