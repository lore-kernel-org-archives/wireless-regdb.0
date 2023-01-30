Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=CoZ50hRO48o6q44iKIZRrncJBG3DJ+7KlZoZ3UF/J58=;
 b=EM6JmiFsLrSh+U
 O4Ojx9awYSL9EB7JaZZ6Qdr5YuzXws/pbDDMwKJh12Kk0X7Xlzt04do3uIZ//8+QCQy8EACjoZIDR
 5nmpS7+B3I8mhpZ7QyIzyt7PVkSUILgO1vb7ZO0lJQhXvj0JsRcLwUGQshdhg79ZS32TO812PZcSs
 ro3KWhGo3nPAoOMlWT0HiocBdippHEF4HtKsI7ady6fyXyXzvjR88KkpU4/K/rwXxchPRHu6WbeiQ
 bCERFTZJti44DiJ18GgTa74FRvY+0ZIFdYaXYQtFJIQm5e3A+jnm7X8lnHi1TPYV17BmdS+4DEcXk
 Imanxb1jCWc34r2Q+CcQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMaKo-005H6a-A3
	for wireless-regdb@lists.infradead.org; Mon, 30 Jan 2023 20:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675108857;
	bh=v+QlseagKWlkWVyOe9U4TBpmBYCYpxMnEfZkR0muANk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bmnPyBA1zYC0DPeOnmxnjmNHLpGQuZS3iM8SCtLb7yAk1UCnFyn3du7P4X0xWRCuN
	 DNVzoSUKDiC68BFhvKjmK+zMXWetPvlRgDymd/3S5fYGnbWdxBVGpGVcMlWjcz9V8c
	 mstwRrPRjXYsPgfZseXu+qFLk85c+yJmz/DMxND3F/fjnyagt+TDaiNj7xmMRe0/n6
	 3KL8WcF3B7x5eE+kM1V4lpDsy2PcCCbzBGc59NjbW3A6tnpbd/Kqh86qH85n0mloyo
	 3vo3CJGI3bSEnNNFF38NiB1/pABUrMd7ygboyv0a5SI/J8amOwyjM+Ve4MWO0A4r0Q
	 ijztgPcgPuq3A==
Date: Mon, 30 Jan 2023 14:00:55 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Y9gh95UAejRxQ4Oy@do-x1extreme>
References: 
	 <CAO7DJoAXrB8e+q2uHD6Cq6A2UV5pN0=6ieAVV+yJp0ht1bPhyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO7DJoAXrB8e+q2uHD6Cq6A2UV5pN0=6ieAVV+yJp0ht1bPhyg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory info for Russia
 (RU) on 5GHz
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
To: Eugene Konev <uejikov@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jan 30, 2023 at 09:05:30PM +0700, Eugene Konev wrote:
> Update regulatory info for Russia on 5GHz in accordance with
> current regulatory rules.
> 
> Source: https://docs.cntd.ru/document/902048009?section=text
> 
> Signed-off-by: Eugene Konev <uejikov@gmail.com>
> ---
>  db.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 3f74194..9bc2c1c 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1500,10 +1500,11 @@ country RS: DFS-ETSI
>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
>         (57000 - 66000 @ 2160), (40)
> 
> -country RU:
> +# Source: https://docs.cntd.ru/document/902048009?section=text
> +country RU: DFS-ETSI
>         (2400 - 2483.5 @ 40), (20)
> -       (5150 - 5350 @ 160), (20), NO-OUTDOOR
> -       (5650 - 5850 @ 160), (20), NO-OUTDOOR
> +       (5150 - 5350 @ 160), (200 mW), NO-OUTDOOR, DFS
> +       (5650 - 5850 @ 160), (200 mW), NO-OUTDOOR, DFS

Based on your earlier mail these ranges require TPC. Linux does not
support TPC, so we have to cut power limits in half in the regdb. So
these need to remain at 100 mW.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

