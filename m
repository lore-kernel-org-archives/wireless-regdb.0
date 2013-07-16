Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-f181.google.com ([74.125.82.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzBiW-0007ou-Py
 for wireless-regdb@lists.infradead.org; Tue, 16 Jul 2013 20:19:25 +0000
Received: by mail-we0-f181.google.com with SMTP id p58so1000453wes.26 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 13:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=JwZFh29pTc0u0QrAtcTUdknAoJzm2Rh/1ezJbWxl1nA=;
 b=RJlx85YnQsPKauEKkNSal5fltHA7Bao+9++iVp/wBs6VWdYKG6rAOXhQAdWCxzR0Cy
 jLOR21B02pWW1Jh3ghFvemfogAxwAckwxyshxT5XUz7P+FipQALJ70zJPfQ7EzfBAjYH
 JDtK+R/5OfmdzzlTzl4CtWeYioCRaL58Q7y3k/Ze+VMqGD2mmM0wWdU4z6B1324ARqpD
 pTv9F+bXqsLPxc4OkZuvqYkyoN9PyxXNKBuAR2z2bx3XvRI5jmvq/I4GAJ4cIsL3JJZD
 gxvqo7GlBJZtdqIuCglUyqdzBbzT2w8RkmucgaxB/7P+sLM0K0mb2PL6kZt7qOkBZX1/ AtcQ==
MIME-Version: 1.0
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 13:18:38 -0700
Message-ID: <CAB=NE6WmcGs6u8ZCrWXcKQe=MsQk_C7R7i+x1V-cDbjQ+A8d-w@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 00/53] wireless-regdb: mostly VHT80
	updates
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 3, 2013 at 6:03 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>
> Here's a series of updates for wireless-regdb. Most of this is
> to just enable VHT80 support to enable support for 802.11ac
> where this has been verified to be usable. I cannot meet the
> criteria of providing full documentation for sources for all
> patches, only a few ones so what I recommend for the rest is
> to let this sit on the list for a bit and I'd hope after
> review if no one spots any issues I'd hope we can merge this.
>
> I reviewed the idea of vendor namespaces on wireless-regdb
> and at least through review with pkgadd on IRC we concluded
> its best to try to take this approach instead of encouraging
> divergence due to any lack of full source documentation or
> inability to provide such documentation for whatever reason.
> This seems to be better than not getting any updates at all
> and keeps vendors hopefully encouraged to push changes upstream.

I saw one comment addressing a typo on ID, I've fixed that. If there
are no complaints can we merge these to get VHT80?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

