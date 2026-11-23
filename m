Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27517606A321
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 09:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=p6adL20N;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=knfc6I1w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Lk6mDG2mByNoEFbOZq7k0USMrITJPKdvFgnA68Y58aM=; b=p6adL20NlD2dyM8QsKgD+6ewyN
	xjhM0TOf6ViOACwyRfQZU8EhBLcfmczvJGoCkbHZLMpGNFCxHwnCkAx7+fEEkBS2xyitsCC4IVdtN
	6oOgBLC5jZlBc9RvWhFbav25nhOvpixqXbKBh5eB4TJjIA+jziz5JtNyd4jWn6ECqfNKljfYKPRN1
	KyxmYPVMxJewg2V7lEOJ5W24J4V1VpVjbrZR4bQVMVNjLm3MxsF8+jnFn7PkcYNMJgmMjD4Ik6KG2
	+TkOVKYqe0p+9NPLpA88I1gPpV2rITH9498ablLk6PuemeHnxuoBcMBozUx+86nj1t3T9X/gDb0Dd
	WiM2bjVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQTF-00000002jbQ-1uio;
	Mon, 23 Nov 2026 09:36:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQTD-00000002jak-3lbo
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 09:36:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5654641138
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 09:36:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D516A1F000D1
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 09:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795426578;
	bh=Lk6mDG2mByNoEFbOZq7k0USMrITJPKdvFgnA68Y58aM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=knfc6I1woKhjm5lrajdBpt2tCx0IEHgRV03fTMn6KGfNqQF9IQBEiGo4NsCFbC/EA
	 lZ5UNdltr/zINytU0AIvQy54ebB/BFInLNN8O6+M510+dAnJlMvYkOBFwr1P+X00w6
	 pFDTmSTUkU3EuRz2JPM7nI2H4ToWcrN2JcX7WvfiDmRxGmHRF2WResr0l/xwzBSOh7
	 MTb3WUsEL0rJJ6dKmKpptLfaEHxM82BC73TUaOFNMmbKpEOBI69BCbt2LHVCQ5XN+9
	 zzdFoEQBTqYU+wSuQAg2KaAXklZA+Ni/fRmec9c2+CLheA41UdtQpsLAC05xm2Pjp6
	 xlyLzqwEhaFnQ==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3ada7d53082so34131201fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 01:36:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErE9NgDdeW/UzcwbBEi5r3mgsBpqo9CbZi8JnPiSYOLo5eTKD65W5rLhpmTzua0Zm1ZWfkUh8aRkZ4oNMz5+Cg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+UhA2nmnE7XWTzwbQQXD5/EyfMnNQxn4rEukNYXMmACclHNdV9
	oE6UpHyCqaguQGGBp5IhenXzUAaBupg6ZHXhSDPTl76msHPKsu1Af53JVYxNCGl5o5gN/LAt94/
	xuzf37QwieVvIQWM7PtASO1u+C2oijZI=
X-Received: by 2002:a05:651c:1a25:b0:3ac:f9f5:c73 with SMTP id
 38308e7fff4ca-3ae7b71ba1cmr25052601fa.3.1795426577272; Mon, 23 Nov 2026
 01:36:17 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20250924022156.8435-1-pkshih@gmail.com> <CAGb2v66MZpd8QWYptLrh5O5qf-DWAnqxf3d692JWZoF3jCRj0g@mail.gmail.com>
 <CAHrRpuknX-Ptz990dqKpPAN71k_fNdJT5aX3CcmckyeOgC9MJA@mail.gmail.com> <CAGb2v64Q1OAKhE3FWHJm1OeEoJuo=tXet7kgRDdgb=nLqbNVCw@mail.gmail.com>
