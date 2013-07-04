Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22c.google.com ([2607:f8b0:400e:c02::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY6a-0003GF-QP
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:13:05 +0000
Received: by mail-pd0-f172.google.com with SMTP id z10so587591pdj.31 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=N4p23+BmjhZv6pQwpSe10aRVmx1SVx2yiNPX3aTNiyk=;
 b=c9rj4XAbWWLsgGNEXMTiZ9RLZDh1DVkTr/GBKts3QLeQ/Heljh7JhFe8D9q2cTppnn
 4j+Ysdj4zIRPn+8qO5wamFTwN8VZl124pq8Gf/oT7q91uJx4Jha7Ba3euWomc84mWx9k
 R83nnev4z6CJpobkqyY9wj91fiJIuECX6ik583H/u16+LJxMK+xWYUlfc0whdskIfY5s
 ATNflTEBLw8MeraGdeU5cGDe000cSNrt7/9pkxMNwkBFRnGCy7+4DBaXjgxOjE3ul3NQ
 iXYAPs6EYBec7/NzHUZQcTTkoX2mwAfg8rJ7KAwxqNxzqcvcnzBYgv4NAUbe2GnHjo6g Us2w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:16 -0700
Message-Id: <1372899889-19183-21-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 20/53] wireless-regdb: FR,
	France - enable VHT80
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
index fb83f7a..15e413e 100644
--- a/db.txt
+++ b/db.txt
@@ -288,9 +288,9 @@ country FI: DFS-ETSI
 
 country FR: DFS-ETSI
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

