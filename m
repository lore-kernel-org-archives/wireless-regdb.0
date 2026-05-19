Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C4CCD4F50
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 May 2026 07:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xle0a7JggwlD1dJ6Kbruuf74DRS5bm6y0tsRphC6x/Q=; b=QVGtaPjzsFig7h
	x0W1G3DP9UdsSlbHhMVdd0vYOtfbR7MWF3pbWTQrE0SsDH24o9WvJZGN/SsvQBQtaa89ENCWzkhhU
	A5VronLXXFZ5CRokNH5KlriSVZJo6daofCXot4rY2DTc3ZylUNl6K5W6OBBsh96KMS+Zib+IjB9WJ
	zqQVSq7DOm07nzZjsBuimenBVv+nvVe6ldHXsHcCmDccGVnuRw8SjFuydWfeiTBsUsuqD8Sl80Zf9
	4XW2yLgZynZgu7XAVKxqrcovTV6wmvURVDaOqz9UpD12J/vOZJ7YV4F3/OrjMymtXcPxmo9Byatp9
	oHau32vBOnb+MUWJx6nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEfb-00000000SKL-16xO;
	Tue, 19 May 2026 07:15:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEfY-00000000SJ1-2aQU
	for wireless-regdb@lists.infradead.org;
	Tue, 19 May 2026 07:15:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0565444090
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 07:15:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6FCCC2BCFC
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 07:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779174911;
	bh=e37XJBBu2ZOJo9b97UuDxrWTjD1hFvbR54jEfbTYFVg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=cr2z5Nofp+ku5w4GOvFZx/3HFxB32ye8O7ajX3IMe15DiDvxw9Hf7YeIt0seU7i/p
	 bSSP0sN6PTLEBV7aGvmVK3kBuQq1kJWmSliwock6Uz2T1agijsGtMnRBoarm2o0d02
	 g8JNnYxRP5fuIte06t5wMmbgWa89YzBMm0VfrxNRbWGZnvY5Cl1LW9eldSz4WjGBx4
	 3iru6QI3LXh/wdSK7zlXN/6EbB5SlZJA23UbU0Pi73U5a4/UB98cyhOlcoSdkUuVyp
	 nOLXfyMu6T0d1zAcOfV95XBLMtLTXdiQO4GJm9mYnV/FDei0oZmbkI6D035HCHp0PC
	 CSRyU7kgFnADg==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-39378db197aso36184901fa.3
        for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 00:15:11 -0700 (PDT)
X-Gm-Message-State: AOJu0Yxgyl8bzQMZp0SrDleYPtQCAwEi64i2HBUtCSVen16tvgQzfhoQ
	FFEwpsYapQlPYGSAa3FT0ecmnIJ/RKeRvT4CJoWnEHFAJv4EGocns0SgDaOl1GXQ2pZp+095s9n
	uJ7P7c5gIaYAOlUHQusor80cCC5e74bs=
X-Received: by 2002:a2e:8812:0:b0:38e:83a6:d4c with SMTP id
 38308e7fff4ca-39561c3628dmr37868651fa.7.1779174910180; Tue, 19 May 2026
 00:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <1886262646.6291779.1777997531793.ref@mail.yahoo.com>
 <1886262646.6291779.1777997531793@mail.yahoo.com> <dc91809a60874f87a5e9d67f0c4696e5@badraproject.com>
In-Reply-To: <dc91809a60874f87a5e9d67f0c4696e5@badraproject.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 19 May 2026 15:14:57 +0800
X-Gmail-Original-Message-ID: <CAGb2v66mCBP8KiMF3nRTix_zYDhsb_o4KNj-7-enB0+ULvh0_A@mail.gmail.com>
X-Gm-Features: AVHnY4LZNdH-hLJyed2ewHsAuE9f5bxzyNY9_0GWdZxDjJDt6NAxN0w5acgcI6A
Message-ID: <CAGb2v66mCBP8KiMF3nRTix_zYDhsb_o4KNj-7-enB0+ULvh0_A@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: add regulatory rules for Iraq (IQ)
To: Mohammed.Al-Obaidi@badraproject.com, 
	Johannes Berg <johannes@sipsolutions.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
	mnewiraq2000@gmail.com, mnew_iraq@yahoo.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_001512_712984_EB6A01CD 
X-CRM114-Status: GOOD (  42.42  )
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

Hi,

On Sat, May 16, 2026 at 3:43=E2=80=AFPM <Mohammed.Al-Obaidi@badraproject.co=
m> wrote:
>
> Kind reminder, any update on the subject?

Please send the patch directly to the mailing list, not as an attachment.
Otherwise there is no way to review the patch on the mailing list.

`git send-email` should do that for you.

About the commit message:

The section "Notes on the encoding chosen below" is really not needed,
unless something is not a direct translation from text to the standard
rules for wireless-regdb, or if other materials were referenced.

So talking about "Indoor" encoded as "NO-OUTDOOR" is redundant. Mentioning
DFS is also not needed, since it is obvious from the table you provided.
AUTO-BW for 5150-5350 MHz is also quite standard.

