Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq2Qw-0001PI-GD
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 16:44:31 +0000
Date: Wed, 6 May 2015 18:44:02 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150506164402.GM5622@wotan.suse.de>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-12-git-send-email-mcgrof@do-not-panic.com>
 <1430895798.2495.0.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430895798.2495.0.camel@sipsolutions.net>
Subject: Re: [wireless-regdb] [RFC v1 11/12] iwlwifi: use
 sysdata_file_request() and sysdata_file_request_async()
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, "Luis R.
 Rodriguez" <mcgrof@do-not-panic.com>, tiwai@suse.de, gregkh@linuxfoundation.org, ming.lei@canonical.com, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, dhowells@redhat.com, seth.forshee@canonical.com, casey@schaufler-ca.com, akpm@linux-foundation.org, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 06, 2015 at 09:03:18AM +0200, Johannes Berg wrote:
> What's the point in these conversions? You're clearly not converting
> *all* users so you could get rid of request_firmware(), so this is
> pretty much pointless.

That is correct, as the cover letter stated these are just
examples of how one can use the new proposed extensible
API, the driver changes were just examples, it would
certainly be pointless and stupid to convert drivers
over.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

