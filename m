Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=C4Tt/absJKo+G6hg9ZO4Hak87o1mnfKr1ziQYh9Ee24=;
 b=RryLhP2ikhilc7
 K/9PdTJM7SJn3cCO2Rw8pdajugc6WnovZt7geHCljiWsJYWmzhxBIftLuyvb8h+BTdwG6lvMgQxmr
 iISB0qE3b671ekAMU8+yl9rLq/gzHmXlCP1xeJsoBXayCDHOQmXBr8jOg5zfvqOfCKCLCrBrHiJO0
 BcuQvcXIwv0vEgHre0OUBBtb6O1YjvKmk0iJa0owakWu1Blra56pA6c3ajujdfyB7Pq5QPXLESrVD
 UVe4pLGT7zgK5510BiK3QuwgnjY1pR40+53cp2KUNBVpLhEoDfqmpWQ5ut1NQrk2k02oybF3jwzIq
 GbkKUtOPpBY7DzyvUjLw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwf6-0008Co-1C
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 16:21:49 +0000
Received: from mail-it1-f197.google.com ([209.85.166.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hQwf3-0008It-2u
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 16:21:45 +0000
Received: by mail-it1-f197.google.com with SMTP id y62so515783itd.6 for
 <wireless-regdb@lists.infradead.org>; Wed, 15 May 2019 09:21:45 -0700 (PDT)
Date: Wed, 15 May 2019 11:21:42 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190515162142.GC4357@ubuntu-xps13>
References: <1556314283-17842-1-git-send-email-peter.oh@bowerswilkins.com>
 <20190515130339.GY4357@ubuntu-xps13>
 <a2fa616d-7829-137c-7f48-6c59974cfa46@mail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2fa616d-7829-137c-7f48-6c59974cfa46@mail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for South Korea
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
To: suchan <abnoeh@mail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Peter Oh <peter.oh@bowerswilkins.com>
List-ID: <wireless-regdb@lists.infradead.org>

You dropped Peter and the linux-wireless list from your reply, adding
them back.

On Thu, May 16, 2019 at 12:10:16AM +0900, suchan wrote:
> 
> 2019-05-15 10:03PM at Seth Forshee wrote:
> > 
> > Is there any mention of transmit power control in the document? The fact
> > that some of the old limits are exactly half of they values you've given
> > makes me wonder if they weren't set lower for TPC, especially for
> > 5250-5350 MHz where TPC is common.
> > 
> > Since you're changing these rules, I'd also like to see the frequency
> > ranges changed to match the documented ranges, i.e.:
> > 
> >   2400 - 2483.5
> >   5150 - 5250
> >   5250 - 5350
> >   5470 - 5710
> >   5735 - 5850
> > 
> > I left the gap in the 5470-5850 MHz range since I can't tell exactly
> > where the DFS requirement ends. Usually it seems to be 5725 MHz, but
> > that is not universal. If you can determine where the break is those
> > ranges could also be expanded.
> > 
> > Thanks,
> > Seth
> > 
> > _______________________________________________
> > wireless-regdb mailing list
> > wireless-regdb@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/wireless-regdb
> 
> from same document, just under the table for wifi range itself 5250∼5350
> MHz and 5470∼5725 MHz need TPC and DFS
> 
> TPC rule is if power exceeds 25mW/MHz (this includes antenna gain), it
> has do be able to reduce it under 12.5mW/Mhz.
> 
> DFS rule itself (DFS-JP) looks right.

Thanks! Based on that I think this is probably what we need:

 (2400 - 2483.5 @ 40), (23)
 (5150 - 5250 @ 80), (23), AUTO-BW
 (5250 - 5350 @ 80), (20), DFS, AUTO-BW
 (5470 - 5725 @ 160), (20), DFS
 (5725 - 5835 @ 80), (23)

Peter, if that looks good to you please send a v3 patch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
