Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=KDHVveTjc2ibmEjTZVrvvI/5eWcKXrzHFnr4ou3Bk+U=;
 b=s6MJcIqw/D53oD
 uSXCZivB3tWQrz2CePoubCXe71djKdOe+KQyGAxjC/VQRb+/Vf07SJGjzsgDdMX5T+Syc02e1145h
 JPfCWhZZDSTnDU2dBN95DkYRUi4n6AzAPmog3qxXSR5fLkdXHkbe966wxyJOR/Kgehe3Y2PloMV3r
 J4i1RZ0K7ZS9vEqFbEdYfSwk2/imwzgmu5YyGYHVgj3KJ5UEboP04/IE0PrBWG4CDxYpX6NSa9Qqq
 tJnoIZ+d5xeGGV4M342HtNGIPvMC+E2FqsYJMSfviMOAebUB/qU2BWHbj58/6R2m0sf8s3NfoSpDe
 6zuZy8yo83wuY8ZzoeIw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwuvL-0000CW-Ok
 for wireless-regdb@lists.infradead.org; Tue, 26 Sep 2017 18:49:41 +0000
Received: from mail-qk0-f198.google.com ([209.85.220.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1dwuux-0005xR-9m
 for wireless-regdb@lists.infradead.org; Tue, 26 Sep 2017 18:49:15 +0000
Received: by mail-qk0-f198.google.com with SMTP id b82so15911603qkc.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 26 Sep 2017 11:49:15 -0700 (PDT)
Date: Tue, 26 Sep 2017 14:49:11 -0400
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170926184911.sjus64e3zdj43pjh@ubuntu-xps13>
References: <20170914144942.GA32066@rhlx01.hs-esslingen.de>
 <20170926151228.GA18261@rhlx01.hs-esslingen.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170926151228.GA18261@rhlx01.hs-esslingen.de>
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update rules for 2.4GHz
 limit Republic of Korea (KR)
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
To: Andreas Mohr <andi@lisas.de>
Cc: Andreas Mohr <andim2@users.sf.net>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Sep 26, 2017 at 05:12:28PM +0200, Andreas Mohr wrote:
> Dear Sir / Madam,
> 
> On Thu, Sep 14, 2017 at 04:49:42PM +0200, Andreas Mohr wrote:
> > Dear Sir / Madam,
> > 
> > we have initiated a WiFi SAR/RF testing/certification effort of our current device
> > (handheld, TI WL1271 WLAN/Bluetooth BLE module, current Linux distribution: Ubuntu 12.04 LTS, to be modernized).
> > 
> > During our activities with Korean KC certification body, the following request has been made (TÜV Korea):
> > 
> > Mail 2016-06-14:
> > "
> > Please keep the power limit of less than 20mW as sent in our previous e-mail (if not fulfilled, the test will be failed).
> > <red>Please do not send out samples before it complies to the requirement.</red>
> > "
> > 
> > 20mW equals 13dBm.
> 
> Any thoughts on my change request? Further input needed?

No more input at this point, I just need to make some time to look at
this. Apologies for the delay.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
