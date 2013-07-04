Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY0w-0002rT-6x
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:07:14 +0000
Received: by mail-pb0-f44.google.com with SMTP id uo1so663420pbc.31 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=UOOvr1QquX22xnnZAMTfOmd+c7WqJwIbQZNceXoTcLs=;
 b=Zdz+LBp4f2q2vAkHgnrjPg8bs3JVyJVkq2JyR5TNLm8UT8mMojeTf3Hh9pTxpb0inq
 1uN4txfcX/nYW28yUtLKAVQEwnv9TVyuld+hOwh6zWftq11RsVNFzySe555EiP15fCaQ
 ZnIp4HJkuvB7VoAYzG25824UkELNTpeHYxkZnXeh3LYi5LF3LwOXhgQ+KFznT/mbmMjC
 tbqesRTTEM1Pw5xgmnh4mUWk5pxiZpfKnwR+3UvzCCjXXbJoGH9+rNt4c5w2RfW8Mdfk
 WmjpKZCRE0v7NxHWQpnw6Y1Z2l4t880gtEUvwdbPZnI1BBbSgu7DWT/pxGMgPE8Enuly dwWw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:23 -0700
Message-Id: <1372899889-19183-28-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 27/53] wireless-regdb: GR,
	Greece- enable VHT80
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
frequencies.

This is a country that belongs CEPT [0] and an available
regulatory source is ECC/DEC/(04)08 [1].

Quoting:

  considering [...]
  e. that the systems covered by this ECC Decision operate
  typically in a 20 MHz channel bandwidth, other values for
  the channel bandwidth are also feasible provided they
  comply with the relevant maximum mean e.i.r.p. and the
  corresponding maximum mean e.i.r.p. density limits;

[0] https://en.wikipedia.org/wiki/European_Conference_of_Postal_and_Telecommunications_Administrations
[1] http://www.erodocdb.dk/Docs/doc98/official/pdf/ECCDEC0408.PDF

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 3790d4e..7077b53 100644
--- a/db.txt
+++ b/db.txt
@@ -318,9 +318,9 @@ country GD:
 
 country GR: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
-	(5490 - 5710 @ 40), (N/A, 27), DFS
+	(5170 - 5250 @ 80), (N/A, 20)
+	(5250 - 5330 @ 80), (N/A, 20), DFS
+	(5490 - 5710 @ 80), (N/A, 27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

