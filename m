Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:In-Reply-To:
 References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=LWF8MAfwdhYseYMXyTco7WtB6fVyuWRUkyH6al8d8SU=;
 b=KoHIPBWUY+XG228MCGRDcezMW
 V0tFwV5HtL5WZ7hLz/D7qG/l0wvVbZ9oe2EUcVnP8P2+FK5GiNwh+6+x90fpQlpm71Kbm5hxONIDm
 4Yk7SJPqA3Qn/7COz5jvE37onYWjkndBmm0Va0uTblr+h8o7cYfwpLhdE6sI1aGdovQtuPS8Phz80
 jw/ZieIPlh3WGBgGQcbZVvaNKpADqiMHITurRxryC+AM87xdRwkqcu2SUDaCYrkLX8sScWA+WsIDL
 V5W731XVOXjDhbKj5dPeCAhuy47ATa7MTnAo77RMYcl7KgK/wg4b04AWlAwtLxi6ksO+1fBaMH3MN
 JjWdjjvFQ==;
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kle6N-0001Jg-MV
 for wireless-regdb@lists.infradead.org; Sat, 05 Dec 2020 20:24:20 +0000
Received: by mail-lf1-x141.google.com with SMTP id s27so12480561lfp.5 for
 <wireless-regdb@lists.infradead.org>; Sat, 05 Dec 2020 12:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5R5hbI6biOrhFi72PZ0N9OyJIbErNw6C3yWTUOEjdUE=;
 b=Ud7WgjmZxAMJgtEW+A4CekkOTT0q/Ftcg4Ut/RQlz4ueYAzarkyZZdnM+fvXGGrdmz
 CjvS2QQip3HeIOCveRIcxSLr4m2OZLRDg6HZkLh4fOGG2SVOg+peWWeyuwDnMgBxqw2L
 BywLaaavT+UDcBngxfr8T/zevWoHsRxwZESvXNh/+DDsEsH1VO6B+NI3T+yurY2kp/S7
 ebiYmhuEBFNmf3dSDFYds0OhfqscsbpkS0lfw7e6LEWzugCgYBypDpmoheJUJF9kItgr
 wS36YFSFYVZSllY0WGmoDTnLOGBN0PSLo7f8Z9mCoKD4Ct5gDPt3Sq9eFilRBTNX3l9C KdAg==
MIME-Version: 1.0
References: <a79286b90cdfdee3a83397008c0f7b6d67bc7f69.1607035229.git.b.K.il.h.u+tigbuh@gmail.com>
 <X8pRrWfZPhLdguu8@ubuntu-x1>
In-Reply-To: <X8pRrWfZPhLdguu8@ubuntu-x1>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Sat, 5 Dec 2020 21:24:03 +0100
Message-ID: <CAPuHQ=EUcsn24EoSP+PGH2H6kPROvauyJN_6RtYLXqVYW=sK-g@mail.gmail.com>
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

Thanks for double checking. Honestly, I've only spent a few hours
skimming through the document and haven't read it through all the way.

Agreed that both bandwidths should probably be upped to 160.

Considering  § 15.407 (a)(3)(v): shouldn't the flag `PTMP-ONLY`
already signal this infrastructure-mode only restriction? I think
sending a probe request frame before connecting may be considered a
"brief message", and NO-IR would even disallow that. Also, if we added
NO-IR, wouldn't that close the band for AP's running Linux as well?

Other than deciding the above questions, should we get back to
finishing this patch after publication sometime next year? There may
be a chance for it to change until then.

On Fri, Dec 4, 2020 at 4:11 PM Seth Forshee <seth.forshee@canonical.com> wrote:
>
> On Thu, Dec 03, 2020 at 11:40:30PM +0100, bkil wrote:
> > The new band is called U-NII-4.
>
> The report states in paragraph 203 that the order is effective 60 days
> from publication in the Federal Register, and it looks like they haven't
> even been published in the Federal Register yet. We will need to wait
> for the rules to go into effect before applying any updates.
>
> > The report recommends combining it with 5725-5895 to allow 160 MHz
> > bandwidth, but that's technically not that easy with regdb due to the
> > differing restrictions of the two parts. Marking the line for U-NII-3
> > NO-OUTDOOR and PTMP-ONLY along with extending its range would be a
> > possible workaround, but this needs to be discussed.
>
> I think it should be sufficient to set the bandwidth of both 5730-5850
> and 5850-5895 to 160 MHz with AUTO-BW. The kernel will see the AUTO-BW
> flags and calculate a combined rule where 160 MHz is allowed, and for
> the original rules any bandwidth exceeding the available bandwidth of
> the rule will be disallowed.
>
> > I don't see a requirement for TPC, hence reducing EIRP by 3dB is not
> > needed. I've marked it 33dBm (minus 6dB for clients) to cope with 20MHz,
> > but the band can support higher power, though the logic is complicated.
>
> I believe we have an additional requirement from § 15.407 (a)(3)(v):
>
>   In the 5.850-5.895 GHz band, client devices must operate under the
>   control of an indoor access point. In all cases, an exception exists
>   for transmitting brief messages to an access point when attempting to
>   join its network after detecting a signal that confirms that an access
>   point is operating on a particular channel.
>
> This sounds like a requirement for passive scanning, if so the range
> should also have the NO-IR flag.
>
> Thanks,
> Seth
>
> >
> > The upper subband (5895-5925 MHz) of the new band is reserved for ITS.
> >
> > "We limit unlicensed use to indoor operations in recognition of the
> > potential that ITS licensees may currently be operating"
> >
> > "We also proposed that U-NII-4 devices be permitted to operate at the same
> > power levels as U-NII-3 devices."
> >
> > "For the U-NII-4 band, indoor access point EIRP will be limited to
> > 33 dBm/20 MHz and 36 dBm/40 MHz. When combined with U-NII-3 band spectrum,
> > indoor access point EIRP can scale to 36 dBm for 80 and 160 megahertz
> > channels."
> >
> > "Client devices would be limited to power levels 6 dB below the power
> > limits for access points."
> >
> > "the First Report and Order prohibit U-NII-4 client-to-client
> > communications to protect co-channel incumbent ITS"
> >
> > Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
> > ---
> >  db.txt | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/db.txt b/db.txt
> > index c71a03a..e6dd063 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1587,7 +1587,10 @@ country US: DFS-FCC
> >       # requirements, we can extend the range by 5 MHz to make the kernel
> >       # happy and be able to use channel 144.
> >       (5470 - 5730 @ 160), (23), DFS
> > -     (5730 - 5850 @ 80), (30)
> > +     (5730 - 5850 @ 80), (30), AUTO-BW
> > +     # https://www.fcc.gov/document/fcc-modernizes-59-ghz-band-improve-wi-fi-and-automotive-safety-0
> > +     # max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
> > +     (5850 - 5895 @ 40), (27), NO-OUTDOOR, PTMP-ONLY, AUTO-BW
> >       # 60g band
> >       # reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> >       # channels 1-6 EIRP=40dBm(43dBm peak)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
