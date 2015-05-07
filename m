Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from lb1-smtp-cloud3.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqQCM-0006cz-0U
 for wireless-regdb@lists.infradead.org; Thu, 07 May 2015 18:07:04 +0000
Message-ID: <1431021995.8171.97.camel@x220>
From: Paul Bolle <pebolle@tiscali.nl>
Date: Thu, 07 May 2015 20:06:35 +0200
In-Reply-To: <1430988137.8171.58.camel@x220>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
 <20150506033330.GA16470@gondor.apana.org.au>
 <1430988137.8171.58.camel@x220>
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
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, "Luis R.
 Rodriguez" <mcgrof@do-not-panic.com>, tiwai@suse.de, gregkh@linuxfoundation.org, ming.lei@canonical.com, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Tadeusz Struk <tadeusz.struk@intel.com>, John Griffin <john.griffin@intel.com>, dhowells@redhat.com, seth.forshee@canonical.com, Bruce Allan <bruce.w.allan@intel.com>, casey@schaufler-ca.com, akpm@linux-foundation.org, "Luis R. Rodriguez" <mcgrof@suse.com>, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, 2015-05-07 at 10:42 +0200, Paul Bolle wrote:
> On Wed, 2015-05-06 at 11:33 +0800, Herbert Xu wrote:
> > On Tue, May 05, 2015 at 05:44:21PM -0700, Luis R. Rodriguez wrote:
> > > From: "Luis R. Rodriguez" <mcgrof@suse.com>
> > > 
> > > We're going to add firmware module signing support, but when we do
> > > this we end up with the following recursive dependency. Fix this by
> > > just depending on FW_LOADER, which is typically always enabled
> > > anyway.
> > > 
> > > mcgrof@ergon ~/linux-next (git::master)$ make allnoconfig
> > > scripts/kconfig/conf  --allnoconfig Kconfig
> > > crypto/Kconfig:15:error: recursive dependency detected!
> > > crypto/Kconfig:15:      symbol CRYPTO is selected by SYSDATA_SIG
> > > init/Kconfig:1880:      symbol SYSDATA_SIG is selected by FIRMWARE_SIG
> > > drivers/base/Kconfig:88:        symbol FIRMWARE_SIG depends on FW_LOADER
> > > drivers/base/Kconfig:80:        symbol FW_LOADER is selected by CRYPTO_DEV_QAT
> > > drivers/crypto/qat/Kconfig:1:   symbol CRYPTO_DEV_QAT is selected by CRYPTO_DEV_QAT_DH895xCC
> > > drivers/crypto/qat/Kconfig:13:  symbol CRYPTO_DEV_QAT_DH895xCC depends on CRYPTO
> > 
> > This doesn't look like a real cycle to me so perhaps we can fix
> > kbuild to understand this?
> 
> (Dependency circles involving selects still hurt my brain.)
> 
> Perhaps Luis should have another look at 02/12. See that patch adds this
> Kconfig entry to init/Kconfig:
>     config SYSDATA_SIG
> 	def_bool y
> 	select SYSTEM_TRUSTED_KEYRING
> 	select KEYS
> 	select CRYPTO
> 	select ASYMMETRIC_KEY_TYPE
> 	select ASYMMETRIC_PUBLIC_KEY_SUBTYPE
> 	select PUBLIC_KEY_ALGO_RSA
> 	select ASN1
> 	select OID_REGISTRY
> 	select X509_CERTIFICATE_PARSER
> 
> As far as I can see this is not enclosed in anything that adds any
> dependencies. So that basically means that SYSDATA_SIG will always be
> set, for all architectures (because I think all arches source
> init/Kconfig). That should make it a pretty pointless symbol (except for
> the fact that it does trigger all those selects).
> 
> The same patch also adds
> 	select SYSDATA_SIG
> 
> to the entry for MODULE_SIG. But to me that looks like a nop, because
> SYSDATA_SIG will be set anyhow. So, but this is just I guess, the
> problem might go away if
> 	def_bool y
> 
> is changed to just
> 	bool

No, it doesn't. But the change I propose still makes sense, anyway.

> (Note that I haven't actually tested anything here, and it wouldn't be
> the first time my reasoning about Kconfig patches is completely off.)

Hear, hear!

> And, whatever the value of my analysis, adding a Kconfig problem in
> 02/12 just to fix it in 03/12 is a bit silly. I think the patches should
> be squashed if the problem can't be solved any other way.

It seems the circular dependency warning is triggered by 5/12.

And, having now fiddled a bit with this series, I think the approach
taken in this patch might actually be preferable treewide.

See, FW_LOADER is 'y' unless EXPERT is set and one goes to the trouble
of setting FW_LOADER to 'n'. So in the 100+ places where FW_LOADER is
selected, that is done for, almost always, no immediate benefit.
Changing those places to use
    depends on FW_LOADER

should have no effect, I think. Except for the EXPERT people not wanting
FW_LOADER. But that would be putting the burden where it belongs, I'd
say.

Am I missing something here?


Paul Bolle


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

