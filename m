Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ypy8q-0007rd-NR
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 12:09:33 +0000
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1430873070-7290-3-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-3-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
MIME-Version: 1.0
Content-ID: <14324.1430914129.1@warthog.procyon.org.uk>
Date: Wed, 06 May 2015 13:08:49 +0100
Message-ID: <14325.1430914129@warthog.procyon.org.uk>
Subject: Re: [wireless-regdb] [PATCH v1 02/12] kernel: generalize module
	signing as system data signing
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

Luis R. Rodriguez <mcgrof@do-not-panic.com> wrote:

> This generalizes the module signing code as helpers, we do
> this as we'll later re-use this same code for firmware and
> other system data signing.

I'm trying to move us to the use of PKCS#7 certificates as module signatures.
See here:

	http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=modsign-pkcs7

I would suggest you use this as a base.

Also, I would suggest, if you can manage it, either:

 (1) Keep the signature and the firmware blobs separate on disk for copyright
     and/or licensing purposes.

 (2) Put the firmware blob inside the PKCS#7 message as the embedded data.

David

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

