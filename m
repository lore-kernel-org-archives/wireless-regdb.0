Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=rkNYHon/Ylw6zW0yzII3xhgHONTiJTwSXUi7ZpUmC1U=;
 b=akLc2XFr/lM6SH
 FC7QrKMRv/j8kf5nxeOqG6ZcxixBWWKZWEuTqk+iCtL2OPD0iAvFqYFtZi03zN3EhWApgMm5f1x8z
 KIiXe3R2gNkD6zjsOQKhSWRA0yPWJiK6Yy7OdIiPujEIkr1W4exb24cmIluKgqNqhlPUKZeDmTgd5
 KNO5FrrMNWN3Nb9HpDpleydUSoBuTOKGnnrwO9nXcG/Nb4mpRyyw0EKGTNtEyQ91VxeoJDWHg/GtL
 O5sALjrJ22V+pXAewY4zTarV5vf6HdyIfWimk26yhXttrrVVd0q7KKVRh67bjy8jcGXzRUz4GzytM
 dPRDHIC2HCTUjl/4ChWA==;
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Evc-0002jF-7v
 for wireless-regdb@lists.infradead.org; Fri, 23 Aug 2019 19:08:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id l7so22532838ioj.6 for
 <wireless-regdb@lists.infradead.org>; Fri, 23 Aug 2019 12:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=czgP4V1cO/oJg7814sELaFE/yV2PR7tij5ikMic5KJ4=;
 b=h8seX5Kv6x8M0SWw7jDo4QDiVIoeaaJzESotdunqLXWfh0oXFoqee4neU6VXaRQAyr
 Zsg4uAevw6tl2XHY9wpR4xfSICsa1Sc37H4gObZFRiyvMib6+pvdX2MTDqRI2Wq7ReJ7
 OGJzoVG8g3+6wHxyUS0nbduhY3EQEw8Zem3sXLPm/C+58BdcZTzWJtDUcKYfAqebd/pO
 HRx5j0mcqAkjMdbgZJ8cV7ULNnA2wFGkn0o4/uc3nccIfwxEwISvxcecMjrLRCB9j/uh
 9EOvOAR4v6XvdoiieHYq1VJR48IFlIbx+cTmHwXLXundyzXxNGBAW1rvvryRD9i+I0Pv 5iqQ==
MIME-Version: 1.0
References: <1564427246-25592-1-git-send-email-hanipouspilot@gmail.com>
 <20190823190019.GZ3071@ubuntu-xps13>
In-Reply-To: <20190823190019.GZ3071@ubuntu-xps13>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Fri, 23 Aug 2019 22:08:39 +0300
Message-ID: <CANoib0F5U7suFoHdKYuqQvjB+XN5bkqzNtBd6RkUi_Rnt7_OrA@mail.gmail.com>
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

пт, 23 авг. 2019 г. в 22:00, Seth Forshee <seth.forshee@canonical.com>:
>
> On Mon, Jul 29, 2019 at 10:07:26PM +0300, Dmitry Tunin wrote:
> > Russian entry is incorrect. According to the last regulations document of Feb 29, 2016,
> > 160 MHz channels and 802.11ad are allowed.
> >
> > http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf
> >
> > Note that there was never a DFS requirement in Russia, but always was
> > NO-OUTDOOR on 5GHz.
> > Maximum power is 200mW that is ~23dBm on all 5GHz channels.
> > Also Russia has never been regulated by ETSI.
> >
> > Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
> > ---
> >  db.txt | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 37393e6..d95ed5e 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1097,14 +1097,12 @@ country RS: DFS-ETSI
> >       # 60 GHz band channels 1-4, ref: Etsi En 302 567
> >       (57000 - 66000 @ 2160), (40)
> >
> > -country RU: DFS-ETSI
> > +country RU:
> >       (2402 - 2482 @ 40), (20)
> > -     (5170 - 5250 @ 80), (20), AUTO-BW
> > -     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> > -     (5650 - 5730 @ 80), (30), DFS
> > -     (5735 - 5835 @ 80), (30)
> > +     (5170 - 5350 @ 160), (23), NO-OUTDOOR
> > +     (5650 - 5850 @ 160), (23), NO-OUTDOOR
>
> Based on the translation I've read of the document you've linked to as
> well as a couple of others, it sounds like the use of these ranges
> requires TPC. Since TPC is not supported in Linux, we need to reduce the
> max EIRP for these ranges to 20 dBm.
>
> While modifying them, let's also update the 5170-5350 range to 5150-5350
> to match the regulations.


It is not very clearly stated, but I agree that it looks like TPC.
Where is it stated that we need 20 dBm on these ranges if they require
TPC?
Unfortunately I don't have devices with OEM software certified in
Russia to see what is the limit.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
