Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=SgYDBohP0q0ModcAPZfSx32fWPiDYIq1Mz4GptSFtoA=;
 b=RtembHMSIB5YPJW+azvRjToW8G
 fhR/nk8qVss5KW3gh4jbDLqSdQ7McPswzTK7OWsIuLkSIAM/Fpn2p16D1IN4aOy0GEtPyR8ENHtGI
 2sWGbq5z5uLAwPpSrNKX4lqr5Ue8dNbyE8bAI6CRF8M71OBMoe9uDlWmZTWJ5FSuXn5i3J1anlEEL
 piYviFPGYp/1eirh+eOR2kLI+CMvusT0luaHhKrlZLG9M0CwwEHnRbDGozQn/+WqZgmzRnZ3a3kiQ
 G56jgwzQ7U19nW+0LYqEOJEC0fRtbaI9XBDfRZWNH5A9lJHmpKI/bd5QD0gs2efE7UTfSyb4iMZtE
 qwBXAnvw==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHUyw-00FCsL-1I
 for wireless-regdb@lists.infradead.org; Tue, 08 Feb 2022 18:12:52 +0000
Received: by mail-wr1-x434.google.com with SMTP id d27so4007278wrc.6 for
 <wireless-regdb@lists.infradead.org>; Tue, 08 Feb 2022 10:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
 :content-transfer-encoding;
 bh=1e8Hb49GwO63h/BI8NdeEkl8UpU+QjbiyOgDtlxvebQ=;
 b=FdcT42C9z1BfV2Lao7N324LPZF9iEDp69iJn3zh8igcSRJ4xkJgGlcYKALLHK5seCA
 yfLIZyvFl4VXiuplStfFV86goq0bltf6tjoPZQ0ezVPU5UcB4SKyuyDQAxsI2k6rKFSL
 /6h675K/hzkwnYAf6ugx7dXbFKOCTjBX0eXr2YWjo5LCuUFywSoGsCT/bxRO8MKSHDDJ
 fMPUP9hVXWMxPj9lMXRjkKUdZzhUBn7OgDAPhPJJEj4cpo/VmD/TYqcC14FeHP+ZhVFG
 cZ1WNOzgrSU1emYBNuLB0Jspq5wstKJC/pRlSRafRGxoXNGd4ixK+vHpTUNO8pR9XOwp oPpA==
MIME-Version: 1.0
References: <DM6PR11MB3116340921B7E66B0E4176A1D7749@DM6PR11MB3116.namprd11.prod.outlook.com>
 <Yb0HabN+Js2iWnOH@ubuntu-x1> <3e599e1a-29cd-5c86-1f43-c4ce869909b3@gorani.run>
 <YcDvD1aXJ1R7vG8y@ubuntu-x1>
In-Reply-To: <YcDvD1aXJ1R7vG8y@ubuntu-x1>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Tue, 8 Feb 2022 19:12:33 +0100
Message-ID: <CAPuHQ=G7s=kqsv7gdvOs3ZHLpwrgjYj1NivfL-BXMZZ+fzUHtw@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 the US on 6 GHz band
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
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

Sorry to chime in like this. I haven't even read the linked
documentation, but whatever the final solution will be, I would prefer
if we committed the lowest, safe power levels while we are actively
researching, deciding and implementing a final solution. We can always
raise limits later on.

