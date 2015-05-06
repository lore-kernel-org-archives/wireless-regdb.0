Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq2eU-00089d-1j
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 16:58:31 +0000
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1430873070-7290-6-git-send-email-mcgrof@do-not-panic.com>
References: <1430873070-7290-6-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
MIME-Version: 1.0
Content-ID: <17828.1430931479.1@warthog.procyon.org.uk>
Date: Wed, 06 May 2015 17:57:59 +0100
Message-ID: <17829.1430931479@warthog.procyon.org.uk>
Subject: Re: [wireless-regdb] [RFC v1 05/12] firmware: add firmware
	signature checking support
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

> As with module signing, we do a very simple search for a
> particular string appended to the firmware. There's both a
> config option and a boot parameter which control whether we
> accept or fail with unsigned firmware and firmware that are
> signed with an unknown key.
> 
> If firmware signing is enabled, the kernel will be tainted
> if a firmware is loaded that is unsigned or has a signature
> for which we don't have the key.

I think you need to be careful storing the firmware blobs on disk with
signatures attached for two reasons:

 (1) There may be licensing/copyright issues on these blobs if you alter them.

 (2) Someone might try loading the modified blob without the signature being
     stripped - say someone runs an old kernel or copies the blob to a
     non-Linux system and tries to load it there.

Adding the signature to the blob upon loading might be less problematic, but
it still potentially suffers from (2) above.

If you switch to PKCS#7, you can also embed the blob inside the PKCS#7
message, so essentially the blob is unmodified and can be verified or
extracted by any suitable PKCS#7 tool.  This is more likely to get the
firmware rejected if the kernel isn't expecting it to be signed, I think.

I'm not sure how userspace actually passes the firmware blob to the kernel,
but I do think that if you can, you should pass the signature separately to
the blob.

With kernel modules this doesn't matter since modules are typically tied to a
single kernel version anyway.

David

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

