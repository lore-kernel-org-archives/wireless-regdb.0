Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ee0-x236.google.com ([2a00:1450:4013:c00::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WICL0-0006IQ-Oy
 for wireless-regdb@lists.infradead.org; Tue, 25 Feb 2014 07:22:01 +0000
Received: by mail-ee0-f54.google.com with SMTP id c41so2865402eek.41 for
 <wireless-regdb@lists.infradead.org>; Mon, 24 Feb 2014 23:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google; h=from:to:cc:subject:date:message-id;
 bh=NOYGr0xOPTGPfBBieDQOMwFvg4WwH7F2Lmg/+yDT+7E=;
 b=pivJBAkdIQ/am9E6Je6Edt0VynvxkrW5XZmRczYTX6A+RwMed9kLnSu0u6yaWK1qcF
 nISVtFNadM0SZ9dsYvkvN1t7yjW/J1NZi1Yj/yASAGHekAilYg3IlLvTkPpqhkUdDPqk
 8XV8VSq4kL9qHMw7784CbMEc6joHH3eQovQi8=
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date: Tue, 25 Feb 2014 08:21:18 +0100
Message-Id: <1393312878-9471-1-git-send-email-janusz.dziedzic@tieto.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: add AUTO-BW rule flag
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
To: wireless-regdb@lists.infradead.org
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, johannes@sipsolutions.net, linux-wireless@vger.kernel.org, linville@tuxdriver.com, mcgrof@do-not-panic.com
List-ID: <wireless-regdb@lists.infradead.org>

Sync with latest nl80211.h and add AUTO-BW flag.
If this flag set, maximum available bandwidth should
be calculated base on contiguous rules and wider channels
will be allowed to cross multiple contiguous/overlapping
frequency ranges.

Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
---
 dbparse.py |    1 +
 1 file changed, 1 insertion(+)

diff --git a/dbparse.py b/dbparse.py
index ac7234b..b735b6a 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -16,6 +16,7 @@ flag_definitions = {
     # hole at bit 8
     # hole at bit 9. FIXME: Where is NO-HT40 defined?
     'NO-HT40':		1<<10,
+    'AUTO-BW':		1<<11,
 }
 
 dfs_regions = {
-- 
1.7.9.5


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

