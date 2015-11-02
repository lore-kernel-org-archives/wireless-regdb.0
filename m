Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail.w1.fi ([2a01:7e00::f03c:91ff:fedb:30e2]
 helo=li674-96.members.linode.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtIOT-0002jE-Ax
 for wireless-regdb@lists.infradead.org; Mon, 02 Nov 2015 16:55:42 +0000
Date: Mon, 2 Nov 2015 18:55:16 +0200
From: Jouni Malinen <j@w1.fi>
Message-ID: <20151102165516.GA817@w1.fi>
References: <1446459777-5944-1-git-send-email-sojkam1@fel.cvut.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446459777-5944-1-git-send-email-sojkam1@fel.cvut.cz>
Subject: Re: [wireless-regdb] [PATCH v2] ath9k: Add support for ITS-G5 band
	(5.9 GHz)
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
To: Michal Sojka <sojkam1@fel.cvut.cz>
Cc: Jan =?utf-8?B?S2Fpc3Jsw61r?= <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Nov 02, 2015 at 11:22:57AM +0100, Michal Sojka wrote:
> The patch adds support for Intelligent Transportation System (ITS-G5)
> band to the ath9k driver.

NAK. This would enable use of licensed 5.9 GHz band on large number of
deployed "world roaming" cards. This would allow one to set up an AP on
such a channel and would also make station mode scan those channels with
active scan (i.e., sending Probe Request frames) on them by default for
every single full scan. That's not appropriate regardless of whether
CFG80211_CERTIFICATION_ONUS is set.

This would be bad from both regulatory enforcement view point (5.9 GHz
band is not allowed for this type of use) and normal use case
performance (adding more channels for scanning makes scans take longer
without there being any point in scanning a band that is not supposed to
have APs for normal station mode connection).

> in this second version of the patch we removed dependency on
> CFG80211_CERTIFICATION_ONUS as suggested by Johannes. We are, however,
> not sure whether this is the right thing to do.
> 
> The problem is that ath9k uses (REGULATORY_STRICT_REG |
> REGULATORY_CUSTOM_REG), which means that in order to use the 5.9 GHz
> band, ath9k's private regdomain has to be extended. This in turn means
> that the 5.9 GHz band is enabled by default in many configurations. It
> can be disabled if one sends a regulatory hint and has valid regdb in
> user space, but this cannot be relied upon.

This sounds like a special use case and I don't see why upstream Linux
kernel should enable those channels regardless of kernel build
configuration. Proper regulatory rule enforcement is needed to prevent
the channels from being used in unlicensed use cases.

> Especially the US regulatory suggests that using
> CFG80211_CERTIFICATION_ONUS might have sense (see the previous version
> http://www.mail-archive.com/linux-wireless@vger.kernel.org/msg15228.html).
> What do you think?

I don't think it is sufficient to enable these channels based on any
kernel build configuration parameter. We must prevent accidental use of
these channels regardless of what config options a user might pick.

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

