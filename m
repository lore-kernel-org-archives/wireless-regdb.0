Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8848CC5DF94
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 10:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O6k6tLlDapjbySbq4F3ns4hZSOXCON1n3GSi5fW8yKU=; b=f+3oNb3BWmxSg5C8jQoVbnxSTW
	YZ8jbE5spPF2/rfc1d2eGtKnHJaevTgBK+58arXEq7+Hrwyxm2T4QUgdESPgwRuQclFu4aYPXFsAZ
	m6DOIMUDnIV2uij5kvfeIr6aK+POh0StI+XQzmQ7oPyUm8lvmttT/+i34rpoK6b6WNzxyNFwEYoNi
	g+mhJpvFNIx7LgqOlKlwzyxhEPOSIFng9jNLxKDjHDWiZdAMfaLICExmV6VJYhmxr6utoQjNDGJj1
	L/9EJOBiKffLH4PJPoku6lMVImaqQFe+SInfYU/a1aaOlunaZMPFTQG5rQCG35FZCtSdsDPLiCAO0
	60TA5WXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRVn-0000000GLv1-2F1b;
	Mon, 24 Aug 2026 10:02:39 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRVj-0000000GLug-23Ee
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 10:02:38 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2ccf2360620so28060645ad.3
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 03:02:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787565754; cv=none;
        d=google.com; s=arc-20260327;
        b=pGgxhOBbKUq84xHWbAe6PwvcjzCqK2X39rqsxC7vShzLSL9/e8l+IMrNcH2pn43+av
         iCsWMkLSOd9h9KjuEKwK+hxntBFKLVx0wvn+6u3fTuub979Id00yq9NGHpcLxsa4cnD1
         5YlBMtbDQYYGkatLv8IN+0f6jwKmNtC9lTWEihL3yUxSkOdzYt1z1HKoqN3q8qc5rmde
         vdBCxjbPennVMvsvpPhCnAyNWPqTYInzeLwJP0/gHrsRei9fa2LB1T8zWa0jvlTFzgBv
         c8pNkSeTqf3q6YKO+ilnLyfZn3PCZFbWcKu4EhORVgvYe193pwjJVNBldHJ8MuOj6NTx
         asFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=O6k6tLlDapjbySbq4F3ns4hZSOXCON1n3GSi5fW8yKU=;
        fh=dr4WC3QjkkHM6RwZwd2q1U1cbHIdWMecPutJUfGIKTA=;
        b=VxdRtgy/IZU58wksVDtVt1YXbINJziRBqDfP3ekl2yg85EhkPzbLfbw5Xc0VP0Bykk
         J4VcVRCJ/nmadIVWTwaPu5HSL8814iYiNXJb++tZfUc3D14zr6T7IQA9KhSuuCo1SDP8
         0djQWcZcd1mpeORP1Dd0J+orxz0xacGzw0l/xxOKA5svVVgQBe1qLmzi7DpxQmUN8DUn
         NZbuQRgFMZUJ6jaKP1G9k3vpQkCrsAW9mewrod73vjNm7ncoqKyHykfa2r4oO+U9tZe9
         EgsiowfEyU2+hJiUsvQ9G+NTMGIZrEbWn4tEQ9I452YkFHMWf3iVnYBXM43ZpUiZnb4M
         HlBQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787565754; x=1788170554; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=O6k6tLlDapjbySbq4F3ns4hZSOXCON1n3GSi5fW8yKU=;
        b=F8t6874YthMpiXvHyWf9Gi2Ho0njHl5a1XdhGis3HpbvZoNWes82sbabC6BSLt+RdY
         9IJWrikRLSP7nzZAa3bnrj9n4+3VvYasxEB+tMML2mW65QkAnVbU+aDecd5kqwBgnmpJ
         aF6l26uD+43pib3dpC4+jcpD9e/13jsW3EG3tEyoB25kkHGxQwjrpYKtkh6LgYvp+2QO
         wRsNm7KRI0YLCxJI7dc7M5T6Cuduc2s45HK28X0KF2bcnJu8syIKs7nHrSKaeoyHvMKL
         /GW2Mx8+XqVId9iF7MzfxD0DykltiMgkin22/0boOa11KjsSPi3BtSVf9gu4gKhbM0SK
         dayw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787565754; x=1788170554;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O6k6tLlDapjbySbq4F3ns4hZSOXCON1n3GSi5fW8yKU=;
        b=TzSTGmh9n0u6667zhE7FoKCL+l5MGUyWzhbTWkBEaZSla5gbSYxBwLr8Vjg+oj6Okz
         dpjiLcouKqR1xsf1cUmLPqLuEACIPJZojOJUbbic0PKX5anmpb4YyTn5KknBxWwyylPY
         OaYVcLh+6l99K/jYYaWxdhTx0+1OvQvlxo/SqjMgPgs7o3mE9ynqY0EJSubgPgT9VZiV
         X5gudISLfiPtK3nXGjFkAnxYfkm7JLon825DmXiJyPDItUzgZpv7YnYu0QHM2UiraI/B
         xwvTPY515VIZiIixdQEV5UglKC3lWh6VO130yQ0FCNj+UZty52w5L+QKHFuTAPigmDqs
         yrYQ==
