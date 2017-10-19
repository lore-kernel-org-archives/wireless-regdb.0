Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=I6ALrXYj/KsvtT7NgnVvzvMb6znhM0SYRJ8KggCGq4w=;
 b=a+PDe6W9stNN0l
 AI+QgvSsi5hkstfPuDwmyqcx1LvNqusJUNikgWNq0mvlGVsj68UGfFZnr1xNOckf8CTtpvEVuBTNT
 dCMqGDExrBSpJQ2hh5gkpujX5wrS5nevdIw2LiZfgH+5vFcSTcCFYc9V0W27RWmYpn5boKeD5Y5g9
 GmNqFFh3uWSkW+kBhriMR/qm+iaBHVDV6Uct0nNHN85mpQzjNaQ19CjIfuzC4Mv3X4CAYoLwQ200n
 0KtRyl50aFQkogPQAYyn+0y2h/GHZK7axCKECRxWesPUXLjzJe/aWRhAQs3rUeIVxSoZOzwJ5/u9t
 HwQ1B7z+Lf4S4QKNxgdw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5J9e-00054y-6M
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:19:08 +0000
Received: from mail-io0-f198.google.com ([209.85.223.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e5J9I-0000uF-Qa
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 22:18:44 +0000
Received: by mail-io0-f198.google.com with SMTP id i38so9081487iod.10 for
 <wireless-regdb@lists.infradead.org>; Thu, 19 Oct 2017 15:18:44 -0700 (PDT)
Date: Thu, 19 Oct 2017 17:18:41 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171019221841.peidozvacusk22py@ubuntu-hedt>
References: <20170914144942.GA32066@rhlx01.hs-esslingen.de>
 <20170926201657.5f4cxrh5ou2gu3m7@ubuntu-xps13>
 <20170927135332.GA410@rhlx01.hs-esslingen.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170927135332.GA410@rhlx01.hs-esslingen.de>
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update rules for 2.4GHz
 limit Republic of Korea (KR)
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
To: Andreas Mohr <andi@lisas.de>
Cc: Andreas Mohr <andim2@users.sf.net>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Sep 27, 2017 at 03:53:32PM +0200, Andreas Mohr wrote:
> Hello Mr. Forshee,
> 
> On Tue, Sep 26, 2017 at 04:16:57PM -0400, Seth Forshee wrote:
> > On Thu, Sep 14, 2017 at 04:49:42PM +0200, Andreas Mohr wrote:
> > I can't read the document you reference above, and my own searches don't
> > seem to turn up anything authoritative. I consider the source of the
> > original 20 dBm limit reliable, but it was added in 2013 so it's
> > possible things have changed since then.
> 
> Yes, my own Internet research didn't turn up much either.
> 
> 
> > I'll give a few days for any other comments, and if there are none I
> > will apply the change.
> 
> From my POV this is a very appreciable policy.
> 
> So:
> - we've got a hard cert requirement
> - provided specs are not nearly as hard (ahem)
> - so, have it applied after some suitable complaint period
> - then, this limit will be globally in effect in certain "less decipherable" countries ;-),
>   and if there happens to be a problem, the properly country-prolific users there
>   will then be able to
>   provide much more precise/direct input as to
>   whether or not currently chosen regulation settings are appropriate, *and why*

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

