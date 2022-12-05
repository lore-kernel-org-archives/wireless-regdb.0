Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=pyM0b9xWxz8tHqwFJsnu3GNDW4neezxS97fnVJWSDYQ=;
 b=Ti5F/AeVDIWgUc
 6N3KRGfDn+86nKdxtU5wvtpgpNa4EkCHTq7Ax1pRvv8UQg2Q1rvI/Y32GwemtBQ7kVlz/LFB/e5lE
 rFo+RZBOfSpHQaP+sTARJS8z2pOQsxE7ncuBuQWgtVjflXwzYbpkv0o/5KNIxfWxmHG910KMhGlc0
 bk64DXGvEcwOWByVtwFUQPYL0YW+6Nl1GX/+p0cIR2LHv2vcFD2fXZoecC5OrGjDcPbZ+1rhKZrf9
 QfLMxLWMwu9uFRXnsd/twgXAQrwtw83sKaC+h0jBT6wUA3WNbXZqAfomO3CmNl5IaL1a1gSOlGpFZ
 vpFdiVG3XPbk6kkQ8RfQ==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Jek-00B7TM-LY
	for wireless-regdb@lists.infradead.org; Mon, 05 Dec 2022 22:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670278184;
	bh=F/dUs+EC7sp9j+d7/R+Dw1DSfEMj7rJ8IWNvNgJg+h0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iVVrFOV4DNXoJyDj2R+dVuYmtwb8B5XwXkwbh3yBJzPPaznNlFh1uRgTMD3frtyv3
	 2qlvOiu0BFbNbqaA63sAr86PPXrsRjdtat121sAXCqIcmfipy9osAS3ZlrXI7LUGXk
	 neV6kHC65nJbNxjdhr5z7jlLN6WTp+vTsUhKQMxq+t7Wii/20WQwjrHFWHFWvdvHzE
	 tFBNLZPyX8vPUIQ3O2VCrkf546MU9aBtSsPdA0SmfGwiEc1JSpUSxCZ3ba3YVSqwUK
	 RVQYeSBW50muE9aI330+dNEtFYPtFGjgjN9PUb0RNsoBiFnU+rsICvuQ8U3Yv9sK/C
	 KMr+hiobUu9qw==
Date: Mon, 5 Dec 2022 16:09:42 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Y45sJt1w5eIY0O5m@ubuntu-x1>
References: <20221030110510.752996-1-PascalCoffeeLake@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221030110510.752996-1-PascalCoffeeLake@gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Japan (JP) on 6GHz
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
To: CaffeeLake <pascalcoffeelake@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Oct 30, 2022 at 08:05:10PM +0900, CaffeeLake wrote:
> Support 6GHz for JP Region.
> 
> The Ministry of Internal Affairs and Communications has approved 6GHz (5925 - 6425 MHz) in Japan.
> 
> Source: https://www.soumu.go.jp/main_content/000833682.pdf
> 
> Signed-off-by: CaffeeLake <PascalCoffeeLake@gmail.com>

Applied, thanks!

> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index 012824f..96527c9 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -907,6 +907,8 @@ country JO: DFS-JP
>  	(5170 - 5250 @ 80), (23)
>  	(5735 - 5835 @ 80), (23)
> 
> +# Source:
> +# https://www.soumu.go.jp/main_content/000833682.pdf
>  country JP: DFS-JP
>  	(2402 - 2482 @ 40), (20)
>  	(2474 - 2494 @ 20), (20), NO-OFDM
> @@ -914,6 +916,7 @@ country JP: DFS-JP
>  	(5170 - 5250 @ 80), (20), AUTO-BW
>  	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
>  	(5490 - 5710 @ 160), (23), DFS
> +	(5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
>  	# 60 GHz band channels 2-4 at 10mW,
>  	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
>  	(57000 - 66000 @ 2160), (10 mW)
> --
> 2.37.3
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

