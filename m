Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=14Ooe4yDdlvJZ28kgxuF+AA+swG5BGRP9n32373GIq8=;
 b=BJg7wb2pXn1607
 hTxqFvxig21GNNFKSaiH/P9KioeoHKQCKT7/+qdyFjUSSDM2W7UV+sLC/DSbhT10iSofEZHLlV26l
 V88TrUyXAwE0trVEGOO4xCq8Rrsj5m46Yv+JSnpovaYPwSanq8CLLgPT8iQEKBFbU/PCrm5IsQCL+
 D7B1Hj30DhbwkF2PxD38FANlDx3WJHQjTSDO0vTUcwf7OPWWYGZ4GlIM671OclPUP3U2nhLYvh03s
 Vn8ujTwZyA/9+pxhf1PRdApoFouc4itTfaZWBXkqK8XQNpP8QRrW1efShpozJ+JMarRbWWKmUl1Y3
 WdKCwnhbz7W/9dZiYcSg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDaN1-0004gr-JQ
 for wireless-regdb@lists.infradead.org; Tue, 01 May 2018 18:51:25 +0000
Received: from mail-it0-f69.google.com ([209.85.214.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fDaMo-0001PA-GS
 for wireless-regdb@lists.infradead.org; Tue, 01 May 2018 18:51:10 +0000
Received: by mail-it0-f69.google.com with SMTP id p138-v6so7180432itc.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 01 May 2018 11:51:10 -0700 (PDT)
Date: Tue, 1 May 2018 13:51:07 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180501185107.GL3502@ubuntu-xps13>
References: <20180306090923.GH6547@ubuntu-xps13>
 <CADGYwvD5GgyC70FFtD3cOb+1QTbBJaU9khhYWNPtEk=qFVAZZQ@mail.gmail.com>
 <CADGYwvBiNhRGy8UCajV-k4qEjsFXftOUhhV+dmiC42nmFTpLuA@mail.gmail.com>
 <CADGYwvDJJUhZd_PzTAqZyX7RgRt22z49Gi=RfhZZNbugRkc-pg@mail.gmail.com>
 <20180322124802.GA3467@ubuntu-xps13>
 <CADGYwvBm23r9Q5zvpA4r9ygoRRCg2n5YKj9xwrv+_Zod1y=_4A@mail.gmail.com>
 <20180330130945.GP18469@ubuntu-xps13>
 <CADGYwvCjxVL=XA6JgY_1ZrhuX+0r9Fc9CJb7wFeYmtif6+rTGg@mail.gmail.com>
 <f472ada2fe9a4fbb931984f26d6f5603@NASANEXM01E.na.qualcomm.com>
 <5e5dddecb6a64a75adef06e6481bb2ed@NASANEXM01E.na.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e5dddecb6a64a75adef06e6481bb2ed@NASANEXM01E.na.qualcomm.com>
Subject: Re: [wireless-regdb] wireless-regdb: add Short Range Devices (SRD)
 for Qatar
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
To: Michael Green <green@qti.qualcomm.com>
Cc: Faisal Wiryasantika <faisal.wiryasantika@gmail.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Apr 25, 2018 at 03:48:44PM +0000, Michael Green wrote:
> Faisal, Seth,
> 
> a)  DFS:
> Qatar specifies EN302 502 for their upper band and that spec states to apply radar detection in 5725-5850 (but not 5850-5875).    Rather than create a more complicated definition, I propose we leave the patch as it currently is. Just means the last channel will also have radar detection enabled.   If you want to review that spec, just google "EN 302 502".  You will find latest V2.0.8 or V2.1.1  (both have same DFS rules).
> 
> (5725 - 5875 @ 80), (50 mW), NO-OUTDOOR, DFS
> 
> 
> b) Power Limits:
> I encourage the use of the higher power limits per the previously shared CRA Confirmation doc.  They did not yet get around to updating their website with these latest rules. But in my opinion, this document is an unequivocal confirmation of what the current rules are.     The attached doc states the date, the authority, the specs and the limits.   The web site has outdated information.
> 
> I propose the patch be released per attached CRA confirmation doc:
> 
> (2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
> (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
> (5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
> (5725 - 5875 @ 80), (100 mW), NO-OUTDOOR, DFS
> (57000 - 66000 @ 2160), (40), NO-OUTDOOR

Thanks for the information. I think this matches what I had except where
I had cut the power limits in half because I suspected TPC was required
(5250-5350, 5470-5725, and 5725-5875 MHz based on EN 301 893 and EN 302
502). Is TPC not required in these ranges?

Thanks,
Seth

> 
> Please send comments if any, since customer is waiting for updated definition to propagate as soon as possible.
> 
> 
> Thanks,
> 
> Michael Green
> 
> 
> -----Original Message-----
> From: wireless-regdb [mailto:wireless-regdb-bounces@lists.infradead.org] On Behalf Of Faisal Wiryasantika
> Sent: Sunday, April 08, 2018 4:29 AM
> To: Seth Forshee <mailto:seth.forshee@canonical.com>
> Cc: mailto:wireless-regdb@lists.infradead.org
> Subject: Re: [wireless-regdb] wireless-regdb: add Short Range Devices (SRD) for Qatar
> 
> Hello Seth,
> 
> Everything looks fine for me...except why you set U-NII-3 band 4 have DFS?
> As far as I know the U-NII-3 band 4 doesn't have DFS requirement under ETSI rules.
> 
> 
> Best regards,
> Faisal Wiryasantika
> 
> 
> 
> On Fri, Mar 30, 2018 at 4:09 PM, Seth Forshee <mailto:seth.forshee@canonical.com> wrote:
> > On Thu, Mar 22, 2018 at 05:26:12PM +0300, Faisal Wiryasantika wrote:
> >> Hello Seth,
> >>
> >> It's mentioned here:
> >> http://www.motc.gov.qa/sites/default/files/qatar_national_frequency_a
> >> llocation_table_qnfat_0.pdf
> >> - page 64.
> >
> > Okay, so this is what I've come up with based on all the information I
> > have:
> >
> > country QA: DFS-ETSI
> >         (2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
> >         (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> >         (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
> >         (5470 - 5725 @ 160), (50 mW), NO-OUTDOOR, DFS
> >         (5725 - 5875 @ 80), (50 mW), NO-OUTDOOR, DFS
> >         (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> >
> > Explanations for the differences from what you suggested:
> >
> > - In the letter you provided all ranges are listed as indoor only.
> >
> > - The power limits you had on some of the ranges were higher than what
> >   ware in the letter, so I have reduced them accordingly.
> >
> > - The letter says "with & without TPC" for some of the power limits, and
> >   I'm honestly not sure what is meant by that. So I've cut the limits in
> >   half for any ranges which require TPC as per the relevant ETSI
> >   standards, since we don't have support for TPC.
> >
> > Let me know if this looks correct to you, and if so I'll send a patch.
> >
> > Thanks,
> > Seth
> >
> >
> >>
> >>
> >> Best regards,
> >> Faisal Wiryasantika
> >>
> >>
> >>
> >>
> >> On Thu, Mar 22, 2018 at 3:48 PM, Seth Forshee 
> >> <mailto:seth.forshee@canonical.com> wrote:
> >> > On Tue, Mar 20, 2018 at 07:21:22PM +0300, Faisal Wiryasantika wrote:
> >> >> Dear Seth,
> >> >>
> >> >>
> >> >> diff --git a/dbA.txt b/dbB.txt
> >> >> index 990abf9..b28e654 100644
> >> >> --- a/dbA.txt
> >> >> +++ b/dbB.txt
> >> >> -country QA: DFS-JP
> >> >> -       (2402 - 2482 @ 40), (20)
> >> >> -       (5735 - 5835 @ 80), (30)
> >> >> +country QA: DFS-ETSI
> >> >> +       (2402 - 2482 @ 40), (20)
> >> >> +        (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> >> >> +        (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
> >> >> +        (5470 - 5725 @ 160), (200 mW), DFS
> >> >> +        # Short Range Devices (SRD) (ETSI EN 300 440)
> >> >> +        (5725 - 5875 @ 80), (100 mW), NO-OUTDOOR
> >> >> +        # 60 GHz band channels 1-4, ref: Etsi En 302 567
> >> >> +        (57000 - 66000 @ 2160), (40)
> >> >>
> >> >>
> >> >> Best regards,
> >> >> Faisal Wiryasantika
> >> >
> >> > Thanks for all the information. I'm still a bit hesitant because 
> >> > documents I find on http://cra.gov.qa/ either do not show these 
> >> > updates or else they are documents for proposed updates. The letter 
> >> > you supplied seems to indicate that the changes may have just 
> >> > recently gone into effect, however I can't find any public information which says the same.
> >> > Do you know why the public documents have not yet been updated?
> >> >
> >> > Thanks,
> >> > Seth
> 
> _______________________________________________
> wireless-regdb mailing list
> mailto:wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
