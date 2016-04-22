Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from slowthinkers.net ([82.95.118.26]
 helo=density.slowthinkers.net) by bombadil.infradead.org with esmtps (Exim
 4.80.1 #2 (Red Hat Linux)) id 1ataUT-0001nW-EA for
 wireless-regdb@lists.infradead.org; Fri, 22 Apr 2016 12:47:23 +0000
From: Anne Marcel Roorda <marcel@slowthinkers.net>
Date: Fri, 22 Apr 2016 14:36:13 +0200
Message-Id: <20160422123614.2B4EC2063D@density.slowthinkers.net>
Subject: [wireless-regdb] Update regulatory rules for NL as per ETSI EN 300
	440-1
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>


Hi,

  Below the patch to include SRD as per ETSI EN 300 440-1
for NL.

Thanks,

- marcel

Signed-off-by: Anne Marcel Roorda <marcel@slowthinkers.net>

diff --git a/db.txt b/db.txt
index e9ba21a..738e412 100644
--- a/db.txt
+++ b/db.txt
@@ -850,11 +850,18 @@ country NI: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Regulation on the use of frequency space without a license and 
+# without notification 2015
+#
+# http://wetten.overheid.nl/BWBR0036378/2015-03-05
+
 country NL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
 	(5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

