Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY7m-0003Kj-1A
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:14:19 +0000
Received: by mail-pb0-f47.google.com with SMTP id rr13so672729pbb.6 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=y1vw3KnGXb0lg8hVq8g/xzaDzuo1RGMEFnRqeQAKhko=;
 b=klTjYq3vxyJo8NW2eBvojhoGyZZInNYuARJH0bz3lRar/wuifQBadaB605+iVQfi7V
 xbqfxEutQnbBmcXxN9dfQwKhvi+0YTfRpi/smi+qiGd+n/bqzUoWal8IXCn6aV2xI91L
 Aobr83OH/RKHGoq9FiGWGbjrb1sbl01aWgQDOeMjQOtyuCaVtzTQVFuX4Ueg2Jn4ov8x
 9EB9k51P3OgZ2DRyqrDNsriXiEH4Z34QS0zji8Y4Qwv1YRdQZmd+i44zHHXGOTelXmfI
 JECWzkx3NvZm8aYfD+MkLU0zmLxdBgVlDB9tEQC5EFcTo3kZCigkNpnqjM5ttHGM4a/g Fnrw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:42 -0700
Message-Id: <1372899889-19183-47-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 46/53] wireless-regdb: MA,
	Morocco - enable 5 GHz and VHT80
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

This adds 5 GHz support for Morocco with VHT80 support.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index fa8502c..aa41626 100644
--- a/db.txt
+++ b/db.txt
@@ -523,6 +523,8 @@ country MC: DFS-ETSI
 
 country MA:
 	(2402 - 2482 @ 40), (N/A, 20)
+	(5170 - 5250 @ 80), (N/A, 23)
+	(5735 - 5835 @ 80), (N/A, 23)
 
 country MO:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

