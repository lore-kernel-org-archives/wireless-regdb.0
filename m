Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-ID:Cc:From:To:Date:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=8QRoSLQx8UnVktqes+06DSxTCw/Zn/FqZ/6rg2mTYvE=;
 b=gqR/mFYBwH2SYqxiHnUIVzcX8S
 DLR8DK4r2aMqepCbNSoBxkmovPbyt7htRErVjI8ypWm5EoFgyR2wlKCTDMJOhGjcZSLB9AF3F8L0J
 8DdH/gj2L9C6sVmM95zRawjI1thIyeV3ZODTJQFrMO1rilE8Scn9kx3xPmkSpb7MvHMZrZ34hwKBU
 gcGLiEGkPI2J9DxoS+vylJjLr/JM2yZ3CvBiamF/wWxI8rOQXdxxWE/ANFA+wjy7UtixSGOTy/CO4
 Z3pENnL8a4JijFNGtMIb+U5RuXN1G2nZKyL15rI+p72FrXuTrEn0rUG9YXFSbAVjrG5+YFCzp7v2U
 7W3SWsMw==;
Received: from mail-4325.protonmail.ch ([185.70.43.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf0Aw-00GSzo-2F
	for wireless-regdb@lists.infradead.org;
	Wed, 22 Mar 2023 15:14:57 +0000
Date: Wed, 22 Mar 2023 15:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=qkugvuto7neozfxwnnhmyipq44.protonmail; t=1679498089; x=1679757289;
	bh=q7JH1SPze3g4uqs39TnqERoKTVulC+gFhr+37s26yC0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=DkxaUCx+Mw7OxhixZEMQ1bRb1JSZwjL8pjp6jq3FGG67UGUpvgWFn6kHeurhXagYg
	 hDToN3hL4G0kojnN6r5dxHd+hjUbiaFwo36XvQNgAFhopIkDaMyZmzBb4dsUzHijXE
	 bt+7y9tTIqG4Pa7gf0rvIHiN5arHTy43sWoBMSsACglNQhFOlcIQlCfs/1XpTEMyNN
	 GR3/se0QtcwZJbQRkdcdH+N/Si7KL3yB0sY4l5Cq+2hbDd6xZApUCsRGW66TkMAhU2
	 wSEkLiAoIZnoZ3tIM1HqTwk1iCMCZSJkuhrk+9PzZedgmLBm7AJdsJv+mJCr0kT+IB
	 fG/Ad9YHttXTQ==
From: "tavio.wong" <tavio.wong@proton.me>
Message-ID: <6r700jK10O2cquA_KXGtCw4lJFqxCnyvoY_1qcTfCcY-v0ncai7qKGIP4jAGBWeK2A8PoGKGtDDMxWhNP4S2oleHRvAEINXQ2BnP1aUM6KI=@proton.me>
In-Reply-To: <ZBnlfZXMxxhfxOSD@do-x1extreme>
References: 
	 <oiVeDD95tMcpWN4ynhZfWbX0idjaGq3ibft2obzq-RSMVptQ3TncwBf_kcekWctED_IGNRx3BmIACchzsrEcSwH1tcfr3jMRP2S1egcTCpY=@proton.me>
	 <ZBnlfZXMxxhfxOSD@do-x1extreme>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] wireless-regdb: Regulatory rules for Hong
 Kong (HK)
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
To: Seth Forshee <sforshee@kernel.org>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Thanks for the feedback.

I have adjusted the rules as follows based on your suggestions and further research on FCC rules:

country HK: DFS-ETSI
	(2400 - 2483.5 @ 40), (30)
	(5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
	(5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
	(5470 - 5725 @ 160), (24), DFS
	(5725 - 5850 @ 80), (30)

1. The ranges have been adjusted to align with HK regulations.

2. For 2400-2483.5 MHz, max power is set to 1 W (30 dBm) based on [1] 47 CFR 15.247(b)(3).

3. For 5470-5725 MHz, max power is set to 250 mW (24 dBm) based on [2] 47 CFR 15.407(a)(2).

4. For 5725-5850 MHz, max power is set to 1 W (30 dBm) based on [3] 47 CFR 15.407(a)(3)(i).

5. 5725-5730 MHz (Channel 144) is already covered by the last range (5725-5850 MHz) so no changes are necessary.

I have also cross-checked the limits to make sure they don't exceed those in the rules for US. The only difference in limits is in 5250-5350 MHz where HK regulations further restrict it to 200 mW (23 dBm).

One last suggestion: I noticed 6 GHz band is allowed for outdoor use at a max of 14 dBm (Section 3.2 of [4]) though it's only for licensed devices. Can it also be added to the rules as below?
	(5925 - 6425 @ 160), (14)

Thanks again for your time.

[1] https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-C/subject-group-ECFR2f2e5828339709e/section-15.247#p-15.247(b)(3)

[2] https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-E/section-15.407#p-15.407(a)(2)

[3] https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-E/section-15.407#p-15.407(a)(3)(i)

[4] https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf

Best Regards,
Tavio

------- Original Message -------
On Wednesday, March 22nd, 2023 at 01:12, Seth Forshee <sforshee@kernel.org> wrote:


> On Wed, Mar 15, 2023 at 02:37:16PM +0000, tavio.wong wrote:
> 
> > Hello,
> > 
> > According to section 2.1(b) of [1], the allowed peak output power in different bands is higher than currently defined in db.txt. I see that the rules for HK have not been updated since 2014. Since I don't understand sections 2.2 and 2.3, is there any reason for limiting the output power other than that the information is outdated?
> > 
> > If not, I propose the rules for HK be updated as follows [section 2.1(a) also requires that 5.15-5.35 GHz be restricted to indoor use]:
> 
> 
> Thanks for the proposed updates. I have a few adjustments to suggest,
> below.
> 
> > country HK: DFS-ETSI
> > (2402 - 2482 @ 40), (36)
> 
> 
> Here and in other rules I'd suggest adjusting the ranges based on the
> regulations rather than aligning them based on wifi channels. So here
> use 2400 - 2483.5 instead, etc.
> 
> > (5170 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > (5250 - 5330 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > (5490 - 5710 @ 160), (30), DFS
> 
> 
> This range actually extends to 5725 MHz. But since the subsequent range
> has looser restrictions, we can do what we've done with some other
> countries and extend the rule to 5730 MHz to allow use of channel 144.
> 
> The document references the technical requirements from the FCC rules
> for 5150-5350 and 5470-5725 MHz, which requires TPC when the EIRP is
> over 500 mW. The 5250-5350 MHz rule should be okay, but the 5470-5725
> MHz rule needs to have the max EIRP lowered to 500 mW (27 dBm).
> 
> Thanks,
> Seth
> 
> > (5735 - 5835 @ 80), (36)
> > 
> > Thank you for your consideration.
> > 
> > [1] https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> > 
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=7f7a9f7bc6011b072b5427eced1ff19261764e95#n751
> > 
> > Best regards,
> > Tavio
> > 
> > _______________________________________________
> > wireless-regdb mailing list
> > wireless-regdb@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

