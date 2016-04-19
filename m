Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asc0e-00035l-T7
 for wireless-regdb@lists.infradead.org; Tue, 19 Apr 2016 20:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=a;
 t=1461096720; bh=RDjZOJF9RGJZ6kCfX8NluWJdnJpAnis4XB6AIH887I4=;
 h=From:To:Cc:References:Date:Message-ID:From;
 b=FizIPG1JSar8RdEaSDGMthq8uGF3kwzku0lUDTZQV78byJrRhoE883inos68Dn5ZJ
 7fl9ZdsdILZRKKEjgNE6JZrOWe09ZM5HiaWzBGyfNQZbrdTGpAYxAJDY/3X1laKeEL
 b8w3WjuSh6QRdHsEtlUIvmHcwqBQLzw4Ry8nGpfgrWiV5qxdFe9QAYnrQzwtE3n13c
 cEUJpCoeCKik6vwHcQfqYYFZCs6+gxtVe8Yg1WqSd89rlGNpR16be9EY0iM/3+kJuZ
 xnWfg0QPVu+JkSFBGClQMOGqIXS4UmgCgVHMjrgBchOEjfINQYrpunDmCA8t9rbxSf
 5TAfGQhkb0mHQ==
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
References: <1958820.LBuzOElZFT@perisens15>
	 <87k2jt5rgz.wl-bordjukov@gmail.com>
Date: Tue, 19 Apr 2016 22:11:58 +0200
In-Reply-To: <87k2jt5rgz.wl-bordjukov@gmail.com> (Petko Bordjukov's message of
 "Tue, 19 Apr 2016 22:27:40 +0300")
Message-ID: <8737qh73zl.fsf@nemi.mork.no>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules
	for	Germany (DE) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Petko Bordjukov <bordjukov@gmail.com>
Cc: linux-wireless@vger.kernel.org, seth.forshee@canonical.com, maxi@daemonizer.de, Maximilian Engelhardt <engelhardt@perisens.de>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Petko Bordjukov <bordjukov@gmail.com> writes:

> Hello,
>
> Just to add my input to this thread. I've previously contributed the SRD ranges
> for Bulgaria, hopefully this info will provide pointers for research in other EU
> countries. Since then I've doublechecked the standards situation for Wi-Fi with
> the local communications regulation commission and one of the staffers there has
> given me an expert opinion (I would attach it, but it's a nasty HTML email in
> Bulgarian, if there's interest, I'd be glad to share and translate it).
>
> The gist on the SRDs is that in Bulgaria they fall under the following
> standards (which correspond to ETSI standards):
>
> BDS EN 300 440-2[0]
> BDS EN 300 674-2-2[1]
>
> Note that the first one is a harmonized standard (so in theory it should be
> universally adopted accross the EU) and the second one is a candidate harmonized
> standard (so you should check if it's already been adopted locally).
>
> As far as I could tell, BDS EN 300 674-2-2 defines the maximum e.i.r.p. for the
> SRD range but someone more knowledgable should take a look, too.

Ah, the references to those specs bring back memories of good times with
the European Tourism and Sightseeing Institute in the 90ies :) I
remember heated (but friendly) discussions in RES 8 about 300 674 for
years before it finally was published

Anyway, 300 674 is for vehicle transponder systems.  I.e. electronic
toll collection etc.  I don't think it's relevant to the regdb in any
way.

The generic SRDs covered by 300 440 are more relevant.  But this is
still not a license regulation.  It can probably be used as a harmonized
standard with reference to the Radio Equipment Directive, but licensing
is not in the scope AFAIK.  Spectrum utilization is not fully harmonized
in the EU.  So you have to look at the national regulations for every
country, even within the EU.

The ERC recommendation Maximilian linked to (
http://www.erodocdb.dk/Docs/doc98/official/pdf/REC7003e.pdf ) is much
more useful, since it is a collection of SRD licensing rules for all
CEPT countries. Which are much more than "just" the EU - 48 countries
now, according to http://cept.org/cept

But you'll still have to look into the actual national regulations.  In
my experience, the listed restrictions and conditions in appendix 3 of
ERC/REC 70-03 are often imprecise or incomplete.  It's definitely best
to do what you did: Talk to the local regulatory authorities.  I'm sure
most of them are more then interested in helping to improve the regdb.


Bjørn

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
