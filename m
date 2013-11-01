Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKp-0001AD-FE
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:24 +0000
Received: by mail-wi0-f169.google.com with SMTP id cb5so1208562wib.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ECKsMsqq1nS31AaENt6n11eCKFQUO+sMjn7GrbdRb2I=;
 b=L/BceA1XUItW331OCeTVmYMeWJ/1ReGl0SFNctNbmtZ93tOI8LYskPbMwBL9TpS8NK
 UhIrPRydR3VsJqsk46pqQAaHFx/+0kzXrbrlAWzQgah5TlKJevDSvESYVQzXQYeRPT9X
 QmhcPrbpkTbkbMZbYiDqGuPiuwORZy+3nRuhDu8KwyKOKCjRyg7fioQeKaqDu8gjPbHw
 cVnNfemlNDfezjphZvt1s08GTpEKhNuuhjLUrLJbAkK18o6b6daEFmsjpl2PJTCSTVfb
 WA0u/YYTPVy65PGf1D45uCgEuMIEwGZ4TuFE+zIHvATi5vL02R4ubU8qg0FfSHUELvXj kZ8Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:08 +0100
Message-Id: <1383314598-21240-14-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 13/23] wireless-regdb: update TT's 5 GHz
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

This:

  o Enables VHT80 on the first 5 GHz frequency range

  o Enables VHT80 for the first 5 GHz DFS frequency
    range and increases the max EIRP from 20 dBm to
    24 dBm

  o Extends the second DFS frequency range by 20 MHz,
    enables VHT80 and increases the max EIRP from 20
    dBm to 24 dBm

  o Enables VHT80 on the last 5 GHz frequency range

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index bd5994d..1d23fa1 100644
--- a/db.txt
+++ b/db.txt
@@ -757,10 +757,10 @@ country TH: DFS-FCC
 
 country TT: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country TN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

