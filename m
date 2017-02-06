Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f181.google.com ([209.85.223.181])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1caqGS-0006eW-Nd
 for wireless-regdb@lists.infradead.org; Mon, 06 Feb 2017 20:51:59 +0000
Received: by mail-io0-f181.google.com with SMTP id j13so75042783iod.3 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Feb 2017 12:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eEnIrdGjhBksgy1Cc5QHWdkVihe6gU0vEfDUybxW358=;
 b=0+d0OChzgbPnoHGpDv4CEJgLKW6C0Y2Lk3x7HZC2E9wRZwSk9JhWB0IG1qeYxtqgNX
 EKIFDwvr8lm1vvZzIFYtseFYpl0r1T9ZJedrAxHABsS53npMoWPlC9T+rYq5PPk1l9Ya
 Rlpmcdxry0AhhQhCVr4DpZniyTEVRG7rRJnQhh+IvxEp6aZDKTknjOokj5zafWjg5v89
 +fOixkboKW1s8zxjqUflLBAJck3xjvnFJ2iE//oP6/Ot7V5VFTw6NoNjo4swz+5OxQXH
 LahaA47oMk5uUWHnL8Vymhh4dsXZCj1BSBSqOC5y/H6HVYMu2/5m2ML7dWhf6v96Oc1s
 LPJQ==
From: Seth Forshee <seth.forshee@canonical.com>
Date: Mon,  6 Feb 2017 14:50:34 -0600
Message-Id: <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
In-Reply-To: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
References: 
	 <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
Subject: [wireless-regdb] [RFC] wireless-regdb: Update 5 GHz rules for
 Canada
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
Cc: cory novak <cory.novak@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Based on the information from [1] the power limit for 5150-5250
MHz can be increased to 23 dBm. Also update some rules to match
exact frequency ranges given in that document.

[1] http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 05108e0d4d1c..699c1e7a713f 100644
--- a/db.txt
+++ b/db.txt
@@ -230,9 +230,9 @@ country BZ: DFS-JP
 
 country CA: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5600 @ 80), (24), DFS
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (24), DFS, AUTO-BW
+	(5470 - 5600 @ 80), (24), DFS
 	(5650 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-- 
2.7.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

