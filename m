Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfxwx-0007A5-St
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 19:14:36 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1Tfxww-0005ke-4l
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 20:14:34 +0100
Message-ID: <1354648499.9608.19.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 20:14:59 +0100
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] dbparse: remove usable bandwidth check
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

From: Johannes Berg <johannes.berg@intel.com>

The kernel uses the bandwidth this way: any frequency
rule that is required for any of the 20 MHz subchannels
of a given channel must allow the total bandwidth.
Therefore, this check is wrong -- a frequency rule may
need to be specified with higher bandwidth than it has
to allow to form e.g. HT40 out of subchannels.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
John, this patch needs to be applied before the other one so the new
db.txt will be parsed successfully.

 dbparse.py | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/dbparse.py b/dbparse.py
index 893d64e..32cbce9 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -162,9 +162,6 @@ class DBParser(object):
                 self._syntax_error("Inverted freq range (%d - %d)" % (start, end))
             if start == end:
                 self._syntax_error("Start and end freqs are equal (%d)" % start)
-            if end - start < bw:
-                self._syntax_error("Invalid bandwidth: %d width channel "
-			"cannot possibly fit between %d - %d" % (bw, start, end))
         except ValueError:
             self._syntax_error("band must have frequency range")
 
-- 
1.8.0



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

