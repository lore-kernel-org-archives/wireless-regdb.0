Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from lb3-smtp-cloud2.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YuRvI-0000ML-Om
 for wireless-regdb@lists.infradead.org; Mon, 18 May 2015 20:46:06 +0000
Message-ID: <1431981930.9091.29.camel@x220>
From: Paul Bolle <pebolle@tiscali.nl>
Date: Mon, 18 May 2015 22:45:30 +0200
In-Reply-To: <20150518200100.GY23057@wotan.suse.de>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
 <20150506033330.GA16470@gondor.apana.org.au>
 <1430988137.8171.58.camel@x220> <1431021995.8171.97.camel@x220>
 <20150518200100.GY23057@wotan.suse.de>
Mime-Version: 1.0
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
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, Herbert Xu <herbert@gondor.apana.org.au>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>, tiwai@suse.de, gregkh@linuxfoundation.org, ming.lei@canonical.com, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Tadeusz Struk <tadeusz.struk@intel.com>, John Griffin <john.griffin@intel.com>, dhowells@redhat.com, seth.forshee@canonical.com, Bruce Allan <bruce.w.allan@intel.com>, casey@schaufler-ca.com, akpm@linux-foundation.org, jlee@suse.com, keescook@chromium.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Luis,

On Mon, 2015-05-18 at 22:01 +0200, Luis R. Rodriguez wrote:
> On Thu, May 07, 2015 at 08:06:35PM +0200, Paul Bolle wrote:
> > See, FW_LOADER is 'y' unless EXPERT is set and one goes to the trouble
> > of setting FW_LOADER to 'n'. So in the 100+ places where FW_LOADER is
> > selected, that is done for, almost always, no immediate benefit.
> > Changing those places to use
> >     depends on FW_LOADER
> > 
> > should have no effect, I think. Except for the EXPERT people not wanting
> > FW_LOADER. But that would be putting the burden where it belongs, I'd
> > say.
> 
> Paul, how would you recommend we proceed with this? Should we go ahead and
> change all 'select FW_LOADER' to 'depends on' ?

I've kept you waiting. That was impolite.

Two things I've discovered in the last few days. One is, sort of,
interesting and the other is specific to your issue.

1) Since v2.6.36 the recursive error reported by kconfig became more
informative. See commit d595cea62403 ("kconfig: print more info when we
see a recursive dependency").

There have been 20 commits that bothered to include "recursive
dependency detected" in the commit explanation since v2.6.36. All of
those were about dependencies that involved at least one "select"
statement. The most common solution was to convert one "select" to a
"depends on".

So a, highly unscientific, guideline for recursive dependency issues
would be: convert a "select" to a "depends on".

2) I stumbled on commit d9b19199e489 ("always enable FW_LOADER unless
EMBEDDED=y"). In the commit explanation I spotted:
    As a bonus, we can then get rid of all "select FW_LOADER" [...].

It seems the plan to get rid of those never materialized.

So what's the TL;DR?

It's hard to generate a .config with "# CONFIG_FW_LOADER is not set".
One has to set EXPERT, disable FW_LOADER manually, and never set one of
the over 100 symbols that select FW_LOADER. So, probably, almost
all .config files have FW_LOADER set. So I think, except for some corner
cases, either converting all "select FW_LOADER" to "depends on
FW_LOADER" or simply dropping  "select FW_LOADER" all together, should
be fine.

Those corner cases should then be handled on a case by case basis. 

> If not does this need to be fixed on kconfig?

There's no reason to think the logic of the kconfig tools, as it is
currently implemented, is flawed. Feel free to convince me of the
opposite.

Thanks,

Paul Bolle


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