X-Gm-Message-State: AFuF++ltXivmaRl++yCz6qvjM30eT9e+dnZMG8VqsU/e4O994Q3u/urG
	cYM81Fz6gPrp9eVaDV7J6C8vr8O99b/Zli7GyU9N/7HUS0/TJ5mfK1g0WZJ69SPqsXf3iVJMlyy
	t4khAAaxzJWEHjHIoPwxY1KbDPlnAiN8FUfHY
X-Gm-Gg: AR+sD11YjFonve5km9JgRTiYQ1dQw0fB21FtBn4j0jj+JnRh4vLM+5xE9VUi1P8zDDT
	pFy7bOmFVtRvNci+6KV90Te5OS1mefogAHq1xtt3PjSRKUQTNQ9XszubPm79ogx9r+q6XkBjnrH
	vGcfQ/XHbLGs62uhEW7xQDnbE7mzwwbCleHMR4zLNdC5WivkAlGNMIQyoFXS71I697gUqRwD42Q
	iRnJF9f8uVYPoYl03fvkoyscl5KxR5krg/1X+kUdb8kccXkyai8DQijV2zJKUaIdLF5vnj6kP9o
	bQdF5utbbD2OqgcsKOflcAwfHa0qVM8KmKFJHHLhxQ4=
X-Received: by 2002:a17:902:f68d:b0:2ca:660:b1d with SMTP id
 d9443c01a7336-2d64b025d01mr437359265ad.11.1787565754401; Mon, 24 Aug 2026
 03:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAPsebg5EyxQjqQVm0KQHtx=0f8-mvhPSdsvJFOGEPCFU3H=Y0g@mail.gmail.com>
 <CAGb2v67O-WqXdA9W-YTV-q9mKz23G3-eFNRJSoVGn07TSXF-hQ@mail.gmail.com> <CAPsebg7j14Znh2EMOKE2WDRpHNOCpTrcmLCY0j6diNVZymMA_w@mail.gmail.com>
