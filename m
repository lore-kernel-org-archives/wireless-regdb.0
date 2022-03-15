Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309;
 h=Sender:List-Subscribe:List-Help
 :List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
 MIME-Version:Message-ID:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=nsc5CexvyWZEWm71vSV3IIquEQLxcRvlLiPLF8zJm6c=;
 b=YrqMtiBWjcqkgqEQesuwTongyv
 ea09aspa05sLSRKpbHJOYq7SNytluAiDMC5DMzczH5kJFZ+QmzC70kl2DJHiZO/x3lsIaR8gFrUAI
 YAw6PkvKY1+QAutgRfSRYTLQnMHDiTYbqbHSoQmy8JbFWRJCDVKdcBsMEWaz6b1JugOzR+FSfyP0C
 u6uDhx9t7khkkluqqaIPcFqK3AmYRunaL/jeZqZ/2IpGQ/WHJ+Mw9mkhxesoxc/JPBwnQyZNwtpwD
 RBdqdDqqOcuPVlhokYVFympgtGlJSo/OahehmOAq0rhE2ThCJKhtVA4RUGeuSrZzthEm84GBBo+Lt
 0Pv7ZKYg==;
Received: from w1.tutanota.de ([81.3.6.162])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU9q0-009qd7-4B
 for wireless-regdb@lists.infradead.org; Tue, 15 Mar 2022 16:15:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 t=1647360949;  s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:Sender;
 bh=ypgp9QBJgJcdxOegzWX4QbzZSYgfTlREBurOsnAR3II=;
 b=HprA3Jvin8rhoZe0KoJrPFHyTpuWZsmfslJuqxoQhlfw2dIXIe3TAKMrdje/47qY
 U3Nxd23U5qYR6KCQLmRbe2Vnrcf+Mq4RkNbRjIgflb5Kybv02ZnliLFob+YuLpXwFf/
 PG/pIrGz4KKp+vB7qv8N+tjt3v/O/pKpCHfMQFzSkaKgj8g+zOc6Q39+FIk9vVd0dkM
 8wRdAHoTvrBwFADwgMl1okXqDXQneRat+JLn08m8NDz9bfB9fwafbT4DSS39kIpK+vk
 sk39j5439iWNtTWwZIChv6Z/Yej5AK4wu/Sy7BXo6WoNTc5dZf39Fi/g4IQ3yqDSmIS
 ujJLWlaB/Q==
Date: Tue, 15 Mar 2022 17:15:49 +0100 (CET)
From: roman.kunz@tutanota.com
Message-ID: <MyDMIaB--3-2@tutanota.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_295825_1852702432.1647360949438"
Subject: [wireless-regdb] [PATCH][v2] wireless-regdb: Update regulatory
 rules for Israel (IL)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Seth Forshee <seth@forshee.me>
Cc: Wireless Regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

------=_Part_295825_1852702432.1647360949438
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

 See attachment - patch v2

Increase bandwidth to 160MHz for 5470-5725 MHz range, as there is
no specified bandwidth limits in the document.




------=_Part_295825_1852702432.1647360949438
Content-Type: text/x-patch; charset=us-ascii; 
	name=0001-wireless-regdb-Update-regulatory-rules-for-Israel-IL.patch
Content-Disposition: attachment; 
	filename=0001-wireless-regdb-Update-regulatory-rules-for-Israel-IL.patch
Content-Transfer-Encoding: 8bit

From 84ba49ba0ae2da981d06f439691d6c93964f8f45 Mon Sep 17 00:00:00 2001
From: Roman Kunzman <roman.kunz@tutanota.com>
Date: Tue, 15 Mar 2022 13:34:03 +0000
Subject: [PATCH][v2] wireless-regdb: Update regulatory rules for Israel (IL)

The Israeli Ministry of Communications has published an updated
revision of the normative radio band allocation table on 2021-03-29.
Notable change is the expansion of the range of allowed frequencies
in the 5GHz band.
v2: Increase bandwidth to 160MHz for 5470-5725 MHz range, as there is
no specified bandwidth limits in the document.

Signed-off-by: Roman Kunzman <roman.kunz@tutanota.com>
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
+	(5470 - 5725 @ 160), (500 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
+	(5725 - 5875 @ 80), (200 mW), AUTO-BW
 
 country IN:
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


------=_Part_295825_1852702432.1647360949438
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

------=_Part_295825_1852702432.1647360949438--


