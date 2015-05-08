Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from lb1-smtp-cloud6.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqqD7-0008Vo-Hj
 for wireless-regdb@lists.infradead.org; Fri, 08 May 2015 21:53:35 +0000
Message-ID: <1431121983.2398.54.camel@x220>
From: Paul Bolle <pebolle@tiscali.nl>
Date: Fri, 08 May 2015 23:53:03 +0200
In-Reply-To: <1431029675.8171.109.camel@x220>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
 <20150506033330.GA16470@gondor.apana.org.au>
 <1430988137.8171.58.camel@x220> <1431021995.8171.97.camel@x220>
 <20150507182838.GA20018@wotan.suse.de> <1431029675.8171.109.camel@x220>
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

On Thu, 2015-05-07 at 22:14 +0200, Paul Bolle wrote:
> Tomorrow, after a (western European) night of sleep, I hope to explain
> why the error in dad's file makes sense. I'm not much of a teacher so I
> need a clear head to do that.

Let's start with mom's Kconfig file. It triggers
	error: recursive dependency detected!
	symbol GYM depends on ROCK_CLIMBING
	symbol ROCK_CLIMBING depends on LOCKER
	symbol LOCKER depends on GYM

Now you should realize that the kconfig tools have to answers questions
like these, for each (tristate) symbol:
	- must it be 'n'; or
	- can it be 'm'; or
	- can it be 'y'.

Take, for example: can GYM be 'y'? Since GYM depends on ROCK_CLIMBING,
it can only be 'y' if ROCK_CLIMBING is 'y' (both being tristate). And
ROCK_CLIMBING depends on LOCKER, so ROCK_CLIMBING can only be 'y' if
LOCKER is 'y' (ditto). And LOCKER, in its turn, depends on GYM, so it
can only be 'y', if GYM is 'y'.

But we can't say whether GYM is 'y' yet, as it can still be 'n', 'm', or
'y' for all we know. So we can't answer that question. Hence the
recursive dependency error. (There must be a term for this obvious
problem in formal logic, but I'm not trained in formal logic.)

On to dad's Kconfig file (which is your example, but simplified). That
triggers:
	error: recursive dependency detected!
	symbol GYM is selected by ROCK_CLIMBING
	symbol ROCK_CLIMBING depends on LOCKER
	symbol LOCKER depends on GYM

Let's try to determine whether GYM should be 'n'. Well, GYM is selected
by ROCK_CLIMBING so it cannot be 'n' if ROCK_CLIMBING is 'm' or 'y'. (If
ROCK_CLIMBING is 'm' it can be 'm' or 'y', but not 'n', and if
ROCK_CLIMBING is 'y' it must be 'y'.) Do we know whether ROCK_CLIMBING
should be 'n'? It should be 'n' only if LOCKER is 'n'. And LOCKER should
in its turn be 'n' if GYM is 'n'. But we don't know yet what GYM will
be. So, again, we can't answer this question. Recursive dependency
error!

The complicated error you ran into was
	error: recursive dependency detected!
	symbol CRYPTO is selected by SYSDATA_SIG
	symbol SYSDATA_SIG is selected by FIRMWARE_SIG
	symbol FIRMWARE_SIG depends on FW_LOADER
	symbol FW_LOADER is selected by CRYPTO_DEV_QAT
	symbol CRYPTO_DEV_QAT is selected by CRYPTO_DEV_QAT_DH895xCC
	symbol CRYPTO_DEV_QAT_DH895xCC depends on CRYPTO

I'm lazy, so I haven't gone through this error step by step. But I'm
sure it's just a complicated version of what I tried to explain in the
above two examples. But if you're unconvinced I'll try to go through
this error too.

Now I'm sure the point I'm trying to make can be made more convincingly
and more elegantly. But the thing is, I think, that given how "select"
works and how "depends on" works, some setups will trigger these errors.
One might wish that "select" or "depends on" behaved differently, but
with the thousands of Kconfig symbols now in use, that really looks
unfeasible.

(Now let's see how all the, mostly German, people trained in formal
logic that appear to care about the kconfig tools shoot holes in my
reasoning.)

Hope this helps,


Paul Bolle


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

