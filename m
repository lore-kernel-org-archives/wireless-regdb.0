Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=1EkFN7axgRoKFXgT7jsut3CQ2B2r3Zh3VOev2+fBxGg=;
 b=4Eb6JGGwbhHSBn
 KEvIgws6zcQPR8bWWnzX6t2QwLxi/ODSvNgtRROhol2nFCgnSf27ESweMNmmEIPHomL9tV8E9zdaM
 YOFOnAfZJ8AYmQXeDuzUrIFFwok7YOyBvclTIR0Xlc8Ie9AmXy8uM41V8hSr7PVKDNU+DjdWKYs8M
 hQN0gxgwUZVWmP1GYqZDB46IU5g5VWSoq+EUXXZaTIRJtWwFoB6OUqwtlalP/zAi756HjB7eD8E+2
 Mx9GFFhjHv/Mqdm4OmD2SgGGR/5sdB6Xyu6Db0QP20Ok5oPRqe4pW+Y97qQnLU+IFG1TfEIX0Hpsa
 s7pUv48DtVu59ncF+TZQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puDIp-004o6l-0d
	for wireless-regdb@lists.infradead.org;
	Wed, 03 May 2023 14:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683123473;
	bh=Ia4aVYSR3IpxHBIynNQUaL9OR8xcm1S23bWPFZYWR2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pQLYvcMNQRLfLIX8TGdpGojgrBkD5azMsEra7Q6o1/mDodIAcmaS9tuLG8TOmfZzm
	 XDC8yoP2SwShmDmy3i5FS7fkWsauL/jViIwMPqLDU4h8AvamZznDi9wpnxjWSYHfb8
	 bLHQ5tcN42WivOw0zxB79VGZorTAjxmAlLY+EJlVQ7BAHpSCCqvKZiRAI1ABm7lizv
	 uwE7xfV44Wv0OiVGHcmvNXgqIvuGwtMfeT+8Sydyztj09pf6/j/yWAWSC7D3Nu39BO
	 1B7bDpePsXtgJk1zuA4O0fZ9g1hIqnEKV6viLUp90P0zPr8I8mVvtg42NfzjcqGhyS
	 T1ZWVD1mfulJA==
Date: Wed, 3 May 2023 09:17:52 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZFJtEPs4FdaKspwb@ubuntu-x1>
References: <oiVeDD95tMcpWN4ynhZfWbX0idjaGq3ibft2obzq-RSMVptQ3TncwBf_kcekWctED_IGNRx3BmIACchzsrEcSwH1tcfr3jMRP2S1egcTCpY=@proton.me>
 <ZBnlfZXMxxhfxOSD@do-x1extreme>
 <6r700jK10O2cquA_KXGtCw4lJFqxCnyvoY_1qcTfCcY-v0ncai7qKGIP4jAGBWeK2A8PoGKGtDDMxWhNP4S2oleHRvAEINXQ2BnP1aUM6KI=@proton.me>
 <ZDs6oG9jbKnJIDBS@ubuntu-x1>
 <NeFXk9-juFCkXqi3wUp3XOkxnDatiAKWWL5J2ZS41PYOmza3HYbm0XNT3sF2A0ZgaTucYc_71jXpG7DTpoZqJdo6XqYx_VlZgi8Xibr9WZI=@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <NeFXk9-juFCkXqi3wUp3XOkxnDatiAKWWL5J2ZS41PYOmza3HYbm0XNT3sF2A0ZgaTucYc_71jXpG7DTpoZqJdo6XqYx_VlZgi8Xibr9WZI=@proton.me>
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
To: "tavio.wong" <tavio.wong@proton.me>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Apr 16, 2023 at 04:14:19PM +0000, tavio.wong wrote:
> 
> On Sunday, April 16th, 2023 at 8:00 AM, Seth Forshee <sforshee@kernel.org> wrote:
> > On Wed, Mar 22, 2023 at 03:14:41PM +0000, tavio.wong wrote:
> > 
> > > Thanks for the feedback.
> > > 
> > > I have adjusted the rules as follows based on your suggestions and further research on FCC rules:
> > > 
> > > country HK: DFS-ETSI
> > > (2400 - 2483.5 @ 40), (30)
> > > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > > (5470 - 5725 @ 160), (24), DFS
> > > (5725 - 5850 @ 80), (30)
> > > 
> > > 1. The ranges have been adjusted to align with HK regulations.
> > > 
> > > 2. For 2400-2483.5 MHz, max power is set to 1 W (30 dBm) based on [1] 47 CFR 15.247(b)(3).
> > > 
> > > 3. For 5470-5725 MHz, max power is set to 250 mW (24 dBm) based on [2] 47 CFR 15.407(a)(2).
> > > 
> > > 4. For 5725-5850 MHz, max power is set to 1 W (30 dBm) based on [3] 47 CFR 15.407(a)(3)(i).
> > > 
> > > 5. 5725-5730 MHz (Channel 144) is already covered by the last range (5725-5850 MHz) so no changes are necessary.
> > > 
> > > I have also cross-checked the limits to make sure they don't exceed those in the rules for US. The only difference in limits is in 5250-5350 MHz where HK regulations further restrict it to 200 mW (23 dBm).
> > 
> > 
> > Since explicit power limits are given I think we should be able to use
> > those. The reference to the US rules probably refers to other
> > requirements. So for 3 we can use 27 dBm and for 4 we can use 36 dBm.
> 
> OK.
> 
> > 
> > > One last suggestion: I noticed 6 GHz band is allowed for outdoor use at a max of 14 dBm (Section 3.2 of [4]) though it's only for licensed devices. Can it also be added to the rules as below?
> > > (5925 - 6425 @ 160), (14)
> > 
> > 
> > Yes, we could do it this way, or use the 24 dBm limit with NO-OUTDOOR.
> 
> I guess I will leave it this way for now so that the band is usable in both indoor and outdoor settings.
> 
> Based on the latest discussion, I have updated the rules as below:
> 
> # Source:
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf (2.4 GHz and 5 GHz)
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6 GHz)
> country HK: DFS-ETSI
>         (2400 - 2483.5 @ 40), (36)
>         (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
>         (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
>         (5470 - 5725 @ 160), (27), DFS
>         (5725 - 5850 @ 80), (36)
>         (5925 - 6425 @ 160), (14)
> 
> If the rules look fine to you, I will try to submit a patch for this change.

Sorry, just noticed that I hadn't responded.

That looks fine. I'd suggest also slightly tweaking the bands like this:

        (5470 - 5730 @ 160), (27), DFS
        (5730 - 5850 @ 80), (36)

We do this for some other countries so that channel 144 is usable, and
since 5470-5725 is more restrictive than 5725-5850 it doesn't pose any
problems.

Please go ahead and submit a patch!

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

