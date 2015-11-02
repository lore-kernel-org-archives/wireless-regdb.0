Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtJ5t-0007j2-CU
 for wireless-regdb@lists.infradead.org; Mon, 02 Nov 2015 17:40:35 +0000
From: Michal Sojka <sojkam1@fel.cvut.cz>
In-Reply-To: <20151102165516.GA817@w1.fi>
References: <1446459777-5944-1-git-send-email-sojkam1@fel.cvut.cz>
 <20151102165516.GA817@w1.fi>
Date: Mon, 02 Nov 2015 18:33:45 +0100
Message-ID: <87k2q0qpae.fsf@steelpick.2x.cz>
MIME-Version: 1.0
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
To: Jouni Malinen <j@w1.fi>
Cc: Jan =?utf-8?Q?Kaisrl=C3=ADk?= <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

Hi Jouni,

thanks for quick reply.

On Mon, Nov 02 2015, Jouni Malinen wrote:
> On Mon, Nov 02, 2015 at 11:22:57AM +0100, Michal Sojka wrote:
>> The patch adds support for Intelligent Transportation System (ITS-G5)
>> band to the ath9k driver.
>
> NAK. This would enable use of licensed 5.9 GHz band on large number of
> deployed "world roaming" cards.

I agree that this is not good.

> This would allow one to set up an AP on such a channel and would also
> make station mode scan those channels with active scan (i.e., sending
> Probe Request frames) on them by default for every single full scan.
> That's not appropriate regardless of whether
> CFG80211_CERTIFICATION_ONUS is set.

Can this be solved by having proper/new regulatory flags on these
channels that would prohibit running AP or scanning on these channels?

> This would be bad from both regulatory enforcement view point (5.9 GHz
> band is not allowed for this type of use) and normal use case
> performance (adding more channels for scanning makes scans take longer
> without there being any point in scanning a band that is not supposed to
> have APs for normal station mode connection).
>
>> in this second version of the patch we removed dependency on
>> CFG80211_CERTIFICATION_ONUS as suggested by Johannes. We are, however,
>> not sure whether this is the right thing to do.
>> 
>> The problem is that ath9k uses (REGULATORY_STRICT_REG |
>> REGULATORY_CUSTOM_REG), which means that in order to use the 5.9 GHz
>> band, ath9k's private regdomain has to be extended. This in turn means
>> that the 5.9 GHz band is enabled by default in many configurations. It
>> can be disabled if one sends a regulatory hint and has valid regdb in
>> user space, but this cannot be relied upon.
>
> This sounds like a special use case and I don't see why upstream Linux
> kernel should enable those channels regardless of kernel build
> configuration. 

I expect that there will be quite a lot applications/devices that will
need to communicate in this band. From technical point of view, it might
be beneficial if there is one solid implementation available in the
upstream Linux. I'm not sure about the legal point of view.

> Proper regulatory rule enforcement is needed to prevent the channels
> from being used in unlicensed use cases.

Can you image this "proper regulatory rule enforcement" as a part of
upstream Linux? Do you have an idea how it would look like?

>> Especially the US regulatory suggests that using
>> CFG80211_CERTIFICATION_ONUS might have sense (see the previous version
>> http://www.mail-archive.com/linux-wireless@vger.kernel.org/msg15228.html).
>> What do you think?
>
> I don't think it is sufficient to enable these channels based on any
> kernel build configuration parameter. We must prevent accidental use of
> these channels regardless of what config options a user might pick.

Would kernel config option + custom regdb be sufficient?

Cheers.
-Michal

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

