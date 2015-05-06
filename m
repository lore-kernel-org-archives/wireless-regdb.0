Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ie0-x22e.google.com ([2607:f8b0:4001:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq3Az-0005DS-Ch
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 17:32:06 +0000
Received: by iecnq11 with SMTP id nq11so19901551iec.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 06 May 2015 10:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=0SI6+0Y5B2EcFkNSoQO0n97o+aKYMOyyR+TYSheBaRY=;
 b=n8pMHxR3BdsTGyVqGvdSu4f3dnxg9axSnDYOIAP8+ePLlhWcUpwa9baSgOSYQ0L3hj
 mihK3q7q5bsO0arlKeq5Q38+eBuwluXwK4cssaeq1WiIV64ZAIp2lTKtLode2PbmUmD+
 qAa01rCqnbTBWMEjIFzpMhSlFQyFkIe3bXsIBhIxBAfK3m4hPoeX78WrxtAjxH92n0RW
 AafsslQrsP9NDxnDJlynKq76xpvOFeLTku0gU4/icQ40dGFRc2y3Wmmd+vkC2hNVcRiZ
 F7UIbp7RMPY+Usiz4YhkJ+r3mzfSDHIkEBlISDZR5q5WzfjX+bTM+olj7w1ZaOH5Q5T/ /LYA==
MIME-Version: 1.0
In-Reply-To: <17829.1430931479@warthog.procyon.org.uk>
References: <1430873070-7290-1-git-send-email-mcgrof@do-not-panic.com>
 <1430873070-7290-6-git-send-email-mcgrof@do-not-panic.com>
 <17829.1430931479@warthog.procyon.org.uk>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 6 May 2015 10:31:23 -0700
Message-ID: <CAB=NE6VJX=3jERjZRHn5dDxHsPtE9fya2ukxWfENxSObd0YQVQ@mail.gmail.com>
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
To: David Howells <dhowells@redhat.com>
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, Kyle McMartin <kyle@kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Kees Cook <keescook@chromium.org>, Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ming Lei <ming.lei@canonical.com>, Rusty Russell <rusty@rustcorp.com.au>, linux-wireless <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, jlee@suse.com, Seth Forshee <seth.forshee@canonical.com>, Casey Schaufler <casey@schaufler-ca.com>, Andrew Morton <akpm@linux-foundation.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 6, 2015 at 9:57 AM, David Howells <dhowells@redhat.com> wrote:
> I'm not sure how userspace actually passes the firmware blob to the kernel,
> but I do think that if you can, you should pass the signature separately to
> the blob.

Thanks yeah that is what I was hoping we'd prefer to end up doing.
Will look at your tree and see if I can base my work on that now.

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

