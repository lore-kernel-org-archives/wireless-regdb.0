Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WL987-0003Y8-OJ
 for wireless-regdb@lists.infradead.org; Wed, 05 Mar 2014 10:32:52 +0000
Received: by mail-lb0-f177.google.com with SMTP id z11so539962lbi.36 for
 <wireless-regdb@lists.infradead.org>; Wed, 05 Mar 2014 02:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=YvyQcZSxTUB0TOo+Bl4gdWSovKcpBQ6FlDXEosbf8tU=;
 b=n2UF5N6eUs65rwLUhCptCb2XLtmZnnmGM3GgSd9yCfSMMu9IgCH/4irsnlftUPWjbK
 1yEr0CNUuEvUK0fw2A/NrLCvOMnRsxbvvDfrt822nOOZezQ/5vNYK3WXWGEl5XEfexIh
 uq3+7meh5zvPzz2PBgX1gzJQcar4ZnUPrh5ZA=
MIME-Version: 1.0
In-Reply-To: <1393844485-23624-1-git-send-email-ronald.wahl@raritan.com>
References: <1393844485-23624-1-git-send-email-ronald.wahl@raritan.com>
Date: Wed, 5 Mar 2014 11:32:21 +0100
Message-ID: <CALhHN=oonTMjSu3p3VcSXX_tomf1LAPA-gUCc3U6hB2Y-gKe0A@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [PATCH] regulatory: add channels 52..64 and
 100..144 to world regdom
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
To: Ronald Wahl <ronald.wahl@raritan.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 3 March 2014 12:01, Ronald Wahl <ronald.wahl@raritan.com> wrote:
> This is a port of what Johannes Berg sent to the Linux kernel
> in May 2013 for the static world regulatory domain.
>
> Signed-off-by: Ronald Wahl <ronald.wahl@raritan.com>
> ---
>  db.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index fcab208..9391ff6 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -7,7 +7,10 @@ country 00:
>         (2474 - 2494 @ 20), (20), NO-IR
>         # Channel 36 - 48
>         (5170 - 5250 @ 80), (20), NO-IR
@ 160
> -       # NB: 5260 MHz - 5700 MHz requies DFS
> +       # Channel 52 - 64
> +       (5250 - 5330 @ 80), (20), NO-IR, DFS
@160
> +       # Channel 100 - 144
> +       (5490 - 5730 @ 80), (20), NO-IR, DFS
@160?
>         # Channel 149 - 165
>         (5735 - 5835 @ 80), (20), NO-IR
>         # IEEE 802.11ad (60GHz), channels 1..3
> --
> 1.8.5.3
>
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

