Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFC-0000Iy-Cp
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:35 +0000
Received: by mail-we0-f173.google.com with SMTP id u57so3969979wes.18 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rvyxUyi9A4cxBrwgdyuV7UdVigDcUz/dmDfjTIaaNCQ=;
 b=YTx5HpBUahc1tkpqiXZklagJvjw3EU/RY+V5ZCJxnsXUTMi9DzbtKSdLAS/rs/dfyU
 ev4alpFP4bYbo55o0rn9iTrpMF6J8d93QGby4zy5vVsSCfDy1T0HEH1ZRLoOnkRw1hEn
 +iZef1XzC/pQTQZ3v9uq+Hy2NQ0RnwqPcz/Zo622HtrwsExhOiH7qcTLDyyOQe8mO1Mm
 K234zyg8EDLgj+jjYyXBR5iDXfSaFEqjcxdd+7ISgiay5zgRdSi7BYayoYAvHaKLl/Be
 px2dolTvIPmQBYbPr42DFKjuM7TYBcly3/F4ixdWUqYgzjjvVfJLkwsQ2sm6WePY6HxZ +9Ag==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:56 +0100
Message-Id: <1383314275-20960-7-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 06/65] wireless-regdb: enable VHT80 for BA
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

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 2f62549..11060e3 100644
--- a/db.txt
+++ b/db.txt
@@ -74,9 +74,9 @@ country AZ: DFS-ETSI
 
 country BA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

