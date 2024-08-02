Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA45C52D70
	for <wireless-regdb@archiver.kernel.org>; Fri,  2 Aug 2024 06:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRLBWShJRv94wH4+OVAUhEe/F9xRx0Yvtb9ev+za7aM=; b=hbTRthuvHQC4Ks
	wxBmYIkHPFVAGe/ip7YcRGOXft8VqmgmkdgK1PsKPRPecUcPBmz94JLQ7W6DKZHG9LNQszbFDg8Oy
	oi1hGJ1p2A1JyiVJIiMbpuVplz5eWoRoEiqviSyyNsf63AQipauPkMHtVhgHUJXICXcHZ6CfaAwen
	46dukRhmdxC7X0wVAFJa9C5zUNdxukV4XMKI6AjMTFXEa4lM8amRr1pPfvDo9H+W7Bzq364MMJIia
	zaqNarLNyHwCRpQlWoAAJplPhZXZaRu3Qv1+OXg1tQPY4JoLW81ak+JS4+muKfbnlT3weBB8E9WCc
	RrZUF/SeNF1I+yOjfqlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZlSd-00000007lXv-2UWb;
	Fri, 02 Aug 2024 06:08:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZlSY-00000007lXR-4B3M
	for wireless-regdb@lists.infradead.org;
	Fri, 02 Aug 2024 06:08:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 27F2062950
	for <wireless-regdb@lists.infradead.org>; Fri,  2 Aug 2024 06:08:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3F26C4AF0B
	for <wireless-regdb@lists.infradead.org>; Fri,  2 Aug 2024 06:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722578893;
	bh=c4e8teUD0jAB7JlTPOFgNNZ8swqdDVwaKz5zU5WmRpI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=buB77uHh0G/7OyqwRtmjmdREklMxf6Zjgh/SDzaRUaTs075CfRqL16DWWXihubAZy
	 RS4SQ55HgOxW+ZNcvC7qvRnJXGOOxxPKKF2bTU2zvYWlRnJjggG3MUaR/Va24eUUWz
	 znP4nJf3XhKeYvZAWLF7TK86JNiS6X1KtfS74uJOQMOB71b9N8FLaLFS8IVLWkaRvd
	 7k+lwdHb5280xTaaCV/jgBnmScXDuBf3lzRD2xp3LbovB0mVllNmlEk3TACd1ezbwb
	 5BK0C5kzvNl+XygetNB5ukZnSRDdrl+jdCyeO2uOOWqfTw55PJ0CIEklZ0Fl52FyiC
	 eYE2O45lmGSdQ==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ef2c56d9dcso96449871fa.2
        for <wireless-regdb@lists.infradead.org>; Thu, 01 Aug 2024 23:08:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV0ganow0bR1g8hdOoNjGv7T9ALIcGNHGtjkj1SJfAITCxvMTR0pJgrIb6ufTyX2vP9d+6ju5nT7tbh1XdJEQGBx704fjC3G4ihgGPtJDaZ/J+F
X-Gm-Message-State: AOJu0Yx+b/h/yCA5jsE3CC+9B63RV+XgbjMaBtDaBOM+QL7k+8kVCEcF
	NRQZlvK7TQhq+39XWvLRtYYQ9Deh7qXzY8L5h7p1wj+ZEBSP0K457cjk3T5U3n44k0r9LzhWQCG
	UOXwtwBvau/Gp2GPbvXKmwLNoywM=
X-Google-Smtp-Source: AGHT+IF5SJPdYDaAX1xP/pbzE6Osf9Wk3WDnHayn2ZBg4XgphATxh8p0nneLQ4xTTX1IHe7gGd+DBC6Gf97kaJvEra4=
X-Received: by 2002:a2e:9e48:0:b0:2f0:33e:d286 with SMTP id
 38308e7fff4ca-2f15aa9a109mr18574601fa.20.1722578892143; Thu, 01 Aug 2024
 23:08:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240719032326.7353-1-pkshih@gmail.com> <20240719032326.7353-4-pkshih@gmail.com>
In-Reply-To: <20240719032326.7353-4-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 2 Aug 2024 14:07:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v66QO-F6r6Ay5yLiYwFXxob6JGnv_4k-oZiZJWfboGt0pQ@mail.gmail.com>
Message-ID: <CAGb2v66QO-F6r6Ay5yLiYwFXxob6JGnv_4k-oZiZJWfboGt0pQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] wireless-regdb: Update regulatory info for Togo
 (TG) for 2022
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_230815_185890_D0DAE587 
X-CRM114-Status: GOOD (  17.25  )
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

On Fri, Jul 19, 2024 at 11:24=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wr=
ote:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Republic ToGolaise released Decision N 226/ARCEP/DG/22.
>
> 2400-2483.5 MHz
>   - EIRP 100 mW and 10 mW/MHz density
> 5150-5350 MHz
>   - EIRP 200 mW
>   - If TPC is not used, must be reduced by 3 dB
> 5470-5850 MHz
>   - EIRP 1W
>   - If TPC is not used, must be reduced by 3 dB
> 5925-6425 MHz
>   - LPI
>     * EIRP 23 dBm (200 mW)
>     * EIRP density 10 dBm/MHz
>      (Reference [1] suggest this as -10 dBm/MHz, but this would be an err=
or,
>       becase PSD of LPI should not be lower than VLP.)
>     * Use limited to indoor
>   - VLP
>     * EIRP 14 dBm (25 mW)
>     * EIRP density -1 dBm/MHz
> 57-66 GHz
>   - EIRP 40 dBm and 13 dBm/MHz density
>
> [1] https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determina=
nt-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-f=
aible-puissance-et-de-faible-portee.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
> v2:
>   - in commit message, describe typo that 5925-6425 LPI should be EIRP
>     density 10 dBm/MHz. Otherwise, PSD for LPI is lower than VLP.

I applied this patch for now. But could you reach out to the ARCEP to
notify them of this, and ask for clarification?


Thanks
ChenYu

>   - add DFS for all bands
>   - not split 5150 - 5350 band, and set bandwidth to 80 MHz
>   - set bandwidth 160 MHz for 5470 - 5850
> ---
>  db.txt | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 31a051f242e5..b5e40e038d77 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1763,11 +1763,14 @@ country TD: DFS-ETSI
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>         (5490 - 5710 @ 160), (27), DFS
>
> +# Source:
> +# https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinan=
t-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-fa=
ible-puissance-et-de-faible-portee.pdf
>  country TG: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 40), (20)
> -       (5250 - 5330 @ 40), (20), DFS
> -       (5490 - 5710 @ 40), (27), DFS
> +       (2400 - 2483.5 @ 40), (100 mW), DFS
> +       (5150 - 5350 @ 80), (20), DFS
> +       (5470 - 5850 @ 160), (27), DFS
> +       (5925 - 6425 @ 320), (23), DFS, NO-OUTDOOR
> +       (57000 - 66000 @2160), (40), DFS
>
>  # Source:
>  # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
> --
> 2.25.1
>

