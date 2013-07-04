Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY8Y-0003Np-N0
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:15:07 +0000
Received: by mail-pb0-f48.google.com with SMTP id ma3so667734pbc.35 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=JjChRZINOM4fk+vngzXOYn+3eZXVhzuh6JpIqNgAq/I=;
 b=zes0Z1lXnK+kR92rG/cvzi6blmxAH1fDDwP9LyVeSYhi3KaUxDkG/7+tqwN89P6DyM
 lCj9lE5rm4cLsf+nua18Pno68im/o2UCmUsmi8yMVNLpSZC9mVk72CJb+wb+SZu8OQ2E
 tE/5zu2Ryeb5JGe6aPAghhdA2j73+VpV2R4Pm3e6z+pFNI52MkGlUgG28HrbOs4dM09r
 pM52oO3tXf7lr1rVZ48uvB8RDpdDHnmKuEWZJuxcmogwMfFH8m6k1T3R+e1TBnUPMa3p
 /hE887yENsc3nXH28iRycmAeNAj3H1VqbNbo6Af9lq7+J+HN3It0QwHBJ1aLeOpV1PWF XL8A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:43 -0700
Message-Id: <1372899889-19183-48-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 47/53] wireless-regdb: enable HT40 in RU -
	Russian Federation
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

As per QCA the Russian Federation (RU) enables
HT40 on the 5 GHz band as follows. This has been
verified by actual product submission and product
certification.

Band [MHz]              Max BW [MHz]    Max gain        Max EIRP [dBm (mW)]
5170-5330               40              N/A             20.00 (100.00)
5650-5710               40              N/A             30.00 (1000.00)
5735.000 - 5835.000     40              N/A             30.00 (1000.00)

Prior to this we didn't have HT40 allowed on RU at all.
This patch changes this and splits the 5 GHz band into
two segments which allow two different max EIRP values.

Exact details on the 5 GHz QCA work for Russia you can
refer to this PDF:

http://lists.infradead.org/pipermail/wireless-regdb/attachments/20130125/29d3fa1f/attachment-0001.pdf

Originally submitted to the list by Michael Green.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index aa41626..330ccb2 100644
--- a/db.txt
+++ b/db.txt
@@ -672,7 +672,9 @@ country RS:
 
 country RU:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 20), (N/A, 30)
+	(5170 - 5330 @ 40), (N/A, 20)
+	(5650 - 5710 @ 40), (N/A, 30)
+	(5735 - 5835 @ 40), (N/A, 30)
 
 country RW:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

