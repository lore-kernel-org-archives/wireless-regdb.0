Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHNH-00067U-Gn
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:21:52 +0000
Received: by mail-pa0-f41.google.com with SMTP id bj3so1434088pad.28 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=85cI6zxnd170cNn5P3I0NAhV1UH2XzTquugqtZICtK4=;
 b=o4o1dvwNogdp9H7IwxYjVne8zp9Af0E513brYPGWLxa0fS44sULd3PrwKE5UpqPhcO
 oumYb/j/ncGAa1951bhEXZThRNuWapEsOZkTYlXFDWQHCkb46cO2llmW85UCcvJW7x5x
 kxAI52AwvmF4L0nOY3wvOJiR6toDz+bJnAf7IVgCPnFxz7B/v3pBsRbw0xCzGAfmdl1w
 1HjGL1gqMsMRLvVgHGoaiS6uksRjDxRFneN12R/KhZM5AfBOv/Vc9Hh2lVrf5slrsd/K
 jyghyYxqTfb+YXKQKwacwBnIW7w5W8V605ST0/C0qQNOUqRhjl17GZSQPWEi+adRbvP3 YuiA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:20 -0700
Message-Id: <1374027522-18488-32-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 31/53] wireless-regdb: NL,
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

