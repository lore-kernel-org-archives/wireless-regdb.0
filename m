Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY7s-0003LE-VS
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:14:26 +0000
Received: by mail-pb0-f44.google.com with SMTP id uo1so668210pbc.31 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=RnG+O4Inbm7xaJoSnJ87bkpeMTQHTeYUFOp5fwgGgbE=;
 b=sdM/xBIyYCkc6TJZCXF2EPVfpVcjgF1kdNW1uG2G0bEuxH1Xm77jE7qviOOCvx575v
 yHcDvEENUMEcW1zoxZfZHV8Hb6c2hx9HWKtQh2KAtRpCx9/v2zLnWMardTE5DO2ttqjo
 4/yxp0U6PRuiB2J8w1103V+D2yKLHeJ/6xc8NkMwGKUQ4uRQYZf4POIdCuC6rLU9KOIp
 7lccFY4wqvPi0S6PWwJcqP5OtYzQh1exoNGI3ChqhlCyBTwE0Ja8RN35t3hlx1WZENZ5
 k5rjI43y3Jtny2TdAhPl29CUmEgccDZJrKEX3eLvJfNN8L6sOLW64kcuBQAv6/y4dxYT kaJw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:31 -0700
Message-Id: <1372899889-19183-36-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 35/53] wireless-regdb: ES,
	Spain - enable VHT80
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
index ce61f97..bf4eea1 100644
--- a/db.txt
+++ b/db.txt
@@ -272,9 +272,9 @@ country EG:
 
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (N/A, 100 mW)
-	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
-	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
-	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
+	(5150 - 5250 @ 80), (N/A, 100 mW), NO-OUTDOOR
+	(5250 - 5350 @ 80), (N/A, 100 mW), NO-OUTDOOR, DFS
+	(5470 - 5725 @ 80), (N/A, 500 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

