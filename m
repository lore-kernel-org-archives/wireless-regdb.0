Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=2nUtxH/m1TmA56x+7rmeVmftMweV1uNOVBuNQaac334=;
 b=LEYI6NHkSuG1IZ
 srSEcif5we6LATK/PThPLsTPjNdUSpGkWIO5RHd8k2mmokFr5ivmDAQpnBAuojz/lcFl+5YKFyJrz
 a55xZdgC7GxTLkhAtA0vYX6ZM5TifyvY2cLxAFQB+HemXGfKDu6i1IPSVXX1BUxWwfmGQ32KZ3FCx
 +2VV+vNIQ10SRCq3EDW+cdwinMMinU+kfHzdN49uguUHupLooWPcezSK3oisoEiUvciKCdzjvOFOn
 xZwjW7D+wehdX+RgIZngkYgRN8BsTdpuqZtHLd9WmxfAsum+66iXVmvoVvnjFxXXP0sXj+kToH5Xo
 IUgAYapcrjy7o9rEWGuw==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209;
 h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rJoDqLcW1URsAX2ZO3qmFRyPjt5VXEsPlnUYJbl0ybI=;
 b=flOn68FYZk+zAWXLxpx/13Ev9
 4galy9O7gDRIUS/nSVj79C8UxEMZHNa7H1FWMcevpz+rooqOxG2eJVl/C8ZPWxfHFxCZVVc5CI4hw
 2Z5elxxwjH4q6tHhzuTnRA4w3acTH6t5wLhQavkf7YUYDMektNFWS26Fg9ByBoApAky/Ax9lwLunN
 9XdIpridlUmzcm5TICT5bBweUx2EG1cVL+PCJPO0sltrz9FVNZosHr1TvLN4iJVLa+Ic2jZyhj0oL
 xML6eWJ1+Q6BW6GTYsiawHoUFoC0fyKUSNIogGIqTnkl7CHCW8mUrhW2XL02BVKYLVALVHLsZsQnN
 lUVDowNPA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f1ubQ-0001kA-9F
 for wireless-regdb@lists.infradead.org; Fri, 30 Mar 2018 14:02:02 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1f1ubE-0008RF-RM
 for wireless-regdb@lists.infradead.org; Fri, 30 Mar 2018 14:01:48 +0000
Received: by mail-io0-f200.google.com with SMTP id 185so7801267iox.21 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Mar 2018 07:01:48 -0700 (PDT)
Date: Fri, 30 Mar 2018 08:59:34 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180330135934.GR18469@ubuntu-xps13>
References: 
	 <CAD7otF4u6oyC4+xSZFO_taOiwkHot5MNCECByY89UMdPsjZObg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD7otF4u6oyC4+xSZFO_taOiwkHot5MNCECByY89UMdPsjZObg@mail.gmail.com>
Subject: Re: [wireless-regdb] Update regulatory rules for Panama (PA) on
 2.4 and 5 GHz
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
To: Michael Chen <michaelchentejada@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Feb 16, 2018 at 02:33:25PM -0500, Michael Chen wrote:
> Hi,
> 
> I've been researching which frequencies are allowed for WiFi in Panama since I
> noticed that WiFi channels 12 and 13 are currently not accesible. After some
> research, I found that there are a few discrepancies that can be corrected in
> the 2.4ghz and 5 ghz band. Furthermore, the 5470-5725 band and the 57-64 Ghz
> band were recently added to the regulation.
> 
> Source: http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf
> 
> Go to article 11.5 (pages 18, 19, and 20) for the WiFi frequencies.
> 
> Allowed frequencies:
> 2400 - 2483.5 MHz 30dbm - 36dbm EIRP (See article 11.5.1)
> 5150 - 5250 MHz - 1W transmission - 4W EIRP (See article 11.5.2)
> 5250 - 5350 MHz - .250W transmission - 1W EIRP
> 5470 - 5725 MHz - .250W transmission - 1W EIRP
> 5725 - 5850 MHz - 1W transmission - 4W EIRP
> 57 - 64 Ghz - 27dbm transmission - 43dbm EIRP (See article 11.5.4)

Based on reading a translation of the document, these limits look right.
What I can't find is any indication of whether TPC or DFS is required in
any of these ranges (based on the existing rules there seems to be a
requirement for DFS at least). Possibly it's just not coming across in
the translation; could you check whether there's any information about
TPC or DFS, and if not see if that information is perhaps found
elsewhere?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