On Mon, Dec 20, 2021 at 10:02 PM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Sat, Dec 18, 2021 at 04:34:13PM +0900, Sungbo Eo wrote:
> > On 2021-12-18 06:55, sforshee@kernel.org wrote:
> > > On Mon, Dec 13, 2021 at 09:19:50AM +0000, Asura Liu (asuliu) wrote:
> > > >  From 3db25ea674232fea6a5efca292f6ed3fd8eba7a2 Mon Sep 17 00:00:00 2001
> > > > From: Asura Liu <asuliu@cisco.com>
> > > > Date: Mon, 13 Dec 2021 16:46:28 +0800
> > > > Subject: [PATCH] wireless-regdb: Update regulatory rules for the US on 6 GHz
> > > > band
> > > > MIME-Version: 1.0
> > > > Content-Type: text/plain; charset=UTF-8
> > > > Content-Transfer-Encoding: 8bit
> > > >
> > > > According to FCC 20-51, FCC adopts rules to unlicensed use of the 6 GHz band:
> > > > "59. Third, the Commission limits the low-power indoor access points to lower power levels than the standard-power access points that operate under the control of an AFC. Consistent with the Commission's approach for the existing U-NII bands, the Commission specifies both a maximum power spectral density and an absolute maximum transmit power, both in terms of EIRP. Specifically, the Commission allows a maximum radiated power spectral density of 5 dBm per 1 megahertz and an absolute maximum radiated channel power of 30 dBm for the maximum permitted 320-megahertz channel (or 27 dBm for a 160-megahertz channel). In addition, to ensure that client devices remain in close proximity to the indoor access points, the Commission limits their PSD and maximum transmit power to 6 dB below the power permitted for the access points."
> > > > See https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6-ghz-band
> > > >
> > > > And 47 CFR § 15.407 describe this as following:
> > > > (a) (5) For an indoor access point operating in the 5.925-7.125 GHz band, the maximum power spectral density must not exceed 5 dBm e.i.r.p. in any 1-megahertz band. In addition, the maximum e.i.r.p. over the frequency band of operation must not exceed 30 dBm.
> > > > (a) (8) For client devices operating under the control of an indoor access point in the 5.925-7.125 GHz bands, the maximum power spectral density must not exceed −1 dBm e.i.r.p. in any 1-megahertz band, and the maximum e.i.r.p. over the frequency band of operation must not exceed 24 dBm.
> > >
> > > Thanks for the patch. A couple of quick notes about the patch
> > > description. It's preferred to wrap lines in the body at around 75
> > > characters, and it's required that you include a Signed-off-by tag
> > > indicating your agreement to the DCO for your contribution (see
> > > CONTRIBUTING).
> > >
> > > Additional comments below.
> > >
> > > > ---
> > > > db.txt | 6 ++++++
> > > > 1 file changed, 6 insertions(+)
> > > >
> > > > diff --git a/db.txt b/db.txt
> > > > index b898799..c6ef9b6 100644
> > > > --- a/db.txt
> > > > +++ b/db.txt
> > > > @@ -1606,6 +1606,12 @@ country US: DFS-FCC
> > > >   # https://www.federalregister.gov/documents/2021/05/03/2021-08802/use-of-the-5850-5925-ghz-band
> > > >   # max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
> > > >   (5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
> > > > + # 6ghz band
> > > > + # https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6-ghz-band
> > > > + # https://docs.fcc.gov/public/attachments/FCC-20-51A1_Rcd.pdf
> > > > + # max. 30 dBm AP @ 320MHz, 27 dBm AP @ 160MHz, 6 dB less for clients
> > > > + (5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW
> > > > + (5925 - 7125 @ 320), (24), NO-OUTDOOR, AUTO-BW, NO-IR
> > >
> > > The kernel doesn't currently support multiple rules with different flags
> > > for the same range. This is an issue that's come up several times, but
> > > so far nothing has been done about it.
> > >
> > > Even ingoring that, I don't think these rules accomplish the intended
> > > purpose. There's nothing that would require a client device to use the
> > > NO-IR rule, so they could end up using the higher power limit and
> > > transmitting before detecting transmission from an AP.
> > >
> > > I also suspect that we should be able to express the AFC requirement in
> > > the database before permitting AP operation in this range.
> > >
> > > Currently I think the best we're able to do is to use the lowest common
> > > denominator, which is the 24 dBm rule with NO-IR.
> > >
> > > Thanks,
> > > Seth
> >
> > Hi, sorry for intruding.
> >
> > I thought max EIRP rule for larger bandwidth also applies to smaller
> > bandwidth, that means we would use 24 dBm tx power with 20 MHz channel as
> > well. But the regulation limits PSD to -1 dBm/MHz and it leads to 12 dBm for
> > 20 MHz. Shouldn't we use 12 dBm rule to fit the smallest bandwidth?
> >
> > I still don't understand exactly how the rules work, my apologies if I am
> > mistaken.
>
> Before I respond, let me be upfront about my limitations. I'm not an RF
> engineer. My day job no longer has anything to do with wireless and has
> not for a number of years now. I haven't had time to really keep up with
> recent developments either, so my impressions are based on some light
> research and what I remember of information I rarely use nowadays.
>
> After doing a little bit of reading, I suspect that you are probably
> right (in principle at least, I didn't check the math). It seems there's
> been a movement towards specifying PSD so that larger bandwidths can
> effectively have a higher max EIRP than lower bandwitdths to overcome
> diminishing SNR with increasing bandwidth.
>
> That leaves us in the unfortunate position of needing to specify an EIRP
> suitable for a bandwidth of 20 MHz when larger bandwidths could be using
> a higher power limit. It seems like the Linux regulatory framework needs
> to evolve to support PSD limits. I don't currently have the time or the
> inclination to do this work though, and until someone does we're stuck
> with the status quo.
>
> Thanks,
> Seth
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
