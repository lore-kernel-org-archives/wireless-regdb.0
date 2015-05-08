Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yqnrw-0006Wc-RO
 for wireless-regdb@lists.infradead.org; Fri, 08 May 2015 19:23:34 +0000
Date: Fri, 8 May 2015 21:23:04 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150508192304.GD20018@wotan.suse.de>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-5-git-send-email-mcgrof@do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430873070-7290-5-git-send-email-mcgrof@do-not-panic.com>
Subject: Re: [wireless-regdb] [PATCH v1 04/12] firmware: fix possible use
 after free on name on asynchronous request
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
To: ming.lei@canonical.com, gregkh@linuxfoundation.org
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, "linux-kernel@vger.kernel.org Luis R. Rodriguez" <mcgrof@do-not-panic.com>, tiwai@suse.de, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, dhowells@redhat.com, seth.forshee@canonical.com, casey@schaufler-ca.com, akpm@linux-foundation.org, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 05, 2015 at 05:44:22PM -0700, Luis R. Rodriguez wrote:
> From: "Luis R. Rodriguez" <mcgrof@suse.com>
> 
> Asynchronous firmware loading copies the pointer to the
> name passed as an argument only to be scheduled later and
> used. This behaviour works well for synchronous calling
> but in asynchronous mode there's a chance the caller could
> immediately free the passed string after making the
> asynchronous call. This could trigger a use after free
> having the kernel look on disk for arbitrary file names.

<-- snip -->

> Unfortunatley in the worst and most common case however you
> can typically crash your system with a page fault by trying to
> free something which you cannot, and/or a NULL pointer
> dereference [1].

I've found a few more bugs in this code that should be
stable fixes. Since the fixes are all related there is
an alternative approach to the problem here which would
require us to just deal with PATH_MAX a few times in code
for firmware requests. Although that does increase the
allocation required by a few KB I think the simplicity
is worth it. So if this patch has not yet been applied
I will send out a new series of fixes addressing name
issues through an alternative approach and implementation
preferences so please yield applying this yet, if it has
already been applied / submitted upstream let me know.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

