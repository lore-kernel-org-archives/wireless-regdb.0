Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=nMtA23i9t+Aa2XoYUYlyafCkbLp7ehfd7zS6yhem4+E=;
 b=jyEzMGSbawZh0g
 3v56ZYoE2cBBoLA5ONNfCBMT7CgBvIuGlE22ot8+3rv0qsiNXEqH8bN7EYrdSFanX957NrnX32IEk
 W67ElLkT8T6/beNzACuRZXpGEZuFz5qZIWfTpoyD6bwR5SLJ4u926BKM5DWfDBwZZvr3LiSmSt0wW
 vg83C0AhBnbZbnXBYNgNDKoDuBxmn2qmX6m3ilSuokjzWqDO/f0CyqzmpwRlJWnUk6Ijk3W7gWXIK
 bMKusRCle3JZAlrqRpU/aB8/U+hio4e7OJ8rgp6oXMRxUCg8aCb5hKWYzzKaUAMQCn78vlTkaQC7J
 Ltr86qe8onVf99JpZcrQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1F88-0000jX-KP
 for wireless-regdb@lists.infradead.org; Fri, 23 Aug 2019 19:21:51 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1i1F87-0004TB-2Q
 for wireless-regdb@lists.infradead.org; Fri, 23 Aug 2019 19:21:47 +0000
Received: by mail-io1-f70.google.com with SMTP id m7so3565974ioc.4 for
 <wireless-regdb@lists.infradead.org>; Fri, 23 Aug 2019 12:21:47 -0700 (PDT)
Date: Fri, 23 Aug 2019 14:21:43 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190823192143.GA3071@ubuntu-xps13>
References: <1564427246-25592-1-git-send-email-hanipouspilot@gmail.com>
 <20190823190019.GZ3071@ubuntu-xps13>
 <CANoib0F5U7suFoHdKYuqQvjB+XN5bkqzNtBd6RkUi_Rnt7_OrA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANoib0F5U7suFoHdKYuqQvjB+XN5bkqzNtBd6RkUi_Rnt7_OrA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update regulatory
 rules for Russia (RU) on 5GHz
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

On Fri, Aug 23, 2019 at 10:08:39PM +0300, Dmitry Tunin wrote:
> пт, 23 авг. 2019 г. в 22:00, Seth Forshee <seth.forshee@canonical.com>:
> >
> > On Mon, Jul 29, 2019 at 10:07:26PM +0300, Dmitry Tunin wrote:
> > > Russian entry is incorrect. According to the last regulations document of Feb 29, 2016,
> > > 160 MHz channels and 802.11ad are allowed.
> > >
> > > http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf
> > >
> > > Note that there was never a DFS requirement in Russia, but always was
> > > NO-OUTDOOR on 5GHz.
> > > Maximum power is 200mW that is ~23dBm on all 5GHz channels.
> > > Also Russia has never been regulated by ETSI.
> > >
> > > Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
> > > ---
> > >  db.txt | 10 ++++------
> > >  1 file changed, 4 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index 37393e6..d95ed5e 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -1097,14 +1097,12 @@ country RS: DFS-ETSI
> > >       # 60 GHz band channels 1-4, ref: Etsi En 302 567
> > >       (57000 - 66000 @ 2160), (40)
> > >
> > > -country RU: DFS-ETSI
> > > +country RU:
> > >       (2402 - 2482 @ 40), (20)
> > > -     (5170 - 5250 @ 80), (20), AUTO-BW
> > > -     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> > > -     (5650 - 5730 @ 80), (30), DFS
> > > -     (5735 - 5835 @ 80), (30)
> > > +     (5170 - 5350 @ 160), (23), NO-OUTDOOR
> > > +     (5650 - 5850 @ 160), (23), NO-OUTDOOR
> >
> > Based on the translation I've read of the document you've linked to as
> > well as a couple of others, it sounds like the use of these ranges
> > requires TPC. Since TPC is not supported in Linux, we need to reduce the
> > max EIRP for these ranges to 20 dBm.
> >
> > While modifying them, let's also update the 5170-5350 range to 5150-5350
> > to match the regulations.
> 
> 
> It is not very clearly stated, but I agree that it looks like TPC.
> Where is it stated that we need 20 dBm on these ranges if they require
> TPC?
> Unfortunately I don't have devices with OEM software certified in
> Russia to see what is the limit.

It's not specifically 20 dBm, it's halving the power limit (i.e.
reducing it by 3 dBm).

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
