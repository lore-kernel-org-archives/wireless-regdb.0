Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq3YD-0001gL-8o
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 17:56:06 +0000
Date: Wed, 6 May 2015 19:55:41 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150506175541.GN5622@wotan.suse.de>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
Subject: Re: [wireless-regdb] [RFC v1 00/12] kernel/firmware/wireless:
 firmware digital signature checks
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
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, tiwai@suse.de, gregkh@linuxfoundation.org, ming.lei@canonical.com, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, dhowells@redhat.com, seth.forshee@canonical.com, casey@schaufler-ca.com, akpm@linux-foundation.org, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 05, 2015 at 05:44:18PM -0700, Luis R. Rodriguez wrote:
> From: "Luis R. Rodriguez" <mcgrof@suse.com>
> 
>   * first set: [1-4] few fixes and core changes in order to consider digital
>     firmware signature support. Please consider these for integration. Patch
>     2 generalizes module signing as system data signing and can very likely
>     just be ignored unles the second set seems more reasonable to start
>     considering. One of these goes as a stable fix.

Rusty, based on feedback only one patch is relevant for upstream consideration
then on your end:

  1  - kernel/params.c: export param_ops_bool_enable_only                                                                                                                       

Ming, as for firmware_class, this patch should be reviewed and
considered for upstream consideration:

  4  - firmware: fix possible use after free on name on asynchronous request 

The patches are orthogonal to each other so they can be considered
separately, and can go in through separate trees.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

