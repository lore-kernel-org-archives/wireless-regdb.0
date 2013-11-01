Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFCw-00008U-DO
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:56:15 +0000
Received: by mail-wg0-f45.google.com with SMTP id z12so4078042wgg.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PdWml9FPC8HSK+FVzugNJa4PbT7Hu0qBSP0zSZp/vPQ=;
 b=lfVHynQ8GfG+iXfoglYUl+t66r8l5urIjTPiUZh3EbI6uPI0ojjcD34AfubrrJV+jg
 C8tR1+jzRRVYz94nwI/pkgKckS4ypBa0eo6EzbcoDpWNdDq7Hdq4GmInh+oNMekWhseT
 LqEbPE9UtsZYG05HjPC21V+Jos7ikxJAj9CQ2xo+e2EdXeqmKvVgtp5YJSNOZo2B0o4f
 riWI47E/wF83qsAdwVJ0LnX+RGVPqmBVMRf5Jk06goAoeGgWyzTHRRoOr/bhC+IoiF/H
 /zmchqFvjStoScMRo/RjuAO/pv9z42xoXobXu+PP9bjE+ZQDPhZ51xDxdt/hH6FIqEEq 2Obg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:55:31 +0100
Message-Id: <1383314131-20774-9-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 8/8] wireless-regdb: optimize two of NL's
	rules
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

There's no reason not to merge these two rules.
This as picked up by the new CRDA optimizer.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index ddfbc04..11e0cb8 100644
--- a/db.txt
+++ b/db.txt
@@ -558,8 +558,7 @@ country MX: DFS-FCC
 
 country NL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), NO-OUTDOOR
-	(5250 - 5330 @ 80), (20), NO-OUTDOOR
+	(5170 - 5330 @ 80), (20), NO-OUTDOOR
 	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

