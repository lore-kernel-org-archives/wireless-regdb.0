Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ecYGJLsQmfr3yikL3JS8/dhO7JIjguPW4BFtlxqKSEg=;
 b=ob9B70Xnw7LJJA
 opkt4ZRz+JasRj9rb4qsnvK2gLz1EveXgvJ/otun0vheD3mVA0/NkccMYRG0GKqzZ/4ryPhR5tCvK
 UCkYXqYiINUYLaBo6207S5uoGyTcRwtHeGaAeaguWcykc9K+8PgDgdmq65ditw6fJBYvBMuRHOuX2
 Z7GF3mutLPb7/IJY+qa9QMFiI4zigdhF4EXK5gX3NrBwZDzVPRebAn0Ck+7ursWCpAqXJ2CgTArXZ
 79zspmt5tjY702VqBq/RTSo9qIlR2aFY2xil/py7YgErHN0nlD6wQ8swoXjTG7lbVp9ybZoiGthIy
 Ul/kzevt6X5ZPFHRdHMA==;
Received: from mail-ot0-x243.google.com ([2607:f8b0:4003:c0f::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYHLQ-0008I1-28
 for wireless-regdb@lists.infradead.org; Wed, 27 Jun 2018 20:47:17 +0000
Received: by mail-ot0-x243.google.com with SMTP id w22-v6so3685481otk.5 for
 <wireless-regdb@lists.infradead.org>; Wed, 27 Jun 2018 13:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:sender:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=Y0R6PqgshO+kN1p2uXmEq5ZqttJeCJhRdU5jLg42UdU=;
 b=jmfd02t8gi4pKAHAKcDd6XgccQEqciRz0jcuNdSjLubt6Isou7aOKs98joz7niUjqO
 QruB8TmwW1duDNScFbFZnvdEu2V0g9yMSrcRHCpIDDBzib3n4Aoban6HrEwYO983wK0T
 l4NL1sVLPkDRvMSCBxMmjfNdeqBjKdECzziPL6lip5JQMj08nDa/almYz8eWkCzUKIo8
 UY83YxIb1GrzYbu6mpbkHi9wcVhtHtQboHG92lMBu+HXeF4p0AnDQyAt6WguqvYynud1
 iMNrZb9nHEFbkd7VOGZQhK+hA+1uUdut2Ox/7O8sNqPdZvNqstuvHN6aCwSFB1VikK0D sKeg==
MIME-Version: 1.0
From: bkil <bkil.hu+Aq@gmail.com>
Date: Wed, 27 Jun 2018 22:46:44 +0200
Message-ID: <CAPuHQ=Hix9aSE77EHAwEzrc10==BT3KNv3-CqR0ehRwLNrH_2w@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: update HU rules for
 2400-2483.5, 5150-5725, 5725-5875MHz
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

* 2400-2483.5M: extend bounds
* 5150-5350M: extend bounds, restrict to NO-OUTDOOR
* 5470-5725M: extend bounds
* 5725-5875M: introduce, as EU SRD provisions have been implemented

Freely available online references have been added hosted by the regulatory
body in Hungary, the National Media and Infocommunications Authority.

To refer to a specific section, you can grep for the frequency in question.

Translation key:
"Csak beltéri" / "Épületen belüli használatra korlátozott" = indoor only;
"Kültéri és beltéri" = both indoor and outdoor;
"Nem működő TPC esetén a maximális teljesítményjellemzők 3 dB-lel
csökkennek." = reduce max power specs by 3dB in case of no TPC.

Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
---
 db.txt | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 8963c01..7bc62c6 100644
--- a/db.txt
+++ b/db.txt
@@ -581,12 +581,23 @@ country HT: DFS-FCC
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
+ # 60 GHz band channels 1-4
+ # ref: 2006/771/EK, (EU) 2017/1483, MSZ EN 302 567
  (57000 - 66000 @ 2160), (40)

 country ID: DFS-JP
-- 
2.7.4

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
