Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=SSEvTLSqPOuPhWXu0Cg6nAvCZp5xmAOK+UjJQpG7pkY=;
 b=Yls385TvkAscpnLbXqBzUGbit
 vF/VM4mg2ONSRErf25EX/e13dexbgfLWNf8rTzNR3RZguf2VzWekkFe1P4Ueqwknxyo8SLRxtEdRR
 nJU6GgpKB0iE6pkI08xpFxOwlJvC20bXu2KXiYNggEn/Rc8Um3eztUQpYA7ZsGH90Pq5VDpT0hgUm
 VKhc6MywdQzveWvAb5ycjt3xDxgOLxg1btb5nitRaJzG1kXS5wXxJfIAZVE2YQlhobXC/SBlLJjWv
 hmHjx20bLt5L3vQ3YuXzmi2v5wQ0OnBQbZCvQpXbX0YVWlHWJxGEm5fdMcSzd96x9FafwUYsYtnfv
 IkyosIDgQ==;
Received: from nm.newmedia-net.de ([217.113.179.122]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfBtQ-0006C6-AF
 for wireless-regdb@lists.infradead.org; Sat, 18 Feb 2017 20:46:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=dd-wrt.com; s=mikd; 
 h=Subject:Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To;
 bh=vXU94v1hn8CJih1RZuMEU4lXGuf3vnkSIefjaUPRzTw=; 
 b=T0bHxPSu2TDgpELjvF7fgLNIBlLzMEXOcjFPAI8r9Zyz/B8T29+6htEn/caeBlXsa6eVvA6O/sn6Ml/29l5JA+csk/rslnROwRaV3YrOHplm+flYbF659kf/HXnqBugTmu0aWduvkbRXM4SN3TzdYcpzdK1FPo58gSaF6BRJRys=;
References: <20170218063515.16071-1-ryan@mounce.com.au>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <9d768854-e41d-fdb1-967d-7fdd7d692226@dd-wrt.com>
Date: Sat, 18 Feb 2017 21:45:33 +0100
MIME-Version: 1.0
In-Reply-To: <20170218063515.16071-1-ryan@mounce.com.au>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Australia (AU) and add 60GHz rules
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: Ryan Mounce <ryan@mounce.com.au>, seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

maybe i'm blind. but you reduced the channel width from 160 to 80 mhz.=20
but i can't find any restriction in the document in a quick review

Sebastian

Am 18.02.2017 um 07:35 schrieb Ryan Mounce:
> Sourced from the latest legislation at
> https://www.legislation.gov.au/Details/F2016C0043
>
> The current rules exceed legal limits between 5250-5330MHz, and permit
> illegal operation in 5600-5650MHz (reserved for weather radar).
>
> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
> ---
>   db.txt | 15 ++++++++++-----
>   1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 05108e0..b951e0c 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -85,12 +85,17 @@ country AT: DFS-ETSI
>   	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>   	(57000 - 66000 @ 2160), (40)
>  =20
> +# Source:
> +# https://www.legislation.gov.au/Details/F2016C00432
> +# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
>   country AU: DFS-ETSI
> -	(2402 - 2482 @ 40), (20)
> -	(5170 - 5250 @ 80), (17), AUTO-BW
> -	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
> -	(5490 - 5710 @ 160), (24), DFS
> -	(5735 - 5835 @ 80), (30)
> +	(2402 - 2482 @ 40), (36)
> +	(5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> +	(5250 - 5330 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
> +	(5490 - 5590 @ 80), (30), DFS
> +	(5650 - 5730 @ 80), (30), DFS
> +	(5735 - 5835 @ 80), (36)
> +	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
>  =20
>   country AW: DFS-ETSI
>   	(2402 - 2482 @ 40), (20)


--=20
Mit freundlichen Gr=FCssen / Regards

Sebastian Gottschall / CTO

NewMedia-NET GmbH - DD-WRT
Firmensitz:  Berliner Ring 101, 64625 Bensheim
Registergericht: Amtsgericht Darmstadt, HRB 25473
Gesch=E4ftsf=FChrer: Peter Steinh=E4user, Christian Scheele
http://www.dd-wrt.com
email: s.gottschall@dd-wrt.com
Tel.: +496251-582650 / Fax: +496251-5826565


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

