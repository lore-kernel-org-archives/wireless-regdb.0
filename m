Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=vrfLh7NhnjszCOi38LywMuL0czvQQUBfqgeLiHbrSk8=;
 b=zQ4MSNZQS2iuTF
 A77Wfmph+k8fjyS/wuHjnNyUcXEwMga6otmuaNw7MflVysb5x92Dl8YOkYvgOFrcO6nC2zJrSdgAR
 KwnVj4uPFb7PhIfErEMIdZVwCZLSEyvoj39NDuIsWIY4xnfCdUGUzj3T/cTiKzb4FUyl9hPaqNDt7
 sA1U3TIzuG7QbDmG5ATf2HnQztmk9j4E1PA/5mgh+KhY75WMNnXpAwmwP+u0X5MeVIS7M6m3UzA9J
 Nug6qUEqah1ofgNoUmmW05kSx3FsTkB1CSgUOji+PNSCDCFrxBuqbu3GLbFEgS1Icx18hDNGF6e0v
 ojuuWp0vE1OKQqPlRhPQ==;
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op691-00FSEp-Mc
	for wireless-regdb@lists.infradead.org; Sun, 30 Oct 2022 11:06:25 +0000
Received: by mail-pj1-x1033.google.com with SMTP id l6so8229263pjj.0 for
 <wireless-regdb@lists.infradead.org>; Sun, 30 Oct 2022 04:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/J6k02TVORFNXB/Iha8H3DzOddnGAfqUw1Md3lKKnLo=;
 b=qtMGzOnm/UKmznDAjA7+mmgiwpPUtRT2LB/OU6bHDXdrulr/2Aei0oVOEmScqCb6Dp
 rlHQ2VyjzLQkR8cJL0zuCt/Vh6qIgYxoQv8zyTpq6ThMdjNAYGoJU+tSosdVPXM0AXO6
 8ms0uspPWxhzZCKr8+Q7O+sSi+bEv9eaWtBEzD08TziGbhGN2wU72krBKcNtbqKSuPBT
 EGnYCs6uTL+D8a2Ypnu6xNUQBC6hjWDlkO9Yc5L8yVVD+YrNA2+G7yoeooqxOArftV6S
 vQDZ0yl0Ilbnp1wnzucYXDFPQh6cbZrUnBxuVBw9Rne2Z8sXEJaaZBE53NXdXXZApCof sC9g==
From: CaffeeLake <pascalcoffeelake@gmail.com>
Date: Sun, 30 Oct 2022 20:05:10 +0900
Message-Id: <20221030110510.752996-1-PascalCoffeeLake@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for Japan
 (JP) on 6GHz
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, CaffeeLake <PascalCoffeeLake@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Support 6GHz for JP Region.

The Ministry of Internal Affairs and Communications has approved 6GHz (5925 - 6425 MHz) in Japan.

Source: https://www.soumu.go.jp/main_content/000833682.pdf

Signed-off-by: CaffeeLake <PascalCoffeeLake@gmail.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 012824f..96527c9 100644
--- a/db.txt
+++ b/db.txt
@@ -907,6 +907,8 @@ country JO: DFS-JP
 	(5170 - 5250 @ 80), (23)
 	(5735 - 5835 @ 80), (23)

+# Source:
+# https://www.soumu.go.jp/main_content/000833682.pdf
 country JP: DFS-JP
 	(2402 - 2482 @ 40), (20)
 	(2474 - 2494 @ 20), (20), NO-OFDM
@@ -914,6 +916,7 @@ country JP: DFS-JP
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (23), DFS
+	(5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
 	# 60 GHz band channels 2-4 at 10mW,
 	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
 	(57000 - 66000 @ 2160), (10 mW)
--
2.37.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

