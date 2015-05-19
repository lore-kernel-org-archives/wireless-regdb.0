Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YuV6R-0004lM-3a
 for wireless-regdb@lists.infradead.org; Tue, 19 May 2015 00:09:47 +0000
Date: Tue, 19 May 2015 02:09:21 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150519000921.GA23057@wotan.suse.de>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-4-git-send-email-mcgrof@do-not-panic.com>
 <20150506033330.GA16470@gondor.apana.org.au>
 <1430988137.8171.58.camel@x220> <1431021995.8171.97.camel@x220>
 <20150518200100.GY23057@wotan.suse.de>
 <1431981930.9091.29.camel@x220>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431981930.9091.29.camel@x220>
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

On Mon, May 18, 2015 at 10:45:30PM +0200, Paul Bolle wrote:
> [...] so, probably, almost
> all .config files have FW_LOADER set. So I think, except for some corner
> cases, either converting all "select FW_LOADER" to "depends on
> FW_LOADER" or simply dropping  "select FW_LOADER" all together, should
> be fine.

Well, that makes sense. I just dropped all "select FW_LOADER" entries
on next-20150518, then I enabled everything with 'make allyesconfig'
and then went into menuconfig to disable FW_LOADER. The build worked.

Going to try a few more build matrix combinations and send patches to
do away with this.

> Those corner cases should then be handled on a case by case basis. 
> 
> > If not does this need to be fixed on kconfig?
> 
> There's no reason to think the logic of the kconfig tools, as it is
> currently implemented, is flawed. Feel free to convince me of the
> opposite.

Very well, thanks so much for your review and help.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

