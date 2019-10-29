Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=v7erUA1MayET4d+PRFDYxuNkpB0BJ+Z6MbACsxwVKKY=;
 b=RWLZF3oypjMOPw
 oDa6aj8cZtFYe3GvHDtcUoPfdK3SJUuUNdFeeS0BccyibTqRXfVx6K2MJGHlvc0csz4XVVYROXnrU
 2MXI+NRobIbqj/z5Ukff1lVc0R5iBqgwOXsLd966fI04OILsjMd5VX2Lwdtcjmo7lMGzDwI3X35gF
 lv2i6VUtI+c2U+NBbUhVot7D+ycWPiHr2MIzcCUzVdGZYOsCwMLBA9KxCfXY7m7ytorEBwkZqUvh0
 pfcGm5uoYwEPE2SCtXmlXug4+3G1hNPg2YUblQhtK0mXsqOuDKkP3xX8/Szh9lZq7ToC1OUK2Ylyf
 J1nmUTWkgyTUXRgNATcQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQUL-0000ki-OV
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 12:20:43 +0000
Received: from mail-yw1-f69.google.com ([209.85.161.69])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1iPQUG-0003pB-FP
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 12:20:36 +0000
Received: by mail-yw1-f69.google.com with SMTP id c189so9687899ywe.18 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Oct 2019 05:20:36 -0700 (PDT)
Date: Tue, 29 Oct 2019 07:20:33 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20191029122033.GK30813@ubuntu-xps13>
References: <20190726030538.16784-1-wens@kernel.org>
 <20190809205025.GP10402@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809205025.GP10402@ubuntu-xps13>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Extend 5470-5725 MHz
 range to 5730 MHz for Taiwan (TW)
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
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Aug 09, 2019 at 03:50:25PM -0500, Seth Forshee wrote:
> On Fri, Jul 26, 2019 at 11:05:38AM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> > 
> > This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
> > The Linux kernel however does not seem capable of considering them
> > most restrictive subset of multiple rules.
> > 
> > Since 5725 ~ 5730 MHz belongs to the next range which has looser
> > requirements, we can do this manually and extend the range by 5 MHz
> > to make the kernel happy and be able to use channel 144.
> > 
> > Also, looking at the US regulations, which the TW ones are based on,
> > The DFS range ends at 5730 MHz, while the next range starts at 5735
> > MHz. This doesn't match the actual regulations, but is skewed to meet
> > wireless channel boundaries. I prefer the database match the law,
> > and be adjuested only if necessary.
> > 
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Sorry for the delay, applied now. Thanks!


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

