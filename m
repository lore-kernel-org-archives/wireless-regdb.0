Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:In-Reply-To:
 References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=gs9Yt7UMdJu+noEXqSGaVsysfS96WDMaAk+4OkFl5TI=;
 b=IkVZiK3dBW58u/CVnFDRG+ZkH
 FeWoKMBwM6gL7Uy5/J8ryuAiPpy+roJXgsfUpqDo+jfvpxZv2PbK/UZnKUhUPHe8IKw4fL5uHFYJR
 aHUolCKqKL35wRasNhVvb390OK9mlx4a7+hh38F1TyqX/QMKVF+VkXoFIQU6fhN3uHoxYMrWVd7Sn
 BDWnad3q2IfNxgFzbFn4hpfI/t35x5WsPMVy53YI56CTPyaaNoLgBLN7JRxf7kFNv5OyXLK17pyt6
 G3OeUno3MSeketUHUOZv5ZB8QQVCANMH9QW28wrY6UJp8tSZ5330zvKGImy1RHRsMMV2xq4u6w9mi
 wPYrqpC9A==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmDTs-0004ND-5Y
 for wireless-regdb@lists.infradead.org; Mon, 07 Dec 2020 10:10:57 +0000
Received: by mail-lf1-x143.google.com with SMTP id l11so17269122lfg.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 07 Dec 2020 02:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=K47wu4tGpZjEegZDHSMcX//OMw84yDtF4PLZpldFX/c=;
 b=X7FVyP/JmIsydfoF1R1cBkwRC4MVs1AN6WluJJ4MmelUT9cg7OlL/J1MTbUhqWl6QW
 6WYj1v/xcVEHcCKxfdTSNijjIL6OU3Aa6+Id8b3TyhDFJRFk1VD7dzZMP2SZXw1qr+xc
 W7hHMhkGXJTx6utwZiJb1p1SrUnasJkLb5e5iTGBMulPSfjzzIXjgKn9Bv/gHRculRwP
 rxdV4MZP7LN74W8+QAsVowe0xBQ7uy+sDXlBhpXezQSeQlBjFzPK4RToD+eMP/BGDLeb
 IB25OxgP5X7m/9AFW9ItBcHwe9paB0pBPlIQAG54/7rUWlfSE7FcOilkzDf27QnPBcYS Q7ow==
MIME-Version: 1.0
References: <a79286b90cdfdee3a83397008c0f7b6d67bc7f69.1607035229.git.b.K.il.h.u+tigbuh@gmail.com>
 <X8pRrWfZPhLdguu8@ubuntu-x1>
 <CAPuHQ=EUcsn24EoSP+PGH2H6kPROvauyJN_6RtYLXqVYW=sK-g@mail.gmail.com>
 <X82welCPwyUV8VJw@ubuntu-x1>
In-Reply-To: <X82welCPwyUV8VJw@ubuntu-x1>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Mon, 7 Dec 2020 11:10:41 +0100
Message-ID: <CAPuHQ=EXa9zbXuqoU44b=Jv=hL4tK3nRPksgOEN=LVjJvWt8PA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: recent FCC report and
 order allows 5850-5895 immediately
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Indeed your logic seems reasonable regarding passive scanning.
However, I'm only looking at it from a wireless-regdb perspective:
this seems to be the first NO-IR directive in the database other than
for the "world" domain, and I thought that NO-IR is more of a thing
that would apply for client devices having no clue where they are, but
wouldn't adding NO_IR here keep hostapd from enabling an AP on such a
channel? Here's some documentation on this:

https://wireless.wiki.kernel.org/en/developers/regulatory/processing_rules#beacon_hints

I see that passive-scan and no-ibss flags had been consolidated in this commit:

https://patchwork.kernel.org/project/linux-wireless/patch/1382376158-25586-2-git-send-email-mcgrof@do-not-panic.com/

This is a use case that might see a benefit in splitting the two
again. But isn't that what PTMP-ONLY is for? Although, they mention at
one place that PTMP-ONLY isn't quite being used in the code as of now.

Some more mentions:
https://medium.com/@renaudcerrato/how-to-build-your-own-wireless-router-from-scratch-part-3-d54eecce157f
https://www.spinics.net/lists/linux-wireless/msg124066.html

