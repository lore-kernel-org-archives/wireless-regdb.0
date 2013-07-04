Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22e.google.com ([2607:f8b0:400e:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY26-0002yf-DH
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:26 +0000
Received: by mail-pb0-f46.google.com with SMTP id rq2so668551pbb.33 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=3/yhpMbhkUFAEdx5KnSTxxsh8GJqPQnEyqu5bI9eEao=;
 b=wsDA/0TzMhH6yjOc2+dKzPX0DGVsTVr0YoSV7Tl5LY9XymEe2ejZvif4cvby/Ik4Lh
 mJD6i8loKDnJEMUttXFeUhyafPtb0JKwhoEdcmE5d4XnJWRBl1IpzYNs2kMjrmtXAiPJ
 0APxrHMvJ9lqB1I6/UmaCRsPZ6vVL+0s0fTUSDkOq4fW8zJdzQ6vFn1Eg13YbwGfjodW
 pbeRmgayLR1USisOmWwdfNbTTT5sVxtjPSq6F21avS9LyZjm6B3/3HThu5yMchuKTbWt
 aldZFa3y8A/30T60dLh9PKsZEltZW8hX+eSYW9pfC/tlZ4xgoPq1uGqqwDqIir9PsX8Z 8lBA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:39 -0700
Message-Id: <1372899889-19183-44-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 43/53] wireless-regdb: IL,
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
index a101b1e..a4d0587 100644
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

