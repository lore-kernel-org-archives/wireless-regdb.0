Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Z3JkcilQovBl/bm2H5yc1JjZVjorLok76lCf37DDUfE=;
 b=oYrO75x29jr2wq
 HNwjzVOftXOdHyhiAEAJpk94MQ9cBFFUkuYgQn8+clhiJLsnVMSme+Ow+VR/Msw+Bec8EtVUUfGIy
 re/4nk6A+V+bP3fPD6VpW9T0MqvBDujb5XeM26bRgZCrrc/zfE4xkgdT1r2kYk0OMJB20RQVJ0rvH
 2OOE2TwxEdyTiIQonG19BVxTVerqE2gjgwP2IlgmYpdFXxfYxzKWpo60OIIjBsrz7yVYBiTyoUoBf
 7i4x15Frf0Mh8czdv5v8rWp4BnRv81IPTSvwWWAPLa/r5V8F+xfQHtu1aejaHE2n3rkbNO+AwoBtT
 F+cnKcssAXjLlfbnEUHA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT28r-00HZUY-1n
	for wireless-regdb@lists.infradead.org; Tue, 30 Aug 2022 14:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661869379;
	bh=vWuXz1hzDjwlJ8wgUN/2/LK+Hkimf6LxcI2rJlKbtok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VUCbE+eGC+bZncIrN2VK+NbMdhVPl9op+1BYfQZaFOnDtBmXnBWCCEzFZc0ke8Ssq
	 lI+EBS8rZA4kMnT5GsWqlxAyHBMG4uE8yOPWwewNtv3s+8mcDcQ0zdWINke9Qghl/o
	 1I7yapsC+Q+0qYvf7ykExMNXM7Eo3hiMn9yMG9sXLGW+UAjiQxe4XEnKAetZ8X1pLV
	 1q+mK7c4CKtwmGzHJeXjlOEuoS3dKXS4xnENz0wreCrBtdoZ46MzzL3Z6ydr18xWOS
	 uXCGDCpkyYIHSXm7cC9+srfatlGrzdRFly3Rg4/N4LNTSQcGGdky4i4jQAymTJgvoU
	 oEaPagxa+vYjQ==
Date: Tue, 30 Aug 2022 09:22:58 -0500
From: Seth Forshe <sforshee@kernel.org>
Message-ID: <Yw4dQl9/1xx4nx7N@ubuntu-x1>
References: <b68e876e-1555-4a37-762f-3b38d383722d@bcdonadio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b68e876e-1555-4a37-762f-3b38d383722d@bcdonadio.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Brazil (BR) on 6GHz
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
To: Bernardo Donadio <bcdonadio@bcdonadio.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Aug 25, 2022 at 10:29:58PM -0300, Bernardo Donadio wrote:
> Hello.
> 
> I would like to request the following inclusion to the BR entry in the
> regdb, since Anatel (Brazil's telecomunication regulatory body) has
> officially licensed the WiFi 6E band in February 26, 2021.
> 
> It was defined as the 5.925 to 7.125MHz spectrum range, strictly for indoor
> use, limited to 30dBm EIRP for AP stations and 24dBm for clients.
> Requirement for NO-IR was explicitly waived, and no requirement for AUTO-BW
> or DFS was made. No specific channel width was defined besides the spectral
> power density limitation of 5dBm/MHz, so 160MHz channels are allowed if my
> math is right (I would appreciate if someone could double-check it).
> 
> The original publication regulating bands for local private use can be found
> here: http://www.ncc.org.br/img/Ato%2014448.pdf
> 
> The amendment that allowed the 6E band can be found here: https://www.in.gov.br/web/dou/-/ato-n-1.306-de-26-de-fevereiro-de-2021-306493325
> in section 11.7.
> 
> Allowing outdoor use is being debated, but it hasn't been licensed yet since
> 5G operators want to use the same slice of spectrum. There could be further
> changes in the next year.

Thanks for the information! This is already being discussed as part of a
larger set of updates for BR. See this thread:

http://lists.infradead.org/pipermail/wireless-regdb/2022-August/001372.html

Please let us know if you have any comments on the proposed updates
being discussed there.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

