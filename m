Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=1Ip4FzUkQyYY54IolmOPEAl31b0nN+hTQs5dgS7hLAM=;
 b=H2scIi5OV96a1P
 akBg2Hr19UvELsJGRwdpQrPgy72/Nw79h/BTC42cRkstMd1rCVWQks1RlBwrOfwf+nyNCzWMMgzh3
 n1OKZWaMiycpAx3Vt0RxyBh52oiOeEftIz+dWiu2jJ1x+x/kRs0irH1RTg8s3/yZYynJ1Uf+B85Fh
 dCwJ2NgL0BPgzeH8IGY/6GAgxhEbqEaWMlRksXtLM1A8A8bMh//xHGfKexJt7udDx81By530/W9ym
 bSGaA2GxxY9SkssnHF9gG+GTJzeFCc1rpQ4Xz+VUnc+YpNzErTWwOZYgCPOSvCntbRM0MDdplOcKH
 6cAEvO+RCQXwtBr7uLSw==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMWiO-00A9iP-1y
	for wireless-regdb@lists.infradead.org; Fri, 12 Aug 2022 15:36:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140]) (using
 TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No client
 certificate requested) by sin.source.kernel.org (Postfix) with ESMTPS id
 08C77CE2494 for <wireless-regdb@lists.infradead.org>; Fri, 12 Aug 2022
 15:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660318597;
	bh=HnupT5kL8Fgu2rStLPqKQ8Iy5JQSpNixVqBC54hqVTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TUq3MsxlzqBxr9zttPSWIthiYZpLCMgMGaWYvIW3sBw0p9qZtpPjVsvbW1GP9+91e
	 fGHpl7NPz2kCzXyXs2oQC7JmME7bp8WQ04WVgBRUNByQ4bXDKVxu2nerZHRGBKuF2q
	 u/UTXDr6vv/Ytu0izPNPC+FMvwmJvlF6h1oWpf5v4dqHO4TtfRqrBKFlbyYJ/Jd2lv
	 HM3wfDf7SteNYT+R7uBMC0oAR0bojpSir7qvimkEOjyWbRNhEUdn/w52hPrmdHuMC8
	 rAKPZHlLxhLOTJaNjnA+EO4ejLzqrYN/FvAN5LxMH1twcUaikOQeotmBwE7e60rWKB
	 N3OhLijhD3N4g==
Date: Fri, 12 Aug 2022 10:36:36 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YvZzhIK/cLhzyUlS@ubuntu-x1>
References: <20220805141709.106684-1-sforshee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220805141709.106684-1-sforshee@kernel.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add 5 GHz rules for GY
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Aug 05, 2022 at 09:17:09AM -0500, Seth Forshee wrote:
> Add 5 GHz rules which were provided by a representative of the Guyana
> Telecommunications Agency. There is no published document which can be
> used as a reference for these rules.
> 
> Signed-off-by: Seth Forshee <sforshee@kernel.org>

Applied.

> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index 16b38b7cb2b2..16abf2951e77 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -732,6 +732,9 @@ country GU: DFS-FCC
>  
>  country GY:
>  	(2402 - 2482 @ 40), (30)
> +	(5170 - 5250 @ 80), (23), AUTO-BW
> +	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
> +	(5490 - 5730 @ 160), (23), DFS
>  	(5735 - 5835 @ 80), (30)
>  
>  country HK: DFS-ETSI
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

