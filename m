Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YptNE-0003aV-Vx
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 07:04:05 +0000
Message-ID: <1430895798.2495.0.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 06 May 2015 09:03:18 +0200
In-Reply-To: <1430873070-7290-12-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-12-git-send-email-mcgrof@do-not-panic.com>
Mime-Version: 1.0
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: mjg59@srcf.ucam.org, kyle@kernel.org, wireless-regdb@lists.infradead.org, keescook@chromium.org, tiwai@suse.de, gregkh@linuxfoundation.org, ming.lei@canonical.com, rusty@rustcorp.com.au, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, dhowells@redhat.com, seth.forshee@canonical.com, casey@schaufler-ca.com, akpm@linux-foundation.org, "Luis R. Rodriguez" <mcgrof@suse.com>, jlee@suse.com
List-ID: <wireless-regdb@lists.infradead.org>

What's the point in these conversions? You're clearly not converting
*all* users so you could get rid of request_firmware(), so this is
pretty much pointless.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

