Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WigKs-0007vJ-R9
 for wireless-regdb@lists.infradead.org; Fri, 09 May 2014 08:39:19 +0000
Received: by mail-ee0-f47.google.com with SMTP id c13so2421219eek.20 for
 <wireless-regdb@lists.infradead.org>; Fri, 09 May 2014 01:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google; h=from:to:cc:subject:date:message-id;
 bh=NOYGr0xOPTGPfBBieDQOMwFvg4WwH7F2Lmg/+yDT+7E=;
 b=l1ZASrQIoJnFMJnghc2Mmv/dC2i8U1zRaVOTyE5ra7s/21Mhl8ve+KSZaKMyFYoDNy
 XFlxQOsPHwcT/lZnHZk5ciOpt/0tnpPibiH1YrEcrSRcQQXWsFB0N3VxI0uYS26doX4T
 K/xbyQFpQWnPuKfHFZ/VtC3X/KWNo9WAR3jrc=
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date: Fri,  9 May 2014 10:38:41 +0200
Message-Id: <1399624723-9167-1-git-send-email-janusz.dziedzic@tieto.com>
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless@vger.kernel.org, mcgrof@do-not-panic.com
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

