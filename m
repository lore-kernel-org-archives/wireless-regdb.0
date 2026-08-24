Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D116C5DF9C
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 10:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDLGtgQEmJbsuLKXig3S3Hbtr3e9I0oJKAgUr0mpOPU=; b=4fB3avVrZpqB6z
	qew8mLkO2kF9JFIkDJwxmgpGlLNBUud3Xcn+CHHbbFa1fBRkeEm41IIU9GSVRPFWdvlype1vFaugH
	C/oO39m2Jn858dw2V7pDE4JN1pthjpCz7vFH30xvDspP86zA7CZJcpyA3iCmZCNaV7ssshTRwXYEb
	h5F3DS4SOh0o74g1QyT1Iu31mZixZW6uEaLW219nBGvLrsNf9250mQTkLAHQL4h2R2/AigjnvL3KP
	Q0qc+/2oXRhGuZ6k2/T01iMb/P5Yd2lgSIASXwus7SmMVBecD/MmXCxQPPJdeuKuc8cXFqGaLcTsu
	zz+GWMl1ULF5MxGJVDBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRsb-0000000GOTG-3zoW;
	Mon, 24 Aug 2026 10:26:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRsX-0000000GOSn-2zjU
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 10:26:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2F1A743C2B
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 10:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13B4B1F00A3D
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 10:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787567169;
	bh=PDLGtgQEmJbsuLKXig3S3Hbtr3e9I0oJKAgUr0mpOPU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=ZxLKporRrzSQuvtWffpf+pthmfVrNvywVkmCG7VNd+6yN3epc1nReP7tC42c1eeMj
	 UMUFd3hWuS4gKipZ8poCWpfM+bdZMzIrU5WZMcSqyWxXqivh+AG/4l5oxKeZln0pfB
	 BGYNswtTsSAtEwXdehGwsMVD8WmV3rvDmcgl/jKWoLdK91AEzRcVKiiosnq1dwaKP5
	 /6y/BtEQL+HcHSYsoDnA1f2Mgzbvcio5zgEKV/JEkPuealg2PyR0+eo47+/C5qu+5c
	 ziKpP1yXwZQ8h4C4ehehBttVMjX/NpPOQ1XxnFFRReKU4c6T0FgdyKJL6BsJe+OeCB
	 saDCszbliNY/g==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3a14f6613fdso36558051fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 03:26:08 -0700 (PDT)
X-Gm-Message-State: AFuF++mbox02TjovDBGgWnC/49oXW1wxsou+8e2CtJXxgiimVuSV3nmG
	S6UmEsBmeAmtXQIRt9U2KzXfFKIuxz8hQibD6h8Zr0ybtgx+cYLqJezkch3YDMFqQ1YkZokp4XR
	eetkcwJnXfhYJObkD+S46hBPeDD3MOZ8=
X-Received: by 2002:a05:651c:1542:b0:3a1:a8c8:2e21 with SMTP id
 38308e7fff4ca-3a1aec4c778mr58352781fa.9.1787567167325; Mon, 24 Aug 2026
 03:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAPsebg5EyxQjqQVm0KQHtx=0f8-mvhPSdsvJFOGEPCFU3H=Y0g@mail.gmail.com>
 <CAGb2v67O-WqXdA9W-YTV-q9mKz23G3-eFNRJSoVGn07TSXF-hQ@mail.gmail.com>
 <CAPsebg7j14Znh2EMOKE2WDRpHNOCpTrcmLCY0j6diNVZymMA_w@mail.gmail.com> <CAPsebg6+xPs9uJ=Ct4e0tpiqNggz54CD655uem6ukLBaV7tv5Q@mail.gmail.com>
In-Reply-To: <CAPsebg6+xPs9uJ=Ct4e0tpiqNggz54CD655uem6ukLBaV7tv5Q@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Aug 2026 18:25:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v67JBuwXHJ0d_hdw6uOAFnXpbVYw_G5EzZ1yzbrNkYeJzA@mail.gmail.com>
X-Gm-Features: AcwNN1Wy33LPKiMRUiG0BCHjmPnuj-jTWqfzONDeOKZLLhUbnz_ZvQYGxPdB2wA
Message-ID: <CAGb2v67JBuwXHJ0d_hdw6uOAFnXpbVYw_G5EzZ1yzbrNkYeJzA@mail.gmail.com>
Subject: Re: country BD (Bangladesh) entry: update to current BTRC allocations
 (2.4/5/6 GHz)
