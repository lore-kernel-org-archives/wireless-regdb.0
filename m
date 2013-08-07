Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V77PL-0007gY-BK
 for wireless-regdb@lists.infradead.org; Wed, 07 Aug 2013 17:20:24 +0000
Received: by mail-lb0-f179.google.com with SMTP id v1so1692225lbd.24 for
 <wireless-regdb@lists.infradead.org>; Wed, 07 Aug 2013 10:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=eqxcv1b4gDkiue4WB+UTu55M2bmsoROP9AAr4lMyxZ4=;
 b=WYQCuIX9UU3Cgj8NWMkNBk1PwOxkgdqd4tmK09tSQzmCYIG6owSupBsWKrgP7qJw+d
 TCiLOm/i6W7dftyc8v6y6VPuJC89pTi04tbk07wDObkffahk1Wmu5S5Fcjk+dViRsufP
 W1JGTkgNLZ3dUXwNrRQkPwWLPZRSr0+zUCbYe4hDHOC46jn+58br+jfYaNiOK5M7gU6T
 ymCpyomRapE1sjpUW9ME+ZjFV8RtTtrOrzfybgxRy6Tmt67qp4lprSnPRPDF1vgqHh+n
 fONWDL409P0udkEwZ9qBhamAUzoswquFrL2BOMXehCeRX839XO7MXboMSt0Td5frme+T Roxg==
MIME-Version: 1.0
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 7 Aug 2013 10:19:40 -0700
Message-ID: <CAB=NE6XSQOtMzhB6Q_CmjT5aA+=hKvVU3m8yT33=bcE7sEBOFQ@mail.gmail.com>
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

John,

I addressed all comments and its been a while without any negative
feedback on the patches. If you do decide to merge I put the delta on
this tree to make it easy to pull, on the master branch.

git://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/wireless-regdb.git

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

