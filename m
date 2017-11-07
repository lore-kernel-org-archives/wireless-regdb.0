Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=gmk9lU/wv69G87XbqJKj2fu6ZKCoEk8WDi3/ycF6rN4=;
 b=c6n/Qwu+bHM7Ib
 BgNj8wtKJqlBQnLGeCvfHPzYw8diUiYRIQdjdV01TWPtKPl0qiBuB6AUEyg0GiH1TITpxF53RWdqq
 OJ9fPMKEvQXP2ivEPxaBCjxUkSIQ8EqnWmCw7iV4c295dATbfeKuEGo8MPqpMkqogsz+bX+I7/s0k
 cF/g+8eRHWjkpvWAGAF+RoCn1C/aYqXBJF1x0dCfxPF4KXbc7XjwuXPQIr8eoSiP4JEVSZ93Uvb4m
 9audWfRArmG5COhZNgvP5FvODPqQBFLjtdT86FPvgHgJLLsmFzHWUzXB+WSbg5+L+Bv7ok3OjB8uK
 E1PZ6q8oQwOOzaK+pLFw==;
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eCDmr-0006LG-AC
 for wireless-regdb@lists.infradead.org; Wed, 08 Nov 2017 00:00:15 +0000
Received: by mail-pl0-x241.google.com with SMTP id q9so98367pli.8 for
 <wireless-regdb@lists.infradead.org>; Tue, 07 Nov 2017 15:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Mrz1hrnxsomZbkR3s7iqDgYmW9Nprk9u13nTCTaL4io=;
 b=TRE76S+nW2Q8U7tuSSSWef250TP5RHzeqiHQK0bGhQ34XdeVbcY1owN1/AZDMiSb19
 w2MIr+FxrS9k6K/I4/fMBfeUNmN+5WiixjrpXVopNQfgFyAllzRO4WZKCX6sAy3O3ExD
 SQ5mRfIXbjELLDQR7koysExCGf4YtTpNoWe/ypdsyzAM6UNRaYEeNmOKAdN3TYJXthgC
 q81HfgGRtavKF7KdjEr3lPAvEU1la5CMtQ6jhj9Hq+6jfu5ifC9hLWsqYKFvprSLNSW+
 G2IullTZtn6leNGdFovIH9y0AJX5heOJ2VbfS9ei4I+j/dMIuE8jwnrFY4/I2S+v5HeZ
 o85w==
From: Ryan Mounce <ryan@mounce.com.au>
Date: Wed,  8 Nov 2017 10:29:22 +1030
Message-Id: <20171107235922.43180-1-ryan@mounce.com.au>
Subject: [wireless-regdb] [RFC] wireless-regdb: apply 5.8GHz SRD rules to
 EU/EEA countries (ETSI EN 300 440)
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
Cc: Ryan Mounce <ryan@mounce.com.au>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

EN 300 440 is a harmonised standard applicable in all EU and EEA countries.

https://ec.europa.eu/growth/single-market/european-standards/harmonised-standards/red_en

Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
---
 db.txt | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/db.txt b/db.txt
index 10c84ee..ee24749 100644
--- a/db.txt
+++ b/db.txt
@@ -82,6 +82,8 @@ country AT: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -134,6 +136,8 @@ country BE: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -319,6 +323,8 @@ country CY: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -331,6 +337,8 @@ country CZ: DFS-ETSI
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (500 mW), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -376,6 +384,8 @@ country DK: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -411,6 +421,8 @@ country EE: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -447,6 +459,8 @@ country FI: DFS-ETSI
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -462,6 +476,8 @@ country FR: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -470,6 +486,8 @@ country GB: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -517,6 +535,8 @@ country GR: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -556,6 +576,8 @@ country HR: DFS-ETSI
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -571,6 +593,8 @@ country HU: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -584,6 +608,8 @@ country IE: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -606,6 +632,8 @@ country IS: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -614,6 +642,8 @@ country IT: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -721,6 +751,8 @@ country LI: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 
 country LK: DFS-FCC
 	(2402 - 2482 @ 40), (20)
@@ -742,6 +774,8 @@ country LT: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -750,6 +784,8 @@ country LU: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -758,6 +794,8 @@ country LV: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -849,6 +887,8 @@ country MT: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -990,6 +1030,8 @@ country PL: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1011,6 +1053,8 @@ country PT: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1043,6 +1087,8 @@ country RO: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1083,6 +1129,8 @@ country SE: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1103,6 +1151,8 @@ country SI: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1111,6 +1161,8 @@ country SK: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	# SRD harmonised in EU/EEA (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (14)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.13.6 (Apple Git-96)


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

