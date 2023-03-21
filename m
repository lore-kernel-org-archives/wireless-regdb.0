Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ikWnGh4cqZC9cx2lY7cKpJsJ3JplvH5rwZUZOoZXuoY=;
 b=xUXA5VCJck6nFd
 /lWxCH52JvurmuqhOBAgY6Nd6uiXlsnsEjexdOSeQoGCpeA2IpM9TLhFy3Ib78s/UESVrg2ZCkFat
 dgmV5OWq97R/jQS6kPyuRs+4fjMyqvj8torYAQksW2BtHtan6ULFp62BN2MEHUhtjWaOhe/B16jz1
 xm88orcZpn5vZfYLMblpigrbECZ3ZHQue/9NS1y+sXrPpf2EYj3wofmWCgAv3zidlHYpIFdr+oZLH
 uuDtqm2kPZTn1YP+34FYFBdZnkZ8nMVoKNtHBfTqdhBn2gTjAXIgQNpAuZ4ykRQlApiUB+JDTRiJS
 rVcbytVtDLkPM1XhHPzQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pefXE-00DBSp-07
	for wireless-regdb@lists.infradead.org;
	Tue, 21 Mar 2023 17:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679418750;
	bh=w4alAs2y8lQn3I5aM6m1XfMSqpLZRI1ZSPSv3/9OGP8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bY6T4O9r0mECTWyNzszjwa3aGZX3JbK4K0pbrZavlu/Dh8Rzv09hxG6RKaRnrftKK
	 LL9V1EF8nPMrBfJA4mQGxNS/YzBiLvZ4zdBcEZ7eopV+dtuZGiRFNUM7rV+gMvLRP0
	 hMd2FApUc6/y5DxehnC3DXy6mQLj/3bDi89ozXRPsT/u0kg8b1nKtZjQJP+RjUp7Fl
	 3hJjFCX5wpPVyFsbMTBhea7YnA5Mm1bTDKYJm0lKh9huAslCZQEQ2CXv+8jBdHIgIY
	 Xv/pH1phzl8T4E0tMNxXH+wTD+hR5N66kLZN0rsZeYHKqL84hNyrZZX3VQp6teXPVc
	 /pjDU5OU0H6BQ==
Date: Tue, 21 Mar 2023 12:12:29 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZBnlfZXMxxhfxOSD@do-x1extreme>
References: 
	 <oiVeDD95tMcpWN4ynhZfWbX0idjaGq3ibft2obzq-RSMVptQ3TncwBf_kcekWctED_IGNRx3BmIACchzsrEcSwH1tcfr3jMRP2S1egcTCpY=@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <oiVeDD95tMcpWN4ynhZfWbX0idjaGq3ibft2obzq-RSMVptQ3TncwBf_kcekWctED_IGNRx3BmIACchzsrEcSwH1tcfr3jMRP2S1egcTCpY=@proton.me>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "tavio.wong" <tavio.wong@proton.me>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Mar 15, 2023 at 02:37:16PM +0000, tavio.wong wrote:
> Hello,
> 
> According to section 2.1(b) of [1], the allowed peak output power in different bands is higher than currently defined in db.txt. I see that the rules for HK have not been updated since 2014. Since I don't understand sections 2.2 and 2.3, is there any reason for limiting the output power other than that the information is outdated?
> 
> If not, I propose the rules for HK be updated as follows [section 2.1(a) also requires that 5.15-5.35 GHz be restricted to indoor use]:

Thanks for the proposed updates. I have a few adjustments to suggest,
below.

> country HK: DFS-ETSI
> 	(2402 - 2482 @ 40), (36)

Here and in other rules I'd suggest adjusting the ranges based on the
regulations rather than aligning them based on wifi channels. So here
use 2400 - 2483.5 instead, etc.

> 	(5170 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> 	(5250 - 5330 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> 	(5490 - 5710 @ 160), (30), DFS

This range actually extends to 5725 MHz. But since the subsequent range
has looser restrictions, we can do what we've done with some other
countries and extend the rule to 5730 MHz to allow use of channel 144.

The document references the technical requirements from the FCC rules
for 5150-5350 and 5470-5725 MHz, which requires TPC when the EIRP is
over 500 mW. The 5250-5350 MHz rule should be okay, but the 5470-5725
MHz rule needs to have the max EIRP lowered to 500 mW (27 dBm).

Thanks,
Seth

> 	(5735 - 5835 @ 80), (36)
> 
> Thank you for your consideration.
> 
> [1] https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> 
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=7f7a9f7bc6011b072b5427eced1ff19261764e95#n751
> 
> Best regards,
> Tavio
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
