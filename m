Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFs-0000UO-Fm
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:16 +0000
Received: by mail-wi0-f176.google.com with SMTP id ex4so1113538wid.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jiNynve6MaCGlIOIMTLPSzlU+rcuH8Gi6WGZRc1z3Hg=;
 b=uwunenEGQI3bBmd4nmho0AbyiesXH0VMWOJpUnsyanXanO9k4L3n3ViOnpiy0b4QNf
 BztMk9uU/yqSTOWMIH9dP+MZpb3rG9rIs4jQMV0pDhOhTZd6Uh5WIMuZ5FZhxGXrztH8
 WEA58Pr86SHvcaH5LR5ij/V+KBJZE0fPZcZoqxWikwpNL4pl5jeOfmu1UUs9HKaAqB24
 WoeWGj7zzKG6GQorvqvhggsU8Xp+pb6KL2dNzGsMH9jk44xFY8zpSiwHI7obpJW214sj
 aY9yHK3fWCKDLZ8fiwcZEJvLBYf0pF4L/MckZhFH9XT09cMhpWVB9jmfCLrj2hWOz/qe dQoQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:15 +0100
Message-Id: <1383314275-20960-26-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 25/65] wireless-regdb: enable VHT80 for JM
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

This also increases the max EIRP on DFS frequency
ranges from 20 dBm to 24 dBm. This also increases
the 5 GHz DFS frequency range by 20 MHz.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index accba4b..1d8c0b5 100644
--- a/db.txt
+++ b/db.txt
@@ -420,10 +420,10 @@ country IT: DFS-ETSI
 
 country JM: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country JP: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

