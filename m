Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=8995yxOaQczr9WnSBeZDC7UjONybcRp1iUerfVxBiPs=;
 b=Kf3vWOL7cVtRQ8
 rI/N7ELTsgEvdAa0lWzdXoTEVVkWbaP9gQJ9EFYAGUtQxJx6hGLUl4Is3rMLRqDVjJZCMSz7SpvAY
 ZIK308xiPKttgGaAFV+XWFhX1v0Fj0QUnL2K8AeVdSjOV/J+MbEdSX4wufil8zFWI03hTwntX5Gmh
 KOcG838nObbNbETPyKVTcQHtVIZgpTHtqpsUgBI4YsoNbmAg5pHkWHy1IYKWDck/9bY2X2IrNrRiQ
 flrWENiGV4mSUjjpIAPV4VS04xeWT4dk3DUFtfTOsaj2JfJU6qy0gVo4lFvrG1EH3wTGYwiYJ29L5
 5lPOrF5/uNCq6Ztxx/hw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAPX-0000lg-8D
 for wireless-regdb@lists.infradead.org; Mon, 29 Jul 2019 18:30:16 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hsAPU-00035W-4H
 for wireless-regdb@lists.infradead.org; Mon, 29 Jul 2019 18:30:12 +0000
Received: by mail-io1-f71.google.com with SMTP id s83so68423821iod.13 for
 <wireless-regdb@lists.infradead.org>; Mon, 29 Jul 2019 11:30:12 -0700 (PDT)
Date: Mon, 29 Jul 2019 14:30:09 -0400
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190729183009.GD21772@ubuntu-xps13>
References: <CANoib0Hn9uNnk5vpjEJUiGriD5rHuDc7xxLFj3r8ij6ALSxcag@mail.gmail.com>
 <CANoib0Et3gLu2gGYeWracV4v7tgWj8qhtO7w_c8TSJ+CE-gjMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANoib0Et3gLu2gGYeWracV4v7tgWj8qhtO7w_c8TSJ+CE-gjMg@mail.gmail.com>
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
To: Dmitry Tunin <hanipouspilot@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jul 29, 2019 at 09:05:06PM +0300, Dmitry Tunin wrote:
> I made an error while editing. The correct section is
> 
> country RU:
> (2402 - 2482 @ 40), (20)
> (5170 - 5350 @ 160), (23), NO-OUTDOOR
> (5650 - 5850 @ 160), (23), NO-OUTDOOR
> # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> (57000 - 66000 @ 2160), (40), NO-OUTDOOR

Thanks. I haven't had time to look over the document to verify your
proposed changes, but I would encourage you to go ahead and send a
patch. I will try to look this over soon.

Thanks,
Seth

> 
> вт, 23 июл. 2019 г. в 00:53, Dmitry Tunin <hanipouspilot@gmail.com>:
> >
> > The db entry looks like this now
> >
> > country RU: DFS-ETSI
> > (2402 - 2482 @ 40), (20)
> > (5170 - 5250 @ 80), (20), AUTO-BW
> > (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> > (5650 - 5730 @ 80), (30), DFS
> > (5735 - 5835 @ 80), (30)
> > # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> > (57000 - 66000 @ 2160), (40)
> >
> >
> > This doesn't look correct. The regulation document is here
> > http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf
> >
> > According to the regulation document issued Feb 29 2016, there
> > frequencies should look like this:
> >
> > country RU:
> > (2402 - 2482 @ 40), (20)
> > (5170 - 5330 @ 160), (23), NO-OUTDOOR
> > (5650 - 5835 @ 160), (23), NO-OUTDOOR
> > # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> > (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> >
> > Note that there was never a DFS requirement in Russia, but always was
> > NO-OUTDOOR on 5GHz.
> > Maximum power is 200mW that is ~23dBm on all 5GHz channels.
> > Also Russia has never been regulated by ETSI.
> >
> > If this looks good, I can send a patch if needed.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