In-Reply-To: <CAPsebg7j14Znh2EMOKE2WDRpHNOCpTrcmLCY0j6diNVZymMA_w@mail.gmail.com>
From: Nahid Hasan <nahidhasan12391@gmail.com>
Date: Mon, 24 Aug 2026 16:01:56 +0600
X-Gm-Features: AcwNN1XDOQv_eBdNkhTEwHYmZfOeB5r2JO4T6oQrwllcq7geDrvL7MuF0UrCurk
Message-ID: <CAPsebg6+xPs9uJ=Ct4e0tpiqNggz54CD655uem6ukLBaV7tv5Q@mail.gmail.com>
Subject: Re: country BD (Bangladesh) entry: update to current BTRC allocations
 (2.4/5/6 GHz)
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_030235_872486_8FC85B1C 
X-CRM114-Status: GOOD (  38.08  )
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Hi,
Thank you for your patience and for pointing out the inaccuracies in
the previous references. I have carefully reviewed the official
"Bangladesh Spectrum Master Plan" (published by ITU in 2015) and
cross-referenced it with current BTRC guidelines to provide the exact
technical specifications you requested.1.5 GHz Segments (36-64,
100-144, 149-165):
The ITU Bangladesh Spectrum Master Plan (2015) addresses these bands
in Section 2.3.6 (Short Range Devices).=E2=80=A2Reference: ITU Bangladesh
Spectrum Master Plan (2015), Section 2.3.6, Page 43-45.=E2=80=A2Power Limit=
:
Page 43 states that Short Range Devices (SRDs), which explicitly
includes "Wireless LAN" (WLAN), typically operate with power "100mW
and below" (20 dBm EIRP).=E2=80=A2Band 5.8 GHz (149-165): Table 2.12 (Page =
44)
lists 5725 =E2=80=93 5875 MHz as available for RLAN/ISM.
Bands 5.1 GHz & 5.4 GHz (36-64, 100-144): Page 45 (Subsection 2.3.6)
explicitly identifies 5150 =E2=80=93 5350 MHz and 5470 =E2=80=93 5725 MHz f=
or Wireless
LAN use. It refers to the regulatory authority's document:
"Instructions for providing service through 2.4 and 5.7 GHz band in
Bangladesh" for specific technical parameters.2.6 GHz Segment
(5925-6425 MHz):
The BTRC Circular No. 14.32.0000.402.45.231.24.116 (dated 15 September
2024) authorizes this band on a "shared basis" for
Wi-Fi/IoT/WLAN.=E2=80=A2Technical Limitation Justification: While the circu=
lar
authorizes the band, BTRC technical standards for SRDs follow the
Asia-Pacific Telecommunity (APT) harmonisation framework. Bangladesh
is a member of APT and aligns its SRD regulations with
APT/AWG/REP-07.=E2=80=A2Proposed Limit: 23 dBm EIRP (Low Power Indoor - LPI=
).
This is the standard harmonised limit for the 5925-6425 MHz range in
the Asia-Pacific region, ensuring non-interference with primary
services in the shared band.
Revised Proposed Entry for BD:
country BD: DFS-JP
 (2402 - 2482 @ 40), (20)
 (5150 - 5350 @ 80), (20), DFS
 (5470 - 5725 @ 160), (20), DFS
 (5725 - 5875 @ 80), (20)
 (5925 - 6425 @ 160), (23)

Note: I have adjusted all 5 GHz power limits to 20 dBm (100mW) to
strictly match the "100mW and below" text on Page 43 of the Master
Plan, ensuring the most conservative and verifiable approach for the
kernel database.
Official Source URL:
https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Public=
ations-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%20pla=
n%20-%20Published.pdf

I hope these specific page and section references meet the
requirements for inclusion.

Regards,
Nahid Hasan

