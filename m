Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=YLZFlRhwDkEqr8z2K8ahOwbzoulg0954TnxOjnD2hCs=;
 b=VEjLIeJdYtUazF
 XawhXbQd9+utEoRpn9G/3OaVT051B4Ubxh/eI6rF3Pab/BCHfzqzz0YX0cUE2iL/AREKupLAn2iKY
 laFu76hnf1SKezz5sj5NIO4AKy3TL8a7Js78hjdn/mvIQspl8AgGFhGvA3e5dkt0+2RoimcEwa5Tk
 o7z1L/GF4seZpzwpr3PB8sz1G91SvUz4hiNsnTWko6hF0Gwl7lNYxxWLzf36N9baSp17RrD3x/IXm
 SkW9aAel0LgnVxknE/mdGgQMxiAw3Ve425J7RxRpsybZL9O/TvTWaqTzU2eN+lsdqRmdQbWLTrZo1
 9SZvXIiMP6gv/vpgrPZQ==;
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMUn2-003oIG-JJ
	for wireless-regdb@lists.infradead.org; Mon, 30 Jan 2023 14:05:46 +0000
Received: by mail-io1-xd35.google.com with SMTP id k13so1865365iob.9 for
 <wireless-regdb@lists.infradead.org>; Mon, 30 Jan 2023 06:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/Qb6zMVyzjtj0/TQ/Lyc3HSKCfDqcZxkwmAqIFLNINM=;
 b=BeH6FnitCZVR0iI8gmCER8IMJQNBB9NGcYTMaGX+FL0/YdxrRBrh7iRP5ou+BuabkR
 EbE2h0BytgkGmKEhV0h5JP8bgdlMAwqSHCjKgMTq6ua8kGtj3den1FGKohq96yftyIsP
 bHhD01xY4jrU0CBScgm6zigpUW3eMQ10lZKf7xh7C80mtrO+7mqK8CGgTzusyjeurlBB
 J5hiN3KFQNBHgmaiJE9vc48vqRD5nzGcYI5HOwrlBISi80zq4JNvO+ilk9HoafF45JtR
 kx+UWfEBfyY12byYGRApJ8rnswNpFRzl6hNpEiVXUiEEmIhN7S1ZsfRQQ+YxGu35pA1/ xuCw==
MIME-Version: 1.0
From: Eugene Konev <uejikov@gmail.com>
Date: Mon, 30 Jan 2023 21:05:30 +0700
Message-ID: <CAO7DJoAXrB8e+q2uHD6Cq6A2UV5pN0=6ieAVV+yJp0ht1bPhyg@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] Update regulatory info for Russia (RU) on
 5GHz
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Update regulatory info for Russia on 5GHz in accordance with
current regulatory rules.

Source: https://docs.cntd.ru/document/902048009?section=text

Signed-off-by: Eugene Konev <uejikov@gmail.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 3f74194..9bc2c1c 100644
--- a/db.txt
+++ b/db.txt
@@ -1500,10 +1500,11 @@ country RS: DFS-ETSI
        # 60 GHz band channels 1-4, ref: Etsi En 302 567
        (57000 - 66000 @ 2160), (40)

-country RU:
+# Source: https://docs.cntd.ru/document/902048009?section=text
+country RU: DFS-ETSI
        (2400 - 2483.5 @ 40), (20)
-       (5150 - 5350 @ 160), (20), NO-OUTDOOR
-       (5650 - 5850 @ 160), (20), NO-OUTDOOR
+       (5150 - 5350 @ 160), (200 mW), NO-OUTDOOR, DFS
+       (5650 - 5850 @ 160), (200 mW), NO-OUTDOOR, DFS
        # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order
№129_22042015.pdf
        (57000 - 66000 @ 2160), (40), NO-OUTDOOR

-- 
2.30.2

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
