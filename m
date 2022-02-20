Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=5z/NOlJkUre8QBwRu0n0Z4l8YeeavRWoGAXTX8SaUTM=;
 b=3dPJuD8b2LPHAf
 x91ZiMJqWcAyy3qZ7/76edD/a5+G+nRBXulbfhg1GjIU7KZRJ7AYBsaS0u+uk1BNJvv03cV3XGcwY
 VV41vtvBPTLy6jmU2Wi2v+CGM1bwX4z2qpMT7ZuHT8q8sskYcMnLpOpAZw+eYunG2zdUGt9Mk//uG
 3VTq0njPYu0sMs5o9e5yIR6nGq5Hk/6hxCREq5RJWWywjLK6lmYUL237o9ml08TXZrOYoXgoVrN24
 /+z5PfatJGhhkSpqXFqjfPErH8TaUyvnWJSstOBM/m7t0M3spI+YThQoZWdVKkOKFDxZ3jyY4qPmc
 9JS3dEFHT6LKi0TJ6Hyw==;
Received: from w1.tutanota.de ([81.3.6.162])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLmfB-001VFl-Cn
 for wireless-regdb@lists.infradead.org; Sun, 20 Feb 2022 13:54:11 +0000
Received: from w3.tutanota.de (unknown [192.168.1.164]) by w1.tutanota.de
 (Postfix) with ESMTP id 74079FBF87A for
 <wireless-regdb@lists.infradead.org>; Sun, 20 Feb 2022 13:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 t=1645364773;  s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Content-Transfer-Encoding:Cc:Date:Date:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:Sender;
 bh=n4bgSGMjXL6uAzvUXP8yb7f6guyjGO1900Soiv0cnRE=;
 b=wjArzm21aVvv2GAyDPE+7+PYLklg6wh4csxwze5lAVwFL4Hhn5OIBouac7Ad0XLR
 FJ+a15ULpkyPkSAD2nKDkrBDTGwoUUOO56afyMkukO3eNHAPRjG0ZyxzPd6kKEkO0RU
 ff+rNxsW4xn1o93tWXR87JfpeAd/dShisvZOr+H6mfivHPhDaZBImVUFXOf/tI9qx9m
 pNfKCxiAkG3RrHuTUCOIstEGa0uXmvyq2tUQaRT+/xs7LmXIF8/NwdhEjVqCIaXSBJ/
 WgdsxVimS2HzaAYLr8nKOTv/sM9HXsPW1XA90p7gJK87VVAc5cNb8mRy3KP3Jxa+gjD
 NVg0EyZA4w==
Date: Sun, 20 Feb 2022 14:46:13 +0100 (CET)
From: roman.kunz@tutanota.com
Message-ID: <MwMNV0b--7-2@tutanota.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Israel (IL) on 5GHz
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
To: Wireless Regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

The Israeli Ministry of Communications has published an updated
revision of the normative radio band allocation table on 2021-03-29.
Notable change is the expansion of the range of allowed frequencies
in the 5GHz band.

Signed-off-by: Roman Kunzman <roman.kunz at tutanota.com>
---
db.txt | 9 +++++++++
1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index d45ec08..e107933 100644
--- a/db.txt
+++ b/db.txt
@@ -777,10 +777,19 @@ country IE: DFS-ETSI
# 60 GHz band channels 1-4 (ETSI EN 302 567)
(57000 - 66000 @ 2160), (40)

+# IL: Wireless Telegraph Regulations (type approval) (2021)
+# IL: published on 29 March 2021 in KOVETS HATAKANOT No. 9301.
+# IL: https://www.gov.il/he/departments/legalInfo/telegraph_law
+# IL: official document (pdf): https://rfa.justice.gov.il/SearchPredefinedApi/Documents/IdngyMn~ojdQSrkxuAqfZqiM8c1foi3TSZQhp7OMszo=
+# IL: also available as unofficial word doc: https://www.nevo.co.il/Handlers/LawOpenDoc.ashx?id=199708
country IL: DFS-ETSI
(2402 - 2482 @ 40), (20)
(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
+	# Table B List of conditions, row 63, indoor short range device without TPC (ETSI EN 301 893)
+	(5470 - 5725 @ 80), (500 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
+	(5725 - 5875 @ 80), (200 mW), AUTO-BW

country IN:
(2402 - 2482 @ 40), (20)
--
2.25.1

 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

