Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKz-0001DD-G9
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:33 +0000
Received: by mail-we0-f175.google.com with SMTP id t61so3969116wes.20 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4Bq0oHRHoPjTSrRtAse1WVrMnm3QDfW3hdKlbXbEKUw=;
 b=KiEvswl4BPYHcpR2h9wpQpRJWRLpe4FJqmQAzHDX9R5hlVk1WlIPy5wNV4+mSMr789
 omVPTTmOatElXL4EUy4DFa3eudtz5XdaTedGgxbcvbvvALm3NGzu+zuOq5pCM+6Ef32w
 HNw4YNkctnwhjXoJ1Ixe+t4/2xWdOcwn1N2CWUT7d7/dAqDeUkyuATiOC96E6bXNK5gg
 cd8n27IGStXFrMyKHHE5LLuaRGxpJ0FLL+4rLz8dfn4F1QxGeRlJOjqRVeTlXVYBb397
 k7cAsVeRWd/yjf5VwyPLyztQLuzoYVWMuE+GZ1sZZQuq4CHDtyO7XRIiAHc/EM9D2HyT 85+Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:11 +0100
Message-Id: <1383314598-21240-17-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 16/23] wireless-regdb: update CO's
	regulatory rules
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

This extends CO's coverage by 10 MHz but reduces its
max EIRP from 27 dBm to 20 dBm. This also increases
the 5 GHz DFS frequency range.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index f26fd1d..50c81ce 100644
--- a/db.txt
+++ b/db.txt
@@ -180,10 +180,10 @@ country CN: DFS-FCC
 	(63720 - 65880 @ 2160), (28)
 
 country CO: DFS-FCC
-	(2402 - 2472 @ 40), (27)
+	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country CR: DFS-FCC
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

