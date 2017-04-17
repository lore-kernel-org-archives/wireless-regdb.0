Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=zdGFCouxjUYbAyxarC16V2Z73vYvozF21cp/K1sbjT0=;
 b=RAY
 FE/Ix1iPeaam6NFueKPryez5ItKKREzpxwz6mmcTQxLMvb5cuQMo74LRt8WotXyjv5Cpv/LQMUpZo
 Gxkzckc7lkYn4zf74hqSLqX/fp8rzR3G3kHChUpM+mMt23vsD3TVBPms4iZ9ffjrtfdzBatBxXKhs
 FBSziCNBQCw5MUeXjb1ILiWpeh42i8KI87GtzaJyC3b96aIkjJbMPYAIHih/ahDwJxs4xBKklxv0b
 cC0McTu7m+OVrqVmCUnvm6dklicK5gJZhiC2KIYXBFCgOxjEzO9P+S8NkYq+f5d9kY68rUuAMKoLz
 NWbJHWYleQY/uqAJFZzLecBnd+O2dyQ==;
Received: from mail-yw0-x236.google.com ([2607:f8b0:4002:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0GS2-0002rF-FJ
 for wireless-regdb@lists.infradead.org; Mon, 17 Apr 2017 23:53:00 +0000
Received: by mail-yw0-x236.google.com with SMTP id u70so20423591ywe.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 17 Apr 2017 16:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=logitech-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=yMFtXjRL1zGh+slf4+YeJHxg05iJaCo6AhJfKgLphD4=;
 b=dRUCsagkcGApDvvO7AnMTZ/azk1TkzXJblLYJZ7GWrpLgmCQJG0nGh1g88ZpkCMe2w
 VAD085A19297KbSb9CHdPabpXjSbB7JhZqGwD4o5WT2teigLFDVC3qfMdtuHRfdD5trr
 iLmiw5/Mnz8x+walWZ1s2/+mrcm7awxYYVh2XKx8obHgMUinbPbrMsZybVqWExymPD7U
 yelGQ6sf8kLE7VgYNgFBart+OCekphZKUTw7vLNyw8gJdBjLq7aAHh++VfXTVbOX5W+D
 RNEirMzlYEX61n4Qi46NB7VVvhMU/ysO2z5G05L97dMiT1Saa4QcAiYxhpISJL+tQGYM
 k1/g==
MIME-Version: 1.0
From: Aron Rosenberg <arosenberg@logitech.com>
Date: Mon, 17 Apr 2017 16:52:15 -0700
Message-ID: <CA+XFNZ4kkNyLOj=ER0MbN3s50_Jmn9nTzpJnKb6+gq5dXjg8pQ@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] Set NO-OUTDOOR Flag for EU Countries on
 5150 to 5350
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

wireless-db: Update rules for EU 5ghz to add NO-OUTDOOR

According to [1] the EU now requires NO-OUTDOOR to be set
on all 5Ghz channels within 5150 to 5350 frequencies

[1] http://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.00_30/en_301893v020100v.pdf

Signed-off-by: Aron Rosenberg <arosenberg@logitech.com>
---
 db.txt | 88 +++++++++++++++++++++++++++++++++---------------------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/db.txt b/db.txt
index 0bc068e..7f0ba4c 100644
--- a/db.txt
+++ b/db.txt
@@ -79,8 +79,8 @@ country AS: DFS-FCC

 country AT: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -131,8 +131,8 @@ country BD: DFS-JP

 country BE: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -163,8 +163,8 @@ country BG: DFS-ETSI
  (2402 - 2482 @ 40), (20)
  # 5 GHz Radio Local Area Networks (RLANs), ref:
  # II.H01 of the List, BDS EN 301 893
- (5170 - 5250 @ 80), (23), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  # II.H01 of the List, I.54 from the List, BDS EN 301 893
  (5490 - 5710 @ 160), (27), DFS
  # Short range devices (SRDs) in the 5725-5875 MHz frequency range, ref:
@@ -316,8 +316,8 @@ country CX: DFS-FCC

 country CY: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -373,8 +373,8 @@ country DE: DFS-ETSI

 country DK: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -408,8 +408,8 @@ country EC: DFS-FCC

 country EE: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -457,16 +457,16 @@ country FM: DFS-FCC

 country FR: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)

 country GB: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -512,8 +512,8 @@ country GP: DFS-ETSI

 country GR: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -566,8 +566,8 @@ country HT: DFS-FCC

 country HU: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -579,8 +579,8 @@ country ID: DFS-JP

 country IE: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -609,8 +609,8 @@ country IS: DFS-ETSI

 country IT: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -731,24 +731,24 @@ country LS: DFS-ETSI

 country LT: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)

 country LU: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)

 country LV: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -838,8 +838,8 @@ country MR: DFS-ETSI

 country MT: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -979,8 +979,8 @@ country PK: DFS-JP

 country PL: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -1000,8 +1000,8 @@ country PR: DFS-FCC

 country PT: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -1032,8 +1032,8 @@ country RE: DFS-ETSI

 country RO: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -1072,8 +1072,8 @@ country SA: DFS-ETSI

 country SE: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)
@@ -1087,16 +1087,16 @@ country SG: DFS-FCC

 country SI: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)

 country SK: DFS-ETSI
  (2402 - 2482 @ 40), (20)
- (5170 - 5250 @ 80), (20), AUTO-BW
- (5250 - 5330 @ 80), (20), DFS, AUTO-BW
+ (5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+ (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
  (5490 - 5710 @ 160), (27), DFS
  # 60 GHz band channels 1-4, ref: Etsi En 302 567
  (57000 - 66000 @ 2160), (40)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

