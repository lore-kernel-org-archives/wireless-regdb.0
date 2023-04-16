Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=F9DTREBuB9V+Pq+1Z3Rc2XSUuCk4EBIDkN6eOjEsmic=;
 b=oh/tGCFjNIh0xk
 vexEycbResqxnCv1PLhGVYmVKyVSaLIYkDBJKtThjbP1S1CK/P3m+AsqZ5UdAdV3LBkgk1ds2nY6J
 fTVn6SY4yi02ecJJfi0OMXi0h6AQaqHCymHVzeUxlHoJLUR+57CtmhQBDcxMR8BgMpZ7lcCklp5/O
 HWO4rI7BFlQh67/Z9wxxCLU+QgCE3wAhAGnk4vD+xpxsgrkKAaciKqOEWtOxRUP/7D0siThOnQNP8
 m8GBRMjcKdJRd5TpB2d1+GiLqPSkmkllEs4r9e39ForWNpp4U3ofuJUDYuYSUQNZDB+JArOlPuqqQ
 JOrVnpNHGZlBX29zqSwQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnrDy-00CxKr-1y
	for wireless-regdb@lists.infradead.org;
	Sun, 16 Apr 2023 01:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681608632;
	bh=bYb6ghmwocp4rX7u+W+xhnCicstTQzYl0xEs2c5+z2U=;
	h=From:To:Cc:Subject:Date:From;
	b=WszKeYGCsw2Vmk+TGfTQaA16kxStCzsOF6bk0YASIv8zyYo6KFV3mJ6wOliodyorv
	 YcAPoATMREikjxyFaoJPZrQnMppSl74IcZPiC2ChKL6pzKfPgwIuip9MWBYnt4NLn5
	 XAg/hb4ZU3ymoFCbq2C9DVHqHnUnDlTf178a+wk5yw5SHc0cBqcU5T1aeRhVbui3uh
	 O3g3FQiNZNC3JjaI25yj12wYrTzmYOJEin8wL4FT2BC3YWHUuXEnluSUqlts3aIoji
	 40Y99aTpVszRhT/sJKwQyk4f+KQlyumrzfSXMrNSrQEROZMZAffUU410sX+t5Cgi+k
	 KiaK+xAoRknSw==
From: Seth Forshee <sforshee@kernel.org>
Date: Sat, 15 Apr 2023 20:30:31 -0500
Message-Id: <20230416013031.158433-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update regulatory rules
 for India (IN)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Keshav <the.ridikulus.rat@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Increase the max EIRP for 2.4 GHz to 30 dBm, and add DFS for 5250-5350
MHz and 5470-5725 MHz.

Source:
https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018

Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 915a3b94d418..2a7779510cc5 100644
--- a/db.txt
+++ b/db.txt
@@ -850,11 +850,14 @@ country IL: DFS-ETSI
 	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
 	(5725 - 5875 @ 80), (200 mW), AUTO-BW
 
+# Source:
+# https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
+# https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018
 country IN:
-	(2402 - 2482 @ 40), (20)
+	(2402 - 2482 @ 40), (30)
 	(5150 - 5250 @ 80), (30)
-	(5250 - 5350 @ 80), (24)
-	(5470 - 5725 @ 160), (24)
+	(5250 - 5350 @ 80), (24), DFS
+	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5875 @ 80), (30)
 
 country IR: DFS-JP
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

