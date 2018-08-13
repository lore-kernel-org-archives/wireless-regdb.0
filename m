Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=iZXN3z3oqemxd0AVMaD2+1r7afHT1iH6AmjnwrBGIJQ=;
 b=K2rHvjt/QwY7cD
 X/xfabiyDR5bd1Zjo4BdL7c2a+QWXhf8iPAcZotudDgy2AUYqzaNuFYJPKrq9ZWKjTiO/EdCJ6yeC
 6Raq+JLML0J+0og+X0nvjRMPm5TZ1JtCQnMjRcPkTjQx0A1BeDbV5aW+S1OUcqh+0wu3utAWcgGGr
 4TytZDTuGxudjZR8lbJmB9n/tVdNVAjeMZEvscd2i0ZYSjaWdOKRd9Z17jud4j0kcAo9QpjCsT4NV
 Rv4LufocYI9PSqIQCDaHZmVBT8+DxmNju7EzgTSTCIaxLZN7EjxDZvBWB2dFAmAoZq3UFx/MDLTNa
 +4wtvljNBv7wkwHV9Ubg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpCBR-0001TZ-Rk
 for wireless-regdb@lists.infradead.org; Mon, 13 Aug 2018 12:42:55 +0000
Received: from mail-it0-f69.google.com ([209.85.214.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fpCBG-0003xa-Ib
 for wireless-regdb@lists.infradead.org; Mon, 13 Aug 2018 12:42:42 +0000
Received: by mail-it0-f69.google.com with SMTP id w132-v6so9134963ita.6 for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Aug 2018 05:42:42 -0700 (PDT)
Date: Mon, 13 Aug 2018 07:42:39 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180813124239.GB4063@ubuntu-xps13>
References: <CAPuHQ=EWtsOs2naY2pLx9D-JJbDr1kc8sisd-JNHiEekJ5ijDQ@mail.gmail.com>
 <20180813124019.GA4063@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180813124019.GA4063@ubuntu-xps13>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update rules for
 Hungary (HU) on 2.4/5/60G, 5725-5875MHz
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
To: bkil <bkil.hu+Aq@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Aug 13, 2018 at 07:40:19AM -0500, Seth Forshee wrote:
> On Sat, Jun 30, 2018 at 10:40:34PM +0200, bkil wrote:
> > * 2400-2483.5M: extend bounds
> > * 5150-5250M: extend bounds, add NO-OUTDOOR, no TPC so +3dB
> > * 5250-5350M: extend bounds, add NO-OUTDOOR
> > * 5470-5725M: extend bounds
> > * 5725-5875M: introduce, as EU SRD provisions have been implemented
> > * 57-66G: add NO-OUTDOOR
> > 
> > Freely available online references have been added hosted by the regulatory
> > body in Hungary, the National Media and Infocommunications Authority.
> > 
> > To refer to a specific section, you can grep for the frequency in question.
> > 
> > Translation key:
> > "Csak beltéri" / "Épületen belüli használatra korlátozott" = indoor only;
> > "Kültéri és beltéri" = both indoor and outdoor;
> > "Nem működő TPC esetén a maximális teljesítményjellemzők 3 dB-lel
> > csökkennek." = reduce max power specs by 3dB in case of no TPC;
> > "Rögzített kültéri telepítés nem megengedett" = no fixed outdoor install
> > 
> > Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
> 
> Applied, thanks!

Replied to the wrong message in the thread, to be clear what I applied
was the v3 patch.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
