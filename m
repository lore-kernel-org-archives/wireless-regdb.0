Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=L3DKVKZye20sCY1EXnh6YofTeee0sCTPCQf7U50lc3k=;
 b=bIJG5a1BiLB0XG
 HZqha3B9SDVOhIQe/3l4Qso/k5QMVm/tj7UaAREiZulM+cBRJT55p6idCDXpoOJqjDJNhByH3Mehy
 dN+AQenbUreBjnti2kCLxwzVNwXWMe4LI2FGPqF36JG5IuF3vIrjOJCEYNAMLggbRYrxJLdR3Ween
 4ofQU9vhh9/Z4S6qtA4cW8ax+3HNW9kCHEoVzl4yhj8hbJQTxZzKZNQnWXtJ2KuMb4O5aQISh5tDT
 Ch7WuKPT35wLeHJRcI6Qp0T+X87Uz0RyXyTD85d+UWdsrYxaxN989fHgXSkjJIZdRZ1zQVt9KwLqS
 EtykI/cAvQe+Bei6t8Sg==;
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nufgh-000qNq-EG
	for wireless-regdb@lists.infradead.org; Fri, 27 May 2022 19:31:56 +0000
Received: by mail-ot1-x32f.google.com with SMTP id
 t22-20020a0568301e3600b0060b333f7a1eso3607190otr.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 27 May 2022 12:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=taIZOP88c/8jIq0PRDOgEnC3ZWTsJa0UDOqT7eeY5Yg=;
 b=YRFCXRG49jC29R03e9OBlcn6gW/4DEM7tk/1almo1rWuH60lgOOPuKoiLSEU9qRVFS
 bAlfeT8KUkJ35UdpSzOZFqKkH+xFsGa5y6ww5Ag7gOibl8Q2wSPerwAhTJuUe7H1Xf64
 QYow/d+oLQpMjZB2cSsDI0kkEjPJrFe5q80tfiMNq+C4+eMpPCKD901mpxCgj6o77oES
 hHieDhiRZXL1lma7NETiygbwyz89TtJozS7p3pMOeu0CQLNy0WBZ8By3kLrW91wqy+re
 GeyUcSfQugPavwWd1z3jwTWYICxI5kZvjngookkRjpB7R1CYTQP71FzXk6lRFjnSxsk4 lvHA==
From: Seth Forshee <seth@forshee.me>
Date: Fri, 27 May 2022 14:31:49 -0500
Message-Id: <20220527193149.127735-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Remove AUTO-BW from 6 GHz
 rules
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
Cc: linux-wireless@vger.kernel.org, Dennis Bland <dennis@dbperformance.com>
List-ID: <wireless-regdb@lists.infradead.org>

No other bands are directly adjacent to this one, so AUTO-BW doesn't
make sense. Remove it, and also fix a nearby whitespace mistake found
while doing this update.

Cc: Dennis Bland <dennis@dbperformance.com>
Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/db.txt b/db.txt
index cf35883d1867..47850c051c9a 100644
--- a/db.txt
+++ b/db.txt
@@ -470,7 +470,7 @@ country DE: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -558,7 +558,7 @@ country ES: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -582,8 +582,8 @@ country FI: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-        # 60 GHz band channels 1-4 (ETSI EN 302 567)
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
 country FM: DFS-FCC
@@ -607,7 +607,7 @@ country FR: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E low power indoor
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-6 (ETSI EN 302 567 v2.2.1)
 	(57000 - 71000 @ 2160), (40)
 
@@ -732,7 +732,7 @@ country HR: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1222,7 +1222,7 @@ country NL: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1242,7 +1242,7 @@ country NO: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

