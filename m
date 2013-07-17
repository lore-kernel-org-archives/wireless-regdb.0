Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22e.google.com ([2607:f8b0:400e:c02::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHMI-00060I-I7
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:51 +0000
Received: by mail-pd0-f174.google.com with SMTP id 10so1311702pdc.33 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=N4p23+BmjhZv6pQwpSe10aRVmx1SVx2yiNPX3aTNiyk=;
 b=IS0ZKyqqhzBsXUYs12sk+vwt4SaOGlEYtMMcGgKG9O+h4nJnEs60aGb0/hZZJM0WdH
 BZP8wbgFcP5borlFEFI787vZ+R6tjdQ84PiGVQWsZ6KQ83+ezfrdsfPjs45oSVZqlYZl
 fwKFw4pRf9AU49mmmHg5IxdaaMfdKkBvJF4YOt9Tw5vK8mMmTgCncGBfwIyLNWc3dusB
 R9MK3Vd39t6TUOPVRCBzw/6XnWrbI7q0/sGQD0sM/KS4LsMvIXGzZNc9saEWBIGYyahj
 lIsfncfRBubdem9SKdKIR/owvhWsrd3RYHRHrZrsfiWcOA1Sq6DjyJzdi9l71Ob0rSwH E3BQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:09 -0700
Message-Id: <1374027522-18488-21-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 20/53] wireless-regdb: FR,
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

