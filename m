Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuTPb-0006qV-Kl
 for wireless-regdb@lists.infradead.org; Tue, 10 Jun 2014 21:16:56 +0000
Received: by mail-lb0-f178.google.com with SMTP id w7so4223658lbi.23 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Jun 2014 14:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type:content-transfer-encoding;
 bh=OgRfzGR4KOY6HdgmhMBLkH8bcKptQevlfApPuzayXv0=;
 b=Xn/Quw142a9b45hfegf5u8bWuz0TM2ji/fl1wr18LYF7qKsmDI4NHOXLrTRLjYYKOJ
 GXYHWKEImCGbEL1J+UsjWUCzKFOq35sk5G1Bnv2z1CzITRR6hjyaQFzdiUbPNXPErNVn
 HO9lx2OHxMKkEv6/SfZ9SpR7PWavpRLJOeH62+yJYXyzsbaMvPd7GXStu6EqYca8VV46
 rONLEnFXQmcxaAVqTGEZbZDd67yCPOT14hwiGd+bpbrWCXLoysJY+Pgo/DWabNwDd5qc
 D/mFg0+fJsf2Xtqu4k1yScmpjCBmLTlqtioBIRlhFOG5yuigUlyJHtuXBCO3LyFarg3/ 9DNQ==
MIME-Version: 1.0
In-Reply-To: <1402323702.11505.18.camel@umadbro>
References: <1401468984-24575-1-git-send-email-rostislav.lisovy@fel.cvut.cz>
 <1401468984-24575-2-git-send-email-rostislav.lisovy@fel.cvut.cz>
 <1401825693.4157.44.camel@jlt4.sipsolutions.net>
 <20140603221837.GU26450@wotan.suse.de>
 <1402323702.11505.18.camel@umadbro>
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Date: Tue, 10 Jun 2014 14:16:11 -0700
Message-ID: <CAB=NE6Wi+SLPSuGiGeFpJO4FVHfHpSpsDfsccAi9cPyhmL6NwQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 1/4] cfg80211: Add channel flags
 limiting availability to OCB mode only
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
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, jan-niklas.meier@volkswagen.de, linux-wireless <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "John W.
 Linville" <linville@tuxdriver.com>, Liraz Perelmooter <liraz.perelmooter@intel.com>, Rostislav Lisovy <rostislav.lisovy@fel.cvut.cz>, s.sander@nordsys.de, Johannes Berg <johannes@sipsolutions.net>, Michael Green <green@qti.qualcomm.com>, Michal Sojka <sojkam1@fel.cvut.cz>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jun 9, 2014 at 7:21 AM, Rostislav Lisovy <lisovy@gmail.com> wrote:
> Dear Luis;
> Thank you for the introduction in the wireless-regdb mailing-list.
>
> On Wed, 2014-06-04 at 00:18 +0200, Luis R. Rodriguez wrote:
>> Rostislav, can you provide documentation references which would
>> clarify
>> the stance on 802.11p and restrictions for only allowing  OCB mode?
>
> If I may cite the 802.11-2012 standard:
> -- 1st Quote
> 4.3.11 STA transmission of data frames outside the context of a BSS
>
> Communication of data frames when dot11OCBActivated is true might take
> place in a frequency band that is dedicated for its use, and such a band
> might require licensing depending on the regulatory domain. A STA for
> which dot11OCBActivated is true initially transmits and receives on a
> channel known in advance, either through regulatory designation or some
> other out-of-band communication.
> -- End of quote

OK the spec does not rule out communication on that special band for
regular operation as such that special band is mentioned in the
context of OCB communication, but it does say that the frequency range
may be licensed. As it stands the public wireless-regdb only covers
unlicensed frequency ranges, but it obviously can support licensed
frequency ranges, just that the distribution mechanism and integration
of the wireless-regdb files then would have to be done separately
through separate distributors -- ie, not upstream. If the OCB bands
are unlicensed then we can surely add them to wireless-regdb, however
it remains unclear if those bands are unlicensed if we can use them
for regular non OCB communication.

Follow this logic to move forward then:

  * Poke folks to see if the US band for OCB is licensed or unlicensed
  * Poke folks to see if the EU band for OCB is licensed or unlicensed

  * If the bands are licensed then the wireless-regdb changes that
would be needed imply that a wireless-regdb needs to be provided to
whatever customer by whomever is licensing that entity for usage of
that band, that is, we upstream can be removed from the equation of
the distribution. The upstream kernel however would require a flag for
frequency ranges for OCB frequency ranges. Although the regulatory
classes specify a few for the US and EU, this can likely change. I
forget if the regulatory class can be interpreted through IEs, if so
and if the specification is going to remain static I can envision the
ability to hard code the OCB frequency ranges upstream but you'd then
need to parse these things.

  * If the bands are *not licensed* there is one corner case that I
still think should be reviewed by regulatory folks: having an OCB
frequency range unlicensed under the current reading of the
specification of 802.11-2012 means that 802.11 devices *can* use them
for OCB, however if OCB is not enabled on the device it seems to be
that OCB bands can be used for non OCB communication. Furthermore
4.3.11 seems to be saying that it is only optional to use a dedicated
frequency for OCB, OCB can happen on other frequency ranges.

> -- 2nd Quote
> Annex E (normative) Country elements and operating classes
> E.2.3 5.9 GHz band in the United States (5.850–5.925 GHz)
> ...
> STAs shall have dot11OCBActivated set to true.

So all STAs in the US wil have OCB activated? I fail to understand how
Annex E should be read in the context of operating classes.

> E.2.4 5.9 GHz band in Europe (5.855–5.925 GHz)
> STAs shall have dot11OCBActivated set to true.

Ditto.


  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
