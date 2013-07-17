Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x234.google.com ([2607:f8b0:400e:c02::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHMh-00062r-RK
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:21:16 +0000
Received: by mail-pd0-f180.google.com with SMTP id 10so1298893pdi.11 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=sC0bf3spWugaV++FPWO4n6Ad1TIJbhQ+fuwD14+UzwA=;
 b=v88GCd+4vVaZQABFhhwr7U8LftU/K9bwq4jHQPdVoHJgTLB5ytMRi0eLFzMWh3rlT3
 hvnEn88eWIYHN851DYgs9RRLnRBU5vIWX+OTPfvb+uc2Qcf2XxYhLyO7QbzROwI2iF4+
 Lcaww5fqt7jH/MOEaiuhuP95jPNQ4eDUCMXZVpEMIDQEW/ZHx77svt+HPQKRziRoXOK9
 wE1gTDAuUcF4TYStnWzB3Lb7SfqKL+/NohSjGfkQ1qXLinRzUwqUJLbdhk9OrEWo7U8Z
 hZSXDI1b0Vmu5Be8zZH8+QaKiZ3FwcVgap1G81esRlXSl8ssGPPMcpOFVLPhQnbdfAxJ gKjg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:13 -0700
Message-Id: <1374027522-18488-25-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 24/53] wireless-regdb: CZ,
	Czech Republic - enable VHT80
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
index 5e17129..94be114 100644
--- a/db.txt
+++ b/db.txt
@@ -204,9 +204,9 @@ country CY: DFS-ETSI
 # implemented.
 country CZ: DFS-ETSI
 	(2400 - 2483.5 @ 40), (N/A, 100 mW)
-	(5150 - 5250 @ 40), (N/A, 200 mW), NO-OUTDOOR
-	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
-	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
+	(5150 - 5250 @ 80), (N/A, 200 mW), NO-OUTDOOR
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

