Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-it0-f48.google.com ([209.85.214.48])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cb6P7-0006Vb-5L
 for wireless-regdb@lists.infradead.org; Tue, 07 Feb 2017 14:05:59 +0000
Received: by mail-it0-f48.google.com with SMTP id r185so79940521ita.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 07 Feb 2017 06:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Gd0dsY5aVAJtBsHUg3KiPuTqFrJnwroV8wB2kohr9NU=;
 b=tZbzAGVSO6fiPjetTPsWR+meYp6KQPb5bbdk8XoWpeDCOppJUUxeUtGWMZ6qDdTgNJ
 VvPh50kpf6Cdg/2zS//0xW8TFfMSkdnGK2wjfoziwPOIePdxAe1Zh45GaihOLdAi3/Sy
 CjKX9xZU38Ak+WEDSLfVEsNCmWe4YxHNKNVnnhgcLW4SleXQuIJfyakSegJ6z3HouS4U
 IbL3/waAxxElsUU8dEAH4Z61atzHq85Bn3LtNJy3z8TSWSbYmCQFM0WAO2vWCh2fV+tF
 gjroGc0AcOSoMiFMJXL3lqYPGDAD6TLJgSC29dKQhf2MvswKuRfiGrrxWmDgdcNNZmCh
 DBvw==
Date: Tue, 7 Feb 2017 08:04:34 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170207140434.GA109741@ubuntu-hedt>
References: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
 <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
 <1486453950.2643.1.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1486453950.2643.1.camel@sipsolutions.net>
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: cory novak <cory.novak@gmail.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Feb 07, 2017 at 08:52:30AM +0100, Johannes Berg wrote:
> On Mon, 2017-02-06 at 14:50 -0600, Seth Forshee wrote:
> > +	(5150 - 5250 @ 80), (23), AUTO-BW
> 
> For 20 MHz this is right, since the document says:
> 
>     The maximum e.i.r.p. shall not exceed 200 mW or 10 + 10 log10 B,
>     dBm, whichever power is less. B is the 99% emission bandwidth in
>     megahertz. The e.i.r.p. spectral density shall not exceed 10 dBm in
>     any 1.0 MHz band.
> 
> However, for < 20 MHz, like 5 or 10, which we in theory do support, you
> can't use that much due to the spectral density requirement. It seems
> possible that that's where the 17 dBm came from, since 10 + 10 log10(5)
> is about 17.

Yes, thanks. I had forgotten to consider bandwidths less than 20 MHz.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

