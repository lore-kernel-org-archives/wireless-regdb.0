Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31BC2C5B572
	for <wireless-regdb@archiver.kernel.org>; Mon, 17 Aug 2026 06:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCVKOMOnxk8ELDuFYhKIGw/ps+KSC9ZvQ4g4wY/Oi1c=; b=pNZkmxlPNo6wGN
	jM7mI4oubl6IsPO47sAvIiNa/cWwLk4xHM7og5vQlfIsg2e09mt8staR2ZqozC5VoIp54uHhX6sLQ
	mF6pKc712Nkdd7SE/eJOjVeDt0Spywr5IDiGarl3Z/+v0d0jJI7wOyHU4HtkCfHGubwYey9gKiQN+
	CSII/6w8CSKUa5KXFO99pr6hp5D3aETTgDgSsCcqGUATt9bMIuIVMwc5upX/eSknh2X/EQtMG6Hw1
	O4+9+vaHcqf69MuK7dVlj0dnoBY/cs28kKX3x2GtsIc3ywHqE2i02jB4o5vdHOJRidrT2tn7DvB/O
	RfzjkHx/tVrkDHc2lqRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrFD-00000005VFF-00NC;
	Mon, 17 Aug 2026 06:54:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrFB-00000005VF4-1t4g
	for wireless-regdb@lists.infradead.org;
	Mon, 17 Aug 2026 06:54:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C6A214176F
	for <wireless-regdb@lists.infradead.org>; Mon, 17 Aug 2026 06:54:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABC211F000E9
	for <wireless-regdb@lists.infradead.org>; Mon, 17 Aug 2026 06:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786949688;
	bh=rCVKOMOnxk8ELDuFYhKIGw/ps+KSC9ZvQ4g4wY/Oi1c=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=EsdyiVedCo7HmzgV35XuYKFKg1rTljljoVs21+hbJ+Vf/ww4dcw71nTJfOIiFhrtL
	 sfgULo9WS0o8QSwz8DXfsXVgMT6VF0cV8xewcahO1VvyncxOHUEuHK90fQpG/bcFL2
	 X6aptI2hVK7WuEndQYudijpqpz6eoMxgbY0VkIzqOrPcpKsKkxF6h9EM8fGRjU7xoH
	 tBtfsnaiVWa9f68jxxflFEeQvsfIem4oUCED/tV2e1BmB6Qu9M6NII5zMJv2YQvRo7
	 JwIXbnwMOoYuKeTJuXL1vmTlOiVKKIcfzE8AgdQFZAdTm17qNlEBC4MxcHTz4NHnsA
	 afJLibsSURccQ==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-39c86ce9e29so23966421fa.3
        for <wireless-regdb@lists.infradead.org>; Sun, 16 Aug 2026 23:54:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rr/sWoQo8Q7mKVah/lqGyb3eZoOQ0L01uLg5JVehq3odj3+77ncb8GLlkxeC90eMszgKmMPpbZdDB7UAuMB2A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0IJ9f4NYdV/xQbJlLnt+WT9ow/J6JRwKXp9tBy5kXKl8YenLR
	+KJEt5NrWwgTZhHzwB12Y4H4ARie6gZ5Hrj4xynoVDU/xdH5qsKKomgpNnuxpyHZU4aOfNRcTS0
	MzyJ5/sImH9/FFxDgma1MglwhvTcFHtY=
X-Received: by 2002:a2e:a9ab:0:b0:399:767d:c118 with SMTP id
 38308e7fff4ca-3a1327cb611mr18515391fa.23.1786949687041; Sun, 16 Aug 2026
 23:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
 <CAGb2v66RnAr_yPhZuuandeoE=wSh9tJMdfqkLLudWKpDmDKc4Q@mail.gmail.com>
 <CABzKGg2C-kb673u4o9Nk28-bp9ONuQAaDA39x47bJOpq6RrNHg@mail.gmail.com> <CABzKGg3-5yE19-_fiBuvaM9CBUnyJ7UYmt6M6w3BrEqu+3Unbw@mail.gmail.com>
In-Reply-To: <CABzKGg3-5yE19-_fiBuvaM9CBUnyJ7UYmt6M6w3BrEqu+3Unbw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 17 Aug 2026 14:54:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v6592_Tp7UbAKcXm3FZGMWCfxNriH3VJWDm5yZA-atYN0g@mail.gmail.com>
X-Gm-Features: AcwNN1XF4LlKN0ItCivDkobdwKt8NeGWLEJbNQILLIT-QEqT88Pz1IuAj5S0VpE
Message-ID: <CAGb2v6592_Tp7UbAKcXm3FZGMWCfxNriH3VJWDm5yZA-atYN0g@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Hong Kong (HK) on
 5GHz and 6GHz
