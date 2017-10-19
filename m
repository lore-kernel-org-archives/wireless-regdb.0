Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=OXHF4DK07MUOz0VziZCJj+jAGIBN+qmQDNR4VQSRPz4=;
 b=C6sK98sv1vW4Vi
 +5e+bHAtRj3aiJaJe3gCGNuaK6HrfsVCGosWIv/MBhl995/PWJFnAcRNVzl4orBpnjraCNPb7oMv9
 qPyDHo0WDEVniVMNxp9t0OU6IPzzkY6DrSRLLWrx9hlXK2s3HV3dgldOBJKDclGpcVBMf1gKyl4uV
 JS8GVIAbc2NNa7kYs/eYnfJYyLq9uVGwZDJUJyOwell2hSL4m1QcQdzCzVyhWd5QPBOgMDZP5DXVR
 CGHUJuZORf8fzZjhJ44NWh8mLp3uCNm31erRin3AS0uvr3DSzjx+0pctLf0B4/HObr0aZjtjdRf9J
 d8xpKNRz5nbw0q1pZipg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5J82-0003zw-PS
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:17:30 +0000
Received: from mail-io0-f199.google.com ([209.85.223.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e5J7h-0000p1-2q
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:17:05 +0000
Received: by mail-io0-f199.google.com with SMTP id n33so8989854ioi.7 for
 <wireless-regdb@lists.infradead.org>; Thu, 19 Oct 2017 15:17:05 -0700 (PDT)
Date: Thu, 19 Oct 2017 17:17:01 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171019221701.fdiyjhie6jezo657@ubuntu-hedt>
References: <20170807081950.13327-1-sven.eckelmann@openmesh.com>
 <20170823205240.ycyrszsvjugtosdi@ubuntu-xps13>
 <1684208.h1AJVyQWH7@bentobox>
 <20170824161744.fl5fikxgqwxjfm6t@ubuntu-xps13>
 <20170926195445.4hqeixicrrohpsft@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170926195445.4hqeixicrrohpsft@ubuntu-xps13>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Singapore (SG)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Sven Eckelmann <sven.eckelmann@openmesh.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, simon.wunderlich@openmesh.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Sep 26, 2017 at 03:54:45PM -0400, Seth Forshee wrote:
> On Thu, Aug 24, 2017 at 11:17:44AM -0500, Seth Forshee wrote:
> > On Thu, Aug 24, 2017 at 09:13:42AM +0200, Sven Eckelmann wrote:
> > > On Mittwoch, 23. August 2017 15:52:40 CEST Seth Forshee wrote:
> > > [...]
> > > > > +# Source
> > > > > +# https://www.imda.gov.sg/~/media/imda/files/regulation%20licensing%20and%20consultations/ict%20standards/telecommunication%20standards/radio-comms/imdatssrd.pdf?la=en
> > > > > +# page 12-14
> > > > > +# The EIRP for 5250 – 5350 can be increased by 3dB if TPC is implemented.
> > > [...]
> > > > > +	# 5470 - 5725 is only allowed when TPC is implemented
> > > > > +	# (5470 - 5725 @ 160), (30), DFS
> > > > 
> > > > I'm not sure that the lack of a specific provision for operating without
> > > > TPC in this range means that it cannot be used. As I understand it, TPC
> > > > would only result in a reduction in EIRP of 3 dB, so as long as we use
> > > > a power limit of half of the maximum allowed we will be safe.
> > > > 
> > > > If this is incorrect I'd appreciate it if someone more knowledgable on
> > > > the topic could chime in.
> > > 
> > > I would also be happy about feedback regarding this part. But my current 
> > > settings are based on the document [1] mentioned in this change.
> > > 
> > > Let us look at the range 5250 – 5350 on page 13. There are two entries for the 
> > > same frequency range.
> > > 
> > >  * 28:
> > >    - up to 200 mW
> > >    - requires TPC for 5250 – 5350 Mhz
> > >  * 29:
> > >    - up to 100 mW
> > >    - requires *no* TPC for 5250 – 5350 Mhz
> > > 
> > > This is exactly the 3(.01029995...) dB difference which you've talked about. 
> > > Now to the frequency range 5470 - 5725 MHz on page 14. 
> > > 
> > >  * 30:
> > >    - up to 1000 mW
> > >    - requires TPC for 5470 - 5725 MHz
> > > 
> > > There is no extra exception rule for non-TPC mode.
> > > 
> > > Now let us check what IEEE 802.11h-2003 [2] says about TPC.
> > 
> > <snip detailed analysis>
> > 
> > > My current change now assumes following strict interpretation:
> > > 
> > >  * Singapore provides a mitigation factor of 3 dB for 5250 – 5350 Mhz (see 
> > >    table entry 28 + 29)
> > >  * Singapore provides now mitigation factor for 5470 - 5725 MHz and requires 
> > >    TPC
> > > 
> > > I am currently unsure whether it is now valid to say that the default 
> > > mitigation factor would be 3 dB and thus there is an implicit table entry (let 
> > > us call it 30b) which would be:
> > > 
> > >  * 30b:
> > >    - up to 500 mW
> > >    - requires *no* TPC for 5470 - 5725 MHz
> > > 
> > > Countries like AU or regions like ETSI (ETSI EN 301 893) seem to have this 
> > > mitigation factor always specified in their rules. But Singapore is missing it 
> > > for this specific frequency range.
> > 
> > So on the one hand I'm in agreement, it would be good to know where the
> > 3 dB attenuation comes from and whether it's really universal. So far
> > it's been something I've taken on faith from folks a lot more familiar
> > with the subject than me.
> > 
> > However, it seems the same lack of information would also anyone who
> > does want to support TPC. The information about how much to attenuate
> > must either be provided on a per-regulatory-domain basis or else it must
> > be standardized somehow. If it's the former then it seems odd that
> > Singapore does not include this information.
> > 
> > Hopefully someone more knowledgable will chime in to help us understand
> > better.
> 
> I was going through old messages in my inbox and realized that we've
> never done anything about this. Unless someone speaks up soon I guess
> I'll play it safe apply the patch as is, with the range commented out.

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
