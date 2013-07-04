Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x234.google.com ([2607:f8b0:400e:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY7m-0003Ki-8U
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:14:19 +0000
Received: by mail-pa0-f52.google.com with SMTP id kq13so771299pab.11 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=35ujA0rrw11eY7X/D7BxlaEigEjoqr/Ft/yAYRo0MnE=;
 b=OK0ILbcY6DJgH/vtnTufrY478TpEnHFgEGqQx18gB21ZJVxvdxiMTXzVQt2ftLdkQr
 vCzaFJEZSc3ut+BnYN3Mc8nx4Y8Hon5/21Lw2EFCYOh1Z4pYxsLC22WbEuKLkrIQHYDY
 W/pSzQqPEvPpkqpZfKaxChIKqANRVvBNmM+iONH0SawK+53NcbrwnxjXmRFXd4CAQvI1
 1yZ5EoRMF3pideEg7X8Gm1eUB5msMNF9SFF/8DXIxrADDy0kJi6+Epx5eoNNe5IJxj1f
 3GtHA8GTrIlzyNSBsBBK8KFPtU6NL1AF8XO+mHrX92vjI7XCFAcGRSDdhKb7rIhgI9o8 L6KQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:14 -0700
Message-Id: <1372899889-19183-19-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 18/53] wireless-regdb: VN,
	Vietnam - enable VHT80
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
two new 5 GHz bands:

  * 5490 - 5710 MHz
  * 5735 - 5835 MHz

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index f714982..47bfc95 100644
--- a/db.txt
+++ b/db.txt
@@ -796,8 +796,10 @@ country VE:
 
 country VN:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country YE:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

