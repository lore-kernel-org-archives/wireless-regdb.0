Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=Cb2BAEtPgb7mFW2n1IUN8Cvr7SFIVX64VL9Hunb+3nI=;
 b=YgCU8KXHPb8T6+eOkBdP4YOJJ
 t7kcuqygZ/+sAa4GkTo1JWIMB1rt1hbOkmk8/S3M5VcnLUOP2Q25q4vNfLU8hNlO9pbrSsu0pTmZ6
 0D0vaX7Im9OuXuFpU2VOPIUvH4BuC5eBKhyIemp95gr/lY5LiKMoitDoz5kYtH3dfLTphv/KIozdU
 wA5CguqHUyPW3pDgTiQdUXH61LLds3VoaQbiAaU1kJxlTNkzuVbfXVQJ1xsveVxFM1cjX1NGoOCV1
 tz2SRDYOul07hwfDkAkstd/YIRfyf1PlMVQxeVz1oJug8Dzn2VbO5mTjR/0zqWZOa28gersNNhcFu
 KDgHXBF2g==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcUcy-0002k1-Es
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 14:28:09 +0000
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kcUcw-0002x4-OC
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 14:28:07 +0000
Received: by mail-il1-f199.google.com with SMTP id f8so9391390ilj.18 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Nov 2020 06:28:06 -0800 (PST)
Date: Tue, 10 Nov 2020 08:28:03 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201110142803.GK6125@ubuntu-x1>
References: <20200913172140.66439-1-robert.marko@sartura.hr>
 <20201109231649.GH6125@ubuntu-x1>
 <CA+HBbNHfxt7pggPDtz2gTyg74OD9KmYto7-Lck3qF_pTGvuQqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+HBbNHfxt7pggPDtz2gTyg74OD9KmYto7-Lck3qF_pTGvuQqQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Croatia (HR)
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
To: Robert Marko <robert.marko@sartura.hr>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Luka Perkov <luka.perkov@sartura.hr>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Nov 10, 2020 at 11:35:38AM +0100, Robert Marko wrote:
> On Tue, Nov 10, 2020 at 12:16 AM Seth Forshee
> <seth.forshee@canonical.com> wrote:
> >
> > On Sun, Sep 13, 2020 at 07:21:40PM +0200, Robert Marko wrote:
> > > Croatian Regulatory Authority for Network Industries (HAKOM) has
> > > updated the general licenses OD-85 and OD-86 with the new OD-85a
> > > and OD-86a versions.
> > >
> > > These introuduce the following changes:
> > > * Outdoor usage for 5150-5250 and 5250-5350 MHz ranges is permitted
> > > * 5150-5250 MHz range TPC requirment was dropped and power output raised to 200mW
> > >
> > > OD-85a: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_85a.pdf
> > > OD-86a: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_86a.pdf
> > >
> > > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > > Cc: Luka Perkov <luka.perkov@sartura.hr>
> > > ---
> > >  db.txt | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index ac32483..52d0fab 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -693,8 +693,8 @@ country HR: DFS-ETSI
> > >  # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
> > >  # HR: http://tablice.hakom.hr:8080/vis?lang=en
> > >       (2400 - 2483.5 @ 40), (100 mW)
> > > -     (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> > > -     (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> > > +     (5150 - 5250 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI
> >
> > Based on the translation I'm reading the 200 mW applied to elevations
> > from 5 degrees to 30 degrees, and for elevations above 30 degress the
> > limit is 125 mW. I'm not expeienced with regulations that vary with the
> > elevation angle. Why should we use 200 mW instead of 125 mW, which is
> > allowed for any elevation?
> 
> You can see in the OD-86a that now 1W (30 dBm) EIRP is the maximum
> allowed power.
> Then in usage conditions, they state that if median EIRP power larger
> than 200mW (23 dBm) is used then the listed
> angle and power limits should be used.
> That is why I used 200mW as it has no limitations associated.

Right, but OD-86a applies to 5250-5350 MHz. I don't see this same
statement in OD-85a.

However, digging into it a little more, it looks like the elevation
restrictions come from WRC-19 resolution 229 [1], which has more detail.
Based on my reading of that it seems that the situation here actually is
similar to that for 5250-5350 MHz, i.e. that 200 mW is the general limit
but that operation at 1W is allowed subject to the stated elevation
angle restrictions. So it sounds like the 200 mW limit for 5150-5250 MHz
should be okay.

[1] https://www.itu.int/dms_pub/itu-r/opb/act/R-ACT-WRC.14-2019-PDF-E.pdf

> >
> > > +     (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, wmmrule=ETSI
> >
> > The translation of OD-86a I'm reading says "use mostly indoors." Is that
> > an accurate translation? How does this compare to the language from
> > OD-86? I'm a little unsure how to interpret it.
> 
> Yes, it's accurate.
> In OD-86 this was strictly written as "exclusive use indoors", Hakom
> even stated in their press release that the
> changes to OD-86 now allow outdoor usage.
> https://www.hakom.hr/default.aspx?id=10442
> It's in English.
> 
> They are just trying to encourage the band to still be mostly used for
> indoor stuff.

Great, thanks for clarifying.

I've applied the patch. Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

