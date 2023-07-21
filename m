Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=sqxOqVW/EoNlEgP8mMMqiA3CH7ce3lSx4420noF+vbQ=;
 b=qfMp/HnGKFX8Gi
 EP9RjquNBcs84/+wjuL9amGe5OKwltDmo4CHdLFN1+J0s38ITCpvd1RUD7vYF747MAbtEGz32I7J4
 Qwbx8i9lY/prbYsiVNv2SuK8rxGtXcOXSq5r25EjWTXTwi0YPg9dGUJvFZx6iExgPpLeYqQB7uF7U
 XT+WxpwAse0ausz7vydCYrOOysr0nHFs0Qo6t4O7e8ieGLPTChV8HVebXHRpSxM4j698CjAmYz3kp
 V9JkF9s0JGYtuKDitTHfEXb9J0VsjLDS9XnxYV3Jwn7XVjWLm6jP40DxqsYNR22MEYFKRnCOP0mKq
 4GwymjCSVlGf2FasOLTg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMyGa-00FEjp-3B
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jul 2023 22:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689977187;
	bh=ukK4C1TtAv03N/zjsKL30SJnWU+iFwxZPcWTZ+tEisk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EavCtw/smSdmVO86bB+TfVwszDVP74Qj1P6cLsIph3Ev//iQeNf4zW+EAoU98DQu/
	 qs5iSVgumIQXbfUmZ/SmqdueveIWcJfP1i3cptT7DNcyXXKSqPxfE0HkkEuZLivsw1
	 uvS1fso2pPk4VKLSbF6ZQ3ON8JDTLgix9LjFyTzJNX5ZOoxYNDvjU7aBDAylCdN0fR
	 jjK34myhwc+l1lJ2Ip1LRzIKS8/KnVm9YZP7N3nhA4pzNtIQ+ZunTgteutD01XyD7O
	 Y8auotTafNx58IYfQ8J8P5PDaynvBB14pg6JzcfUBuJsRjnUnWslr/b8Cu5cqHbtCn
	 NB7GjquCEsJzw==
Date: Fri, 21 Jul 2023 17:06:26 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZLsBYjmM3xxFxG6l@ubuntu-x1>
References: <20230716225604.1d5a136a@vorticon.teln.shikadi.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230716225604.1d5a136a@vorticon.teln.shikadi.net>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Australia (AU) for June 2023
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
To: Adam Nielsen <a.nielsen@shikadi.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Jul 16, 2023 at 10:56:04PM +1000, Adam Nielsen wrote:
>  - Update legislation link from March 2022 version to June 2023.
>  - Add comments for each frequency range referring back to legislation.
>  - Switch units from dBm to mW to match values listed in legislation.
>  - Allow 5850-5875 at low power, as this has always been permitted.
>  - Combine 5150-5350 bands to permit a 160 MHz channel.
> 
> Signed-off-by: Adam Nielsen <a.nielsen@shikadi.net>
> ---
> 
> Hi all,
> 
> Just a few minor changes for AU.  I have included (5150 - 5350 @ 160) which
> overlaps two existing bands, however I am not sure if this is the correct way
> to do it.  From what I gather, having the two bands listed separately (items
> 61 and 62 in the patch below) would prevent a single 160 MHz channel from
> being spread across both bands.  I figure adding another entry that covers
> both frequency ranges (with the most restrictive limitations) would permit
> the 160 MHz channel to be used, however please correct me if this is wrong.

Unfortunately this does not work. However, with AUTO_BW I believe that
the kernel does allow a larger bandwidth when it spans adjacent
channels, so it probably isn't necessary.

Otherwise this mostly looks good, but a few changes are needed. I added
comments below.

> 
> I added a bunch of comments pointing back to the relevant section of the
> legislation document as I found it a bit of a challenge to work out where
> each entry mapped back to.  So hopefully this will make it easier for the
> next person to work out where the rules are coming from.
> 
> If there are any other issues with the patch let me know.
> 
> Cheers,
> Adam.
> 
>  db.txt | 46 +++++++++++++++++++++++++++++++++++++---------
>  1 file changed, 37 insertions(+), 9 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index ef4e609..d0b7ec6 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -124,20 +124,48 @@ country AT: DFS-ETSI
>  	(57000 - 66000 @ 2160), (40)
>  
>  # Source:
> -# https://www.legislation.gov.au/Details/F2022C00281
> +# 'Item' in the comments below refers to each numbered rule found at:
> +# https://www.legislation.gov.au/Details/F2023C00524
>  # Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
>  # The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
>  # In order to allow 80MHz operation between 5650-5730MHz the upper boundary
>  # of this more restrictive band has been shifted up by 5MHz from 5725MHz.
>  country AU: DFS-ETSI
> -	(2400 - 2483.5 @ 40), (36)
> -	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> -	(5250 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW, DFS
> -	(5470 - 5600 @ 80), (27), DFS
> -	(5650 - 5730 @ 80), (27), DFS
> -	(5730 - 5850 @ 80), (36)
> -	(5925 - 6425 @ 160), (24), NO-OUTDOOR
> -	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
> +	# Item 58
> +	(915 - 928 @ 4), (1000 mW)
> +	(920 - 928 @ 8), (1000 mW)

I'm not sure if this is intentionally overlapping, or if 915-928 MHz is
a typo and you meant 915-920 MHz. Either way, we can't have ranges
overlapping like this.

> +
> +	# Item 59
> +	(2400 - 2483.5 @ 40), (4000 mW)
> +
> +	# Item 61
> +	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +
> +	# Item 62 (200 mW allowed if TPC is used)
> +	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
> +
> +	# Combine the above two bands to get a 160 MHz channel.
> +	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS

As stated above, this rule needs to be removed.

> +
> +	# Item 63(a) (1000 mW with TPC)
> +	(5470 - 5600 @ 80), (500 mW), DFS
> +
> +	# Item 63(b) (1000 mW with TPC)
> +	# The end is 5725 but we borrow 5 MHz from the following less restrictive band
> +	# so we can get an 80 MHz channel.
> +	(5650 - 5730 @ 80), (500 mW), DFS
> +
> +	# Item 60
> +	(5725 - 5850 @ 80), (4000 mW)

Please adjust this up to 5730 MHz to not overlap with the rule above it.

> +
> +	# Item 22
> +	(5850 - 5875 @ 40), (25 mW)

You can't have a rule whose bandwith is greater than the range. And I'd
think you'd want to add AUTO_BW to this and the previous range to allow
use of channel 169, etc.

> +
> +	# Item 63AA (25 mW if outdoors)
> +	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
> +
> +	# Item 65
> +	(57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR

I'm surprised at 20W since it also specifies compliance with FCC rules
which as a max EIRP of 10W (though it does give a peak power emission of
20W). But I guess that's what it says.

Thanks,
Seth

>  
>  country AW: DFS-ETSI
>  	(2402 - 2482 @ 40), (20)
> -- 
> 2.40.0

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

