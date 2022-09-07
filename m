Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=xjC1H2+HKXO138aHDWAqgUF87ktgQsuR0klN5dzvUcM=;
 b=LiINF3VAiiAcR9
 UUoDuEvcfoFRVpR0OweeYU1zqF+5UPqVHKtrgFSRBxHwOE6EcYfWgOToGN0tlu0bRcYxbwG0Iw9Mh
 3XcFhzS2bJj6nqBf+CVXQaETt8iDMpyJ8wK19uhPbbMj09FPyXuxJNI/IXyH+XeKkzPY/byQDyXBI
 WV14F2B8+BlRPpGn1rtRw8F/K7eYek4v0BNICXJX8tLmV4jbnMJSzjuA1DkDV3cpx164H3ZuIFIir
 /nxv/HOv3385+hb88EaxCP+jO+By2XZQfRiEy3AYeHLqYyOcN7WMSI0mMVqaBzBVuar894C0Hm6vQ
 uzzdhbBPC85Ij2MHqcWA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVwPP-0074pE-JT
	for wireless-regdb@lists.infradead.org; Wed, 07 Sep 2022 14:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662562326;
	bh=hNX6u9VQGjSjzDeyqbMU5QyTbDfWFhE3B+VMFKnQlo4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h5rHwJHLKY3iLk32Yj7U8ZjrkNRf7e9vDEEwmcwl8XwiMvQt/25jB4wnQ9d1PtFeC
	 WFUK1U0o6cqBIPpmUYRwavImE2l0296tfpFNQJmRoHNJZF2YX/oJGIKOfC6e6Isnks
	 c1awQX1kkws4+ae6TH9iAU05WIvxTO6KanCB2Hg8lNGriqjyMcpINF7kyx/X6RfgAS
	 XW+8WQEaHtZyK9IEIsHpU9qcVajsHnEB645MuFnkOUxZqwm7QuHqpWKLFAw1qfjKms
	 tEMw9SPuLfFeUBH3Wrsr3PiROd+DbjZdJHiSEcKl3kL3hCMS+mdc/FqPwl3JANC9PC
	 OtHsDWftdAHfA==
Date: Wed, 7 Sep 2022 09:52:04 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YxiwFLWhsOtJJhrq@do-x1extreme>
References: <20220901232734.5488-1-cesarb@cesarb.eti.br>
 <b8674e67fee2393d4c5fe9d9842028545c6adcfa.camel@sipsolutions.net>
 <6b577581-9daf-ff11-1aaa-ff1243eb9c03@cesarb.eti.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b577581-9daf-ff11-1aaa-ff1243eb9c03@cesarb.eti.br>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Brazil (BR)
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
To: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
Cc: Johannes Berg <johannes@sipsolutions.net>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Sep 02, 2022 at 07:21:50PM -0300, Cesar Eduardo Barros wrote:
> Em 02/09/2022 11:53, Johannes Berg escreveu:
> > On Thu, 2022-09-01 at 20:27 -0300, Cesar Eduardo Barros wrote:
> > > 
> > > +	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
> > > +	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
> > > +	# requirements, we can extend the range by 5 MHz to make the kernel
> > > +	# happy and be able to use channel 144.
> > > +	(5470 - 5730 @ 160), (27), DFS
> > > +	(5730 - 5850 @ 80), (30)
> > > 
> > 
> > If you do the latter as 160 as well, and add AUTO-BW, couldn't you split
> > them at 5725 correctly? But I guess it doesn't matter anyway.
> 
> This was copied from the US rules (including the four-line comment), which
> have an identical split. If AUTO-BW worked here, I'd expect the US rules to
> use it.

AUTO-BW would work, and we have countries using it for this case. Iirc
for some countries we move the split to 5730 because even though
5725-5730 is at a lower power limit the rules allow channel 144 to be
used at the power limit for 5710-5725. For the US though I think it's
just historical -- it was done that way initially, and it isn't
important enough that anyone has cared to change it.

But we do generally try to keep the rules matching the official
documents as much as possible, so for new rules we should split at 5725
and use AUTO-BW as Johannes suggested. Could you send a v2 with that
change?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

