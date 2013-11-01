Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFLK-0001HA-4D
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:54 +0000
Received: by mail-wi0-f169.google.com with SMTP id cb5so1203963wib.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pKX1Z/zqEM0AHtqMHPJBJ4PSpULl47XTzSUxxOezONg=;
 b=EodiKG6eqvq+beDZ5DDC1ezewtZ99EX9c5IoYT74SYLP8vJtEbMUdt/PiyJBvuCe9O
 Apvan6pErmLV18NlFms94lhOO4AC5+TWqh0rUqhjuVXOH9FUB0q6vMkXXCzhSU/0Gn8t
 z9UNYGHvdY6tE1Nj9MNrrMiroB8KpBuEki7unGZw4KoZfKN9V+e4hZO+nlxFPEpShrW7
 jtSE7YCMvfGJ1doWUYYaIb4Ydarr1H2C/C8YkagCZP3o9BOPkgyWbHrjUJLDelBPmyDW
 c8nXgXh43oYC3OJ3HGOu+3HBYB/oVpsOpWC94p0S4m1j8fQVBFpHpdqa5IcMH0hr219A I84g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:17 +0100
Message-Id: <1383314598-21240-23-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 22/23] wireless-regdb: update TW's
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

This:

  o Increases the max EIRP for the 2.4 GHz band from
    27 dBm to 30 dBm

  o Splits up the 5 GHz DFS band into two DFS bands,
    one with VHT80 support, another only with HT40
    support

  o Extends the last 5 GHz frequency range by 20 MHz

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 97165ed..e45991f 100644
--- a/db.txt
+++ b/db.txt
@@ -744,10 +744,11 @@ country SY:
 	(2402 - 2482 @ 40), (20)
 
 country TW: DFS-JP
-	(2402 - 2472 @ 40), (27)
+	(2402 - 2472 @ 40), (30)
 	(5270 - 5330 @ 40), (17), DFS
-	(5490 - 5710 @ 80), (30), DFS
-	(5735 - 5815 @ 80), (30)
+	(5490 - 5590 @ 80), (30), DFS
+	(5650 - 5710 @ 40), (30), DFS
+	(5735 - 5835 @ 80), (30)
 
 country TH: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

