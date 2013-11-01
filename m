Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-f176.google.com ([74.125.82.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFCr-00008D-Fv
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:56:10 +0000
Received: by mail-we0-f176.google.com with SMTP id w62so3956409wes.21 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mPJaChacfuh3qNo+tHdPB74wtu5OrtdAOh5mlX+4rTM=;
 b=NWfFCQdKmYt+EQqT2pZpYqZS83kMBeXX5l5nUYnfxbt2EdlKIaDSlaudMTgDQ87EQ5
 naMppO3zpYr037kGhggKJ0S4zVHSKafSRf4Tb4kBjwR+7dy6CANktOCjMcIiC/WyEHnG
 5DDOBMssSen6m4EPuazie7LrLxTRWWL+vjWAEmh7rCpD/F9lClt0h75nqLUao/SwJo9t
 5HK/x8DiEry6jVceIa2WS3pLD4Up41RGUe8Q69N2z8VxVzVvq0LVq7P6K5m57GbyEXcy
 7Zmo2mVI/PoT7ks3d32kMvVr4+86eVSh2+5vZlAPWZbqbH66Fyo0TNsOuVWQ+Rvc175H Yc4g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:55:27 +0100
Message-Id: <1383314131-20774-5-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 4/8] wireless-regdb: add DFS ETSI regions
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
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This associates the following countries to the
DFS ETSI region:

	AL, AM, AN, AW, AZ, BY, EG, GE, HT,
	IL, KH, KW, MA, OM, RS, RU, SA, TN,
	UA, ZA, ZW

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/db.txt b/db.txt
index 94da96a..beb94fd 100644
--- a/db.txt
+++ b/db.txt
@@ -25,15 +25,15 @@ country AE: DFS-FCC
 	(5490 - 5710 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country AL:
+country AL: DFS-ETSI
 	(2402 - 2482 @ 20), (20)
 
-country AM:
+country AM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 20), (18)
 	(5250 - 5330 @ 20), (18), DFS
 
-country AN:
+country AN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (20)
 	(5250 - 5330 @ 40), (20), DFS
@@ -61,13 +61,13 @@ country AU:
 	(5490 - 5710 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country AW:
+country AW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (20)
 	(5250 - 5330 @ 40), (20), DFS
 	(5490 - 5710 @ 40), (27), DFS
 
-country AZ:
+country AZ: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (18)
 	(5250 - 5330 @ 40), (18), DFS
@@ -133,7 +133,7 @@ country BR: DFS-FCC
 	(5490 - 5710 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country BY:
+country BY: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (20)
 	(5250 - 5330 @ 40), (20), DFS
@@ -263,7 +263,7 @@ country EE: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-country EG:
+country EG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 20), (20)
 	(5250 - 5330 @ 20), (20), DFS
@@ -292,7 +292,7 @@ country FR: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-country GE:
+country GE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (18)
 	(5250 - 5330 @ 40), (18), DFS
@@ -363,7 +363,7 @@ country HR: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-country HT:
+country HT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (20)
 	(5250 - 5330 @ 40), (20), DFS
@@ -390,7 +390,7 @@ country IE: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-country IL:
+country IL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR
 	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR
@@ -445,7 +445,7 @@ country KE:
 	(2402 - 2482 @ 40), (20)
 	(5735 - 5835 @ 40), (30)
 
-country KH:
+country KH: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (20)
 	(5250 - 5330 @ 40), (20), DFS
@@ -465,7 +465,7 @@ country KR:
 	(5490 - 5630 @ 80), (30), DFS
 	(5735 - 5815 @ 80), (30)
 
-country KW:
+country KW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20)
 	(5250 - 5330 @ 80), (20), DFS
@@ -519,7 +519,7 @@ country MC: DFS-ETSI
 	(5170 - 5250 @ 40), (18)
 	(5250 - 5330 @ 40), (18), DFS
 
-country MA:
+country MA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (23)
 	(5735 - 5835 @ 80), (23)
@@ -586,7 +586,7 @@ country NZ: DFS-FCC
 	(5490 - 5710 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country OM:
+country OM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (17)
 	(5250 - 5330 @ 40), (20), DFS
@@ -661,14 +661,14 @@ country RO: DFS-ETSI
 
 # Source:
 # http://www.ratel.rs/upload/documents/Plan_namene/Plan_namene-sl_glasnik.pdf
-country RS:
+country RS: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5350 @ 40), (200 mW), NO-OUTDOOR
 	(5470 - 5725 @ 20), (1000 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-country RU:
+country RU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5330 @ 40), (20)
 	(5650 - 5710 @ 40), (30)
@@ -678,7 +678,7 @@ country RW: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5735 - 5835 @ 40), (30)
 
-country SA:
+country SA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
@@ -745,7 +745,7 @@ country TT: DFS-FCC
 	(5490 - 5710 @ 40), (20), DFS
 	(5735 - 5835 @ 40), (30)
 
-country TN:
+country TN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 20), (20)
 	(5250 - 5330 @ 20), (20), DFS
@@ -765,7 +765,7 @@ country TR: DFS-ETSI
 # Listed 5GHz range is a lowest common denominator for all related
 # rules in the referenced laws. Such a range is used because of
 # disputable definitions there.
-country UA:
+country UA: DFS-ETSI
 	(2400 - 2483.5 @ 40), (20), NO-OUTDOOR
 	(5150 - 5350 @ 40), (20), NO-OUTDOOR
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
@@ -811,13 +811,13 @@ country VN: DFS-FCC
 country YE:
 	(2402 - 2482 @ 40), (20)
 
-country ZA:
+country ZA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
 	(5490 - 5710 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country ZW:
+country ZW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

