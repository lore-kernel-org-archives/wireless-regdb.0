Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-x233.google.com ([2607:f8b0:4003:c01::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atLOv-0005BY-Li
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 20:40:38 +0000
Received: by mail-ob0-x233.google.com with SMTP id tz8so38799750obc.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Apr 2016 13:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=STljMh7epl1jOgarM789jW7v5lxR2V9GphbewJSBMYY=;
 b=WjSHqfvOsDfxG/VAjJu+oFvs/SFGhHr/VdJDxAaAbSavn9e4jZCXphiz0YdSwgyhrN
 c4uvvC8WtCqPlOdeEdiR46tq9rJsrl1ofRjZnhsgw4mJXssC57FPGp70m8mgTpmrN8Q+
 stmh4B521Cde3k5EqdONHFCmUWqHkLZJFmew2CznCqN6a3Bbm1iNxZlEKp6prvr31Kkm
 pEotr0S+5tF5H3sbDEVmPe8JSwT32ksblYIqUvRxwC63OoGBZCpjaNRZRwgySKCTpG1y
 9U1Z6GLaaHXkosnfssRd9+vSzR/VAM01x+70Pu1gKKF97bW0sGuNUptS0r+9+dKeOdd2
 z5oA==
Date: Thu, 21 Apr 2016 15:40:08 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160421204008.GF95003@ubuntu-hedt>
References: <1958820.LBuzOElZFT@perisens15>
 <20160421131938.GA95003@ubuntu-hedt>
 <2919568.ssjlN6KUVX@perisens15>
 <20160421185134.GD95003@ubuntu-hedt>
 <20160421201315.9C536206F0@density.slowthinkers.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160421201315.9C536206F0@density.slowthinkers.net>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Germany (DE) on 5GHz
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
To: Anne Marcel Roorda <marcel@density.slowthinkers.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 21, 2016 at 10:13:14PM +0200, Anne Marcel Roorda wrote:
> 
> On 21 Apr 2016, Seth Forshee wrote:
> > On Thu, Apr 21, 2016 at 08:08:46PM +0200, Maximilian Engelhardt wrote:
> >
> >> The comments to my initial mail indicated that the statement in the ERC 
> >> recommendation I linked are alone not enough to add this frequency ranges for 
> >> other countries. Unfortunately I don't have the possibility to do these checks 
> >> for countries other than Germany.
> >
> >Yep, I understand and am in agreement. I know how challenging it can be
> >to try to track down this information.
> 
>   I could do the same for NL.

That would be great, if anything about the current rules is incorrect or
out of date.

>   At the moment entries for NL are listed as center frequencies
> (almost, 5490 - 5710 @ 160 should be 5550 - 5645 @ 160), while for DE
> the whole band is listed (5470 - 5725 @ 160).

There's no reason per se to limit it to only the range for currently
defined wifi channels if the regulatory body allows unlicensed use of a
wider range. But the rule should include the entire channel bandwith and
not stop at the center frequencies.

>   Power budget is listed in db while the law specifies mW.
> 
>   What is the prefered format, and would a rewrite for NL listing the band
> and power in mW be acceptable ?

It's a direct conversion between the dBm and mW values (in fact mW
values in the text database are converted to dBm values for the binary
database), so the units in the text file don't matter all that much. But
I don't really like changing the units just for the sake of changing
them when the values are already correct; there's always the chance that
some mistake will slip in.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

