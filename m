Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from helcar.hengli.com.au ([209.40.204.226])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ypq6m-0004iE-KQ
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 03:34:53 +0000
Date: Wed, 6 May 2015 11:33:30 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
Message-ID: <20150506033330.GA16470@gondor.apana.org.au>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, Tadeusz Struk <tadeusz.struk@intel.com>, tiwai@suse.de, gregkh@linuxfoundation.org, ming.lei@canonical.com, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, John Griffin <john.griffin@intel.com>, dhowells@redhat.com, seth.forshee@canonical.com, Bruce Allan <bruce.w.allan@intel.com>, casey@schaufler-ca.com, akpm@linux-foundation.org, "Luis R. Rodriguez" <mcgrof@suse.com>, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 05, 2015 at 05:44:21PM -0700, Luis R. Rodriguez wrote:
> From: "Luis R. Rodriguez" <mcgrof@suse.com>
> 
> We're going to add firmware module signing support, but when we do
> this we end up with the following recursive dependency. Fix this by
> just depending on FW_LOADER, which is typically always enabled
> anyway.
> 
> mcgrof@ergon ~/linux-next (git::master)$ make allnoconfig
> scripts/kconfig/conf  --allnoconfig Kconfig
> crypto/Kconfig:15:error: recursive dependency detected!
> crypto/Kconfig:15:      symbol CRYPTO is selected by SYSDATA_SIG
> init/Kconfig:1880:      symbol SYSDATA_SIG is selected by FIRMWARE_SIG
> drivers/base/Kconfig:88:        symbol FIRMWARE_SIG depends on FW_LOADER
> drivers/base/Kconfig:80:        symbol FW_LOADER is selected by CRYPTO_DEV_QAT
> drivers/crypto/qat/Kconfig:1:   symbol CRYPTO_DEV_QAT is selected by CRYPTO_DEV_QAT_DH895xCC
> drivers/crypto/qat/Kconfig:13:  symbol CRYPTO_DEV_QAT_DH895xCC depends on CRYPTO

This doesn't look like a real cycle to me so perhaps we can fix
kbuild to understand this?

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