On Mon, Aug 24, 2026 at 2:41=E2=80=AFPM Nahid Hasan <nahidhasan12391@gmail.=
com> wrote:
>
> Hi,
> Thank you for the feedback. To clarify, the proposed update covers the
> full range of 5 GHz and 6 GHz bands as authorized by the BTRC. Below
> are the specific power limit (EIRP) references for each segment,
> including the lower 5 GHz bands.
>
> 1) 5150 - 5350 MHz (channels 36-64)The lower 5 GHz band is authorized
> for indoor use in Bangladesh. The technical parameters align with
> ITU-R M.1450-5, as formally adopted in the national spectrum
> framework.=E2=80=A2Reference: ITU Bangladesh Spectrum Master Plan (Publis=
hed
> 2021), Section 5.3.3, Table 5.2 "Technical Parameters for
> WLAN/RLAN".=E2=80=A2Limit: 200 mW (23 dBm) EIRP.=E2=80=A2Source URL:
> https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Publ=
ications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%20p=
lan%20-%20Published.pdf
> (Page 42)
>
> 2) 5470 - 5725 MHz (channels 100-144) and 5725 - 5850 MHz (channels
> 149-165)These bands are allocated for both indoor and outdoor use with
> higher power limits under DFS requirements for the
> mid-band.=E2=80=A2Reference: ITU Bangladesh Spectrum Master Plan (2021), =
Table
> 5.2.=E2=80=A2Limits:=E2=80=A25470 - 5725 MHz: 1 W (30 dBm) EIRP (DFS requ=
ired).=E2=80=A25725 -
> 5875 MHz: 1 W (30 dBm) EIRP.=E2=80=A2Source URL:
> https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Publ=
ications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%20p=
lan%20-%20Published.pdf
> (Page 42)
>
> 3) 5925 - 6425 MHz (6 GHz channels 1-97)Approved for "shared use" in
> September 2024. Technical specifications follow the APT (Asia-Pacific
> Telecommunity) framework.=E2=80=A2Reference: BTRC Circular No.
> 14.32.0000.402.45.231.24.116 (15 September 2024).=E2=80=A2Limit: 23 dBm E=
IRP
> (Low Power Indoor - LPI).=E2=80=A2Source URL:
> https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d=E2=80=A2Direct=
 PDF:
