Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=vTd5wys+i4+joBDxAMZnP2NNLNKHmOysu832WaU8ehU=;
 b=BM7fCTyhBELc9/
 4lmVJ8ncMZPEHqULHlWiGCuzlNV2BF6fKtDSUZJDH/5dTpVdijzTbmrgZ8rv/vkiVMqHgJ28Ksq4X
 uLh132NICaiN5qPG1qMJG5NlADJpzRmsAEQeLhmSIgQ/taSh+b5XOMaTRKPRPOu6R+Svz+/lGYLBR
 Ex/iSvgW/pwCBe3qVydlyc1pHrp+Cgig0L5QvArAYz+dJavwdG2OTAgwi4spaloSleUqFEvw+Tvy6
 XmY5F/+NgA4Wm9wB9ARZtYgTYDC89jYzqPoPSIcuHSnV1mU4yKqtdInIqcKtHfEqhPmDH5xnSxx2t
 9JDWMy4KH379E/4LKwFQ==;
Received: from mail-ot0-x242.google.com ([2607:f8b0:4003:c0f::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZMg7-0008Sj-21
 for wireless-regdb@lists.infradead.org; Sat, 30 Jun 2018 20:41:09 +0000
Received: by mail-ot0-x242.google.com with SMTP id f17-v6so13514328otl.7
 for <wireless-regdb@lists.infradead.org>; Sat, 30 Jun 2018 13:40:55 -0700
 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:sender:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=oiBEGcv6QQhp8W0AClXA7F+ylPFSo8rbvzHNCwvg3Y0=;
 b=JYZTQzR1zqKIUdiv7Gwuc3dMSDKQduH8ex8KF4PlLywqtb0Ac2boeg/9GEiL3zdM/7
 9KAAGYm+2LOSL8nwoM12vadhYWibrg8a/M0w1zBdriS583EYKwa/0v8/WH3kHGn3mKY6
 ZNuWd6Nv4ynpT/I+qLtZDsyK23A5WWUSatoj1szFSONVr9c4ukDdyTUQRuUsCyQnYF/l
 pPIUMPY2nzOlMiG+nQ+Cnsl/3EK/hn2OaQGXArbnu0WJ3SYpMDCfvypZeqNLMzpyky+/
 vZukSM7LfAEc8SANQkMVJNvWSXJEH7GgmnfbpXeQZwQKlaS4J8BGks2NFGH3Q76/Ypt8 uPmg==
MIME-Version: 1.0
From: bkil <bkil.hu+Aq@gmail.com>
Date: Sat, 30 Jun 2018 22:40:34 +0200
Message-ID: <CAPuHQ=EWtsOs2naY2pLx9D-JJbDr1kc8sisd-JNHiEekJ5ijDQ@mail.gmail.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: update rules for
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
 db.txt | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index 8963c01..cadfe77 100644
--- a/db.txt
+++ b/db.txt
@@ -581,13 +581,24 @@ country HT: DFS-FCC
  (5490 - 5730 @ 160), (24), DFS
  (5735 - 5835 @ 80), (30)

+# http://stir.nmhh.hu/?oldal=dokumentumGeneralo&root_rendeletelem_id=3&hatalyos=1
+# http://english.nmhh.hu/cikk/297/Eljarasi_tajekoztato_a_24_GHzes_es_az_5_GHzes_savban_mukodo_berendezesek_engedelyezeserol
+# http://nmhh.hu/dokumentum/319/kis_hatotavolsagu_eszkozok_srdk.pdf
 country HU: DFS-ETSI
- (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
- (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
- # 60 GHz band channels 1-4, ref: Etsi En 302 567
- (57000 - 66000 @ 2160), (40)
+ # ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 300 328
+ # additionally: 100mW @ 10MHz channels, 50mW @ 5MHz (max. 10mW/MHz)
+ (2400 - 2483.5 @ 40), (20)
+ # ref: 2005/513/EK
+ # note: TPC not needed @ 5150-5250
+ (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+ # note: max would be +3dB with TPC @ 5250-5725
+ (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+ (5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
+ # ref: Short Range Devices (SRD) - 2006/771/EK, (EU) 2017/1483, MSZ
EN 300 440, MSZ EN 302 064
+ (5725 - 5875 @ 80), (25 mW)
+ # 60 GHz band channels 1-4, "Fixed outdoor installation not allowed"
+ # ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 302 567
+ (57000 - 66000 @ 2160), (40), NO-OUTDOOR

 country ID: DFS-JP
  # ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
-- 
2.7.4

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
