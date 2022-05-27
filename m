Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=lDt6hKUMMBBUlfqDGc/X842TOFbzOH6wMdRc/3jA2mI=;
 b=3YELKbjQ1qecYU
 tIiv2U3ZDMMomx62B+R2QAiZhqDd9EO3OfQmMPv7U/PccHDSMLGhKtcwhoFBauxJy+bZt1r9Uk/Yg
 tLRjfCUnkTZo043+Zhgytutn/wZLeiFPCe2o4d98JqXcraqnsWhB47VhKdDcN/Q+yJUjBEbaMBl1t
 iloabrvI/gcRwHMetqE2aCXxBDQKuMqWDF8M51rtyb5Un5DQIdc/X1PqvYDB9zeKcEbeEL9C0A1x7
 YUEzkM/ci/Cq9ZeaQxTDHCb1oCKWREUiEwjU58Xiuu/3S/Awyns3gPPtUmm77aZp8b7Uv/GLCI6WQ
 HYE7tQHv3UGBiYnhvVAQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nufUv-000paJ-Ay
	for wireless-regdb@lists.infradead.org; Fri, 27 May 2022 19:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653679183;
	bh=NwpQe2SD5ospKKn2AYy8FeYUTvnxQ2MLfItnEkQO41I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hnrVgFk40W/EIS0sNcKjWNN3UZDgNsmDHeTkcndHqktvAJiCypITL0z/QiwcV8H0D
	 0+i+BCa74ZDu7eFjkyQ3LgeJ8rcx4rXEosHPriNRPHqmQZZ2z2pKlvVjBq633Ykiqi
	 PM+ubEyg8EmxvLkSpmJd+3lQ40FNwMM1yuT6fPE2IlrTYpJcOzqH8/Uq31YN47ingc
	 r/a/xvIm4gM9wrYvdikKBDBfG/9/R8zY2+3Nq7eBKVzYcBhG7Aw/8kqFPWurNhAC6p
	 yS4s8pJp3nLQSKfBxZ02D2Im744p1aXPocWJCoUX6Dx/ehvoh/YZLtfJdOHT7c0oDR
	 CigwDdN/CLzBw==
Date: Fri, 27 May 2022 14:19:41 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YpEkTXd0cHBpGWqT@ubuntu-x1>
References: <CAPRryQp5b3eknS8vxq4kOGBSiZHn2=jy6E8hrbvACGKxJn1hLQ@mail.gmail.com>
 <YoUg2QiBxYIGRWp+@ubuntu-x1>
 <CAPRryQoRKv5zdX8ApOuO=7wWNCiKyVL=34HEFf5=oT+Vv3BMsQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRryQoRKv5zdX8ApOuO=7wWNCiKyVL=34HEFf5=oT+Vv3BMsQ@mail.gmail.com>
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
To: Dennis Bland <dennis@dbperformance.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 19, 2022 at 10:37:21PM -0600, Dennis Bland wrote:
> Hi Seth:
> 
> It's probably cleaner and faster for you to fix them all under your
> single patch (and avoid my patch formatting issues!).

Sounds good. Applied this patch, thanks!

> 
> Best regards,
> 
> Dennis
> 
> On Wed, May 18, 2022 at 10:37 AM Seth Forshee <sforshee@kernel.org> wrote:
> >
> > On Tue, Apr 26, 2022 at 09:52:31PM -0600, Dennis Bland wrote:
> > > Add 6 GHz operation for FI:
> > >
> > > https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
> > >
> > > signed-off-by: Dennis Bland <dennis@dbperformance.com>
> > > ---
> > > diff -up a/db.txt b/db.txt
> > > --- a/db.txt 2022-04-08 09:54:37.000000000 -0600
> > > +++ b/db.txt 2022-04-26 21:44:39.000000000 -0600
> > > @@ -570,6 +570,7 @@ country ET: DFS-ETSI
> > >  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
> > >  #  EU decision 2005/513/EC:
> > > https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
> > >  #  EU decision 2006/771/EC:
> > > https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
> > > +#  EU decision 2021/1067/EC:
> > > https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
> > >  # Harmonized CEPT countries (July 2019):
> > > https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
> > >  country FI: DFS-ETSI
> > >   (2400 - 2483.5 @ 40), (100 mW)
> > > @@ -578,6 +579,8 @@ country FI: DFS-ETSI
> > >   (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
> > >   # short range devices (ETSI EN 300 440-1)
> > >   (5725 - 5875 @ 80), (25 mW)
> > > +       # 6 GHz band
> > > +       (5945 - 6425 @ 160), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> >
> > I know we have AUTO-BW in this rule for other countries, but there are
> > no adjacent ranges, so this just seems to be a mistake that I didn't
> > catch previously. I'll do a patch to fix them all. I can either apply
> > this patch first and fix it, or you can provide an updated patch,
> > whichever you prefer.
> >
> > Thanks,
> > Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

