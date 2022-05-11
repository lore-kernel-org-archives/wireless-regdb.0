Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=YwvxWiOX74C9cCndE41BEr1BHNwMG10xGqkzWowjG80=;
 b=0DSIqzHXHA7X1v
 UFqkIneNr2pkcmWfXSO5tLi5+C/Pe9fVwT1wEjV06kfwKV/egpOkU0duZI+kyJ/0PZ8vEhMaVMvAr
 xtS5d3dBEtAH6S7NJXiZP3a6qkmo6bR3lSV3Nic/K1aT4wWVxTdkfi1LtuQ668ZvM+qmYTa3SLJd9
 FoQH6QuBRu8WlE415CVs8813B+z7dOdx8fBL98jnJkd/Hs6AneJngq+6KLLiLig/w/x8K4MTx1nZX
 sj1bAFYZ9rwZ30IgefkOiz9irT13wxcf7xvcY+TC2ylOIOJNtgJBTqCVLhoOcktqwXJFMTRJqwR8a
 ihtaCwTj75V4iTeB0Rdg==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonVQ-007GVw-PE
 for wireless-regdb@lists.infradead.org; Wed, 11 May 2022 14:40:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652279997;
 bh=fl/TMMgpdvva8v2Vr9RNlzXHK9PlWeLkXAp7apKwyzo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A3EUez888a405tIewitky/vt1a3pnseoYTN06S8bCOqat15QsJAp/UJrpVIvL8lla
 m0bOK+2cRTy8xC2AMhzKkCzXRwDYt8LfFexH8dHSIcmxItf2nMwENeDnOfWkkVic6f
 eWvnocQLC25FWKU3F2kF5xtZl4QoX1YNP74A8wBew2shrowQc5bm5XY6vIFD7JsMnn
 DOyNtt6ZZ4So5DYNBbyoP0lpxCnD0czlwvV0du5xUpJIBspccl+tB9xvrz6OMn5x9d
 /E3I27M2JYJsfc1AzPn5sh3YGrLIsTDnhclS1zKeFmnMZZjjmfCrLsC9glPNf0wK4C
 x7ZaZq2ys3M6w==
Date: Wed, 11 May 2022 09:39:56 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YnvKvFu/QL8ty1vX@ubuntu-x1>
References: <CAPRryQo1mJLF0YkQH1j8N4POSyi0QzUJ=r_fedYHun_9fONyBw@mail.gmail.com>
 <Yl8TLoePjb7eERvp@ubuntu-x1>
 <CAPRryQoEAf+RUZh76tdb-_bLhc2VZpBNSp=9cd8mz8AQiB6iKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRryQoEAf+RUZh76tdb-_bLhc2VZpBNSp=9cd8mz8AQiB6iKg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Regulatory update for 6 GHz operation
 in Canada (CA)
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
To: Dennis Bland <dennis@dbperformance.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Apr 20, 2022 at 08:40:51PM -0600, Dennis Bland wrote:
> With the 6 GHz band (U-NII-5, U-NII-6, U-NII-7, U-NII-8) in Canada, ISED
> introduces the concept of a fixed PSD (Power Spectral Density) for all
> supported 6 GHz channel widths.  Wider channel widths have a higher noise
> floor, therefore specifying a fixed PSD allows wider channels to
> operate at a higher EIRP to maintain the same S/N ratio as smaller
> channel widths.
> 
> Clause 4.6.2 requires non-client (AP devices to have a maximum PSD of 5
> dBm/MHz and a maximum EIRP of 30 dBm.  Clause 4.6.3 requires client (STA)
> devices to have a maximum PSD of -1 dBm/MHz.  Clause 4.4 specifies a
> maximum channel width of 320 MHz.  Clause 4.9 specifies indoor use only.
> Operation on oil platforms, vehicles, boats, trains, and drones is
> prohibited except on commercial aircraft above 10,000 feet altitude.
> There is no IR (Initiate Radiation) restriction mentioned in the 6 GHz
> specification.
> 
> The following equation is used to calculate the EIRP from the PSD and
> channel width:
> 
> EIRP = PSD + 10*log(channel width in MHz)
> 
> Using the maximum PSD values of 5 and -1 for APs and STAs respectively,
> the EIRP in dBm for a given channel width can be calculated:
> 
> Channel Width (MHz)     AP            STA
> ------------------------------------------------
> 20                      18            12
> 40                      21            15
> 80                      24            18
> 160                     27            21
> 320                     31 (max 30)   25 (max 24)
> 
> For channel widths up to 160 MHz, the maximum PSD is the limiting factor.
> For the 320 MHz channel width, the maximum EIRP is the limiting factor.
> 
> Unfortunately, because there is currently no mechanism to specify
> different power levels for AP and STA modes, and for different channel
> widths, the smallest value has to be selected, which is 12 dBm.  This
> will likely cause connectivity problems with larger channel widths until
> these additional parameters can be added.
> 
> signed-off-by: Dennis Bland <dennis@dbperformance.com>

Sorry for the delayed response. Thanks for the patch and the detailed
explanation. Everything here looks good to me.

The patch itself was corrupted. I fixed it up by hand, but for future
patches you might try 'git send-email', or if that won't work with your
email provider you can use 'git format-patch' and attach the patch file.

Also note that Signed-off-by should be capitalized. I fixed that when
applying.

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

