Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Wj8L8FEWqwl8XwFZK/FsByoqjHcOV2QZAiszX+S28GA=;
 b=sZvAcHyiM+j3Lg
 bbZQd/i1LnRpPmd/uv+ix+DPSA4fEDluDKzaDUPdcRYbk4pxiQjZfojUMT3N2YqiqBYGrZyrq/Wzb
 KOaWnOC0cryRzPMGNlHA3z9+VDmI3QHdlgZsrt2ynyvXZn+jPl+CII8RnamLH4OydcAVY6Pquydh4
 Ea1noP5jh/J8IppVj/wE0935rj9Vwc2o3gES8z6eOOzCW08GlNIGA2O+J5NCzNOzPmc7BBS7cp0AN
 JQ7uxwP4bdHm0vXjkCN7BUxu5gjfbqmcQYZqadfSq97iJzd7MX80BmvcEcqRxl9CcO9Pw31Nn12uo
 w/Yk9z+ppEejvdscRhuQ==;
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsASb-0000xN-9Q
 for wireless-regdb@lists.infradead.org; Mon, 29 Jul 2019 18:33:26 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so122295927ioo.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 29 Jul 2019 11:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HRnp79yAtAg76/OwzoPEHCvyCywF4oF1vK2g2G4jaNI=;
 b=k7ZATTLAH+b6XBKHtNiuFPa6LQNWwJQCzRLIRSp9lG1+kn+ztmPA2XaZrXKZZ6o8B3
 Ldtwx05sr6X7J4OJ9mEZaKvoqIl/LS7tgNHUEOpTt5C+CX+NLJ4VGVEWurZSKzTsbpK7
 sUQlXZB92WtuB/MTlCdvnilaLXYvCnPPHwtoOKl0zf/1zqI74BWJNN3PsMOMtCa3u306
 if4ND4wzW04JQW8O9TU7DUSVGGbWm6jhfkLJvaEU54kxHbs2eIh3rSHkusSsvY97y0VW
 /SVteiMb3Q6oCbLur060Hhm22lPxJWxy4g4wlTb5pFCg6PthtC5TsA0o6ZRseaZFWfZg 9Tzw==
MIME-Version: 1.0
References: <CANoib0Hn9uNnk5vpjEJUiGriD5rHuDc7xxLFj3r8ij6ALSxcag@mail.gmail.com>
 <CANoib0Et3gLu2gGYeWracV4v7tgWj8qhtO7w_c8TSJ+CE-gjMg@mail.gmail.com>
 <20190729183009.GD21772@ubuntu-xps13>
In-Reply-To: <20190729183009.GD21772@ubuntu-xps13>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 29 Jul 2019 21:33:11 +0300
Message-ID: <CANoib0EiYnacGB6Ok4Df0=hwGCR5bOL4c84HqvL4VMtXnM8e1g@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Russia (RU) on 5GHz
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

It is not easy to find and understand these Russian regulatory docs.
There is also another link with the master doc with both attachments.
http://rfs-rf.ru/grfc/norm_doc/detail/?ID=41839

I'll make a patch.

пн, 29 июл. 2019 г. в 21:30, Seth Forshee <seth.forshee@canonical.com>:
>
> On Mon, Jul 29, 2019 at 09:05:06PM +0300, Dmitry Tunin wrote:
> > I made an error while editing. The correct section is
> >
> > country RU:
> > (2402 - 2482 @ 40), (20)
> > (5170 - 5350 @ 160), (23), NO-OUTDOOR
> > (5650 - 5850 @ 160), (23), NO-OUTDOOR
> > # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> > (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
> Thanks. I haven't had time to look over the document to verify your
> proposed changes, but I would encourage you to go ahead and send a
> patch. I will try to look this over soon.
>
> Thanks,
> Seth
>
> >
> > вт, 23 июл. 2019 г. в 00:53, Dmitry Tunin <hanipouspilot@gmail.com>:
> > >
> > > The db entry looks like this now
> > >
> > > country RU: DFS-ETSI
> > > (2402 - 2482 @ 40), (20)
> > > (5170 - 5250 @ 80), (20), AUTO-BW
> > > (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> > > (5650 - 5730 @ 80), (30), DFS
> > > (5735 - 5835 @ 80), (30)
> > > # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> > > (57000 - 66000 @ 2160), (40)
> > >
> > >
> > > This doesn't look correct. The regulation document is here
> > > http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf
> > >
> > > According to the regulation document issued Feb 29 2016, there
> > > frequencies should look like this:
> > >
> > > country RU:
> > > (2402 - 2482 @ 40), (20)
> > > (5170 - 5330 @ 160), (23), NO-OUTDOOR
> > > (5650 - 5835 @ 160), (23), NO-OUTDOOR
> > > # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> > > (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> > >
> > > Note that there was never a DFS requirement in Russia, but always was
> > > NO-OUTDOOR on 5GHz.
> > > Maximum power is 200mW that is ~23dBm on all 5GHz channels.
> > > Also Russia has never been regulated by ETSI.
> > >
> > > If this looks good, I can send a patch if needed.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
