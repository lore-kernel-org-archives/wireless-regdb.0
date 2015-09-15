Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZbtRW-00022p-5Q
 for wireless-regdb@lists.infradead.org; Tue, 15 Sep 2015 16:50:54 +0000
Received: by lagj9 with SMTP id j9so113420233lag.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 15 Sep 2015 09:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=fdBcfmNdhcAXdxiajKArjli/kMD2D/L2uQndrS+Vhc0=;
 b=F/ikm7kJ3w25Amh5jiVNTCBXcg7kXvs6rxOMI5K6MjAGuHeDnB3FbrCQjf//316LXW
 GnAb98rsDOKOX26uV+8JpQZ1OdW631T1icJLvhreNqcCnF2+Fwjw2ezGdvZ6D7kmlttC
 zwGId+Sr9YVyVeDOH8cQLltxpawc7G6f9DX6eV2u9LCcy3DIJesfOfCFSt6ggbXorBbP
 zpPJbFdcngEg/UYC8gLAR0+YrSHa3WikONbDOaJtv57wCBNCZAKuHukllijsNp8R+DJ2
 P2KyaD/lJE+W1WFOYpcvuQZg0mOql/PXDCElmHpLNf6OqGvsIalYBBC74WRV3w8Ch8RQ p6/Q==
MIME-Version: 1.0
In-Reply-To: <20150915164346.GC146373@ubuntu-hedt>
References: <CAH9F5rkwnYRerb=y2tQudYq-UwBdHcf0nwA9aAugOmBhWhKnzg@mail.gmail.com>
 <20150915164346.GC146373@ubuntu-hedt>
Date: Tue, 15 Sep 2015 22:20:32 +0530
Message-ID: <CAH9F5r=JY=QcPGHrvvcWHMfNy7C370kaYs2iAND3Ku_aJ8WHCQ@mail.gmail.com>
From: Atul Joshi <atul.suresh.joshi@gmail.com>
Subject: Re: [wireless-regdb] Regulatory Domain for Hong Kong
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Thank you for the reply.
It would be good if you can update the database.

thanks
atul

On 15 Sep 2015 22:14, "Seth Forshee" <seth.forshee@canonical.com> wrote:
>
> On Tue, Sep 15, 2015 at 04:11:27PM +0530, Atul Joshi wrote:
> > Hello,
> >
> > We are trying to find out which regulatory domain HK falls under.
> >
> > From db.txt
> >
> > country HK:
> >
> >                 (2402 - 2482 @ 40), (20)
> >
> >                 (5170 - 5250 @ 80), (17)
> >
> >                 (5250 - 5330 @ 80), (24), DFS
> >
> >                 (5490 - 5710 @ 80), (24), DFS
> >
> >                 (5735 - 5835 @ 80), (30)
> >
> >
> >
> > So the DFS regulatory domain is not specified hence We will not be
> > able to start the AP on the DFS channel.
> >
> > Can somebody please clarify?
> >
> > In other cases e.g. GB
> >
> > country GB: DFS-ETSI
> >
> >                 (2402 - 2482 @ 40), (20)
> >
> >                 (5170 - 5250 @ 80), (20)
> >
> >                 (5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR
> >
> >                 (5490 - 5710 @ 80), (27), DFS
> >
> >                 # 60 gHz band channels 1-4, ref: Etsi En 302 567
> >
> >                 (57240 - 65880 @ 2160), (40), NO-OUTDOOR
> >
> >
> >
> > The regulatory domain is specified.
> >
> > So does HK fall under DFS-FCC or DFS-ETSI?
>
> Based on [1] it sounds like it should be DFS-ETSI. Do you want to send a
> patch? Otherwise I can update the database.
>
> Thanks,
> Seth
>
> [1] http://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkta1039.pdf

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

