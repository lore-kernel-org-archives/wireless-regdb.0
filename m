Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
 From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=hfqVDBriDatPlMy071JJAlikrZQ9nGqay5SsMU6drkQ=;
 b=rTL2DTQf7BEwV1
 Mufvsrsq9evIqKHmOL1xOgnGmNhOXs4tEGPVPWv9yOH+d5JCNQL+tNf1+OTGkQBfkQosjPMPkGxRl
 XVmP9rXOtqL61S3ZfBOLi0GdA3jh1TsTWC2ROAQzxvYimBQwWI/eflku3H9ostec2Ty0bMlLtAfMp
 OVXPbSFr54D079ECm/uYck4vIryYCD8+m5tn3w2vRxDUWfxJqoCuxKgtXMd+IFyd9OWhPS93U1GzD
 1MOww5kitTr1PVq8MaXAKaj3b0GKb6i7tfsAuzy5qIkT0H1cWZcfD1Gj/KYxjb6ytx3f5/rmSuQ5j
 yodMoJDUkw7+LRwKv9Jg==;
Received: from bsmtp7.bon.at ([213.33.87.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsR6-0001ex-5D
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 11:51:06 +0000
From: Vladimir Koutny <vladimir.koutny@streamunlimited.com>
Message-ID: <82a15f3c-fe0c-a5dc-9846-13b3efb01f0d@streamunlimited.com>
Date: Wed, 15 May 2019 13:50:59 +0200
MIME-Version: 1.0
Content-Language: en-US
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Japan (JP) on 5GHz
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

According to multiple sources channels 8-16 (5030-5090MHz) were only
allowed in Japan until Nov-30, 2017 (later extended to Nov-30, 2018).

https://www.tele.soumu.go.jp/j/adm/system/trunk/wimax/5ghz/index.htm
http://www.dspr.co.jp/wp/wp-content/uploads/2017/10/The-expiration-date-of-some-frequency-of-the-5GHz-band-radio-access-system_eng.pdf

Signed-off-by: Vladimir Koutny <vladimir.koutny@streamunlimited.com>

---
 db.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/db.txt b/db.txt
index 4fb1948..7e10d0d 100644
--- a/db.txt
+++ b/db.txt
@@ -658,7 +658,6 @@ country JP: DFS-JP
 	(2402 - 2482 @ 40), (20)
 	(2474 - 2494 @ 20), (20), NO-OFDM
 	(4910 - 4990 @ 40), (23)
-	(5030 - 5090 @ 40), (23)
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (23), DFS
-- 
2.11.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

