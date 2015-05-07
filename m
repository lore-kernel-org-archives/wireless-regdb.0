Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from lb2-smtp-cloud3.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqSCD-0000JS-U1
 for wireless-regdb@lists.infradead.org; Thu, 07 May 2015 20:15:03 +0000
Message-ID: <1431029675.8171.109.camel@x220>
From: Paul Bolle <pebolle@tiscali.nl>
Date: Thu, 07 May 2015 22:14:35 +0200
In-Reply-To: <20150507182838.GA20018@wotan.suse.de>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
 <20150506033330.GA16470@gondor.apana.org.au>
 <1430988137.8171.58.camel@x220> <1431021995.8171.97.camel@x220>
 <20150507182838.GA20018@wotan.suse.de>
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

On Thu, 2015-05-07 at 20:28 +0200, Luis R. Rodriguez wrote:
> Here's a simple test Kconfig entry one can use to test this:
> 
> Let's say rock climbers hate locker rooms, but swimmer need them. We can
> then have:
> 
> config GYM                                                                      
>         tristate                                                                
>         default n                                                               
>                                                                                 
> config LOCKER                                                                   
>         tristate                                                                
>         default n                                                               
>         depends on GYM                                                          
>                                                                                 
> config SWIMMING                                                                 
>         tristate                                                                
>         default n                                                               
>         select GYM                                                              
>         select LOCKER                                                           
>                                                                                 
> config ROCK_CLIMBING                                                            
>         tristate                                                                
>         default n                                                               
>         depends on !LOCKER                                                      
>         select GYM  
> 
> Kbuild seems to believe that because swimmers need lockers that rock climbers
> need them too. That is obviously not true.
> 
> mcgrof@ergon ~/linux-next (git::your-swimming-dad)$ make allnoconfig
> scripts/kconfig/conf --allnoconfig Kconfig
> drivers/crypto/qat/Kconfig:25:error: recursive dependency detected!
> drivers/crypto/qat/Kconfig:25:	symbol GYM is selected by ROCK_CLIMBING
> drivers/crypto/qat/Kconfig:40:	symbol ROCK_CLIMBING depends on LOCKER
> drivers/crypto/qat/Kconfig:29:	symbol LOCKER depends on GYM
> #
> # configuration written to .config
> #

The same error can be seen with this Kconfig file (simplified in some
places):

# test with 'make KBUILD_KCONFIG=Kconfig.your-swimming-dad menuconfig'
mainmenu "Your swimming dad"

config MODULES
	def_bool y
	option modules

config GYM
        tristate "Gym"

config LOCKER
        tristate "Locker"
	depends on GYM

config ROCK_CLIMBING
        tristate "Rock climbing"
	depends on LOCKER
	select GYM

But then I think it's helpful to also play with this very similar file:

# test with 'make KBUILD_KCONFIG=Kconfig.your-swimming-mom menuconfig'
mainmenu "Your swimming mom"

config MODULES
	def_bool y
	option modules

config GYM
        tristate "Gym"
	depends on ROCK_CLIMBING

config LOCKER
        tristate "Locker"
	depends on GYM

config ROCK_CLIMBING
        tristate "Rock climbing"
	depends on LOCKER

This triggers the same error but with this as first line:
    symbol GYM depends on ROCK_CLIMBING

Now the circular dependency in mom's Kconfig file is rather obvious. The
circular dependency in dad's file too, once you adapt to the reverse
logic of select statements. (The part that makes my brain hurt.)

Tomorrow, after a (western European) night of sleep, I hope to explain
why the error in dad's file makes sense. I'm not much of a teacher so I
need a clear head to do that.

Thanks,


Paul Bolle


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