To: Nahid Hasan <nahidhasan12391@gmail.com>
Cc: wireless-regdb@lists.infradead.org
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

On Mon, Aug 24, 2026 at 6:02=E2=80=AFPM Nahid Hasan <nahidhasan12391@gmail.=
com> wrote:
>
> Hi,

Please split your paragraphs with empty lines. Please format them in
plain text mode. The mailing list does not accept HTML, and any format
you do in rich text mode is lost. This makes your response very hard
to read.

> Thank you for your patience and for pointing out the inaccuracies in
> the previous references. I have carefully reviewed the official
> "Bangladesh Spectrum Master Plan" (published by ITU in 2015) and
> cross-referenced it with current BTRC guidelines to provide the exact
> technical specifications you requested.

> 1. 5 GHz Segments (36-64, 100-144, 149-165):
> The ITU Bangladesh Spectrum Master Plan (2015) addresses these bands
> in Section 2.3.6 (Short Range Devices).=E2=80=A2Reference: ITU Bangladesh
> Spectrum Master Plan (2015), Section 2.3.6, Page 43-45.=E2=80=A2Power Lim=
it:
> Page 43 states that Short Range Devices (SRDs), which explicitly
> includes "Wireless LAN" (WLAN), typically operate with power "100mW
> and below" (20 dBm EIRP).=E2=80=A2Band 5.8 GHz (149-165): Table 2.12 (Pag=
e 44)
> lists 5725 =E2=80=93 5875 MHz as available for RLAN/ISM.

That is not a valid limit. It is simply giving the definition of SRD.

The document also says:

> SRDs are allowed to operate without the need for a licence but some
> form of equipment certification or type approval is usually required

What I need is the requirements of the equipment certification or type
approval.

> Bands 5.1 GHz & 5.4 GHz (36-64, 100-144): Page 45 (Subsection 2.3.6)
> explicitly identifies 5150 =E2=80=93 5350 MHz and 5470 =E2=80=93 5725 MHz=
 for Wireless
> LAN use. It refers to the regulatory authority's document:
> "Instructions for providing service through 2.4 and 5.7 GHz band in
> Bangladesh" for specific technical parameters.

OK. So provide the document as reference. It needs to specify the power
limits and any other restrictions for each band.

> 2. 6 GHz Segment (5925-6425 MHz):
> The BTRC Circular No. 14.32.0000.402.45.231.24.116 (dated 15 September
> 2024) authorizes this band on a "shared basis" for
> Wi-Fi/IoT/WLAN.=E2=80=A2Technical Limitation Justification: While the cir=
cular
> authorizes the band, BTRC technical standards for SRDs follow the
> Asia-Pacific Telecommunity (APT) harmonisation framework. Bangladesh
> is a member of APT and aligns its SRD regulations with
> APT/AWG/REP-07.=E2=80=A2Proposed Limit: 23 dBm EIRP (Low Power Indoor - L=
PI).
> This is the standard harmonised limit for the 5925-6425 MHz range in
> the Asia-Pacific region, ensuring non-interference with primary
> services in the shared band.

APT/AWG/REP-07 is a survey of the regulations of various Asia-Pacific
regions. It is by no means a rule or a recommendation.

> Revised Proposed Entry for BD:
> country BD: DFS-JP
>  (2402 - 2482 @ 40), (20)
>  (5150 - 5350 @ 80), (20), DFS
>  (5470 - 5725 @ 160), (20), DFS
>  (5725 - 5875 @ 80), (20)
>  (5925 - 6425 @ 160), (23)
>
> Note: I have adjusted all 5 GHz power limits to 20 dBm (100mW) to
> strictly match the "100mW and below" text on Page 43 of the Master
> Plan, ensuring the most conservative and verifiable approach for the
> kernel database.
> Official Source URL:
> https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Publ=
ications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%20p=
lan%20-%20Published.pdf
>
> I hope these specific page and section references meet the
> requirements for inclusion.

Unfortunately it doesn't. You are misinterpreting the documents.

FYI the two other submitters have offered to write the BTRC for
clarification. I suggest that you wait for progress on their fronts.


ChenYu

