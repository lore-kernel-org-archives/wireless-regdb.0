Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKs-0001Ai-3n
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:26 +0000
Received: by mail-wg0-f49.google.com with SMTP id x12so4147866wgg.16 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2lexwIJexYqH7/cI8h6059/mwpz0m96QWoI7hC5vTF4=;
 b=tXqTViC9pKc0qfntQVy8yNHmHj7rv6MXr4gQ3usLi7pnpb/7RTaYGCFra+FsmsGzjB
 YhCAvvZNgj9ovywGeoPihGpbsylWc+dhPcme6loBZQQGnRGpZkRRCPZfLI9EKVkBYm4L
 8VsYGcvY+Iw96NrSMF8atg7I/e2YSvYwdpXLGSgm8p5BMmNFctrhPVaiFGJxEXAbQg5Q
 JxElET/YIlptjnI6hWrt8Io6iTeof9xwJDRiaa3i05lA0WHAYzBkaMmVh1de3a1OjNkI
 BMM/eX9L5Z9hywCg0xYYTCXVxmN5ZsMt1sWO9RnEBmd2Yv47QdIPPjsY7gef/2eiMSyj UTRw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:09 +0100
Message-Id: <1383314598-21240-15-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 14/23] wireless-regdb: update ZA's 5 GHz
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

  o Increases the max EIRP on the first 5 GHz frequency
    range from 17 dBm to 20 dBm

  o Reduces the max EIRP on the first 5 GHz DFS frequency
    range from 24 dBm to 20 dBm

  o Increases the max EIRP on the second 5 GHz DFS frequency
    range from 24 dBm to 27 dBm

  o Removes the last 5 GHz frequency range

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 1d23fa1..de2e94e 100644
--- a/db.txt
+++ b/db.txt
@@ -834,10 +834,9 @@ country YE:
 
 country ZA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country ZW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

