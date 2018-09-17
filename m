Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=SQLxH4hWE9wLuTi5e+yMpNDMjFyWl4HKnTK8cm4AKU8=;
 b=ZrzEYCB/u41S0n
 zZxBWIFqmkMs6CTMJeQq9/ZWSVuDABgieI7eLv98JS8HYh/HG2YyzmMNSPfpzfDhEyO46KV0+A6NZ
 SGBfzwaR+GwCUHtkbwsc1nfxdfVNSw41OCFmHGup0gxNQOTdSxhTJKSXAwSXivhA9byxUNj/hR9Br
 y46bYvqKlcFoLXSazd3zKExoW5KBp45NFMh0AkGzgi6p5UAI3kbpV3atBmYjJ5wMcHGNRNh10yfmu
 CPQ72V7vGoiv/M7JdnIh7IgZzKg0/Vc5XDovK4xoP7RHN6m3cTGshc9t58Mu9EYQim7ptKdT4emBh
 6e3YJkpu8/59hS5pU4Qw==;
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1oBQ-0005Jp-JD
 for wireless-regdb@lists.infradead.org; Mon, 17 Sep 2018 07:43:02 +0000
Received: by mail-qk1-x743.google.com with SMTP id h138-v6so8507686qke.8
 for <wireless-regdb@lists.infradead.org>; Mon, 17 Sep 2018 00:42:47 -0700
 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openmesh-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=J8Tgxt4W+n5dNQRSFPhxz55lzC42FF8CS/hBycoWVvs=;
 b=EUFkCs2pM2k04OulOv/YS2hmTPDx80Z9gkLRkcHxUX7oUsgemPbfuani9vImXBUyO9
 x4NObOPaNxJt7KJVGrTNBKAKR0nxVgwn7VoPWdc8u2FRRhMytqQ5Wz892HTrrcZqQSGW
 13Mx9Y/aYcRfdItiQe0lw8L9CtqXiC8fLyl842D6bCQL36skSfsCdKqbCuRUtYUcBlOw
 xdttPOpmxT/I1a+hM+qyOyR5d2c+c7zg+xmEfkE9ysUa8wtiA2j7gU2/zftlHbQ3j+PZ
 OmdSf4Z9vrs6O2213cpaUuaRuV6H2QTXkkQt2HK6X79BeczZwhLMYfnc5mRg+R0yC0YZ
 nq/g==
From: Sven Eckelmann <sven.eckelmann@openmesh.com>
Date: Mon, 17 Sep 2018 09:42:11 +0200
Message-Id: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
Subject: [wireless-regdb] [PATCH 1/2] wireless-regdb: Sync FR with ETSI EN
 301 893 V2.1.1 (2017-05)
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
To: seth.forshee@canonical.com
Cc: wireless-regdb@lists.infradead.org, Sven Eckelmann <sven.eckelmann@openmesh.com>, linux-wireless@vger.kernel.org, Simon Wunderlich <simon.wunderlich@openmesh.com>, Shashidhar Lakkavalli <shashidhar.lakkavalli@openmesh.com>
List-ID: <wireless-regdb@lists.infradead.org>

The documents
https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
and
https://www.anfr.fr/fileadmin/mediatheque/documents/controle/20171127ANFR_-_ficheRLAN_5GHz.pdf
show that the limits for the 5GHz bands are out of date:

* frequencies don't match the official limits
* 5150 - 5350 MHz is not for outdoor usage
* 5150 - 5250 MHz only usage is allowed to use up to 23 dBm (200 mW) even
  without TPC

Signed-off-by: Sven Eckelmann <sven.eckelmann@openmesh.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index bc64628..7f978e1 100644
--- a/db.txt
+++ b/db.txt
@@ -475,9 +475,9 @@ country FM: DFS-FCC
 
 country FR: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
         # short range devices (ETSI EN 300 440)
 	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