On Mon, Dec 7, 2020 at 5:33 AM Seth Forshee <seth.forshee@canonical.com> wrote:
>
> On Sat, Dec 05, 2020 at 09:24:03PM +0100, b.K.il.h.u+tigbuh@gmail.com wrote:
> > Thanks for double checking. Honestly, I've only spent a few hours
> > skimming through the document and haven't read it through all the way.
> >
> > Agreed that both bandwidths should probably be upped to 160.
> >
> > Considering  § 15.407 (a)(3)(v): shouldn't the flag `PTMP-ONLY`
> > already signal this infrastructure-mode only restriction? I think
> > sending a probe request frame before connecting may be considered a
> > "brief message", and NO-IR would even disallow that. Also, if we added
> > NO-IR, wouldn't that close the band for AP's running Linux as well?
>
> But it's a brief message "after detecting a signal that confirms that an
> access point is operating on a particular channel." I think that implies
> a passive scan, then sending an association request only after seeing a
> beacon from the AP on the channel. I could be wrong though; my memory on
> the 802.11 protocol is rusty and out of date.
>
> Thanks,
> Seth
>
> >
> > Other than deciding the above questions, should we get back to
> > finishing this patch after publication sometime next year? There may
> > be a chance for it to change until then.
> >
> > On Fri, Dec 4, 2020 at 4:11 PM Seth Forshee <seth.forshee@canonical.com> wrote:
> > >
> > > On Thu, Dec 03, 2020 at 11:40:30PM +0100, bkil wrote:
> > > > The new band is called U-NII-4.
> > >
> > > The report states in paragraph 203 that the order is effective 60 days
> > > from publication in the Federal Register, and it looks like they haven't
> > > even been published in the Federal Register yet. We will need to wait
> > > for the rules to go into effect before applying any updates.
> > >
> > > > The report recommends combining it with 5725-5895 to allow 160 MHz
> > > > bandwidth, but that's technically not that easy with regdb due to the
> > > > differing restrictions of the two parts. Marking the line for U-NII-3
> > > > NO-OUTDOOR and PTMP-ONLY along with extending its range would be a
> > > > possible workaround, but this needs to be discussed.
> > >
> > > I think it should be sufficient to set the bandwidth of both 5730-5850
> > > and 5850-5895 to 160 MHz with AUTO-BW. The kernel will see the AUTO-BW
> > > flags and calculate a combined rule where 160 MHz is allowed, and for
> > > the original rules any bandwidth exceeding the available bandwidth of
> > > the rule will be disallowed.
> > >
> > > > I don't see a requirement for TPC, hence reducing EIRP by 3dB is not
> > > > needed. I've marked it 33dBm (minus 6dB for clients) to cope with 20MHz,
> > > > but the band can support higher power, though the logic is complicated.
> > >
> > > I believe we have an additional requirement from § 15.407 (a)(3)(v):
> > >
> > >   In the 5.850-5.895 GHz band, client devices must operate under the
> > >   control of an indoor access point. In all cases, an exception exists
> > >   for transmitting brief messages to an access point when attempting to
> > >   join its network after detecting a signal that confirms that an access
> > >   point is operating on a particular channel.
> > >
> > > This sounds like a requirement for passive scanning, if so the range
> > > should also have the NO-IR flag.
> > >
> > > Thanks,
> > > Seth
> > >
> > > >
> > > > The upper subband (5895-5925 MHz) of the new band is reserved for ITS.
> > > >
> > > > "We limit unlicensed use to indoor operations in recognition of the
> > > > potential that ITS licensees may currently be operating"
> > > >
> > > > "We also proposed that U-NII-4 devices be permitted to operate at the same
> > > > power levels as U-NII-3 devices."
> > > >
> > > > "For the U-NII-4 band, indoor access point EIRP will be limited to
> > > > 33 dBm/20 MHz and 36 dBm/40 MHz. When combined with U-NII-3 band spectrum,
> > > > indoor access point EIRP can scale to 36 dBm for 80 and 160 megahertz
> > > > channels."
> > > >
> > > > "Client devices would be limited to power levels 6 dB below the power
> > > > limits for access points."
> > > >
> > > > "the First Report and Order prohibit U-NII-4 client-to-client
> > > > communications to protect co-channel incumbent ITS"
> > > >
> > > > Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
> > > > ---
> > > >  db.txt | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/db.txt b/db.txt
> > > > index c71a03a..e6dd063 100644
> > > > --- a/db.txt
> > > > +++ b/db.txt
> > > > @@ -1587,7 +1587,10 @@ country US: DFS-FCC
> > > >       # requirements, we can extend the range by 5 MHz to make the kernel
> > > >       # happy and be able to use channel 144.
> > > >       (5470 - 5730 @ 160), (23), DFS
> > > > -     (5730 - 5850 @ 80), (30)
> > > > +     (5730 - 5850 @ 80), (30), AUTO-BW
> > > > +     # https://www.fcc.gov/document/fcc-modernizes-59-ghz-band-improve-wi-fi-and-automotive-safety-0
> > > > +     # max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
> > > > +     (5850 - 5895 @ 40), (27), NO-OUTDOOR, PTMP-ONLY, AUTO-BW
> > > >       # 60g band
> > > >       # reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> > > >       # channels 1-6 EIRP=40dBm(43dBm peak)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