> Regards,
> Nahid Hasan
>
> On Mon, Aug 24, 2026 at 2:41=E2=80=AFPM Nahid Hasan <nahidhasan12391@gmai=
l.com> wrote:
> >
> > Hi,
> > Thank you for the feedback. To clarify, the proposed update covers the
> > full range of 5 GHz and 6 GHz bands as authorized by the BTRC. Below
> > are the specific power limit (EIRP) references for each segment,
> > including the lower 5 GHz bands.
> >
> > 1) 5150 - 5350 MHz (channels 36-64)The lower 5 GHz band is authorized
> > for indoor use in Bangladesh. The technical parameters align with
> > ITU-R M.1450-5, as formally adopted in the national spectrum
> > framework.=E2=80=A2Reference: ITU Bangladesh Spectrum Master Plan (Publ=
ished
> > 2021), Section 5.3.3, Table 5.2 "Technical Parameters for
> > WLAN/RLAN".=E2=80=A2Limit: 200 mW (23 dBm) EIRP.=E2=80=A2Source URL:
> > https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Pu=
blications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%2=
0plan%20-%20Published.pdf
> > (Page 42)
> >
> > 2) 5470 - 5725 MHz (channels 100-144) and 5725 - 5850 MHz (channels
> > 149-165)These bands are allocated for both indoor and outdoor use with
> > higher power limits under DFS requirements for the
> > mid-band.=E2=80=A2Reference: ITU Bangladesh Spectrum Master Plan (2021)=
, Table
> > 5.2.=E2=80=A2Limits:=E2=80=A25470 - 5725 MHz: 1 W (30 dBm) EIRP (DFS re=
quired).=E2=80=A25725 -
> > 5875 MHz: 1 W (30 dBm) EIRP.=E2=80=A2Source URL:
> > https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Pu=
blications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%2=
0plan%20-%20Published.pdf
> > (Page 42)
> >
> > 3) 5925 - 6425 MHz (6 GHz channels 1-97)Approved for "shared use" in
> > September 2024. Technical specifications follow the APT (Asia-Pacific
> > Telecommunity) framework.=E2=80=A2Reference: BTRC Circular No.
> > 14.32.0000.402.45.231.24.116 (15 September 2024).=E2=80=A2Limit: 23 dBm=
 EIRP
> > (Low Power Indoor - LPI).=E2=80=A2Source URL:
> > https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d=E2=80=A2Dire=
ct PDF:
> > https://objectstorage.ap-dcc-gazipur-1.oraclecloud15.com/n/axvjbnqprylg=
/b/V2Ministry/o/office-btrc/2024/12/18337854ab6c487fa749464c7672c8a8.pdfUpd=
ated
> > Proposed Entry for BD:country
> > BD: DFS-JP
> >  (2402 - 2482 @ 40), (20)
> >  (5150 - 5350 @ 80), (23), DFS
> >  (5470 - 5725 @ 160), (30), DFS
> >  (5725 - 5850 @ 80), (30)
> >  (5925 - 6425 @ 160), (23)
> >
> > These values are consistent with official BTRC notices and the
> > ITU-published National Spectrum Master Plan for Bangladesh.
> >
> > Best Regards
> > Nahid Hasan
> >
> >
> >
> > On Mon, Aug 24, 2026 at 10:37=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org>=
 wrote:
> > >
> > > Hi,
> > >
> > > On Fri, Aug 21, 2026 at 5:08=E2=80=AFAM Nahid Hasan <nahidhasan12391@=
gmail.com> wrote:
> > > >
> > > > Hello,
> > > >
> > > > I would like to propose an update to the "country BD" entry in the
> > > > wireless-regdb database. The current entry only allows 2.4 GHz and =
a
> > > > narrow slice of the 5.7 GHz band, while the regulator (BTRC, Bangla=
desh
> > > > Telecommunication Regulatory Commission) has since approved much wi=
der
> > > > allocations. This outdated entry means that smartphones sold in
> > > > Bangladesh (SIM MCC 470) cannot see or use 5 GHz channels 36-144 or=
 any
