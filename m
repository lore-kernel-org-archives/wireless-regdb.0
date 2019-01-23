Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ckpHV+RXj7FBSN/7qko4Gb1Hy1ph0Z2FB178BDXRVr4=;
 b=m6OXp3V4bx0Py5
 4TsMVlb/+j37fklpfceer5LEHccpFceUYBBDz+lGcpzFt/NdtoqoJWyJHYq1OzLYCvAKi5wvXpXAc
 Q2FFc0ACuOW9h8iPIFM6zdABq4ZOdb9ZNFZrw2KhUcdOQkbQ6FCsi1QvyL2FU4JSN0c9JHBbCDkBA
 G6OyawuPQI0eUDvlj+0kGxpMZB5BliG9sbpj2r3UM4lpkfGcvynmAUlNcuYDLkVxULcXzQyEKWrma
 YE76xNQfC9xUui46/YMWPdM1gDx8wLxLM8mswyFH95XvwywFrUySGINuihrOfgdZt+LmX3SIK+nV2
 NDHxlk918KUEFzIMwEsw==;
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmG6F-0000fv-Ep
 for wireless-regdb@lists.infradead.org; Wed, 23 Jan 2019 10:49:46 +0000
Received: by mail-io1-xd44.google.com with SMTP id g8so1310577iok.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Jan 2019 02:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=hiLcX7lPx4SMc9ycFXr0ewyjEdV7WldwqG3JhBQgDyk=;
 b=KXk9b8HbxYS3BfkzjN4Y6Jm0hu1K5I+K+nYXnVHmx5mBnEdZKr1vo8zSu6O8CGnxKe
 2a/wknhmBmt/l/geQz1afn7TVWt7PfzghtW0oUVA3s7HRGrKUCOFhthd56KcA6QZeWDU
 CJF43/OfTSlgUV+mFwnwcLRIVy8xcak06KXHiIy01V28dST78uC0rZhU1Gi/yleeUg+a
 F0EjWNwJ47zcG8VOygGzA2E5BEFSIwEVcdQGp7ygfL73u+1jS3o2RXkcYSS1yyo2dHZm
 4Oqbrq9BO4iiNvoTArDafHrgdfhkArIq54AX8d7S3Xv1pdGy7c+ypcORgslXO7PeOpjz V5KQ==
MIME-Version: 1.0
References: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
 <20190122211351.GW7206@ubuntu-xps13>
In-Reply-To: <20190122211351.GW7206@ubuntu-xps13>
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Wed, 23 Jan 2019 16:19:26 +0530
Message-ID: <CABPxzY+jbfoVGF_fta3reHa5yngmp_+dVKCiu3DR-8WzzxAPow@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 60ghz band
 rules for us
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jan 23, 2019 at 2:43 AM Seth Forshee <seth.forshee@canonical.com> wrote:
>
> On Tue, Dec 18, 2018 at 01:38:15PM +0530, chaitanya.mgit@gmail.com wrote:
> > From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>
> >
> > Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
> > 57-64GHz band till 71GHz with almost same rules.
>
> This looks right to me based on my research. You're missing one thing
> though. You need to provide a Signed-off-by tag, please see the
> CONTRIBUTING file for more information. If you reply with your tag I
> will add it when I apply the patch. Thanks!

Sorry, didn't realize missed SO. You can use below. Thanks.
Signed-off-by: Chaitanya Tata <Chaitanya.Tata@bluwireless.co.uk>

> > ---
> >  db.txt | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index fa5c0e0..ae650dd 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1280,9 +1280,9 @@ country US: DFS-FCC
> >       (5490 - 5730 @ 160), (23), DFS
> >       (5735 - 5835 @ 80), (30)
> >       # 60g band
> > -     # reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
> > -     # channels 1,2,3, EIRP=40dBm(43dBm peak)
> > -     (57240 - 63720 @ 2160), (40)
> > +     # reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> > +     # channels 1-6 EIRP=40dBm(43dBm peak)
> > +     (57240 - 71000 @ 2160), (40)
> >
> >  country UY: DFS-FCC
> >       (2402 - 2482 @ 40), (20)
> > --
> > 2.17.1
> >



-- 
Thanks,
Regards,
Chaitanya T K.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

