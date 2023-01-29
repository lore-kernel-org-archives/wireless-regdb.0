Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=EYliu6VKn9s+0wZk8QXPj6x5ikMKAGOX5Ci5pnF7alU=;
 b=Nxm
 KHzaOP0i0VZtWvgufAObi1KhrBl16dftxlyEGAJs1tdc/R89rdxMleyIXeAC2tk7kmAw1KEl5bxNU
 956K11SGuPoGuBbaqF6TB9/IDPXeS4kOEHmr5guADh8hpp/RoSO+smH/5R+MJMcU9HhzxGtXtKfLt
 uxIFr/uPGXz6pYWyup5w/hCi2ODTjHp0Mshgt376ZDRjIaWyGq2eS/w89Giygh47cGZ23lvbEt2RV
 /kQ+hpE1wUWfMovdP/V8e8bQsODoNa91TtUhpSjqtGrhDBOeBXo7eNs4AlVnOHJ1Dwbn3Gu5qxlNj
 wQFZizYd5jJYVI0B7eF+TAb35+jogcg==;
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM4jo-001HlD-5L
	for wireless-regdb@lists.infradead.org; Sun, 29 Jan 2023 10:16:41 +0000
Received: by mail-io1-xd30.google.com with SMTP id 65so759663iou.3 for
 <wireless-regdb@lists.infradead.org>; Sun, 29 Jan 2023 02:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to; bh=g5IBe5UTsevcTshAgBB76XBrtyBK5HUE5XKUcKD5N2Y=;
 b=d/7QcExYJWf+2g08OyQESgzl1Y4KwsFydsM723Cdv7v0U50wCpiqi1ZoaAiLIAnLco
 pL7TCKCk+h7AvqrQEoaw89hrptqW3MSqjdNKu3Imvd0J+u2F7KvD4PJoxooxlV43GkXo
 d1O3214Ee4OVgKwKezqPzM5vokApicDmRk06+cGoXAAfYnPJ7BVqcIl8SI9Zh0iSzrpP
 PRzjb1hq77GlRnB5H2/iExnN0gMh6lPZSOES4TWLJvjmMNbaBK+SiDmEbr7kDhkfWdJb
 OdzlX9GVsLyR3vAPPtR5JNdKcB5rLgcuI+r38FDNXtZK0cTPAdc0cdq5ig+/bHdaY8jT bpnA==
MIME-Version: 1.0
From: Eugene Konev <uejikov@gmail.com>
Date: Sun, 29 Jan 2023 17:16:23 +0700
Message-ID: <CAO7DJoDCV_NnKqR==GYmtFnMdJrbEvz7UzTQjydWPs4RnaCkpQ@mail.gmail.com>
Subject: [wireless-regdb] wireless-regdb: Regulatory rules for Russia (RU)
 on 5GHz
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
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Current regulatory rules for using 5GHz bands in Russia are the following:
5150-5350 MHz: Max EIRP spectral density 20 mW/MHz, max EIRP 200 mWt,
indoor use only, automatic transmit power control.
5650-5850 MHz: Max EIRP spectral density 20 mW/MHz, max EIRP 200 mW,
indoor use only, automatic transmit power control.
(rules in russian: https://docs.cntd.ru/document/902048009?section=text)

Does automatic transmit power control requirement means that DFS
should be enabled on both bands? If so, which DFS region should be
assigned? DFS-ETSI?

-- 
Eugene Konev

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

