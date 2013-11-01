Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x236.google.com ([2a00:1450:400c:c00::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGa-0000et-B2
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:00 +0000
Received: by mail-wg0-f54.google.com with SMTP id c11so4138294wgh.9 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DpV/00JctQVLGFczjo90xmQA+UtPZzzd/6AGwXnDeEE=;
 b=IHkPRXlK/oLmfncbbe0NKF03n1banjJnwR+jpxzMIpKObtegSIX9cS5Xr7QlCPaCoN
 fV3zhg6CbNuiFbHuXDAUhS4clwL/mT/cj1SZKM32Uzt0Reuzcsxio37o+9jtYcnHC0Zd
 BiNTKQuYBDcj/5OMaFR7G6g9kRuNseOAzi8kmK40arY78pGU16DB2F3jlCZ6aTY+RsiJ
 h8UXauI5LkIKsLNaLuX+C3dMHCgJPyDv4eoQeXYEcxdpsk5ckT62QPv6mn/5ux/LXjzm
 yxyfylANyib/vmzbrCSdOc7TDZS4qBPYth20qalVu3UbvTvdTBoUZSFprLzJANZOUrxk BW4w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:34 +0100
Message-Id: <1383314275-20960-45-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 44/65] wireless-regdb: enable VHT80 for VE
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

This adds two new 5 GHz frequency ranges with VHT80 support
and extends the existing 5 GHz band by 20 MHz, and enabling
VHT80 support.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index b423b77..cbbbe18 100644
--- a/db.txt
+++ b/db.txt
@@ -796,7 +796,9 @@ country UZ: DFS-FCC
 
 country VE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5815 @ 40), (23)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (23), DFS
+	(5735 - 5835 @ 80), (30)
 
 country VN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

