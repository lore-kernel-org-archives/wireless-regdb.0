Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:Cc:To:From:MIME-Version:Date:Message-ID:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=OagVc67v87iFaD4Cpj7hFjgAUi66ZML747CIUJun5vA=;
 b=uKxH9mUVYIpKOOcJVtMKnOQ/Qp
 lJYTU6Ch3QrWl30fpQ7fphUTuCa1KA8yXSpRUtbC03HKkO9cGy4c4smA3T8TlKpsFmmbZQvCeerIG
 NBfm41tGLPXAhiO8BjpWdpGfQLYf04UYSaibZuPIPkIS09Yqp5rCDV7dz8jnPuUSkiazMx1L84vNB
 iIYsJYo0+iB6NVqjrFBvSxEtgEw7HDW9d6AVrty40bQwpFiSgvgU+FvEVXTR2alUgU8q6X3Hqccjb
 ZI6PaMRqmW4UX1eUuuWxixHS8wvJpg1pENMAJAd1wpTuwt16kWJrcphLAhkHN9lJHZLmnfBYfs86+
 X8qHFCDQ==;
Received: from forward204a.mail.yandex.net
 ([2a02:6b8:c0e:500:1:45:d181:d204]) by bombadil.infradead.org with esmtps
 (Exim 4.96 #2 (Red Hat Linux)) id 1pfsKq-005ugO-1b for
 wireless-regdb@lists.infradead.org; Sat, 25 Mar 2023 01:04:46 +0000
Message-ID: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
Date: Sat, 25 Mar 2023 04:04:37 +0300
MIME-Version: 1.0
Content-Language: en-US
From: Kirill <me@16depo.xyz>
Subject: [wireless-regdb] [PATCH] Update regulatory info for Russia (RU) on
 6GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Update regulatory info for Russia on 6GHz in
  accordance with current regulatory rules.

Source: https://docs.cntd.ru/document/1300597464?section=text

Signed-off-by: Kirill Matvienko <me@16depo.xyz>
---
  db.txt | 3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 915a3b9..7f338b2 100644
--- a/db.txt
+++ b/db.txt
@@ -1500,11 +1500,12 @@ country RS: DFS-ETSI
  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
  	(57000 - 66000 @ 2160), (40)

-# Source: https://docs.cntd.ru/document/902048009?section=text
+# Source: https://docs.cntd.ru/document/1300597464?section=text
  country RU: DFS-ETSI
  	(2400 - 2483.5 @ 40), (20)
  	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS
  	(5650 - 5850 @ 160), (100 mW), NO-OUTDOOR, DFS
+	(5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
  	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order 
№129_22042015.pdf
  	(57000 - 66000 @ 2160), (40), NO-OUTDOOR

-- 
2.34.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
