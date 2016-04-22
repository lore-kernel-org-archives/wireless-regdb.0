Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-x235.google.com ([2607:f8b0:4003:c01::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atbYu-0000yN-Dj
 for wireless-regdb@lists.infradead.org; Fri, 22 Apr 2016 13:56:01 +0000
Received: by mail-ob0-x235.google.com with SMTP id j9so49044467obd.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 22 Apr 2016 06:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YNuUrljqMgD+1O9d4om0+ncr0rWCuG/fji4PFrmU6K8=;
 b=jpshgKCLsb6t6bNTTDr+eMPRqdMG95DibT0v1Tt0ts6fycbW5Z0VXdRhvXfLQr4RBx
 NmxZ87e7LQNE4L/t68kWlxniRw5NdBtjliMDVod+HujEdwsfzqehfc2LQ0V2AhBppV5V
 JSH0+UUknGNSRL7W19YCea9EQrpN1rGd8pJuwoi5Il2l9WEmH2qwpoFiy+MxdttenN1C
 xgaICFvmiog4U8xt7Ib47TS9bZMgIeMMZBEOnlGcXfkrBgtSfnM7+RnyY5et3b1S6Uo9
 ilfHQXNRoG47mBkbf30e7LL1hZusqAlRI11Oo7cNuuL3EnCZjIo6oLB4+Oj4VHQtx98W
 4K6w==
Date: Fri, 22 Apr 2016 08:55:29 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160422135529.GA109717@ubuntu-hedt>
References: <20160422123614.2B4EC2063D@density.slowthinkers.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160422123614.2B4EC2063D@density.slowthinkers.net>
Subject: Re: [wireless-regdb] Update regulatory rules for NL as per ETSI EN
	300 440-1
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
To: Anne Marcel Roorda <marcel@slowthinkers.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 22, 2016 at 02:36:13PM +0200, Anne Marcel Roorda wrote:
> 
> Hi,
> 
>   Below the patch to include SRD as per ETSI EN 300 440-1
> for NL.
> 
> Thanks,
> 
> - marcel
> 
> Signed-off-by: Anne Marcel Roorda <marcel@slowthinkers.net>
> 
> diff --git a/db.txt b/db.txt
> index e9ba21a..738e412 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -850,11 +850,18 @@ country NI: DFS-FCC
>  	(5490 - 5730 @ 160), (24), DFS
>  	(5735 - 5835 @ 80), (30)
>  
> +# Regulation on the use of frequency space without a license and 
> +# without notification 2015
> +#
> +# http://wetten.overheid.nl/BWBR0036378/2015-03-05
> +
>  country NL: DFS-ETSI
>  	(2402 - 2482 @ 40), (20)
>  	(5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
>  	(5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>  	(5490 - 5710 @ 160), (27), DFS
> +	# short range devices (ETSI EN 300 440-1)
> +	(5725 - 5875 @ 80), (25 mW)
>  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>  	(57000 - 66000 @ 2160), (40)

I'm looking at the document you reference as translated by Google, and
I'm not seeing anything there to support these changes. I can't find any
reference to ETSI 300 440-1. The section which would appear to apply
here (article 2 paragraph o) references Annex 11 for permitted frequency
bands, and this does not include the range that you're adding.

I didn't read the document in its entirety though, so I may have missed
something. If so, could you please point me to the specific section
which would permit operation in that range?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