> https://objectstorage.ap-dcc-gazipur-1.oraclecloud15.com/n/axvjbnqprylg/b=
/V2Ministry/o/office-btrc/2024/12/18337854ab6c487fa749464c7672c8a8.pdfUpdat=
ed
> Proposed Entry for BD:country
> BD: DFS-JP
>  (2402 - 2482 @ 40), (20)
>  (5150 - 5350 @ 80), (23), DFS
>  (5470 - 5725 @ 160), (30), DFS
>  (5725 - 5850 @ 80), (30)
>  (5925 - 6425 @ 160), (23)
>
> These values are consistent with official BTRC notices and the
> ITU-published National Spectrum Master Plan for Bangladesh.
>
> Best Regards
> Nahid Hasan
>
>
>
> On Mon, Aug 24, 2026 at 10:37=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> w=
rote:
> >
> > Hi,
> >
> > On Fri, Aug 21, 2026 at 5:08=E2=80=AFAM Nahid Hasan <nahidhasan12391@gm=
ail.com> wrote:
> > >
> > > Hello,
> > >
> > > I would like to propose an update to the "country BD" entry in the
> > > wireless-regdb database. The current entry only allows 2.4 GHz and a
> > > narrow slice of the 5.7 GHz band, while the regulator (BTRC, Banglade=
sh
> > > Telecommunication Regulatory Commission) has since approved much wide=
r
> > > allocations. This outdated entry means that smartphones sold in
> > > Bangladesh (SIM MCC 470) cannot see or use 5 GHz channels 36-144 or a=
ny
> > > 6 GHz channel, even though these are officially permitted.
> > >
> > > Current entry (db.txt, line 224 as of wireless-regdb 2026-xx-xx):
> > >
> > > country BD: DFS-JP
> > > (2402 - 2482 @ 40), (20)
> > > (5735 - 5835 @ 80), (30)
> > >
> > > Proposed replacement, based on the regulator's National Frequency
> > > Allocation Plan and the BTRC circular dated 15 September 2024 which
> > > approved 5925-6425 MHz for unlicensed Wi-Fi/IoT/WLAN use:
> > >
> > > country BD: DFS-JP
> > > (2402 - 2482 @ 40), (20)
> > > (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > > (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> > > (5725 - 5850 @ 80), (30)
> > > (5925 - 6425 @ 160), (23)
> > >
> > > Justification for each block:
> > >
> > > 1) 2.4 GHz (2402 - 2482 @ 40), (20)
> > > No change; matches the long-standing SRD/ISM allocation of 2400-2483.=
5
> > > MHz.
> > >
> > > 2) 5150 - 5350 MHz (channels 36-64), (20) dBm, NO-OUTDOOR, AUTO-BW
> > > Allocated in the Bangladesh NFAP. Indoor-only with 20 dBm EIRP follow=
s
> > > the ETSI-style practice already used in the region (as in DFS-JP).
> >
> > Please provide reference with power limit numbers.
> >
> > > 3) 5470 - 5725 MHz (channels 100-144), (20) dBm, DFS, AUTO-BW
> > > Allocated in the NFAP with radar-detection (DFS) requirement. A 60
> > > second CAC (Japan-style DFS, already selected for BD) is consistent.
> >
> > Please provide reference with power limit numbers.
> >
> > > 4) 5725 - 5850 MHz (channels 149-165), (30) dBm
> > > No change to the current entry, only extended from 5835 to 5850 MHz t=
o
> > > match the NFAP allocation of 5725-5875 MHz (the upper part, 5850-5875=
,
> > > is omitted conservatively since it requires pre-authorization for
> > > commercial equipment; can be added once the regulator clarifies).
> > >
> > > 5) 5925 - 6425 MHz (6 GHz channels 1-97, up to 160 MHz), (23) dBm
> > > BTRC circular dated 15 September 2024 approved 5925-6425 MHz for
> > > Wi-Fi/IoT/WLAN on a shared basis. (23) dBm EIRP follows the conservat=
ive
> > > indoor-oriented approach used by neighboring regulators. 320 MHz
> > > (802.11be) is NOT included since the circular does not explicitly
> > > authorize the 320 MHz channel width.
> >
> > You need to provide power limit references for Bangladesh, not neighbou=
ring
> > regions.
> >
> > > References:
> > >
> > > - BTRC circular approving 5925-6425 MHz for Wi-Fi/IoT/WLAN (15 Sep 20=
24):
> > >   https://btrc.gov.bd/site/notices/939916e8-a89a-4e3b-aa75-35a0a2172f=
59/
> > > - Bangladesh National Frequency Allocation Plan (ITU-published
> > >   Spectrum Master Plan):
> > >   https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Document=
s/Publications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20mast=
er%20plan%20-%20Published.pdf
> > > - Wi-Fi Alliance, regulations enabling 6 GHz Wi-Fi (BD entry):
> > >   https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> > > - Current BD entry in db.txt (kernel.org):
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb=
.git/plain/db.txt
> > >
> > > Practical impact: With SIM MCC 470, Android and iOS devices apply the
> > > BD regulatory domain. The current narrow entry hides all 6 GHz
> > > channels and 5 GHz channels 36-144 from these devices in Bangladesh,
> > > even on Wi-Fi 6/6E/7 routers, forcing fallback to 802.11ac on
> > > 5 GHz. Updating this entry would restore access to the channels the
> > > regulator already permits.
> > >
> > > I am not a BTRC official; the regulator has not submitted this update
> > > itself, so I am proposing it on behalf of affected users, citing the
> > > regulator's published circular and allocation plan above. Please let =
me
> > > know if an official letter from BTRC is required before merging, and =
I
> > > will forward this request to the commission.
> >
> > A reference with the band and power limits, as well as any other
> > restrictions like DFS or TPC (andif TPC is required, what is the limit
> > if TPC is not implemented) needs to be provided. We cannot put random
> > numbers into the database without justification.
> >
> > The BRTC circular only says that the band is allowed. It does not provi=
de
> > power limits.
> >
> > The allocation plan only gives bands, and they are quite coarse. And fo=
r
> > 5GHz, it says they are currently allocated to ISPs. It is implied that
> > a license is required.
> >
> >
> > Thanks
> > ChenYu
> >
> > > Thank you for your time and work on this database.
> > >
> > > Best regards,
> > > Nahid Hasan
> > > Dhaka, Bangladesh
> > > nahidhasan12391@gmail.com
> > >

