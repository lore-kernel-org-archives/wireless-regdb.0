Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=gM+le8V8E/PlYOh0soiDoUTWzjxZjpZaq5xSy4i3HRc=;
 b=D+0zD+eMCvKjVTYK1o0S5xq7jY
 ELE0q5d2lwNE/ct/aNVLtt9qi56q1WMZUvrfEs7Fm/tqInwVS+i0v6XdLfMb6pW4Rlu/5zbcJITMq
 0farcMOOPXoB24xypY/aTk5zZZmvHoDKkvnfXyjRjt9NLE7Nv8U7c6dq46xR6PmIj/TR7eou3/3gp
 dlYY7ttEAftrSaqvgKC7fCegnQvy6cmHLLvWIn5TgKo7Ect5f8+Ccbkt+u/tvex8jJzZ5KigRzytQ
 V3F6UXKuUOJhcu76LtmFzw73bAOaHuSz+qUKwDfDtQRopdWIi9r68MyEwwCAd4Ln9LaWfsnBlibVM
 60RJQ+/g==;
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mebps-00E1lt-PD
 for wireless-regdb@lists.infradead.org; Sun, 24 Oct 2021 11:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run;
 s=MBO0001;  t=1635075514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QGT6ykfZsaUrzrAVyRseFnHpzDMoEPjeZ7gXrXgmWII=;
 b=bwXTWEWUfDdnfHQCMFJEq1TYzF1gcAJ6REjFnZyTGHKXZ2TkGeMmdaL71U3ZkcpNGr/WjV
 lwQJ2hXfGmvEw9Bu5ioa2EKzW0eiaVqvV5e8c22MrYIWa99ioAsbczafmvye5ffS8NS4hz
 Dsdwxd4Gr2hNRC8sComGGdbPQhqdN6opa9JOcKI3VUUPpM/AudsPEdoMV2bZNxTkoXuymv
 zKqghAXfx3M9O1PcqpDML3WQEnxfRPZ6aIJ3b/lx0FG4pk6lUApFV4uJjJyhxFEjcCYRJx
 IjmjPWptnpR52v4/B8CGS4njUgSiVPcTk9MDxBvB20JM8MdCO79ArZKBRyOOtQ==
From: Sungbo Eo <mans0n@gorani.run>
Date: Sun, 24 Oct 2021 20:38:21 +0900
Message-Id: <20211024113821.51538-1-mans0n@gorani.run>
In-Reply-To: <20210929172728.7512-1-mans0n@gorani.run>
References: <20210929172728.7512-1-mans0n@gorani.run>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for South Korea (KR)
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Sungbo Eo <mans0n@gorani.run>
List-ID: <wireless-regdb@lists.infradead.org>

This patch is based on MSIT Public Notification 2020-113 ("Unlicensed Radio
Equipment Established Without Notice"), officially announced on 2021-01-06.

The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
This leads to the following:
* 5230-5250 @ 20 -> 17 dBm
* 5210-5250 @ 40 -> 20 dBm
Here the power limits for 80/160 MHz bandwidth are also lowered to 17 dBm,
as it's not possible to set different power limits for different bandwidths
at the moment.

Extend the last 5 GHz frequency range to 5850 MHz.

WiFi 6E is now allowed with the following restrictions:
* Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 250mW EIRP
* Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25mW EIRP
Here only the former entry is added.

And also update the regulatory source links.

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
v2:
* split 5150-5250 MHz band rule to accommodate the PSD limit
* remove AUTO-BW flag from 6 GHz band rule
---
 db.txt | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 6e8dbef..387ac93 100644
--- a/db.txt
+++ b/db.txt
@@ -862,15 +862,22 @@ country KP: DFS-JP
 	(5490 - 5630 @ 20), (30), DFS
 	(5735 - 5815 @ 20), (30)
 
+# Source:
+# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196972
+# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196973
+# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196974
 country KR: DFS-JP
-	# ref: https://www.rra.go.kr
 	(2400 - 2483.5 @ 40), (23)
-	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5150 - 5210 @ 40), (23), AUTO-BW
+	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
+	(5210 - 5230 @ 20), (20), AUTO-BW
+	(5230 - 5250 @ 20), (17), AUTO-BW
 	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (20), DFS
-	(5725 - 5835 @ 80), (23)
-	# 60 GHz band channels 1-4,
-	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
+	(5725 - 5850 @ 80), (23)
+	# 6 GHz band
+	(5925 - 7125 @ 160), (24), NO-OUTDOOR
+	# 60 GHz band channels 1-4
 	(57000 - 66000 @ 2160), (43)
 
 country KW: DFS-ETSI
-- 
2.33.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

