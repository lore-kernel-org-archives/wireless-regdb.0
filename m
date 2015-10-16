Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZnBu5-00067x-Mu
 for wireless-regdb@lists.infradead.org; Fri, 16 Oct 2015 20:47:06 +0000
From: Michal Sojka <sojkam1@fel.cvut.cz>
In-Reply-To: <1445027060.2370.25.camel@sipsolutions.net>
References: <1444994885-21825-1-git-send-email-kaisrja1@fel.cvut.cz>
 <1444997197.2370.22.camel@sipsolutions.net> <87h9lqeplf.fsf@steelpick.2x.cz>
 <1445027060.2370.25.camel@sipsolutions.net>
Date: Fri, 16 Oct 2015 22:46:41 +0200
Message-ID: <87bnbyee32.fsf@steelpick.2x.cz>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [RFC PATCH 1/2] cfg80211: Add support for
	ITS-G5 band (5.9 GHz)
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
To: Johannes Berg <johannes@sipsolutions.net>, Jan Kaisrlik <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org
Cc: jan-niklas.meier@volkswagen.de, linux-wireless@vger.kernel.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Oct 16 2015, Johannes Berg wrote:
> Hi,
>
>> I thought that the regdb is for unlicensed bands with unrestricted use.
>> The 5.9 GHz band is not licensed but it is restricted for ITS
>> applications. 
>
> It kind of is, at least the current one is.
>
>> In http://marc.info/?l=linux-wireless&m=140183393707445&w=2
>> Luis Rodriguez suggested that having a Kconfig option may be the way to
>> go, but we may misread what he was saying.
>
> I didn't really follow this.
>
>> I assume that if this band will be in regdb, it will be too easy to use
>> this band (e.g. by mistake) for non-ITS applications.
>
> Does the *regulatory* actually prohibit that anyway though?

Regulatory (ECC Decision (08)01) reads:

    ... decides ... that CEPT administrations shall designate the
    frequency sub-band 5875-5905 MHz on a non-exclusive basis for ITS
    traffic safety applications;

I'm not sure about the exact meaning of words "designate" and
"non-exclusive". If anyone can clarify that for me, I'd appreciate it. I
tend to understand that this band can be only used by ITS applications
(without license) or by other devices that have a proper license.

Thanks.
-Michal

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