To: Morgan Wong <pbodq2@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Mon, Aug 17, 2026 at 2:17=E2=80=AFPM Morgan Wong <pbodq2@gmail.com> wrot=
e:
>
> Dear all,
>
> Is there any problem about the patch and the reason? Any regulative
> restriction conflict ?

Sorry I haven't gotten around to it.

> Morgan Wong <pbodq2@gmail.com> =E6=96=BC 2026=E5=B9=B48=E6=9C=884=E6=97=
=A5=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8810:01=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > Dear Tsai,
> >
> > The patch from git diff is now attached.
> >
> > I summarize again the changes, please decide.
> >
> > 1. 30dbm (1W) of TPC condition is applied on 5470-5730.

As previously mentioned, Linux does not support TPC, so any power limits
that require TPC do not apply. So the option is to use the "without TPC"
option that normally halves the power limit.

> > 2. Now, 320MHz bandwidth can be applied in 6GHz as WIFI 7 rolled out.

This is fine.

Do you want to do a proper Git patch? Or I will do the patch and list you
as the issue reporter.


Thanks
ChenYu

> > Chen-Yu Tsai <wens@kernel.org> =E6=96=BC 2026=E5=B9=B48=E6=9C=884=E6=97=
=A5=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=888:48=E5=AF=AB=E9=81=93=EF=BC=9A
> > >
> > > On Mon, Aug 3, 2026 at 9:38=E2=80=AFPM Morgan Wong <pbodq2@gmail.com>=
 wrote:
> > > >
> > > > Dear all,
> > > >
> > > > Currently:
> > > >
> > > > # Source:
> > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.=
pdf
> > > > (2.4 GHz and 5 GHz)
> > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.=
pdf (6 GHz)
> > > > country HK: DFS-ETSI
> > > > (2400 - 2483.5 @ 40), (36)
> > > > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > > > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > > > (5470 - 5730 @ 160), (27), DFS
> > > > (5730 - 5850 @ 80), (36)
> > > > (5945 - 6425 @ 160), (24), NO-OUTDOOR
> > > >
> > > >
> > > >
> > > > Update :
> > > >
> > > > # Source:
> > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.=
pdf
> > > > (2.4 GHz and 5 GHz)
> > > > # https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part=
-15/subpart-E
> > > > (2.4 GHz and 5 GHz)
> > > > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.0=
7_20/en_301893v020007a.pdf
> > > > (2.4 GHz and 5 GHz)
> > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.=
pdf (6 GHz)
> > > > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.0=
0_20/en_303687v010000a.pdf
> > > > (6GHz)
> > > > country HK: DFS-ETSI
> > > > (2400 - 2483.5 @ 40), (36)
> > > > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > > > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > > > (5470 - 5730 @ 160), (30), DFS
> > > > (5730 - 5850 @ 80), (36)
> > > > (5945 - 6425 @ 320), (23), NO-OUTDOOR
> > >
> > > Please do a proper patch or at least diff. This is hard to spot diffe=
rences.
> > > And if it's not a patch it's more work.
> > >
> > > > Reason for change in 5470-5730 :
> > > > The HK department, OFCA has its own requirement, 30dbm in addition =
to
> > > > EITHER fulfilling FCC OR ETSI requirement. The rationale behind is
> > > > having the biggest tolerance among major world standards to be an
> > > > international city. The OFCA, 30dbm is the baseline value to be
> > > > fulfilled in the highest priority.
> > > >
> > > > About FCC
> > > > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > > > # https://www.ecfr.gov/current/title-47/part-15/subpart-E#p-15.407(=
h)(1)
> > > >
> > > > About UTSI (same as FCC)
> > > > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > > > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.0=
7_20/en_301893v020007a.pdf
> > > > (page 17)
> > > >
> > > > A TPC (30dbm), 802.11h edition should be taken instead of 27dbm as =
I suggest.
> > > > Or a TPC regulation flag may be a good idea to bind with 30dbm toge=
ther.
> > >
> > > There is no TPC flag, hence the limit is set at 27 dBm.
> > >
> > > > Reason for change in  5945 - 6425 :
> > > > The HK department, OFCA requires to have its own EIPR limit, 24dbm =
in
> > > > addition to ETSI 23dbm.
> > > > Therefore, the smaller value should be taken.
> > > > (6GHz in HK requires no reference to FCC standards, unlike 5GHz sit=
uation)
> > > > WIFI 7 allows 320MHz, the previous value, 160MHz was in wifi 6E era=
.
> > > >
> > > > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.0=
0_20/en_303687v010000a.pdf
> > > > (page 17)
> > >
> > > You mentioned in your reply that this change is invalid.
> > >
> > >
> > > So to summarize, I don't see any change at all.
> > >
> > >
> > > ChenYu
> >
> >
> >
> > --
> > Regards,
> >
> > Morgan Wong
>
>
>
> --
> Regards,
>
> Morgan Wong

