Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFH1-0000m1-R3
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:28 +0000
Received: by mail-wg0-f41.google.com with SMTP id b13so1066357wgh.4 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=71sN2jyPiWWpmhSpuLZcs4QqAnZd1n6K/Wgk/6S3fxQ=;
 b=UQC+yd+7Ka1jZg3gIzjkJEikmcUaYz4wse0bKF8trQaeo+rui494nnWuIymdz3G3nq
 m4czSf2TJfGZmX0aeM1SVfkuF+mPOAoLeRe4M1jct6EEcXq73qTWCWGSRboD0yHPLPog
 neiNUZxPg4p9ulZ5gejJhhxR/sMrhbpvy/KigTfRmCFADr5gaBYOV+wxI5KWpx2Hn2eJ
 14zQJJABJrUMCSUrfhkZIInyHltH2l5PLgfolrODb43UuRYFh6SrqJsSoLPaaxvZ4a/m
 1zLt0CLl+Jsc9tDZ22YLTN7LDOtNcJQlIYUvXtO8SUtJVDv7JQ4nhDjqeSFQ53nzYLzp QZ3A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:46 +0100
Message-Id: <1383314275-20960-57-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 56/65] wireless-regdb: extend 5 GHz range
	for CR
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This extends the 5 GHz DFS frequency range.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 6d20e1f..3eb782c 100644
--- a/db.txt
+++ b/db.txt
@@ -190,7 +190,7 @@ country CR: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country CY: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

