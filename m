Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuXzt-0002jN-J8
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:06:10 +0000
Received: by mail-pa0-f50.google.com with SMTP id fb1so770996pad.37 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=FNS+aTKz8F42ezWYi7lLsmxZet9BDn7lBpV9zhrJH0k=;
 b=oEpGg7NgcLeg6HmtiEXbgw6N+Gq967HF/ry/21UsxykCaRiVfyIwcaT6rZg2uYzyGr
 IEKQvjLHM2xEJTb6X0sRMyQYIvvRTBV+vYd6ZSFpBTX8GSNy0j5VeeqnMn1J8/0lzZ7P
 hKSj+dsj09/CyWpkJuLx4weeaxYwhvbEkdL6FO7GgCXo0EsttDnh+Y30zfmqCNI3akSV
 UvLTO8QNW/pXJa39XjV1x17qBbfQFgG1LP3f8gdXXzyTXgQM0nvcH9y+RhOntPDgdtBc
 4/p7vUmGxzAOHYTLl12/ETDyzNlqLjPmpbsgW9BLjrCYObgIbsC7x3l34ofqhV0ys4J5 Yj1w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:08 -0700
Message-Id: <1372899889-19183-13-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 12/53] wireless-regdb: PR,
	Puerto Rico - enable VHT80
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
a new DFS 5 GHz band: 5490 - 5710 MHz.

PR is a proper ISO 3166 alpha2 code for Puerto Rico,
an unincorporated territory of the United States.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index c37c3d6..867b070 100644
--- a/db.txt
+++ b/db.txt
@@ -637,9 +637,10 @@ country PT: DFS-ETSI
 
 country PR:
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 23), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country QA:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

