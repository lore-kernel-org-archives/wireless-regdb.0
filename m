Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22c.google.com ([2607:f8b0:4003:c06::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atHYs-00044E-Ef
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 16:34:39 +0000
Received: by mail-oi0-x22c.google.com with SMTP id p188so104008317oih.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Apr 2016 09:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CV+Fr20r3PiVUXN2ZgDns/RpZPZtPf/nAkNLZjQ8L+4=;
 b=TMf4erHTMNkjIlGBp2pM5U9yYijcFTtwUNkNrBtTZD6bg8qSMJ2naoN7BapEWZzzpH
 VSd1PZXiBXLDnNEQ683s/znPUfx7yDxB/DkSDc7JeJLxf2nntyBev6MOHMD0gjYmu8h9
 ma88bMCpqZgt3TKvlXCZrbmbYE9B9ZO5FwoYxFoeI7mgdrtZYc1WkNA+yYEzR/Gn8Yp4
 bu3AHZAYBj5hDZn2Fx/VE+hFNmzTgXewEXcbAJV0VDf/ED8UBbS1CqDiFkeTb5xKuSB0
 pbn3amgtXukFpSNPO0qPg1wlh/z5v6yfoRXzcdbYZDH9sJZ3iw5EO227RUmdGge8tnhn
 QFYA==
Date: Thu, 21 Apr 2016 11:34:10 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160421163410.GC95003@ubuntu-hedt>
References: <1461113043-30102-1-git-send-email-bordjukov@gmail.com>
 <20160421140721.GB95003@ubuntu-hedt>
 <87fuuf54ai.wl-bordjukov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fuuf54ai.wl-bordjukov@gmail.com>
Subject: Re: [wireless-regdb] Updates for the regulatory rules for Bulgaria
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
To: Petko Bordjukov <bordjukov@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 21, 2016 at 07:12:53PM +0300, Petko Bordjukov wrote:
> On Thu, 21 Apr 2016 17:07:21 +0300,
> Seth Forshee wrote:
> > This is almost certainly because these frequencies require transmit
> > power control. We drop the TX power limits by half (i.e. 3 dB) when TPC
> > is required on account of not supporting TPC.
> 
> I was under the impression that the underlying kernel infrastructure had support
> for TPC. What I am observing is that hostapd automatically includes the Power
> Constraint IE in beacons sent out on any channel with DFS enabled. The default
> transmit power reduction is 3dBm.
> 
> This means that the TX power of any clients would be limited to 3dBm below the
> TX power of the AP even though it's not required.
> 
> Would there be any merit in providing additional information regarding the TX
> power and the target average TX power reduction for the system when TPC is
> supported?

I'm frankly not certain about the status of kernel support, but my
impression was that some drivers might have some level of TPC support
but that it's not universal. I really haven't been keeping track of it
though.

However, even if there is universal TPC support in the kernel we still
lack any way to encode the TPC requirement for a given rule in the
database or inform the kernel about it.

> > > WAS/RLANs 5150-5250 MHz
> > > 200 mW maximum mean e.i.r.p.
> > > 10 mW/MHz maximum spectral density of the mean e.i.r.p.
> >
> > If this range doesn't require TPC then it could be bumped up to 200 mW
> > (23 dBm).
> 
> Yes, the CRC's list explicitly states that TPC is required in the 5250-5350 MHz
> and 5470-5725 MHz bands and there's no further comments on the 5150-5250 MHz
> band. EN 301 893 has the notes below for the 5150-5250 MHz band that could have
> lead to the 3 dBm drop though, maybe linked to the AUTO-BW flag?
> 
> > NOTE 1: The applicable limit is 20 dBm, except for transmissions whose nominal
> > bandwidth falls completely within the band 5 150 MHz to 5 250 MHz, in which
> > case the applicable limit is 23 dBm.
> >
> > NOTE 2: The applicable limit is 7 dBm/MHz, except for transmissions whose
> > nominal bandwidth falls completely within the band 5 150 MHz to 5 250 MHz, in
> > which case the applicable limit is 10 dBm/MHz.

It shouldn't be required for the AUTO-BW flag, so based on everything
I'm seeing here 23 dBm seems fine.

> I changed the TX power values to mW to be consistent with what is stated in the
> CRC's list. I'll resubmit the patch with the values in dBm and with the 3 dBm
> drop for the 5250-5350 MHz and 5470-5725 MHz bands.

Great, thanks. I think you should be fine to bump up the 5150-5250 MHz
rule by 3 dBm as well. If someone knows a reason it shouldn't be raised
they can let us know.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

