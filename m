Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from helcar.hengli.com.au ([209.40.204.226])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yuu5O-0006Zz-OK
 for wireless-regdb@lists.infradead.org; Wed, 20 May 2015 02:50:23 +0000
Date: Wed, 20 May 2015 10:49:25 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
Message-ID: <20150520024925.GA7021@gondor.apana.org.au>
References: <1430988137.8171.58.camel@x220> <1431021995.8171.97.camel@x220>
 <20150518200100.GY23057@wotan.suse.de>
 <1431981930.9091.29.camel@x220>
 <20150519000921.GA23057@wotan.suse.de>
 <1432022535.9091.48.camel@x220>
 <20150519154630.GB23057@wotan.suse.de>
 <20150519225945.GB5718@gondor.apana.org.au>
 <20150519230355.GA5853@gondor.apana.org.au>
 <CAB=NE6XizmKMc80rLV9YTZGtEJdZ022+0HNPxXvunp5v4BnCMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB=NE6XizmKMc80rLV9YTZGtEJdZ022+0HNPxXvunp5v4BnCMw@mail.gmail.com>
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
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, Paul Bolle <pebolle@tiscali.nl>, Kyle McMartin <kyle@kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Kees Cook <keescook@chromium.org>, Tadeusz Struk <tadeusz.struk@intel.com>, Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ming Lei <ming.lei@canonical.com>, Rusty Russell <rusty@rustcorp.com.au>, linux-wireless <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, John Griffin <john.griffin@intel.com>, David Howells <dhowells@redhat.com>, Seth Forshee <seth.forshee@canonical.com>, Bruce Allan <bruce.w.allan@intel.com>, Casey Schaufler <casey@schaufler-ca.com>, Andrew Morton <akpm@linux-foundation.org>, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 19, 2015 at 04:05:43PM -0700, Luis R. Rodriguez wrote:
> 
> Well that's be true if FW_LOADER was easy to disable, but its not. You
> really gotta try hard to disable it. Not only does it require EXPERT
> but also EMBEDDED. I think its fair to say if you disable FW_LOADER
> you know what you are doing and its fair for us then to remove such
> selects or depends. Thoughts?

Sure.  I can live with killing all selects/depends on FW_LOADER.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

