Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=q0Ws74ZAaW/gutK2T9Wc4D6JvSB6kUU8vmGDUYaHwoE=;
 b=DeKa5K6z+iqpcZ
 MJyZIcLR+7cT7amfXLgK4R+aStCkId0IXLK8v8jRLH/XvBhAlu3wewIf6KPqQudGgF2ZAzlkHmRPN
 zbO2dmTXWfesr4QF43vk0jvnFWnJjpl10TMFOXMgANB6ikYQAZnMA/2j9InXI0BMZ+Venlm7K0iJr
 sk7K2SPGDVnAlxQG9NQF2plq7jvJCzNtcALfbWjwqSauUdvGMU0hZK4vYX8D4pPAmzVP98plneoJP
 yr5rYSeUL06dr7ZPoTrz/w2jUdAjdRAwpTSVvePqhJx2nDbfTo99rfkIBzBHhBShh9D/SbL5AyEI0
 WipR03u8yWKKPXlMgOfA==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiS1x-000108-NC
 for wireless-regdb@lists.infradead.org; Wed, 25 Jul 2018 22:13:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id t13-v6so8754960wrv.12
 for <wireless-regdb@lists.infradead.org>; Wed, 25 Jul 2018 15:13:02 -0700
 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1bdswxYDYyen6QgkfV4xEYW5MJ3nDDJ3fE2tlu1oO7Q=;
 b=DTypgUt1lEHs6sC+Zq34NuL2zqKHKS2IDx3beunsjaftsJTi/aqy4W4+oUImfBxGrc
 5PKG0G0UMoWdQ4nixxCbF4dpolOjzZQXt3WnHPtcElo7fAxvQ6WvCC//lc+liBLhDQQM
 SH5f90W1FEguf37OmYyvbEvJBgYheSZz3g9bbX0jL+7XLEA/46EQioESAkAWGIR9YibY
 AYeINih07YCloUaR700VaFd4b0Eir4DEc9bzA30MSJbWpPUaYHU9CKHPgLMiLTzPKQVv
 NZ4yMhSnCf//hu6wY2OARWmt+oF2drHEsqUBJ7/va44dp29d/8hc6PuKMrTE1e8IFvLm DC3w==
From: bkil <b.K.il.h.u+tigbuh@gmail.com>
Date: Thu, 26 Jul 2018 00:12:53 +0200
Message-Id: <8307609c48bf9a1755c5933e186dc8938cb6dc79.1532556773.git.b.K.il.h.u+tigbuh@gmail.com>
In-Reply-To: <CAPuHQ=EWtsOs2naY2pLx9D-JJbDr1kc8sisd-JNHiEekJ5ijDQ@mail.gmail.com>
References: 
	 <CAPuHQ=EWtsOs2naY2pLx9D-JJbDr1kc8sisd-JNHiEekJ5ijDQ@mail.gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v3] wireless-regdb: update rules for
 Hungary (HU) on 2.4/5/60G, 5725-5875MHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

* 2400-2483.5M: extend bounds
* 5150-5250M: extend bounds, add NO-OUTDOOR, no TPC so +3dB
* 5250-5350M: extend bounds, add NO-OUTDOOR
* 5470-5725M: extend bounds
* 5725-5875M: introduce, as EU SRD provisions have been implemented
* 57-66G: add NO-OUTDOOR

Freely available online references have been added hosted by the regulatory
body in Hungary, the National Media and Infocommunications Authority.

To refer to a specific section, you can grep for the frequency in question.

Translation key:
"Csak beltéri" / "Épületen belüli használatra korlátozott" = indoor only;
"Kültéri és beltéri" = both indoor and outdoor;
"Nem működő TPC esetén a maximális teljesítményjellemzők 3 dB-lel
csökkennek." = reduce max power specs by 3dB in case of no TPC;
"Rögzített kültéri telepítés nem megengedett" = no fixed outdoor install

Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
---
 db.txt | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index 8963c01..8cf7dee 100644
--- a/db.txt
+++ b/db.txt
@@ -581,13 +581,25 @@ country HT: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# http://stir.nmhh.hu/?oldal=dokumentumGeneralo&root_rendeletelem_id=3&hatalyos=1
+# http://english.nmhh.hu/cikk/297/Eljarasi_tajekoztato_a_24_GHzes_es_az_5_GHzes_savban_mukodo_berendezesek_engedelyezeserol
+# http://nmhh.hu/dokumentum/319/kis_hatotavolsagu_eszkozok_srdk.pdf
 country HU: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
-	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
+	# ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 300 328
+	# additionally: 100mW @ 10MHz channels, 50mW @ 5MHz (max. 10mW/MHz)
+	(2400 - 2483.5 @ 40), (20)
+	# ref: 2005/513/EK
+	# note: TPC not needed @ 5150-5250
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	# note: max would be +3dB with TPC @ 5250-5725
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
+	# "Short Range Devices (SRD)"
+	# ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 300 440, MSZ EN 302 064
+	(5725 - 5875 @ 80), (25 mW)
+	# 60 GHz band channels 1-4, "Fixed outdoor installation not allowed"
+	# ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 302 567
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country ID: DFS-JP
 	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
