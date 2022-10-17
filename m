Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=STkDe5JUo/Rj52Jq0VDc+WEDGfbOEtUPBoIhYYzIUJk=;
 b=RClwGaddxzE/kX
 xRpSeKpNDBEd3aX/bZ8gr0X1rynBGPtVr0Af4DSDo1iH62OKnm8a0o5IkjqEJ+PBzWZKy8vPoOf8D
 VBz7s4XxmGgtISmmvtAHwAgFRwz4pYMT1oC1mu69b/nROzgyoJrhB2gCORvm14tRwzlMHcQS4BxlT
 HjEiVaaR4Uhk3JM6+beOgthxICx8xVuSKKybFFctMFNepv+7rZjrrP7nyb6VJDkGcPZuMRyc/CHXo
 zMK501+fM3ofa93D8q++EszAQaXCXwi8r+pk3L/e5JUyDGhEQM4dPE0YoLCW8KTBvRjv3jcy/Krnd
 5tqEOHzabejLtSMtVzow==;
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okGEk-0069nR-3Y
	for wireless-regdb@lists.infradead.org; Mon, 17 Oct 2022 02:52:19 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 204so9848977pfx.10 for
 <wireless-regdb@lists.infradead.org>; Sun, 16 Oct 2022 19:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=qGZZN/AFG+E18FjNDFSOY1MKkkaUhFr7pWLXHYisKfo=;
 b=P6aCAof3fj2iynKF+R9vQd+vgVwQQmVQrx7UF42pcPIft0qYAZbNw8nD2jODEnDei5
 5mxgmIVJxvdVFDHSFmL3gDgXu0lfAxTMovhSznDUdf9nk7WF8NnrCwweLfTcYfQUPfvQ
 CmD2vcylbznoxhZHznIh+VoLbe62rYdl0Zl7UesaZ4Er8cDCPmL8eKt5HhV7hd5CWNoA
 EwrxDXF62I6lF+j8SVuZ7HVYHZEppO2BLiUJ3iAgfOKK8hMdro5RzMfk+yrFOqMzzLc0
 JaHp4ROqsa91kL6KfwNYZA4Ttzyzz8u5plQFIjV1d/ySKcy9uPiIO5H60ONldGojNfSG S2pA==
From: CaffeeLake <pascalcoffeelake@gmail.com>
Date: Mon, 17 Oct 2022 11:52:04 +0900
Message-Id: <20221017025204.1370004-1-PascalCoffeeLake@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for Japan
 (JP) on 5GHz
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

Support 144ch for JP Region.

The Ministry of Internal Affairs and Communications has approved 144ch in Japan.

Source: https://www.soumu.go.jp/main_content/000635492.pdf

Signed-off-by: CaffeeLake <PascalCoffeeLake@gmail.com>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 012824f..8b3827a 100644
--- a/db.txt
+++ b/db.txt
@@ -907,13 +907,15 @@ country JO: DFS-JP
 	(5170 - 5250 @ 80), (23)
 	(5735 - 5835 @ 80), (23)

+# Source:
+# https://www.soumu.go.jp/main_content/000635492.pdf
 country JP: DFS-JP
 	(2402 - 2482 @ 40), (20)
 	(2474 - 2494 @ 20), (20), NO-OFDM
 	(4910 - 4990 @ 40), (23)
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (23), DFS
+	(5490 - 5730 @ 160), (23), DFS
 	# 60 GHz band channels 2-4 at 10mW,
 	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
 	(57000 - 66000 @ 2160), (10 mW)
--
2.37.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

