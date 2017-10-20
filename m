Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=0cfQ0yhwDjhgzgGoP639A+BiXN7eJR3hD2i9G5LFnc4=;
 b=bIqkH92YZKNGku
 DS0hy52yqfznKfufkRMCoH4N5E4KLsCYOhLsDMxu7i8iMGK5ee7yx/NeyUWNlkYHq7E5MVSyn7/kN
 J+oaD9sFj2GWl/v5NL+ySV1p2DpV/N7I9C+mL3l9Sf2cZdT4ICh3VxTQfL5Q+4CBhh4XmBC0/Rqgw
 QksNVdBtpQh+BV714uSKREenmao/KiUZMkYi3AfeLUtWPz4kNAMknykKJokNE/K7Pk5NrC5U6QfEv
 JmKRNSGFH2cH1BrvLoho8OCVnl01nrukBu6zH6djcxmtDgk8E+qdQAm7zb5N41uGVjHAS7N3nKdLO
 jqA2pmDvtTwYyhdWo3Eg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5WZj-0007R6-Rk
 for wireless-regdb@lists.infradead.org; Fri, 20 Oct 2017 12:38:58 +0000
Received: from mail-io0-f199.google.com ([209.85.223.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e5WZN-0007lw-Ay
 for wireless-regdb@lists.infradead.org; Fri, 20 Oct 2017 12:38:33 +0000
Received: by mail-io0-f199.google.com with SMTP id m81so10836668ioi.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 20 Oct 2017 05:38:33 -0700 (PDT)
Date: Fri, 20 Oct 2017 07:38:30 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171020123830.rrv3ldmqpmjp4zpr@ubuntu-xps13>
References: <20171019213834.23127-1-seth.forshee@canonical.com>
 <CAN+fvRZo6UtqDZN2Mhukx8EOiO+JcpSBvbM3RRka4kzscWjLDA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN+fvRZo6UtqDZN2Mhukx8EOiO+JcpSBvbM3RRka4kzscWjLDA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add 5 Ghz rules for
 Kazakhstan (KZ)
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
To: Ryan Mounce <ryan@mounce.com.au>
Cc: =?utf-8?B?0JDQvdC00YDQtdC5INCY0LLQsNC90L7Qsg==?= <wowz89@mail.ru>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Oct 20, 2017 at 09:48:25AM +1030, Ryan Mounce wrote:
> This is missing the DFS domain, which is almost certainly DFS-ETSI as
> KZ is in ITU region 1.

D'oh, I did forget that, good catch. I'll send out an update.

> 
> Regards,
> Ryan Mounce
> 
> On 20 October 2017 at 08:08, Seth Forshee <seth.forshee@canonical.com> wrote:
> > Add rules for 5150-5250 MHz, 5250-5350 MHz, and 5470-5725 Mhz
> > based on the documents at [1] and [2].
> >
> > [1] http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
> > [2] http://adilet.zan.kz/rus/docs/P000001379_
> >
> > Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
> > ---
> >  db.txt | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/db.txt b/db.txt
> > index e48f9a619651..96d8fda44284 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -689,8 +689,14 @@ country KY: DFS-FCC
> >         (5490 - 5730 @ 160), (24), DFS
> >         (5735 - 5835 @ 80), (30)
> >
> > +# Source:
> > +# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
> > +# http://adilet.zan.kz/rus/docs/P000001379_
> >  country KZ:
> >         (2402 - 2482 @ 40), (20)
> > +       (5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > +       (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> > +       (5470 - 5725 @ 80), (20), NO-OUTDOOR, DFS
> >
> >  country LB: DFS-FCC
> >         (2402 - 2482 @ 40), (20)
> > --
> > 2.14.1
> >
> >
> > _______________________________________________
> > wireless-regdb mailing list
> > wireless-regdb@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

