Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x233.google.com ([2607:f8b0:400e:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHMS-00060p-89
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:21:00 +0000
Received: by mail-pb0-f51.google.com with SMTP id um15so1351319pbc.24 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=lkTi4mJiOprd5P5aI9weuZHOY7EcoFauH63qrohqch4=;
 b=Lc9OA++Us9gpmqAAqq10uMiaVh1fiYYD8TQG16y2qwAYTlXC7ELA5kkn6U6Rb1BXQJ
 ypNpW6mqpnfm/0zrVclJ2yhTQ8vAiHs+KcqmIWHkMqXMNXTg24FebjZV+oJ17dVDDWs5
 iYHOGeHVkFOz0pqiWktccJnlkdHjWukd2kHSY156HhwASt0oKUTzjrXFbO+vZqUzqcZY
 l/GPCDBpyeC4W7ISpVROjpQZNH17sLlNnFIineGGPpevLI8ZlnUlibyme3hw5j5C2uv3
 DdvlLLwLU4wIQkSeFpspIMCQlH3MG/6c7R2pWNaGW4krtocv/BckMpsPLubrG4wjJNDm tAcQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:10 -0700
Message-Id: <1374027522-18488-22-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 21/53] wireless-regdb: DE,
	Germany - enable VHT80
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
index 15e413e..b58d4e2 100644
--- a/db.txt
+++ b/db.txt
@@ -226,11 +226,11 @@ country DE: DFS-ETSI
 	# entries 279004 and 280006
 	(2400 - 2483.5 @ 40), (N/A, 100 mW)
 	# entry 303005
-	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
+	(5150 - 5250 @ 80), (N/A, 100 mW), NO-OUTDOOR
 	# entries 304002 and 305002
-	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
+	(5250 - 5350 @ 80), (N/A, 100 mW), NO-OUTDOOR, DFS
 	# entries 308002, 309001 and 310003
-	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
+	(5470 - 5725 @ 80), (N/A, 500 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

