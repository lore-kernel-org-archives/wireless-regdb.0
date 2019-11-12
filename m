Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=/NWuSwc3NSpTgYLwEAlo3Wm9By0uxiL5ltuuKBVpjHI=;
 b=PeBD7irl13vPsx
 ASIKrJOUpWxfbEyUvVHM5hJin70YxYkHkTfErJkYWJK0YXBe5+/VhNy5NCWIIz7cJcsNi8SojfvX0
 nldp+cRR12n8NW+jsCI/ON+oa3XzNpfpjSmDZ6On2TXIR3GCvCXeAFBSwV+3TPTIfQ3d0f174Wm2/
 /gNvsKymdSohieOo310aQARpOnOsDQbw4xRAYpoRRW5GH+jUYolXgNIkzXBdyf9bh1MMCB+gtv59C
 vFgXv/l/kDnvt4NdkqOvWBCWvx9bzB16QEzRFQkOxPlPZ87Ju5O9pG3s47rTE+CcgZZ/9USkIj09K
 T/DG9MVwXik1WhFqF4XA==;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUeug-0000JR-VH
 for wireless-regdb@lists.infradead.org; Tue, 12 Nov 2019 22:45:36 +0000
Received: by mail-pl1-f196.google.com with SMTP id az9so136459plb.11 for
 <wireless-regdb@lists.infradead.org>; Tue, 12 Nov 2019 14:45:28 -0800 (PST)
Date: Tue, 12 Nov 2019 22:45:26 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20191112224526.GP11244@42.do-not-panic.com>
References: <20191105225751.1233-1-briannorris@chromium.org>
 <CA+ASDXM_5Q3LNyv_mbrG8d8Qo1iZZz2A2CFfvQqj9_Ta-q-wMA@mail.gmail.com>
 <786f623306ad462e3776236c94e83b5f2e0648ab.camel@sipsolutions.net>
 <CA+ASDXMVJg0QSPzSiWFjoDH67yJ-NfYX4MQZUT3gaivx1SJ2aA@mail.gmail.com>
 <20191106231749.GM11244@42.do-not-panic.com>
 <20191107173723.GA157096@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107173723.GA157096@google.com>
Subject: Re: [wireless-regdb] [RESEND PATCH] crda: Makefile: fix .so
 compilation line with some compilers
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
To: Brian Norris <briannorris@chromium.org>
Cc: wireless-regdb@lists.infradead.org, Johannes Berg <johannes@sipsolutions.net>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Nov 07, 2019 at 09:37:24AM -0800, Brian Norris wrote:
> Write the CC rule such that it only tries to produce a single output
> file (the .so). When including the .h files in the compiler invocation,
> this suggests we should be producing pre-compiled headers too, which
> doesn't make sense in this context, and Clang happens not to like.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> On Wed, Nov 06, 2019 at 11:17:49PM +0000, Luis Chamberlain wrote:
> > Sure, send me patches.

Thanks, applied and pushed!

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

