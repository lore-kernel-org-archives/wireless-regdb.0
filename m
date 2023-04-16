Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-ID:Cc:From:To:Date:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=QxmIWLbX0xgMgCjU6RnE70D0yZS4vhc77sB92j5iczE=;
 b=QKuzVo3JyqTJulG4G2gYExQrC7
 frv3L3laQMY83hTiDF8qaDQlkcjyvP3EDO0iHqAoVDbabUa8L3wwCNG3/+j6PbuBLdvl7HWMusVaG
 hhFbJrGiWg1SQb3Ih2/qIgt6TEc8ozKBHkj77iiuLupZnaGR7OKn4WY8euzQHArKg0W3uTNbCprr6
 xbgr9N+4dYX4nYjga6l28kb/yv1XfJC8yFn/hly1b1o3HPLjuapD6L4lAfLxzU+XMg06bvyMPwhSH
 VDG+5QBwl2rnxn9aLGlNIYzc3jFPvoJtkt05ZQoUT5xP8OIFTqWSpFfHUflC3aZ1MHbrEpdmSeXAK
 e5S3j0gA==;
Received: from mail-40130.protonmail.ch ([185.70.40.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po51S-00E4zI-0q
	for wireless-regdb@lists.infradead.org;
	Sun, 16 Apr 2023 16:14:41 +0000
Date: Sun, 16 Apr 2023 16:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1681661672; x=1681920872;
	bh=K5ZpTZy0ayCIxqSzkxGvVHvMjugVv36awRk0TukWy6w=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=OeLEWC/G4eJpdHgSeTxarLkRZFx314dS4YYhSRhr5w4Mobj4vAAOYDtk/kDEczRzJ
	 JyfYhPx1diPO0/av3qcQO+//vZvtbvlD5zSM1+OojKVteuwZ9vCgXY+5oPMgvOU0Sq
	 7Ba5E2pDPNwOzmJA+j7NaMkfrmxqs6ZH0a6uNuCDgIBUQ1Qp7JIMe15mf2eUcvSCBe
	 vdUd9Atq8GvcLiWbcF9dj8179VL6u4UwDnahJxZfvVCmyrMmY7+YKZWNPGo8p5j7/+
	 xoz7iptxdcGktUdqMs2CNNS2gkcP4l6uGxPYlQsO05ZSw+aNEnL4Zr+QEju94wtz6z
	 G7ApdwsbC0IFg==
From: "tavio.wong" <tavio.wong@proton.me>
Message-ID: <NeFXk9-juFCkXqi3wUp3XOkxnDatiAKWWL5J2ZS41PYOmza3HYbm0XNT3sF2A0ZgaTucYc_71jXpG7DTpoZqJdo6XqYx_VlZgi8Xibr9WZI=@proton.me>
In-Reply-To: <ZDs6oG9jbKnJIDBS@ubuntu-x1>
References: 
	 <oiVeDD95tMcpWN4ynhZfWbX0idjaGq3ibft2obzq-RSMVptQ3TncwBf_kcekWctED_IGNRx3BmIACchzsrEcSwH1tcfr3jMRP2S1egcTCpY=@proton.me>
	 <ZBnlfZXMxxhfxOSD@do-x1extreme>
	 <6r700jK10O2cquA_KXGtCw4lJFqxCnyvoY_1qcTfCcY-v0ncai7qKGIP4jAGBWeK2A8PoGKGtDDMxWhNP4S2oleHRvAEINXQ2BnP1aUM6KI=@proton.me>
	 <ZDs6oG9jbKnJIDBS@ubuntu-x1>
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


On Sunday, April 16th, 2023 at 8:00 AM, Seth Forshee <sforshee@kernel.org> wrote:
> On Wed, Mar 22, 2023 at 03:14:41PM +0000, tavio.wong wrote:
> 
> > Thanks for the feedback.
> > 
> > I have adjusted the rules as follows based on your suggestions and further research on FCC rules:
> > 
> > country HK: DFS-ETSI
> > (2400 - 2483.5 @ 40), (30)
> > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > (5470 - 5725 @ 160), (24), DFS
> > (5725 - 5850 @ 80), (30)
> > 
> > 1. The ranges have been adjusted to align with HK regulations.
> > 
> > 2. For 2400-2483.5 MHz, max power is set to 1 W (30 dBm) based on [1] 47 CFR 15.247(b)(3).
> > 
> > 3. For 5470-5725 MHz, max power is set to 250 mW (24 dBm) based on [2] 47 CFR 15.407(a)(2).
> > 
> > 4. For 5725-5850 MHz, max power is set to 1 W (30 dBm) based on [3] 47 CFR 15.407(a)(3)(i).
> > 
> > 5. 5725-5730 MHz (Channel 144) is already covered by the last range (5725-5850 MHz) so no changes are necessary.
> > 
> > I have also cross-checked the limits to make sure they don't exceed those in the rules for US. The only difference in limits is in 5250-5350 MHz where HK regulations further restrict it to 200 mW (23 dBm).
> 
> 
> Since explicit power limits are given I think we should be able to use
> those. The reference to the US rules probably refers to other
> requirements. So for 3 we can use 27 dBm and for 4 we can use 36 dBm.

OK.

> 
> > One last suggestion: I noticed 6 GHz band is allowed for outdoor use at a max of 14 dBm (Section 3.2 of [4]) though it's only for licensed devices. Can it also be added to the rules as below?
> > (5925 - 6425 @ 160), (14)
> 
> 
> Yes, we could do it this way, or use the 24 dBm limit with NO-OUTDOOR.

I guess I will leave it this way for now so that the band is usable in both indoor and outdoor settings.

Based on the latest discussion, I have updated the rules as below:

# Source:
# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf (2.4 GHz and 5 GHz)
# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6 GHz)
country HK: DFS-ETSI
        (2400 - 2483.5 @ 40), (36)
        (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
        (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
        (5470 - 5725 @ 160), (27), DFS
        (5725 - 5850 @ 80), (36)
        (5925 - 6425 @ 160), (14)

If the rules look fine to you, I will try to submit a patch for this change.

Thanks for your time and your help!

Regards,
Tavio

> 
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

