Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=391sCyuiNnXjOdSyALoEFqaBQvSDCvilGu/en7M6T6Q=;
 b=m01Q3f/qP0Mp7+eg6OKu5lCaAM
 UC30B3w1JsIJo9x3ydIH6EpifpFFD33W6gufIseOSfUNis32y5WCArPNFFISyD+BXAux66RF7AyJB
 ZV4bAG09byVPomGC050ygliGPfk3HWSmkL76eVNMoRXKLIOOcbp2EKJV5fgPkrJVJlaXhToBWKvUD
 eDTFmzZAqrKmru0RlW+2LsFJkIhcyVNyUrPORFPtwIAZG4U9i0LxVVPuNgFOdw/RMpNq9F9Giu2Fq
 JrhbJOTA3/nW9lxLR5CAjaGhCJZd+vIXPyBt7bricriaE2mfLn5VQiB/r5cyfzyRsVr4/tQf4i/Ac
 WDk+t+yA==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGQS-0000Dl-91
 for wireless-regdb@lists.infradead.org; Wed, 06 Nov 2019 08:12:25 +0000
Message-ID: <786f623306ad462e3776236c94e83b5f2e0648ab.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 06 Nov 2019 09:12:19 +0100
In-Reply-To: <CA+ASDXM_5Q3LNyv_mbrG8d8Qo1iZZz2A2CFfvQqj9_Ta-q-wMA@mail.gmail.com>
References: <20191105225751.1233-1-briannorris@chromium.org>
 <CA+ASDXM_5Q3LNyv_mbrG8d8Qo1iZZz2A2CFfvQqj9_Ta-q-wMA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] crda: Makefile: fix .so compilation
 line with some compilers
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
To: Brian Norris <briannorris@chromium.org>, linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2019-11-05 at 15:02 -0800, Brian Norris wrote:
> On Tue, Nov 5, 2019 at 2:57 PM Brian Norris <briannorris@chromium.org> wrote:
> > Write the CC rule such that it only tries to produce a single output
> > file (the .so). When including the .h files in the compiler invocation,
> > this suggests we should be producing pre-compiled headers too, which
> > doesn't make sense in this context, and Clang happens not to like.
> > 
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> 
> Apparently wireless-regdb@ is subscribers only. I have since joined,
> but I guess my patch bounced from that list... if I don't hear back in
> a while, I may resend.

The bigger question is who actually maintains crda now, if anyone ... :)

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

