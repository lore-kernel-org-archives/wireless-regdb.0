Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=JZtfN5yToGA4Sj2HSjxAZDSptenIPibiHL76AHk0F/c=;
 b=cDKAVVM/mKjALB
 pNHNiWerrUjHgHKaRWxepI2jWd5x9eVjWpzIjk2s9rP1X1psYeBJVrxeRqcz/uvvnksNCwTCTxqtl
 ouMrZeV05msoKBq2eLHqI0JP+KHB+LMiRSspqfelmzLwOZqegN3A9DmoTebCIj+azZ/TS7lkjbKEz
 rQ4qrTOeClJwlPSPCTQMcdbrfXcZAyd+DJPEDoqrjjImmXEb//Z/qb/N49Npq2Wg4R9+M56LY1p8X
 QsOAKzz1vki6SRBIC1pJ1ON6SZLaiXzpa832MuNbx+6R7vHQKgA0p26tyd0+huHyJS2qpylupEHYh
 Cweju9KddNZQVnLaSqIw==;
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nruOP-00ATGf-6m
 for wireless-regdb@lists.infradead.org; Fri, 20 May 2022 04:37:39 +0000
Received: by mail-lj1-x229.google.com with SMTP id 27so3434434ljw.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 19 May 2022 21:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dbperformance-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GpzRCEPXXyyYjkbDwLe88tDD40v/CMLrDsIgNqF01Sc=;
 b=i6crgd8MzhFQoHJLhFNjz8WNVlfJPRwVIAujEjd/R00hubrdJWMQrEE6wKwnnJn6D5
 W75UfnHdkm9Zewpd/LtXJFBbo4NPp10aZRsNUuIWaQVKjtRsQ+/NTf6xPsQzm7AqW9tX
 /kUk9xHFjeDdG9SH7/ilKr5HYr+VJH/CtUd1aVypvFNN8V4rbjy6VyCNqgX7Ul7SrAdr
 6MYPTMd/UWCOOcr5dctlHGn9ye935D8t0lOdtTsLfQOupDjiDsdUnBGfa+kYyz1iX/3C
 cdwKXn62tJT0ZW/LYuCfahIeyEHvP+Cc86lQZd8KZUeTdWHT+4QC2wfjUpU8PkMiI0HI
 5iOg==
MIME-Version: 1.0
References: <CAPRryQp5b3eknS8vxq4kOGBSiZHn2=jy6E8hrbvACGKxJn1hLQ@mail.gmail.com>
 <YoUg2QiBxYIGRWp+@ubuntu-x1>
In-Reply-To: <YoUg2QiBxYIGRWp+@ubuntu-x1>
From: Dennis Bland <dennis@dbperformance.com>
Date: Thu, 19 May 2022 22:37:21 -0600
Message-ID: <CAPRryQoRKv5zdX8ApOuO=7wWNCiKyVL=34HEFf5=oT+Vv3BMsQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Regulatory update for 6 GHz operation
 in FI
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Seth:

It's probably cleaner and faster for you to fix them all under your
single patch (and avoid my patch formatting issues!).

Best regards,

Dennis

On Wed, May 18, 2022 at 10:37 AM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Tue, Apr 26, 2022 at 09:52:31PM -0600, Dennis Bland wrote:
> > Add 6 GHz operation for FI:
> >
> > https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
> >
> > signed-off-by: Dennis Bland <dennis@dbperformance.com>
> > ---
> > diff -up a/db.txt b/db.txt
> > --- a/db.txt 2022-04-08 09:54:37.000000000 -0600
> > +++ b/db.txt 2022-04-26 21:44:39.000000000 -0600
> > @@ -570,6 +570,7 @@ country ET: DFS-ETSI
> >  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
> >  #  EU decision 2005/513/EC:
> > https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
> >  #  EU decision 2006/771/EC:
> > https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
> > +#  EU decision 2021/1067/EC:
> > https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
> >  # Harmonized CEPT countries (July 2019):
> > https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
> >  country FI: DFS-ETSI
> >   (2400 - 2483.5 @ 40), (100 mW)
> > @@ -578,6 +579,8 @@ country FI: DFS-ETSI
> >   (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
> >   # short range devices (ETSI EN 300 440-1)
> >   (5725 - 5875 @ 80), (25 mW)
> > +       # 6 GHz band
> > +       (5945 - 6425 @ 160), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>
> I know we have AUTO-BW in this rule for other countries, but there are
> no adjacent ranges, so this just seems to be a mistake that I didn't
> catch previously. I'll do a patch to fix them all. I can either apply
> this patch first and fix it, or you can provide an updated patch,
> whichever you prefer.
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

