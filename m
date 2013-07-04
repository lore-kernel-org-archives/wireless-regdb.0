Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY0R-0002oD-JM
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:06:44 +0000
Received: by mail-pa0-f50.google.com with SMTP id fb1so771450pad.37 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=lkTi4mJiOprd5P5aI9weuZHOY7EcoFauH63qrohqch4=;
 b=zie96F0uVT7p+1dQRAX/p9Er6TmeaFkJPTp/gt6CCZLFesTPzbYYUBhxIo3w0syNNa
 ots+uzCByyaktiNE+L7kq/kEZY0djTIqFZwtRlCAnVUGOc5OPaqOy3tiHI64q/poir++
 i9VH+RlHNdtPA+GvNska8mZbx+XEUhNXQj/cFOFXitzmHzx5hWgeQAIeqXvoKB5+IauR
 sFkcHlRMRI/uyBlgvZDsUxqhLkJcIWHlvV1PTtv1hsl0cfX9gakNi459Yf0T2MDiiC9u
 xK3ZBU97KUM/0sdf2DvqZU85Zjz72ptF2ucaUlZZvVZ58Wt5GYlcoMeloa4Z5p1gzdeM p+/w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:17 -0700
Message-Id: <1372899889-19183-22-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 21/53] wireless-regdb: DE,
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

