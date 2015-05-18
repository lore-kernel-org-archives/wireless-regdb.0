Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YuRE8-0002RR-DP
 for wireless-regdb@lists.infradead.org; Mon, 18 May 2015 20:01:29 +0000
Date: Mon, 18 May 2015 22:01:00 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150518200100.GY23057@wotan.suse.de>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
 <20150506033330.GA16470@gondor.apana.org.au>
 <1430988137.8171.58.camel@x220> <1431021995.8171.97.camel@x220>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431021995.8171.97.camel@x220>
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
To: Paul Bolle <pebolle@tiscali.nl>
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, Herbert Xu <herbert@gondor.apana.org.au>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>, tiwai@suse.de, gregkh@linuxfoundation.org, ming.lei@canonical.com, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Tadeusz Struk <tadeusz.struk@intel.com>, John Griffin <john.griffin@intel.com>, dhowells@redhat.com, seth.forshee@canonical.com, Bruce Allan <bruce.w.allan@intel.com>, casey@schaufler-ca.com, akpm@linux-foundation.org, jlee@suse.com, keescook@chromium.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 07, 2015 at 08:06:35PM +0200, Paul Bolle wrote:
> See, FW_LOADER is 'y' unless EXPERT is set and one goes to the trouble
> of setting FW_LOADER to 'n'. So in the 100+ places where FW_LOADER is
> selected, that is done for, almost always, no immediate benefit.
> Changing those places to use
>     depends on FW_LOADER
> 
> should have no effect, I think. Except for the EXPERT people not wanting
> FW_LOADER. But that would be putting the burden where it belongs, I'd
> say.

Paul, how would you recommend we proceed with this? Should we go ahead and
change all 'select FW_LOADER' to 'depends on' ? If not does this need to be
fixed on kconfig?

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

