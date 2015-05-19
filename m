Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ie0-x234.google.com ([2607:f8b0:4001:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yuqag-0001NS-Le
 for wireless-regdb@lists.infradead.org; Tue, 19 May 2015 23:06:27 +0000
Received: by iebgx4 with SMTP id gx4so26188288ieb.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 19 May 2015 16:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=prnvwHFg6IYWKe3XGnAtuhWqQdcNFyb2ZfKABEo/Ezw=;
 b=Lr/NUO+b2eKlaZGQdgOvlUuBSAY7Y+AZFUyay6QY4o7sFMhvXDQeTUe9BVk7VrHwD1
 LfJG47vxlUNY0iTh/RVOgh5Bc27DuST3DIgwfbzWIXzZC/+Pgnb30CWZpSdRD1Rc6J0g
 EK72ZINzVpKzPGIPg2KtoRQZnpQkRKj/ec1KpOTVn/9DfNH4xC9YeszuanpqkeQkVwK7
 GpjYIP8iE0CtsmZhv+ONB3oLIWpArGJAE7VAXnsAcUoN4EdJf9ymVvOJJnEhta/5A9e7
 p9YCGm2GqLUuxA7ttOV9k26nOWhzZXOfWR0myJmnAIPQGwQs9sTQcrZoxD/WE/XCdRm6 Yw4A==
MIME-Version: 1.0
In-Reply-To: <20150519230355.GA5853@gondor.apana.org.au>
References: <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
 <20150506033330.GA16470@gondor.apana.org.au> <1430988137.8171.58.camel@x220>
 <1431021995.8171.97.camel@x220> <20150518200100.GY23057@wotan.suse.de>
 <1431981930.9091.29.camel@x220> <20150519000921.GA23057@wotan.suse.de>
 <1432022535.9091.48.camel@x220> <20150519154630.GB23057@wotan.suse.de>
 <20150519225945.GB5718@gondor.apana.org.au>
 <20150519230355.GA5853@gondor.apana.org.au>
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Date: Tue, 19 May 2015 16:05:43 -0700
Message-ID: <CAB=NE6XizmKMc80rLV9YTZGtEJdZ022+0HNPxXvunp5v4BnCMw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v1 03/12] crypto: qat - address
 recursive dependency when fw signing is enabled
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
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, Paul Bolle <pebolle@tiscali.nl>, Kyle McMartin <kyle@kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Kees Cook <keescook@chromium.org>, Tadeusz Struk <tadeusz.struk@intel.com>, Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ming Lei <ming.lei@canonical.com>, Rusty Russell <rusty@rustcorp.com.au>, linux-wireless <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, John Griffin <john.griffin@intel.com>, David Howells <dhowells@redhat.com>, Seth Forshee <seth.forshee@canonical.com>, Bruce Allan <bruce.w.allan@intel.com>, Casey Schaufler <casey@schaufler-ca.com>, Andrew Morton <akpm@linux-foundation.org>, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 19, 2015 at 4:03 PM, Herbert Xu <herbert@gondor.apana.org.au> wrote:
> OK I was wrong.  It should still compile

Right.

> So I guess you only
> need the depends on/select for those that won't work without the
> firmware.

Well that's be true if FW_LOADER was easy to disable, but its not. You
really gotta try hard to disable it. Not only does it require EXPERT
but also EMBEDDED. I think its fair to say if you disable FW_LOADER
you know what you are doing and its fair for us then to remove such
selects or depends. Thoughts?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

