Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A99EC7EE33
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 08:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmK8b6VrBI/cE9vO5wXRBlljKbzYgPH45k2S+M2/jHo=; b=vBrVyV7fM2ZRGe
	9W/Kcp3SSeM46NQONoJGomfLQgjXuE+RXX5VC+btvXsAcWeM6Bvr7pto2arl5ZQjpsMLAH3u6OgEx
	YShmD3zMYztXoVAAcFVdvuSJHOG5Gs0imQfPdUG6sdW0Xp9RjIeV/96HLl0U5UmUmgWJlCAqQhRri
	pwuR8j9b+9nOdgOaSxWFtxR61ePp7nqFXUCwL6+fOj9fEI0e/5S8ndrdS/RnNLaVYAuwVmtRKZzIk
	Ot8wK1CLzCg7TsQW4OxFz6/OtQCAh3mWCXDQTsesqMmF7ujhgWQNFUNRg/2WRy+qeF6Orq6qJSgoK
	D+0ym8iyXTR0N43WtIFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiP5-0000000B3dt-3caE;
	Thu, 26 Jun 2025 08:56:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhlS-0000000AvbC-0KLw
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:15:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C78BC49D8A
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 08:15:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A91F1C4AF09
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 08:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750925721;
	bh=SmK8b6VrBI/cE9vO5wXRBlljKbzYgPH45k2S+M2/jHo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=EdtW2SjjSDHauwf6PyFVttkrT8/aaIIPzM495VOtZhoLqu+Uag9MIV9b6pF3q9l2X
	 MiKvFQpVldNnmDf01y6UwEcf7i+4lWJ7Ba10kl69F+tHFcMmAza0o048du2d+YtLKT
	 PakTmS+eBRdI9u7E8DpFSKPPmzBDxhBj+bL3+/W7P7JlhuVKMI+2f9f7Mtn6r0NCDg
	 FJ43MfIXCcncs0lDTdFuj6Xc/fYrV1XMajJKt2tA1Z6o1+3rk1Atu/aQfKAJF5vAXJ
	 0jscEda3iE+kUWry6lWywiwtWbQHK1qL7Rbv+0bXWE24534hlwnJO+3pqQA9M9fA9A
	 JVNbOK5/Nkiww==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-32ade3723adso7244971fa.0
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:15:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWENqp3rBvZvpTV4kAHeNK8JXhOYhyWjuef8eeUNPJlYBQ1ipre/OPXFy3g6+rNul5UvM/uZNmQDWpPc09BPA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqBiIW15CTj5w2M+S7UeHI60FFx4oWbPNS7IvY5wBlJUJOATxN
	4d4WrbCLLlUs6mAyuaiaIOQMWvFmvi0FzKSTV/yJjP8YiyePsQyz1XMcwmGS9JgqmkCltgR05NQ
	wowLsV3EBWhIuC5ggmUo5zhKX3OZxOKg=
X-Google-Smtp-Source: AGHT+IHggU3vz5CakghnW+4rPk363vdtiWa5vUIITEkBiwnIDVowlCfKg1mumuErjARME73DKW7HA8C86WR5dzDV2+w=
X-Received: by 2002:a05:651c:724:b0:32a:8591:668f with SMTP id
 38308e7fff4ca-32cc65a0155mr13794901fa.31.1750925720078; Thu, 26 Jun 2025
 01:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
In-Reply-To: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 26 Jun 2025 16:15:07 +0800
X-Gmail-Original-Message-ID: <CAGb2v64z3Yv_MNxJDTMcDR5ajD_L0zpsea2aBcrCLKfw3HUmiQ@mail.gmail.com>
X-Gm-Features: Ac12FXyWjrJE1Oy8LDZuKw4922MF6BQ7ScmZpiwvF9CC5CxrOL6aPgnVb79jJtU
Message-ID: <CAGb2v64z3Yv_MNxJDTMcDR5ajD_L0zpsea2aBcrCLKfw3HUmiQ@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
To: Marcos Alano <marcoshalano@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_011522_134552_F04C8B58 
X-CRM114-Status: GOOD (  12.63  )
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

On Mon, Jun 2, 2025 at 9:23=E2=80=AFAM Marcos Alano <marcoshalano@gmail.com=
> wrote:
>
> Hi,
>
> The rules for Brazil were based on this normative
> https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resoluca=
o-680,
> as mentioned in the comments of the entry.
>
> This January came out a newer normative
> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resoluc=
ao-772,
>
> It allows 6GHz frequencies, so the line:
> (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> Should change for, at least:
> (5925 - 7125 @ 320), (12), NO-OUTDOOR
> The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don't
> work because of this outdated rule based on an outdated normative.

Those are very large documents. Could you help point out which sections
or comments apply to your argument?

Thanks
ChenYu

> I'm no lawyer, so please if you see something different, like more
> granular control in the allowed frequencies, please let us know.
>
> Thanks,
> --
> Marcos Alano
>
>

