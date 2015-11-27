Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2EeI-00056P-VD
 for wireless-regdb@lists.infradead.org; Fri, 27 Nov 2015 08:45:00 +0000
From: Michal Sojka <sojkam1@fel.cvut.cz>
In-Reply-To: <1448612707.2531.1.camel@sipsolutions.net>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
 <1448303241-27747-8-git-send-email-sojkam1@fel.cvut.cz>
 <1448560529.2167.43.camel@sipsolutions.net> <87d1uw31r1.fsf@steelpick.2x.cz>
 <1448612707.2531.1.camel@sipsolutions.net>
Date: Fri, 27 Nov 2015 09:44:35 +0100
Message-ID: <8737vr3k7g.fsf@steelpick.2x.cz>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2 7/8] cfg80211: Add Kconfig option
	for ITS-G5 band (5.9 GHz)
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
To: Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org
Cc: Jan =?utf-8?Q?Kaisrl=C3=ADk?= <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Nov 27 2015, Johannes Berg wrote:
> On Thu, 2015-11-26 at 22:10 +0100, Michal Sojka wrote:
>> 
>> Because in [1] Jouni said that
>> 
>>    "kernel config option + custom regdb would certainly be much
>> closer to what I'd like to see from the regulatory enforcement view
>> point"
>> 
>> I also like the fact that the help text mentions the relevant
>> regulatory documents. I guess the users would appreciate that.
>> 
>
> Fair enough, but I'm not really convinced that the Kconfig option is
> needed for what Jouni really required.
>
> In any case, I spoke with him yesterday and we don't think that your
> patches are going to work as is - we'll need to change the regulatory
> flags it seems. I'll comment more specifically on the patches.

OK. I'll wait for that.

-Michal

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
