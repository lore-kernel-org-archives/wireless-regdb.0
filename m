Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=8OKGHFFfzshmBVZu434uGo0Bes8DPV3ZYnXjFlf9+bI=;
 b=eC4Ax1F232qDCj
 MY6E9GxHPFiiAPUbnuctPb8t7chFfreWuPNb3MFRbDMpM5Wz0hZUglTuuIXLgMHFIeyR/y6esPGF+
 zwpjPFFqWU8Jevxdnjk4203cNi2lyyuUP14SyLT+W/tgdYEz5kV2rlETuqYky+Z94AxG0LGLEYcFw
 NDVaACaJm/eyK1H5eKC1drpk3nfAQ1bDd/SoPDJD/2Ywar117gvj1dn/4qxkn8pyOwVDUwbJnl+g2
 /PMsw/VTwDKCBdAyiTPcbvdGqUwtvJC40yYsFFhDAP3sVY2iyAlDOMnwdUGGimET5x5UphIED72Rg
 Fpgphs6NUubU0Ja4aywQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJgJW-00Cvx7-3C
 for wireless-regdb@lists.infradead.org; Fri, 27 Aug 2021 18:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630087849;
 bh=efycGMgOuRuAVC1cyTXxDuc5nH0HnGdY10ZNeZ60SFg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N5qXYp6sslJgVdOBX06xEo7QcydjnZikyZvm+er0eeLigykfolKuTYigP0E5Q13mB
 hGSSsH5Sjr/kDtpVfuFyCj9BUiFmVnyO3J4Hbv2RMtNl+yZut3ecJ4v9SxrsMy7t9H
 fsFcDtkgJ6SAxbyVo1C9hY2N/KhrSwR2vRZuUOsMxOYgpCmDLCkwHQGrl05oxW0VXC
 rfM8hTtHaTsyfH4ffjQ8noWhIahbBVhR2c8GNDv+RXl80GgB4n5QXKoiUdzRJx75YX
 kbd8Uc5r02kqV356/smTgXQFe/3neZZlLcMa56A6fUVD4CPtHTa48nqLBFdAmvgPoq
 AxndqXFRM9AUg==
Date: Fri, 27 Aug 2021 13:10:48 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YSkqqHcnqQP1P/Bf@ubuntu-x1>
References: <20210826201026.5071-1-victorsbayas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210826201026.5071-1-victorsbayas@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] Update regulatory rules for
 Ecuador (EC)
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
To: Victor Bayas <victorsbayas@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Aug 26, 2021 at 03:10:26PM -0500, Victor Bayas wrote:
> Update the frequency ranges and power limits according to the current
> Ecuadorian norm [1], allow up to 160 MHz bandwidth on 5GHz.
> 
> [1] https://www.arcotel.gob.ec/wp-content/uploads/2018/04/NORMA-ESPECTRO-DE-USO-LIBRE-Y-ESPECTRO-PARA-USO-DETERMINADO-EN-BANDAS-LIBRES.pdf
> 
> Signed-off-by: Victor Bayas <victorsbayas@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

