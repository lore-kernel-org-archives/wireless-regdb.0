Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ILiyXbDUcIpf1iFLSPPcNnEknMUnhWA3SoXcJfqbn74=;
 b=Xxl6AK1qmFqNbq
 51A1gEAanxt/q5PdAFlCkcd2QrL4GxhMFK+mlk/ihlNsNMRlf7+73WMRelKvxIWXOvMe/yX33JsFk
 XcX4h+tT2EsXHZrPi0HTdlntIIkuyekgawR2Aeuc3VJ+KOeuKVUajKyA6FbxzsblJSx8p+wKkn0jI
 30X+2A1cCVSUT0Qm0iVteVloGdDM2GLtHyvjVX5m6pdFGv6cIoZzzlhrEjI9dTz1nApXbzP8tbf1N
 rJDmfD/nKdWQIgHD4pj6uZxrhTyVFSG8YjcVfeTfJh8iEfAgWBxMgRjMUrGyK7hfVazoVlFL2M9sk
 KeV3s8ouZxOqO+ur6XkA==;
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1oBW-0005Kt-MD
 for wireless-regdb@lists.infradead.org; Mon, 17 Sep 2018 07:43:08 +0000
Received: by mail-qk1-x742.google.com with SMTP id z125-v6so8493805qkb.12
 for <wireless-regdb@lists.infradead.org>; Mon, 17 Sep 2018 00:42:55 -0700
 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openmesh-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1UPX2t+Ee40imsi4YQMHrccMNKBWBnUf1pECp6D5Mb0=;
 b=BAW7O7XAl1zhTBdpdZfDs4eSMLKcky0IXyTkAL1FjbHgLL5AJ78NCxyxIINLdMLZTc
 tVXvM8NVQp75ZSU1MmVIX8Qg5Kfz0Ex5ygqeEyizr2Gj6FUNO3+vB1G65646Vz1dU4u5
 zwvcILWOdSPakxGR7LqLULUnzzddwZbWjF4KpWL1/5a+EvB6O96Vyxs+YGse1KXGsYDk
 mZaA/cJFqSr0WQeprgrCEJcU/Gi3e9xdumR8/pLG6PfqZKfYO00Hw2oEVhVvegek7rpu
 3HYqID0XYvxLHqbT87jv04xnHUdyRfK60MR9FB+hRsOnCuP1M0PskAApKCmcHA439d4G
 OkoQ==
From: Sven Eckelmann <sven.eckelmann@openmesh.com>
Date: Mon, 17 Sep 2018 09:42:12 +0200
Message-Id: <20180917074212.6739-2-sven.eckelmann@openmesh.com>
In-Reply-To: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
References: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
Subject: [wireless-regdb] [PATCH 2/2] wireless-regdb: Sync DE with ETSI EN
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
https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2010_07_WLAN_5GHz_pdf.pdf
show that the limits for the 5GHz bands are out of date:

* 5150 - 5250 MHz only usage is allowed to use up to 23 dBm (200 mW) even
  without TPC

Signed-off-by: Sven Eckelmann <sven.eckelmann@openmesh.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 7f978e1..f406ac0 100644
--- a/db.txt
+++ b/db.txt
@@ -379,7 +379,7 @@ country CZ: DFS-ETSI
 country DE: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