> > > > 6 GHz channel, even though these are officially permitted.
> > > >
> > > > Current entry (db.txt, line 224 as of wireless-regdb 2026-xx-xx):
> > > >
> > > > country BD: DFS-JP
> > > > (2402 - 2482 @ 40), (20)
> > > > (5735 - 5835 @ 80), (30)
> > > >
> > > > Proposed replacement, based on the regulator's National Frequency
> > > > Allocation Plan and the BTRC circular dated 15 September 2024 which
> > > > approved 5925-6425 MHz for unlicensed Wi-Fi/IoT/WLAN use:
> > > >
> > > > country BD: DFS-JP
> > > > (2402 - 2482 @ 40), (20)
> > > > (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > > > (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> > > > (5725 - 5850 @ 80), (30)
> > > > (5925 - 6425 @ 160), (23)
> > > >
> > > > Justification for each block:
> > > >
> > > > 1) 2.4 GHz (2402 - 2482 @ 40), (20)
> > > > No change; matches the long-standing SRD/ISM allocation of 2400-248=
3.5
> > > > MHz.
> > > >
> > > > 2) 5150 - 5350 MHz (channels 36-64), (20) dBm, NO-OUTDOOR, AUTO-BW
> > > > Allocated in the Bangladesh NFAP. Indoor-only with 20 dBm EIRP foll=
ows
> > > > the ETSI-style practice already used in the region (as in DFS-JP).
> > >
> > > Please provide reference with power limit numbers.
> > >
> > > > 3) 5470 - 5725 MHz (channels 100-144), (20) dBm, DFS, AUTO-BW
> > > > Allocated in the NFAP with radar-detection (DFS) requirement. A 60
> > > > second CAC (Japan-style DFS, already selected for BD) is consistent=
.
> > >
> > > Please provide reference with power limit numbers.
> > >
> > > > 4) 5725 - 5850 MHz (channels 149-165), (30) dBm
> > > > No change to the current entry, only extended from 5835 to 5850 MHz=
 to
> > > > match the NFAP allocation of 5725-5875 MHz (the upper part, 5850-58=
75,
> > > > is omitted conservatively since it requires pre-authorization for
> > > > commercial equipment; can be added once the regulator clarifies).
> > > >
> > > > 5) 5925 - 6425 MHz (6 GHz channels 1-97, up to 160 MHz), (23) dBm
> > > > BTRC circular dated 15 September 2024 approved 5925-6425 MHz for
> > > > Wi-Fi/IoT/WLAN on a shared basis. (23) dBm EIRP follows the conserv=
ative
> > > > indoor-oriented approach used by neighboring regulators. 320 MHz
> > > > (802.11be) is NOT included since the circular does not explicitly
> > > > authorize the 320 MHz channel width.
> > >
> > > You need to provide power limit references for Bangladesh, not neighb=
ouring
> > > regions.
> > >
> > > > References:
> > > >
> > > > - BTRC circular approving 5925-6425 MHz for Wi-Fi/IoT/WLAN (15 Sep =
2024):
> > > >   https://btrc.gov.bd/site/notices/939916e8-a89a-4e3b-aa75-35a0a217=
2f59/
> > > > - Bangladesh National Frequency Allocation Plan (ITU-published
> > > >   Spectrum Master Plan):
> > > >   https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Docume=
nts/Publications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20ma=
ster%20plan%20-%20Published.pdf
> > > > - Wi-Fi Alliance, regulations enabling 6 GHz Wi-Fi (BD entry):
> > > >   https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> > > > - Current BD entry in db.txt (kernel.org):
> > > >   https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-reg=
db.git/plain/db.txt
> > > >
> > > > Practical impact: With SIM MCC 470, Android and iOS devices apply t=
he
> > > > BD regulatory domain. The current narrow entry hides all 6 GHz
> > > > channels and 5 GHz channels 36-144 from these devices in Bangladesh=
,
> > > > even on Wi-Fi 6/6E/7 routers, forcing fallback to 802.11ac on
> > > > 5 GHz. Updating this entry would restore access to the channels the
> > > > regulator already permits.
> > > >
> > > > I am not a BTRC official; the regulator has not submitted this upda=
te
> > > > itself, so I am proposing it on behalf of affected users, citing th=
e
> > > > regulator's published circular and allocation plan above. Please le=
t me
> > > > know if an official letter from BTRC is required before merging, an=
d I
> > > > will forward this request to the commission.
> > >
> > > A reference with the band and power limits, as well as any other
> > > restrictions like DFS or TPC (andif TPC is required, what is the limi=
t
> > > if TPC is not implemented) needs to be provided. We cannot put random
> > > numbers into the database without justification.
> > >
> > > The BRTC circular only says that the band is allowed. It does not pro=
vide
> > > power limits.
> > >
> > > The allocation plan only gives bands, and they are quite coarse. And =
for
> > > 5GHz, it says they are currently allocated to ISPs. It is implied tha=
t
> > > a license is required.
> > >
> > >
> > > Thanks
> > > ChenYu
> > >
> > > > Thank you for your time and work on this database.
> > > >
> > > > Best regards,
> > > > Nahid Hasan
> > > > Dhaka, Bangladesh
> > > > nahidhasan12391@gmail.com
> > > >

