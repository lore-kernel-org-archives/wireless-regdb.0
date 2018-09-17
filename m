Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=WMg6aJY5lOjvXGUZLijtgdic6+Fj2p/gkC/prSxRGkA=;
 b=UHCmR9Zk4xLXuw
 cV1WLeT880mUod0+NQN70ZWMkTlPo+V4l/fx10uXmwcu4yVncbLa/IgCfyoBtDUO/GhEdXKELE9Rb
 gjhxFX/+jrmn7kqvZVbtsi62/c7XnxiWub8sCYm9dLA/I3ntulh0ZnO/3TSdMjKE/8S3jp7PuxKxR
 3HsUoW8Mh0k0v9d+RTXqVEvS3QqNHgBS5lB4c7gDn91w3SNV/1IUc/MlEAaas+EalZSDw/I5OKdbL
 hCW5jtWDRf69y0nt2irXcIH0H2cPahDvvIfgxZ2sd6xxLxZkQ3hAoLz1R5q7uf2SXJaNrTolASngm
 XAfeBmPdaOxWmdgh+wAg==;
Received: from mail-qt0-x243.google.com ([2607:f8b0:400d:c0d::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1oEa-0006td-AG
 for wireless-regdb@lists.infradead.org; Mon, 17 Sep 2018 07:46:17 +0000
Received: by mail-qt0-x243.google.com with SMTP id t5-v6so14443010qtn.3 for
 <wireless-regdb@lists.infradead.org>; Mon, 17 Sep 2018 00:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openmesh-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JNYy5N9s4n9heuDIBtFnKAzr4taEvv7wByA/dJJOp3Q=;
 b=Yb8ng+RBY9gaNRyQE0CeVwzlJ7gcjyuTcdM1XeazLqIC5XF0+IKcPeik3fH/oJAM0P
 GOo5k/hR+0zbkVwrgOTYGVICpQkShUSO+hdrskABy4yNwsxVDVHRCVZwnm8yQQkvFh51
 xh4xeBdu6ASojrmFXE9xCQ4zYIgGe2Erg/bk0gkbna3j7Kmnl4RK/VXmpaHbyEE4d2DL
 5NOpUCCj1PRR2HoKmFp10zZ3188ms7xMeZ9p3Rzu44v0raxxNCwdrPG+GzapviNPZqDj
 y9c1VrM9NfD9xTXT0eUZUaxH4nAOQ/6NpB3VJwjR7C1CoHnkntjiPrZP2XOh4puWfbKb
 kgjA==
From: Sven Eckelmann <sven.eckelmann@openmesh.com>
Date: Mon, 17 Sep 2018 09:45:49 +0200
Message-Id: <20180917074549.7011-1-sven.eckelmann@openmesh.com>
In-Reply-To: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
References: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
Subject: [wireless-regdb] [PATCH v2 2/2] wireless-regdb: Sync DE with ETSI
 EN 301 893 V2.1.1 (2017-05)
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
https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2010_07_WLAN_5GHz_pdf.pdf
show that the limits for the 5GHz bands are out of date:

* 5150 - 5250 MHz only usage is allowed to use up to 23 dBm (200 mW) even
  without TPC

Signed-off-by: Sven Eckelmann <sven.eckelmann@openmesh.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 7f978e1..8f356f7 100644
--- a/db.txt
+++ b/db.txt
@@ -378,7 +378,7 @@ country CZ: DFS-ETSI
 
 country DE: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
-	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

