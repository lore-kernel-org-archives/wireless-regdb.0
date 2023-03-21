Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=wYsGIgSihVEUzHVA0Lfqpj0I4gfiWQDCU3WUkhwcejg=;
 b=XX/i0gjb3NIWZ/
 gmbrhFyHXa5zf0wRUqTg5e9xX+CxxPxIDHIjf68xP2SGpW5Wg1MKbZGhOizJvP0JHG11gCPYZo6dv
 M78Tbm2z7WyiZRswm5994f7f3qclPRIPJc4sP6PwdodgIoJ36u8Jaz/7O2g6bWd83k08yUNlEYt2v
 jUCcOEq7TTcyWl4WQwD4I0y69J1lXtfedYmO6eKfnch9bGbPWyDlXk3PkgQi/nLYVjwla2fxHYkBV
 43TzjxZY+mMnvfyokDTSysTV0h+Kyleq9VgyqqGvdV4Q0ta4ZRYiMZxBlsEjM708Qwez4gdapK8qm
 kiSjDNs1+PKj5vJZzWNg==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pef0C-00D699-1p
	for wireless-regdb@lists.infradead.org;
	Tue, 21 Mar 2023 16:38:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679416700;
	bh=VzHSJ3wDw8RPr3bKE1Z4z2Rl1ER0wj8SlO/+MEkjCp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xe1rWMladXlqknD/BCWHcxoPdp0+1tdmK+/A6K7NTAyrUqlqt0+AHUsocaTrNm7+g
	 Ca8GGW+5ArLDoD+lrUHBFCrlPJp9Gl8Oo5w9pNs4okbe3v//5Y4h+C9c9Lu0qWdF8t
	 aCk/ovQWLCQRdIlNHDY63WCfx1wmg3QmVVlsaaV321du3d4cjf4wLj5agep59q4OZZ
	 TR/HqRbP2DAKU9n2wcMtJGAgSu7OT2y7LK8oi713h5oewxD3tjRzQjG7XhtbGBmxBL
	 zv5t53Kotm7+gmaDGv2awL58c9ZWDoP/nQuObFOWB2Ia0tnoe7ZxBiOgncLiLaiCmb
	 deVuTS7of7ftA==
Date: Tue, 21 Mar 2023 11:38:19 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZBnde5f7JuORq1PX@do-x1extreme>
References: <CAMPnHXye6EBTix6125NzPrQSitwKikK6b77g=K5t-ihmU11JHg@mail.gmail.com>
 <CAMPnHXy49dSKdiCzeEZ86q3YEEWW=PrfPYwPevA4A2bFBe_sbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMPnHXy49dSKdiCzeEZ86q3YEEWW=PrfPYwPevA4A2bFBe_sbg@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Please correct the regulatory
 rules for India (IN) on 2.4 GHz
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
To: Keshav <the.ridikulus.rat@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Mar 04, 2023 at 05:13:44PM -0600, Keshav wrote:
> Hello,
> 
> I noticed that wireless-regdb db.txt [1] has restricted India's 2.4
> GHz maximum power to only 20 dBm:
> 
> country IN:
>         (2402 - 2482 @ 40), (20)
> 
> However the Official Gazette of Government of India (PDF [3] linked in
> URL [2]) mentions that upto 30 dBm is allowed in the 2.4 GHz band.
> 
> 2.4 GHz Rules for India (IN): Pages 87 to 88 of PDF [3]
> 
> I would like to mention that I am not an expert in this topic. I am
> not sure if there's any other reason to restrict 2.4 GHz for India to
> 20 dBm in the db.txt. I also couldn't find any other official
> Government of India document that restricts the maximum power to 20
> dBm (due to some other reason). Please look into this and correct the
> regulatory rules for India if needed. Thank you.
> 
> Although not the topic of this email, you can also find the 5 GHz
> Rules for India in the same PDF [3] (pages 94 to 97) if interested.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=7f7a9f7bc6011b072b5427eced1ff19261764e95#n853
> 
> [2] https://dot.gov.in/spectrummanagement/gazette-notifications-delicensed-band
> 
> [3] https://dot.gov.in/sites/default/files/Gazette_Notifications.pdf

Sorry for the slow response. I've been attempting to research this as
time allows, but I haven't had a lot of time for it, and the information
is not well organized.

[1] was the most complete summary I found for spectrum use in India. In
particular Annex 1 has a table of GSR numbers relevant for unlicensed
spectrum, which for 2.4 GHz is GSR No. 45(E) [2] and for 5 GHz is GSR
No. 1048(E) [3]. It looks like the document you linked to just bundles
these and other GSRs together, so as far as I can tell the information
you provided looks accurate.

The database stores maximum EIRP, not transmitter output power, so I
think that 36 dBm is the correct value for 2.4 GHz (GSR No. 45(E) shows
an ERP of 36dBm, but based on the maximum transmitter power of 30 dBm I
think this is probably meant to be the EIRP).

The 5 GHz rules look mostly right, except that it looks like 5250-5350
and 5470-5725 MHz both require DFS. They also require TPC, which Linux
doesn't support, but the PSD limit restricts our max EIRP to below the
threshold where TPC is required.

So I think these are the correct rules for India:

country IN:
	(2400 - 2482 @ 40), (36)
	(5150 - 5250 @ 80), (30)
	(5250 - 5350 @ 80), (24), DFS
	(5470 - 5725 @ 160), (24), DFS
	(5725 - 5875 @ 80), (30)

If this looks right to you, I can send the patch to update the rules.

Thanks,
Seth

[1] https://dot.gov.in/sites/default/files/NFAP%202018.pdf
[2] https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
[3] https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