Things that are worth mentioning:

1. TPC requirements in the regulation and what was done to make the rule
   compliant (as we don't support TPC)
2. Choice between indoor-only and indoor+outdoor rules when both exist
   but with different requirements (database and Linux support only one
   rule per band)
3. unique 5.8 GHz figure as you gave


Also:

* 5725-5875 MHz uses the higher of the two stated EIRP figures
  (4000 mW for 20 MHz channels) since wireless-regdb expresses a
  per-band ceiling, not a per-channel-width ceiling.

This is slightly wrong. wireless-regdb expresses a ceiling that makes
devices compliant with all regulations in all configurations. So if
there is a power spectral density that allows the maximum EIRP at
a wider channel, but a reduced EIRP at 20 MHz, we will use the reduced
number.

As for 10 MHz, I don't think it is supported, so we don't really consider
that case. I could be wrong though.

Johannes, could you shed some light on 10 MHz channel width support?


Thanks
ChenYu

> Mohammed
>
> From: Mohammed Abdalla [mailto:mnew_iraq@yahoo.com]
> Sent: Tuesday, May 5, 2026 7:12 PM
> To: wireless-regdb@lists.infradead.org; linux-wireless@vger.kernel.org
> Cc: Mohammed Abdullah Ali Al-Obaidi <Mohammed.Al-Obaidi@badraproject.com>
> Subject: [PATCH] wireless-regdb: add regulatory rules for Iraq (IQ)
>
> ## 1. Why this patch exists
>
> Iraq is currently absent from `wireless-regdb/db.txt`. As a
> consequence, every OpenWrt and Linux device set to `country=3DIQ`
> falls back to the world domain (`00`), which marks most of the
> 5 GHz spectrum as `no IR` and limits 2.4 GHz EIRP to 20 dBm. A
> public OpenWrt forum thread on the Archer AX23 in Iraq concluded
> with the maintainers' standard answer:
>
> > *"IQ is the correct code for the place; once an engineer shares
> > the local radio laws with regdb maintainers it will be added."*
>
> This patch is that contribution.
>
> ## 2. The primary source
>
> The Iraqi Communications and Media Commission (CMC), the national
> regulator, has issued a numerical regulation specifically governing
> unlicensed Wi-Fi, SRD, and UWB devices:
>
> - **Title:** Regulation on short-range radio communication devices
>   (SRD) and devices using ultra-broadband (UWB) technology
> - **Issuer:** Republic of Iraq, CMC, Telecommunications Regulatory
>   Department, International Relations Section
> - **Decree:** Council of Commissioners decision No. 122/q-2025
> - **In force from:** 2025-09-22
> - **Edition:** First edition, 2025; 26 pages
> - **Direct PDF:**
>   <https://cmc.iq/wp-content/uploads/2025/09/Regulation-on-short-range-ra=
dio-communication-devices-SRD-and-devices-using-ultra-broadband-UWB-technol=
ogy.pdf>
>
> Article 4-1-13 of that regulation, titled "Wireless Access Systems
> (WAS)", contains a full numerical table for every Wi-Fi band. This
> patch reproduces that table directly. Nothing in the proposed
> `country IQ:` block is inferred or extrapolated.
>
> ## 3. The Article 4-1-13 table, verbatim
>
> | Band | Use | Max EIRP | Required mitigations | Cited standard |
> |---|---|---|---|---|
> | 2400 =E2=80=93 2483.5 MHz | Indoor and outdoor | 100 mW | LBT and DAA |=
 EN 300 328, ERC/REC 70-03 |
> | 5150 =E2=80=93 5250 MHz | Indoor | 200 mW | =E2=80=94 | EN 301 893, ITU=
 Res. 229 (Rev. WRC-19) |
> | 5250 =E2=80=93 5350 MHz | Indoor | 200 mW | =E2=80=94 (DFS implied via =
EN 301 893) | EN 301 893 |
> | 5470 =E2=80=93 5725 MHz | Indoor | 1000 mW | DFS and TPC (stated explic=
itly) | EN 301 893 |
> | 5725 =E2=80=93 5875 MHz | Indoor and outdoor | 2000 mW (10 MHz ch) / 40=
00 mW (20 MHz ch) | =E2=80=94 | EN 302 502 |
> | 5945 =E2=80=93 6425 MHz | Indoor | 200 mW | =E2=80=94 | EN 303 687, ECC=
 Report 75 |
> | 57000 =E2=80=93 66000 MHz | Indoor | 10000 mW | LBT and DAA | EN 302 56=
7 |
>
> The proposed `country IQ:` block encodes this table line for line.
>
> ## 4. The Iraqi regulation also defines its own glossary terms
>
> For the avoidance of doubt, the regulation's Annex A explicitly
> defines `Wi-Fi` as *"802.11 Local Area Networking in 2.4 and 5 GHz
> ISM bands"*. So when the maintainers ask whether this regulation
> in fact covers Wi-Fi, the answer from the regulator is yes,
> in writing, in the regulation itself.
>
> The same annex defines DFS, TPC, LBT, DAA, EIRP and AFA in the
> exact wireless-regdb sense.
>
> ## 5. Encoding choices and where they came from
>
> A few wireless-regdb encoding details require explanation, because
> they are interpretations of the regulation's wording rather than
> direct copies of numerical limits:
>
> 1. **NO-OUTDOOR on 5150=E2=80=935725 MHz.** The regulation labels these
>    rows simply as "Indoor". The wireless-regdb idiom for that is
>    the `NO-OUTDOOR` flag.
>
> 2. **No NO-OUTDOOR on 5725=E2=80=935875 MHz.** The regulation explicitly
>    labels this row "Indoor and outdoor".
>
> 3. **DFS on 5250=E2=80=935350 MHz.** The regulation's own column for this
>    row is empty for mitigations, but the cited standard
>    (EN 301 893) requires DFS in this sub-band, and the corresponding
>    row for 5470=E2=80=935725 in the same table does state DFS+TPC. Readin=
g
>    the regulation as a whole, DFS for 5250=E2=80=935350 is required by th=
e
>    incorporated standard.
>
> 4. **Single EIRP figure for 5725=E2=80=935875 MHz.** The regulation gives
>    two figures (2000 mW for 10 MHz channels, 4000 mW for 20 MHz
>    channels). The wireless-regdb format expresses one ceiling per
>    band; the 4000 mW figure is used because it is the higher value
>    that the regulation explicitly permits.
>
> 5. **6 GHz channel width set to 80 MHz.** The regulation does not
>    explicitly distinguish standard-power from low-power indoor
>    (LPI) operation, nor does it mention AFC. The conservative
>    choice is to encode the 6 GHz block at 80 MHz (the widest
>    non-AFC option in current practice) and leave a follow-up patch
>    for a wider channelisation once CMC clarifies AFC requirements.
>
> 6. **AUTO-BW on the 5 GHz RLAN rows.** Standard practice for
>    EN 301 893=E2=80=93compliant entries; no AUTO-BW is set on the 6 GHz
>    row pending the AFC question above.
>
> If the maintainers prefer a different encoding for any of these
> six points, please push back; the underlying regulatory text is
> clear and any of these can be re-encoded without changing what is
> actually permitted under Iraqi law.
>
> ## 6. The 5.8 GHz figure looks unusually high =E2=80=94 it is intentional
>
> `(5725 - 5875 @ 80), (4000 mW)` with no NO-OUTDOOR is not a typo.
> This is what Iraq's own regulation states for this sub-band, citing
> EN 302 502. It is the BFWA value, not the Non-Specific SRD value.
> This choice puts Iraq at the high end of the regional spectrum
> policy for the 5.8 GHz band. It is included verbatim because the
> purpose of wireless-regdb is to reflect what each country's
> regulator actually permits.
>
> ## 7. What is not in the patch
>
> - **5850=E2=80=935925 MHz ITS / V2X bands.** Article 4-1-8 of the same
>   regulation covers ITS at 5855=E2=80=935925 MHz with 2 W EIRP, but this
>   is a non-Wi-Fi RLAN application and is outside the scope of
>   what wireless-regdb usually encodes for `country` blocks.
>
> - **All non-Wi-Fi SRD bands.** The regulation also covers RFID,
>   inductive applications, alarms, model control, automotive radar,
>   level probing radar, hearing aids, active medical implants, and
>   the full UWB regime (Articles 4-2-1 through 4-2-6). None of these
>   is a wireless-regdb concern.
>
> - **6 GHz beyond 6425 MHz.** The Iraqi regulation only addresses
>   5945=E2=80=936425 MHz at 6 GHz; the 6425=E2=80=937125 MHz upper portion=
 is not
>   covered, and the patch therefore does not include it.
>
> ## 8. Submission checklist
>
> - [ ] Verify the patch applies cleanly against the current
>       `wireless-regdb` master; the IQ block must be inserted in
>       alphabetical order, between `IN` and `IR`.
> - [ ] Build `regulatory.db` locally and confirm with
>       `regdbdump regulatory.db | grep -A8 'country IQ'` that the
>       output matches the proposed table exactly.
> - [ ] Post the cover letter and patch on the OpenWrt forum thread
>       (231380) for community review by Iraqi engineers before
>       sending upstream.
> - [ ] Send to `linux-wireless@vger.kernel.org` with cc to
>       `wireless-regdb@lists.infradead.org`.
>
> ## 9. A note on responsibility
>
> The numerical content of this patch is taken verbatim from a public
> Iraqi government regulation. The encoding choices listed in =C2=A75 are
> the patch author's, and they are reversible.
>
> Author: Mohammed Abdullah Ali Al-Obaidi (mnew_iraq@yahoo.com),
> OpenWrt forum handle `mnewiraq`. Any objection to the encoding
> choices should be raised to that author or in the upstream review
> thread, not to the CMC.
>
>
> CONFIDENTIALITY. This communication is intended exclusively for use by th=
e addressee and may contain confidential and/or privileged information. If =
you receive this communication unintentionally please inform the sender by =
reply immediately and permanently delete it from your system; you should no=
t copy this communication or disclose its contents to anyone.

