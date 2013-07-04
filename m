Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY7e-0003Kh-4J
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:14:10 +0000
Received: by mail-pb0-f44.google.com with SMTP id uo1so672384pbc.17 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=85cI6zxnd170cNn5P3I0NAhV1UH2XzTquugqtZICtK4=;
 b=heakBniI9gdjlkjJeitW/nXYJX3YDDmpL50Zku9eoopd+suzR7pbfGL09tIXoEbTKW
 42rTa0cyRUDh7Dyej2GLPnVkpu2t/mIJ+4OER4sxQkfLFFdsyaO4P61i8LWianPvOxND
 8jexXsYA2xuxoECcAT+39l8Mgn7uXRW3PtEhr7ABpo7hBjMvABe8RRY0TwF0aNXqoL8z
 bP6w2Diduf5+gkIQX3Ga5DRHfTq/5g6N+MflgC9ZulYZK4Yb+yiwTehN7oB9xt1O4gzg
 rGbduTueQHYfyYMafxQOZ05VSOUdiXbMIsE+wktOXVZnFxyPuUnnz12mXQ0wdJ42RKB0 fXNw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:27 -0700
Message-Id: <1372899889-19183-32-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 31/53] wireless-regdb: NL,
	Netherlands - enable VHT80
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
index 04a176e..8f8e8fc 100644
--- a/db.txt
+++ b/db.txt
@@ -558,9 +558,9 @@ country MX:
 
 country NL: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20), NO-OUTDOOR
-	(5250 - 5330 @ 40), (N/A, 20), NO-OUTDOOR, DFS
-	(5490 - 5710 @ 40), (N/A, 27), DFS
+	(5170 - 5250 @ 80), (N/A, 20), NO-OUTDOOR
+	(5250 - 5330 @ 80), (N/A, 20), NO-OUTDOOR, DFS
+	(5490 - 5710 @ 80), (N/A, 27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

