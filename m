Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY1c-0002w6-O4
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:07:57 +0000
Received: by mail-pb0-f48.google.com with SMTP id ma3so663000pbc.35 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=TMlfggOspOX3RqQRclQqAHq2J8U6nZyTuPITXtMzl8o=;
 b=etWU0gDfifkbZIbfO5+jl22yVqs/LGCEmWbBBEfQCJCa7i8r78Xgmp0AD0+3N9gQYO
 3DtmS1tU2ulGMdlhScZD+NJXq4yMNDQQghjYmCHa5pC91dNXbDn8SFgMX4i+2BQm3xuq
 fDlXx840eC0Sk8t0QGF+hSa6mdbUsJmZCIcYzRn8yhhRdjUiJE0FTGvrHVQAtM7FAEMp
 iBYxCPKslSWQsM8ny/fYKpHxwsQRu6AWns8/Hm27LlFoAMfeh0h8MvQZ7rStB96GM/Du
 7WRE+dH7vRbdtmppn81xZOgVuBYsePXXjmOImcSIkk5STUseEygZdIfE33NE+wGAQQTJ QvaA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:33 -0700
Message-Id: <1372899889-19183-38-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 37/53] wireless-regdb: CH,
	Switzerland - enable VHT80
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
index ab718f3..f19f637 100644
--- a/db.txt
+++ b/db.txt
@@ -150,9 +150,9 @@ country CA:
 
 country CH: DFS-ETSI
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

