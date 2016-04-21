Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22c.google.com ([2607:f8b0:4003:c06::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atFGn-0005Lm-5n
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 14:07:49 +0000
Received: by mail-oi0-x22c.google.com with SMTP id x201so84921293oif.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Apr 2016 07:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hIT2/fB2nLbBY++Fk/VDLPTJ7qcQHxDqhT3+R7vu/Sg=;
 b=BgKpeEBoIHCnGq8kd6bWL1DJgKpDa5ai3fKeXDTfz4OPzeuzWisO7wLmVP8YwMoJSS
 IJhG6WR0UZy4T8DD2Gpv7c24xWoDjiN3Lyv7xTa7KKwwkJLElm510dMeARM6oiqufO5J
 DvV/cTlMqyeBWJhewveSlHaoL+mcTuEZyQfs2W7npD/zCcCViAiQKTs3sKC5nvxridE2
 eqYYVPyJbw/PfAJAnwu7H7lq7G7WbLwp5Zdq3x8YN0yjP1Lz3gg7CsgJzkUfGmWhVkZZ
 x3oufhvPeX7WksmPER/rnNzbHe4cDEh7rbQNMOBhUa12bSPiN2U6ZpbzoclRh736/GuG
 XVlw==
Date: Thu, 21 Apr 2016 09:07:21 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160421140721.GB95003@ubuntu-hedt>
References: <1461113043-30102-1-git-send-email-bordjukov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461113043-30102-1-git-send-email-bordjukov@gmail.com>
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

On Wed, Apr 20, 2016 at 03:44:02AM +0300, Petko Bordjukov wrote:
> Hello,
> 
> There seem to be discrepancies between the current regulatory
> rules for Bulgaria (BG) and what has been mandated by the
> Communications Regulation Commission.
> 
> First, the maximum e.i.r.p. for all the bands in the 5170 MHz to
> 5710 MHz range seems to be 3 dBm lower than what's permitted by
> the CRC. This change was introduced with commit
> 236efecf6685f917baa26aa0108b1eebce910bf3 and is attributed to
> QCA's regulatory team's efforts. I'd be grateful if the QCA
> regulatory team reviews my patch just in case I'm missing
> something.

This is almost certainly because these frequencies require transmit
power control. We drop the TX power limits by half (i.e. 3 dB) when TPC
is required on account of not supporting TPC.

I'll reply below about individual changes instead of in the patch.
Unfortunately the documents linked to didn't translate well for me.

> Here's what I'm getting from the CRC's EU-harmonized frequency
> list[1]:
> 
> WDTS 2400-2483.5 MHz
> 100 mW maximum e.i.r.p.
> 10 mW/MHz maximum e.i.r.p. spectral density

This is the same as what's already in the database. Your change just
converts the eirp from dBm to mW, which isn't really of any benefit.

> WAS/RLANs 5470-5725 MHz
> 1 W maximum mean e.i.r.p.
> 50 mW/MHz maximum spectral density of the mean e.i.r.p.
> Comment: The devices must use TPC that ensures average reduction
> of 3 dB of the maximum transmit power of the system. In case TPC
> is not used, the maximum mean e.i.r.p and maximum density of the
> mean e.i.r.p. are lowered by 3 dB.

This explains the 3 dB attenuation in the database ;-)

So we need to cut the eirp in your patch in half, and at that point all
you've done is again to convert it to mW.

> WAS/RLANs 5150-5250 MHz
> 200 mW maximum mean e.i.r.p.
> 10 mW/MHz maximum spectral density of the mean e.i.r.p.

If this range doesn't require TPC then it could be bumped up to 200 mW
(23 dBm).

> WAS/RLANs 5250-5350 MHz
> 200 mW maximum mean e.i.r.p.
> 10 mW/MHz maximum spectral density of the mean e.i.r.p.
> Comment: The devices must use TPC that ensures average reduction
> of 3 dB of the maximum transmit power of the system. In case TPC
> is not used, the maximum mean e.i.r.p and maximum density of the
> mean e.i.r.p. are lowered by 3 dB.

Again, we need to keep the 3 dB drop so the value in the database is
already correct.

> Second, the CRC mandates that the 60 GHz RLAN frequencies are
> only for indoor use.

If that's the case then adding NO-OUTDOOR does seem appropriate.

You didn't mention 5725-5875 MHz here, but once again your change there
is only converting from dBm to mW.

So in sum, the only changes which should probably be made are to 1) bump
the power limit for 5150-5250 MHz to 23 dBm and 2) to add NO-OUTDOOR to
the 57000-66000 MHz rule.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

