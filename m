Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=+B1REWjsQZdPZ6fhkABWd06NcS1fSTXCsMyyhNeDZQ0=;
 b=cc1lptqAVXxUNm
 EMK/dSQQtiGBCadJ7vjqtTzowlTi+9WC18aecUliPQ+z/ht7VLKLnIxq84IRZER1AEYEkY9LbVYDM
 nKquckimYs2uCrvGhLkpSdhaG07mm4h5fcdg0h0dpl60Vop5qsNl7C/OQ6amwvAIrGjodEUfuGoc8
 JpvphRvfp6DJk1dZwjC+2JPpFjRI6QJ8cy3Ypc0xJVQ/C4QqoH7GGedNUMPyWUYFno8kddxM0+R8X
 vxwfXYejYrvMSB79uu0Q9finX2M6XsYQzRcV2gsrBTLegf1A2T0qlMBzpQScFewVsG202VvLZx+A3
 WF03zQU1/dGBjz6txlVA==;
Received: from mail-io0-x22e.google.com ([2607:f8b0:4001:c06::22e])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5rX-0005vE-W1
 for wireless-regdb@lists.infradead.org; Wed, 01 Mar 2017 15:08:22 +0000
Received: by mail-io0-x22e.google.com with SMTP id f84so31655889ioj.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 01 Mar 2017 07:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8axJIvO0UJGR36YsDyTj1ATpEOJZRBKE36hzCe5U/dc=;
 b=jjUzI4ZuzW5/UHb/tUHSOyykZjPiqIpcj36VU+FtehFpUapnQPKPm6iSDv9AAz30uj
 QZpmohp28mg4B0K0KA9vSaXUXo4ec+rwZfSuWy8PzpPLGwfBRWjRxhwZ8LhyF0KJuXrm
 cxAf5HKXPrtlP/s0B/ur8cRIJJgYNCq0fkLx0J1HJZurrruGEVSAXbCWosp+mJUi0LUH
 IUNSxEDxMoLvxpRPFg2e+OGmkkwuyKfbhLHFHKux4sEnU5Rzkqn1/Uhwx+xa/yZz0FyP
 gQGGBUOa0PRa5+7h/65p+DspvsWY8ELevD+KAxgngUq7C/Xl0AdtNCZ/Ef6lEj70lYxm
 jAhg==
Date: Wed, 1 Mar 2017 09:07:57 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170301150757.GL122517@ubuntu-hedt>
References: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
 <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
 <1486453950.2643.1.camel@sipsolutions.net>
 <20170207140434.GA109741@ubuntu-hedt>
 <a79eaf02-b384-4c5b-3116-c1386ef98850@neratec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a79eaf02-b384-4c5b-3116-c1386ef98850@neratec.com>
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update 5 GHz rules for
 Canada
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
To: Matthias May <matthias.may@neratec.com>, Johannes Berg <johannes@sipsolutions.net>
Cc: cory novak <cory.novak@gmail.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

There were some replies to this, but I just noticed that the mailing
list somehow got dropped. Bringing the discussion back to the list.

On Mon, Feb 13, 2017 at 02:58:28PM +0100, Matthias May wrote:
> On 07/02/17 15:04, Seth Forshee wrote:
> > On Tue, Feb 07, 2017 at 08:52:30AM +0100, Johannes Berg wrote:
> >> On Mon, 2017-02-06 at 14:50 -0600, Seth Forshee wrote:
> >>> +	(5150 - 5250 @ 80), (23), AUTO-BW
> >>
> >> For 20 MHz this is right, since the document says:
> >>
> >>     The maximum e.i.r.p. shall not exceed 200 mW or 10 + 10 log10 B,
> >>     dBm, whichever power is less. B is the 99% emission bandwidth in
> >>     megahertz. The e.i.r.p. spectral density shall not exceed 10 dBm in
> >>     any 1.0 MHz band.
> >>
> >> However, for < 20 MHz, like 5 or 10, which we in theory do support, you
> >> can't use that much due to the spectral density requirement. It seems
> >> possible that that's where the 17 dBm came from, since 10 + 10 log10(5)
> >> is about 17.
> > 
> > Yes, thanks. I had forgotten to consider bandwidths less than 20 MHz.
> > 
> > Seth
> > 
> > _______________________________________________
> > wireless-regdb mailing list
> > wireless-regdb@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/wireless-regdb
> > 
> 
> According to  .../include/net/cfg80211.h
> 
> >static inline int
> >ieee80211_chandef_max_power(struct cfg80211_chan_def *chandef)
> >{
> >	switch (chandef->width) {
> >	case NL80211_CHAN_WIDTH_5:
> >		return min(chandef->chan->max_reg_power - 6,
> >			   chandef->chan->max_power);
> >	case NL80211_CHAN_WIDTH_10:
> >		return min(chandef->chan->max_reg_power - 3,
> >			   chandef->chan->max_power);
> >	default:
> >		break;
> >	}
> >	return chandef->chan->max_power;
> >}
> 
> This looks to me like it already handles the reduction of power
> according to bandwidth.

Johannes, just wanted to confirm that based on this you no longer have
any objection to the changes.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

