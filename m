Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ept0ZiNzqVOGnsAZgXGM3JihzJfhmwAXA3yunv/1yds=;
 b=Ye+hRjOfJEHSwc
 NYvHcGAF+6bVZNZoQP+lZswudJLlPuJ3upclpYY82JncmaU8UQTo75dkIosiWy6rR+nY2jl5BdDWU
 M/AZqHjGQyxnrLQQvKIGQAZ6TMxmAuVsBc9dgH4jydPLYvyDRDoxamb4e1kf9UrIb+qWElaJQZKsO
 YrfL4rROrpSC1HZT6dlSv0wfbPlIWQslWavY/a6b23/gyVw6zETjznXEGDcm7Uc27L/HtB5UouPSc
 ZROcFM+iQ0FFjO3hGIlwCuZw/dp9BonjwrkoAWEapaOCcGWP18SSShjglS2OjDAR/CcDr0yJJJfNj
 vRsAZFXeauscyX7OCYHw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnpop-00Ct70-1t
	for wireless-regdb@lists.infradead.org;
	Sun, 16 Apr 2023 00:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681603233;
	bh=CVdZs0MT+xGAks/nEDOst6GaoVVT0hv3SqAneERMTDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IwURzOOxlt05ZxAtEAx9Hy8JrHvNAwxFJqNi4GOM1BqFSroTcR0ZcIbM2q+Ko57Tr
	 /KCBGNwdpVZgLnH6Lx5/U/YUGmICDR9GIv+sZHMkrzIWvHXfnD1+AjiiEag3gL44kI
	 al621CRNMxVCa6pCnN76kNmQDEyxO8/r51x8ZD+JGD7j6dPyWJTcKbLbdVMXCdUX5k
	 E94o4pmpAXw1w5cX9ScaFem/5OhNVOfeHbGtpivx7Elnd86os/36/GmQP4Eto8yrjF
	 7NOCbuwba011Zy/janN8WOhfS0lB1UIR89d4STw0Y3JLfO5086nP41kVmL7kx7awYk
	 mRcsX6k0qS2mw==
Date: Sat, 15 Apr 2023 19:00:32 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZDs6oG9jbKnJIDBS@ubuntu-x1>
References: <oiVeDD95tMcpWN4ynhZfWbX0idjaGq3ibft2obzq-RSMVptQ3TncwBf_kcekWctED_IGNRx3BmIACchzsrEcSwH1tcfr3jMRP2S1egcTCpY=@proton.me>
 <ZBnlfZXMxxhfxOSD@do-x1extreme>
 <6r700jK10O2cquA_KXGtCw4lJFqxCnyvoY_1qcTfCcY-v0ncai7qKGIP4jAGBWeK2A8PoGKGtDDMxWhNP4S2oleHRvAEINXQ2BnP1aUM6KI=@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6r700jK10O2cquA_KXGtCw4lJFqxCnyvoY_1qcTfCcY-v0ncai7qKGIP4jAGBWeK2A8PoGKGtDDMxWhNP4S2oleHRvAEINXQ2BnP1aUM6KI=@proton.me>
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

On Wed, Mar 22, 2023 at 03:14:41PM +0000, tavio.wong wrote:
> Thanks for the feedback.
> 
> I have adjusted the rules as follows based on your suggestions and further research on FCC rules:
> 
> country HK: DFS-ETSI
> 	(2400 - 2483.5 @ 40), (30)
> 	(5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> 	(5470 - 5725 @ 160), (24), DFS
> 	(5725 - 5850 @ 80), (30)
> 
> 1. The ranges have been adjusted to align with HK regulations.
> 
> 2. For 2400-2483.5 MHz, max power is set to 1 W (30 dBm) based on [1] 47 CFR 15.247(b)(3).
> 
> 3. For 5470-5725 MHz, max power is set to 250 mW (24 dBm) based on [2] 47 CFR 15.407(a)(2).
> 
> 4. For 5725-5850 MHz, max power is set to 1 W (30 dBm) based on [3] 47 CFR 15.407(a)(3)(i).
> 
> 5. 5725-5730 MHz (Channel 144) is already covered by the last range (5725-5850 MHz) so no changes are necessary.
> 
> I have also cross-checked the limits to make sure they don't exceed those in the rules for US. The only difference in limits is in 5250-5350 MHz where HK regulations further restrict it to 200 mW (23 dBm).

Since explicit power limits are given I think we should be able to use
those. The reference to the US rules probably refers to other
requirements. So for 3 we can use 27 dBm and for 4 we can use 36 dBm.

> 
> One last suggestion: I noticed 6 GHz band is allowed for outdoor use at a max of 14 dBm (Section 3.2 of [4]) though it's only for licensed devices. Can it also be added to the rules as below?
> 	(5925 - 6425 @ 160), (14)

Yes, we could do it this way, or use the 24 dBm limit with NO-OUTDOOR.

Thanks,
Seth

> 
> Thanks again for your time.
> 
> [1] https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-C/subject-group-ECFR2f2e5828339709e/section-15.247#p-15.247(b)(3)
> 
> [2] https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-E/section-15.407#p-15.407(a)(2)
> 
> [3] https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/subpart-E/section-15.407#p-15.407(a)(3)(i)
> 
> [4] https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf
> 
> Best Regards,
> Tavio

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

