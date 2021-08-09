Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Message-ID:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=WuwkfYPZtV4k+zmS8czUKjkWaOqP8hNaLdssRBJk1ZE=;
 b=3f5yUAyTU6B1RxBO3aVsoOkV9t
 hBX6LMZAJKVMH5/7cOFhUP9WvWgV80gKDVGtN750s89CQFioKFRQX0In2sz2xEyxHBxsZnW7grsQp
 Qgm291bnb8D8354Y4n662BD2GR53cafDOL4Xq8treUSgOQ0JuppNCWvdiOrruJ3EXouP8r8LAbH7X
 LPIzW8VCRQ4oVeumv8WU4pw2+0z8FUbY+si6l1jklnw9UiBMgINPFY87wamhFR3sKEzNMh1nMWxaV
 Hi/PPJsEFbW1IFaBcU9MYZSRtozBc6ssAhhEb7QXuILVdt1irnqcSz9auRlihcmYIQnQ/0+YpJEHJ
 +641no2A==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDBXk-001uV0-HT
 for wireless-regdb@lists.infradead.org; Mon, 09 Aug 2021 20:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sipsolutions.net; s=mail; h=Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID;
 bh=90lz2zud1WgSXseIMdNWHlW1oOyzXVZMgq01KiaMJiw=;  t=1628539596;
 x=1629749196; b=i2ridrsfFiF26yfWMrq8lYb+iEquBdnYAPdZXsoM6++AM5z
 Ljogqeh6Nk3dq/JSXgfcEDzOXS6I8Cz7t5tNf6VSdVtTMtjAxdHtIpb+pOAy/LCIs32wLPkwCLSeD
 951y3UaumVFdD+obhlF7/PDi95A9CcXq8IfBnZENoR7RMw3XRUYhyLskiJyvzKWlwa5UI2pS61KAB
 KzFn2LeEeoe2cBaLB9xA6XbsvOztBi0lY25Cu7cXXb6f1TLswNfr7P9vwl9QRd7dxqNqJKKUvXbVM
 8NHxoxbH7O7fY68oV/evQlK+mmNPqnmQryxwc4WI3S/aX2xIgg2FahpE0E1nEQrQ==;
Message-ID: <1f441ba830535161b62086c1fee0d027b36bffc6.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 09 Aug 2021 22:06:31 +0200
In-Reply-To: <YOdVFE51Wbxr80Qf@ubuntu-x1>
References: <CAPuHQ=GbacSTgyimkJtx1FXp319Df=LdrPQZ6ZDnPQ_JVXueKw@mail.gmail.com>
 <10ffaa74a0779b7c7047de70cb1db7dfb0000022.1625068999.git.b.K.il.h.u+tigbuh@gmail.com>
 <YOdVFE51Wbxr80Qf@ubuntu-x1>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: recent FCC report
 and order allows 5850-5895 immediately
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
To: Seth Forshee <seth.forshee@canonical.com>, bkil <b.K.il.h.u+tigbuh@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

Uh, sorry for the delay.
> 
> The first is that it seems I forgot to test build this patch before I
> pushed it. The PTMP-ONLY flag isn't allowed by db2fw.py. This was done
> by Johannes for reasons which aren't explained, so maybe he can shed
> some light on it. The flag doesn't appear to be used by the kernel or
> hostapd, so maybe it was deprecated long ago. Anyway, I've pushed a
> change to remove this flag.

I don't remember, but quite likely we decided it was just not something
we could implement properly or so, and never supported it? Sorry.

Clearly the kernel does nothing at all with NL80211_RRF_PTMP_ONLY.

> The second problem is more serious. I thought that we could allow 160
> MHz bandwidth across two AUTO-BW ranges too small for this bandwidth,
> but it turns out that the kernel rejects any rules with a bandwidth
> greater than the frequency range of the rule. I'm not sure what we can
> do about this. Even if the kernel were changed to support allowing
> greater bandwidths across combined ranges, we're going to have a
> backwards compatibility problem with older kernels.

OTOH, doesn't AUTO-BW basically ignore the max bandwidth for a given
range anyway, seeing the code in reg_get_max_bandwidth_from_range()? So
just keeping it at 80 with AUTO-BW would still result in 160 being
usable? I think?

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

