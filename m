Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=li7gyt8tcZdp4rCbtcq9vnjPpfMfWUDHbB9o/G0gYmQ=;
 b=gs+5yv0Ag3e5Yq
 nGmhZWBfvGKPIbtfgWGJIw53CMdZwvMWBn3qNIJHY4BwNj5ScdmWbaGeXYtAoipWIBJM6i/c/e+iI
 NKoEPo4QoTh4BcB2kFrn1Bvbu36A9jVEQAzE6jpZl5F4KKtykBcHlrh63Fo4cMVjQ/2cj1x1P9DVJ
 VMe3eHdbEB1bHn6zkywkMjt/vC4FUf9zQwqrqzl4manF/A70qG+QunbHEea1JmGbRsksdQn9S7NS9
 jPAAKW50UxBfbBIClj+CkVLauEY3F0mhuVSGInfcxrHJyhcimk2q5kBWwLdqzcoHhXKYdgBbT9SQ+
 OxnRzRp6NWSBwmFQbWdw==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na7Ai-004IcK-QH
 for wireless-regdb@lists.infradead.org; Fri, 01 Apr 2022 02:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648780673;
 bh=WlXoR074PAMbYjq1sF9KT4K76XJkp0FZ5uP8AdoG8uA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fui1IRjEXq0GmL4kKTgchTi5yC9RnVx9OvC9SZXnBKpzT2XFnFBqodB5SaGnFavyq
 Atjg0k25moCzTnnrA7750jj1YHwaVAr5El1KhUTmBLGlJlNAB40hSflEYwbjx/3+eM
 MzAd7EA8FrtcL8kcTBuwZeH+HNd7CFy+7DmWZ0aGYEmqGdPxvQPoU/cDRjHW9+uB5O
 feyjr4Xvv8UCvC0gP/Nq63BItPX8W+wFEfYPApKUTDZyQhjSJU2ebnNYilk8v7gyTJ
 owwbyHfcIm1ntwUP2U2Kn0rShvSnQyj+T0z7+WGiHZ+gUcUymIesXqcgLbg4SdmRcJ
 qn2XZNtIjRITA==
Date: Thu, 31 Mar 2022 21:37:52 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YkZlgEfVfiR9EDjl@ubuntu-x1>
References: <20220328062250.15903-1-voxlympha@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328062250.15903-1-voxlympha@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Australia (AU)
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
To: Richard Huynh <voxlympha@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Mar 28, 2022 at 05:22:51PM +1100, Richard Huynh wrote:
> Changes allowing lower portion of WiFi 6E spectrum. (5925-6425)
> 
> Amendment: https://www.legislation.gov.au/Details/F2022L00249
> Full text: https://www.legislation.gov.au/Details/F2022C00281
> 
> Allows for both 250mW EIRP indoors or 25mW outdoors.
> However, only the former limit is defined in this commit.
> 
> Signed-off-by: Richard Huynh <voxlympha@gmail.com>
> ---
>  db.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index e887c73..15de29f 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -121,7 +121,7 @@ country AT: DFS-ETSI
>  	(57000 - 66000 @ 2160), (40)
>  
>  # Source:
> -# https://www.legislation.gov.au/Details/F2016C00432
> +# https://www.legislation.gov.au/Details/F2022C00281
>  # Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
>  # The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
>  # In order to allow 80MHz operation between 5650-5730MHz the upper boundary
> @@ -133,6 +133,7 @@ country AU: DFS-ETSI
>  	(5470 - 5600 @ 80), (27), DFS
>  	(5650 - 5730 @ 80), (27), DFS
>  	(5730 - 5850 @ 80), (36)
> +	(5925 - 6425 @ 160), (24), NO-OUTDOOR, AUTO-BW
>  	(57000 - 66000 @ 2160), (43), NO-OUTDOOR

Thanks for the patch. One small issue though. AUTO-BW doesn't really
make sense here since the range isn't adjacent to any other ranges.
Otherwise it looks fine.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