In-Reply-To: <CAGb2v64Q1OAKhE3FWHJm1OeEoJuo=tXet7kgRDdgb=nLqbNVCw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Nov 2026 17:36:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v65W_4seSpoqKt+AhZ4CHBD59dBenBb2Bj85hYmQ33=z7w@mail.gmail.com>
X-Gm-Features: Aa3M54qv6CSY0ftXtfi0J2Ou-HMSnIOrNuZZTVCfrrrVxEMfmMPl-1AhcqAxWJY
Message-ID: <CAGb2v65W_4seSpoqKt+AhZ4CHBD59dBenBb2Bj85hYmQ33=z7w@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info including
 bandwidth for Trinidad and Tobago (TT) for 2025
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Wed, Oct 8, 2025 at 2:17=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrote=
:
>
> On Wed, Oct 8, 2025 at 11:32=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> w=
rote:
> >
> > Chen-Yu Tsai <wens@kernel.org> wrote:
> > >
> > > Hi,
> > >
> > > On Wed, Sep 24, 2025 at 10:22=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.c=
om> wrote:
> > > >
> > > > From: Ping-Ke Shih <pkshih@realtek.com>
> > > >
> > > > The Telecommunications Authority of Trinidad and Tobago [1] provide=
s
> > > > Schedule of Devices Eligible for Use under a Class Licence [2]. The
> > > > type 1 (End-user devices or customer premise equipment) with Schedu=
le B.1
> > > > and B.2 shows
> > > >
> > > >  - 2400 - 2483.5 MHz
> > > >    * 30 dBm
> > > >  - 5150 - 5250 MHz
> > > >    * 24 dBm
> > > >  - 5250 - 5350 MHz
> > > >    * 24 dBm
> > > >  - 5470 - 5725 MHz
> > > >    * 24 dBm
> > >
> > > For these bands, the rules specify ERP, or effective radiated power.
> > > However it states "Maximum Effective Radiated Power ERP (from RF
> > > transmitter)", so I think it is meant to "maximum conducted output
> > > power" as seen in FCC rules?
> > >
> > > This is not the same as EIRP, or effective isotropic radiated power.
> > > AFAIK the latter is what is supposed to be used in the database. This
> > > discrepancy is found in many rules originating from the FCC rules. Th=
e
> > > FCC rules specify maximum conducted power (TX power) plus max antenna
> > > gain in dBi.
> > >
> > > So there is some conversion involved. I think the values should be
> > > "max conducted power" + "max gain in dBi". This assumes no cable loss=
.
> > >
> > > I think we would also need to revisit the US rules.
> >
> > Thanks for the detail, but I still not clear if I should use ERP +
> > antenna gain as
> > EIRP, or should I apply FCC requirements as hard power limit?
>
> This old slide deck [1'] from the FCC (?) suggests that EIRP is max
> conducted power + 6 dBi antenna gain.

So it seems that TATT updated the schedule in 2026, and it now has explicit
EIRP values. Could you respin the patch?


Thanks
ChenYu

> > By [1], it also mentioned limits of maximum power spectral density, if =
we also
> > apply the limits, the values will be almost what I wrote, which are als=
o almost
> > the same as US country in db.txt.
>
> The PSD requirements also translate to the wording for some of the bands:
>
> For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conducted
> output power over the frequency bands of operation shall not exceed the
> lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB emission
> bandwidth in megahertz. In addition, the maximum power spectral density
> shall not exceed 11 dBm in any 1 megahertz band.
>
> "11 dBm + 10 log B" is basically describing the PSD limit.
>
> If in doubt, maybe you could ask how certification labs interpret the
> text? I think that doubly applies to the Trinidad and Tobago case, where
> the text is somewhat mixing the terms ERP and max conducted power.
>
>
> Thanks
> ChenYu
>
> P.S. The FCC website seems to be more or less unavailable due to the gov'=
t
> shutdown, so it's hard to dig up more information at this time.
>
> [1'] https://transition.fcc.gov/bureaus/oet/ea/presentations/files/oct14/=
51-New-Rules-for-UNII-Bands,-Oct-2014-TN.pdf
>
>
>
> > [1] https://www.law.cornell.edu/cfr/text/47/15.407
> >
> > >
> > > >    * extend 5 MHz to 5730 MHz for channel 144
> > > >  - 5725 - 5850 MHz
> > > >    * 30 dBm
> > > >  - 5925 - 6425 MHz
> > > >    * 24 dBm
> > >
> > > These two bands have 0 dBi for max antenna gain, so max TX power =3D=
=3D
> > > max EIRP.
> > >
> > >
> > > ChenYu
> > >
> > > > [1] https://tatt.org.tt/licensing/class-license/
> > > > [2] https://tatt.org.tt/wp-content/uploads/2025/07/Schedule-B_Sched=
ule-of-Devices-Eligible-for-Use-under-a-Class-Licence-25th-July-2025.pdf
> > > >
> > > > Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> > > > ---
> > > > Hints to find these entries: by searching "Wi-Fi" with type 1 in [2=
].
> > > > ---
> > > >  db.txt | 13 ++++++++-----
> > > >  1 file changed, 8 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/db.txt b/db.txt
> > > > index 6e1ad30222a4..90ffa4e0d5d7 100644
> > > > --- a/db.txt
> > > > +++ b/db.txt
> > > > @@ -1946,12 +1946,15 @@ country TR: DFS-ETSI
> > > >         # 60 GHz band channels 1-4, ref: Etsi En 302 567
> > > >         (57000 - 66000 @ 2160), (40)
> > > >
> > > > +# Source:
> > > > +# https://tatt.org.tt/wp-content/uploads/2025/07/Schedule-B_Schedu=
le-of-Devices-Eligible-for-Use-under-a-Class-Licence-25th-July-2025.pdf
> > > >  country TT: DFS-FCC
> > > > -       (2402 - 2482 @ 40), (20)
> > > > -       (5170 - 5250 @ 80), (17), AUTO-BW
> > > > -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> > > > -       (5490 - 5730 @ 160), (24), DFS
> > > > -       (5735 - 5835 @ 80), (30)
> > > > +       (2400 - 2483.5 @ 40), (30)
> > > > +       (5150 - 5250 @ 80), (24), AUTO-BW
> > > > +       (5250 - 5350 @ 80), (24), DFS, AUTO-BW
> > > > +       (5470 - 5730 @ 160), (24), DFS
> > > > +       (5730 - 5850 @ 80), (30)
> > > > +       (5925 - 6425 @ 320), (24)
> > > >
> > > >  # Source:
> > > >  # Table of Frequency Allocations of Republic of China (Taiwan) / F=
eb 2017:
> > > > --
> > > > 2.25.1
> > > >

