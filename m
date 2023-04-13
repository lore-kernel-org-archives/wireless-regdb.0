Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:References:Cc:To:From:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=VZx9Ul3NDXEr9ijlabBfrzJUP0LY0U3LaVKlyUbJRqI=;
 b=nSLWT5u9m5Ugf5
 s61tae41iA3RRv2vhSHFt+spLt9VwC2R3Ij1dvI1+kAV/MeldGNzVPCj08bzS0yC/PpeXUPl2UC3b
 Ea2j6PA1tWtakrTGfo3Uxyp6UirVoQEOwNzhlftnkTGXUDhUKLQE3VjjEtOx3uwSFeOH4xxumK7tp
 JC53jwg9jXBd8yfGqlYzzkf30Q5WjGTA04G5B6FxSYASpYmGz0Vj656zYZ4Gfx3B2CyeK0BoFbqb6
 G3P06/mWi5fm6QwbndhwgIIsTmyjdnVYMU+PJ6Jtfty/jEE5VitiyqZZpnaMHf3mEL/61J+WBUwt0
 YZ3ajq2Yd3dmYYaaC0xw==;
Received: from forward501c.mail.yandex.net ([178.154.239.209])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn3VQ-0075la-2L
	for wireless-regdb@lists.infradead.org;
	Thu, 13 Apr 2023 20:25:22 +0000
Message-ID: <000cae34-88be-9ac1-84c3-d7d0e6748b18@16depo.xyz>
Date: Thu, 13 Apr 2023 23:25:12 +0300
MIME-Version: 1.0
Content-Language: en-US
From: Kirill <me@16depo.xyz>
References: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
In-Reply-To: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory info for Russia
 (RU) on 6GHz
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

Hello, Seth. Is patch for activation of 6GHz are good? Do i need to 
provide some additional links?

On 25.03.2023 04:04, Kirill wrote:
> Update regulatory info for Russia on 6GHz in
>  accordance with current regulatory rules.
>
> Source: https://docs.cntd.ru/document/1300597464?section=text
>
> Signed-off-by: Kirill Matvienko <me@16depo.xyz>
> ---
>  db.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index 915a3b9..7f338b2 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1500,11 +1500,12 @@ country RS: DFS-ETSI
>      # 60 GHz band channels 1-4, ref: Etsi En 302 567
>      (57000 - 66000 @ 2160), (40)
>
> -# Source: https://docs.cntd.ru/document/902048009?section=text
> +# Source: https://docs.cntd.ru/document/1300597464?section=text
>  country RU: DFS-ETSI
>      (2400 - 2483.5 @ 40), (20)
>      (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS
>      (5650 - 5850 @ 160), (100 mW), NO-OUTDOOR, DFS
> +    (5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
>      # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order 
> №129_22042015.pdf
>      (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
