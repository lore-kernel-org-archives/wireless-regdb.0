Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD0FAC83F07
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 06:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wijnN/F+kIHzOxmS4z8BfMrOH7TY5HANhyhS09AId2Y=; b=HwW4AyaZ2wHTjU
	nJhuR9naY574rUN4n7sNmbB+z2fUP97kF2uwRV2ZlmDGtJKlDG/D8nOFay+0C4BIvw66Ui8C/vwOY
	MQseP+rVpqKFyf4JOiukWo+Y3nyz0GtqGqY7Q4nIBtXz4+Cuz62HNMN0uGNvenlOLmg4w4tkpaWNn
	dVm9uEi9XTTpDZtf3nlxioZdWd6to/ty0RWPc6Q2dsERMXAFOiCa4SCdHiTV3Rqr2Vc3WsHyPlcI4
	ErBA3iqx++zt7QlCRn0hvrLqHqueXC3IO4hFhSbCK7JHkFTHxSaSUOe6xe7oFFJqc+e8qcP8RshHF
	O6/kAiqtKx/GyHiJtbsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYfWF-00000001ZFO-1THX;
	Mon, 07 Jul 2025 06:40:03 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYfWC-00000001ZEg-1Bbh
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 06:40:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 785B5A53196
	for <wireless-regdb@lists.infradead.org>; Mon,  7 Jul 2025 06:39:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26DEAC4AF09
	for <wireless-regdb@lists.infradead.org>; Mon,  7 Jul 2025 06:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751870399;
	bh=pa37MRgFopLPC5/czcZntVKjkXGRHANGZPzJpeVSYZ8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=JO0BYan06BfOGoDiHx3o1JF8f9nCqw6rwLOgbZvH0NPZPbBzjdXu+Aly9A80k0iI5
	 USNBfyLvzzqcnyp/60eiY60/d43lhE83RRJeBGw1YmxZQFaZJHQv0mMlDuclQ00RpM
	 6t1PqBvIpdb8fQBO8/mnDPHcwrlkk9AJtxCRgJrQDHG76odhfSTH/0FFrmqz/GWaZP
	 7z7LI1XDGDimqJYNYW1NOLMBZ8hYMEW+KW1LDf5TO6gNZFie/7UMb345QmAFa8atIV
	 sB5HAztbFBRxYy/l0rb/bWiOTYAbAnP2cCqafbYGYQi7WMs/JdWRdp2sw4ak1wqGEN
	 Y7OI8sRkWdYuQ==
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5550dca1241so2707834e87.0
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 23:39:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWmR1IWVEEqa2lpUVoW8y0SErLUil1Cb5DEi5qMlL1qWVunFrFG8DSh1pcEmf/goLpiZMRMNXi8ieuOIlcIsw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxlr/EBJc6uuO8j78tk+0wWA0188hiu4L24G8b+GaoVHWxKdBxO
	3n6hlRxMSK7uqxBgsQivkt5fnW6dn6E8iiCpkVTapEcHUAJOSJaXNnteKhR//CYTcbu/b5oCewi
	O+Z0A27kRH496BcAZwYzBc278YVrNWNM=
X-Google-Smtp-Source: AGHT+IFbt/BLURiPiqK9mcy2At7J1A2G3DxO0U8KnVSJji4Or67mF8koQURbrLssoXPc6HDt98DtYFpZDI87VG1mgcs=
X-Received: by 2002:a05:6512:3984:b0:553:3486:1d9b with SMTP id
 2adb3069b0e04-556e8950db5mr3590098e87.30.1751870397472; Sun, 06 Jul 2025
 23:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <20250707024615.38507-1-pkshih@gmail.com> <20250707024615.38507-2-pkshih@gmail.com>
 <1B25D881-49C4-4805-9EF8-76E3A9D9A64C@nic.in>
In-Reply-To: <1B25D881-49C4-4805-9EF8-76E3A9D9A64C@nic.in>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Jul 2025 14:39:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v64ZKoUzQoihvPZMu4e7a+8=BxYBX_U4ZfMW_qvZhx1ZfA@mail.gmail.com>
X-Gm-Features: Ac12FXwbXa5hLHuT_ZcPi7thPIx5kp7I8sycvEJYBnfvNztUMfLZcWpjawyjg9Q
Message-ID: <CAGb2v64ZKoUzQoihvPZMu4e7a+8=BxYBX_U4ZfMW_qvZhx1ZfA@mail.gmail.com>
Subject: Re: [PATCH 2/3] wireless-regdb: update regulatory rules for India
 (IN) on 6 GHz for 2025
To: Gaurav Kansal <gaurav.kansal@nic.in>, pkshih@gmail.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_234000_449211_E468275C 
X-CRM114-Status: GOOD (  17.40  )
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

I see.

I will drop this for now then, unless Ping-Ke has any more information
on this?


Thanks
ChenYu

On Mon, Jul 7, 2025 at 12:18=E2=80=AFPM Gaurav Kansal <gaurav.kansal@nic.in=
> wrote:
>
> Hi,
>
> I think these are only draft rules and we shall have the separate notific=
ation from Government of India when the rules will be finalised.
> you can read on page 6 - "G.S.R. 316 (E).=E2=80=93=E2=80=93 The following=
 draft rules, =E2=80=9C
>
> So, ideally we should wait before adding these in the database as demands=
 are there for increasing the power and other requirements.
>
> Regards,
> Gaurav Kansal
>
>
> On Jul 7, 2025, at 08:16, pkshih@gmail.com wrote:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Ministry of communications, India released 6 GHz [1] on the 16th May 2025=
.
> Technical parameters are listed on page 7:
>
> * Lower power indoor
>   - Indoor
>   - Max. PSD e.i.r.p: 5 dBm/MHz
>     (Since minimum bandwidth is 20 MHz for WiFi, e.i.r.p limit is 18 dBm)
>   - Max. e.i.r.p: 30 dBm
>   - Max. Emission Bandwidth: 320 MHz
> * Very lower power outdoor
>   - Outdoor
>   - Max. PSD e.i.r.p: -5 dBm/MHz
>   - Max. e.i.r.p: 14 dBm
>   - Max. Emission Bandwidth: 320 MHz
>
> [1] https://www.legalitysimplified.com/wp-content/uploads/2025/05/Exempti=
on-from-Licensing-Requirement-Rules-2025.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
> db.txt | 2 ++
> 1 file changed, 2 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index b5b1308460cc..224edfcd90a9 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -940,12 +940,14 @@ country IL: DFS-ETSI
> # Source:
> # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr=
-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
> # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e=
-dated-22102018
> +# https://www.legalitysimplified.com/wp-content/uploads/2025/05/Exemptio=
n-from-Licensing-Requirement-Rules-2025.pdf
> country IN:
> (2402 - 2482 @ 40), (30)
> (5150 - 5250 @ 80), (30)
> (5250 - 5350 @ 80), (24), DFS
> (5470 - 5725 @ 160), (24), DFS
> (5725 - 5875 @ 80), (30)
> + (5925 - 6425 @ 320), (18), NO-OUTDOOR
>
> # Source:
> # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968=
f-0050569b0899
> --
> 2.25.1
>
>
>

