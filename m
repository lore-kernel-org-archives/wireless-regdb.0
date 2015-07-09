Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f47.google.com ([209.85.218.47])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZDCS8-0000uX-LX
 for wireless-regdb@lists.infradead.org; Thu, 09 Jul 2015 14:05:29 +0000
Received: by oibp128 with SMTP id p128so28683527oib.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 09 Jul 2015 07:05:06 -0700 (PDT)
Date: Thu, 9 Jul 2015 09:04:17 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150709140417.GA142895@ubuntu-hedt>
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
 <55966D1B.1040603@neratec.com>
 <CAHr=VqnpJ_+ovmB3gqm+X9WX98ZeVuO8VZ2cq6OFPcdjy8Rkgg@mail.gmail.com>
 <5596A3C0.6020303@neratec.com> <20150706132707.GA22962@ubuntu-hedt>
 <559A9378.7000006@neratec.com> <20150707201126.GB369@ubuntu-xps13>
 <559CF926.8000508@neratec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <559CF926.8000508@neratec.com>
Subject: Re: [wireless-regdb] wireless-regdb: update CA rules for 5600 -
	5650 mHz
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
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Wei Zhong <wzhong@google.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 08, 2015 at 12:19:18PM +0200, Zefir Kurtisi wrote:
> My claim is that in its current state the regdb does not exactly formalize the
> limitations given by regulatory for a simple reason: it uses channel semantics
> where it should only handle frequency ranges. Take the discussed rules for CA at
> hand: while the linked document considers frequencies from 5150 to 5350, the
> according rule for CA is defined as (5170 - 5250 @ 80). Why 5170 instead of 5150?
> Because we know there is no channel defined below 5170 - but why do we need to
> embed this information as a rule when it is already handled by SW?
> 
> In the current regdb, both semantics are used, e.g. UA (5150-5350) vs. CA
> (5170-5250) or ES (5470-5725) vs. FI (5490-5710)).

I'm not surprised. I don't know that anyone has given it that much
thought before.

> This might sound like an irrelevant difference, but here is why it matters: the
> above mentioned rules for ES and FI would give the same channel lists - as long as
> we think in HT20 and HT40. But only ES gives access to 10 and 5MHz operation on
> channel 144.

Good example.

> My bottom line is: regulatory rules must not contain channel semantics - this is
> done by the SW. Rules must be a literal formalization of the country's regulatory,
> which always uses frequency ranges within defined band edges.

I'm generally in agreement. I'll try to pay closer attention to this in
the future.

> Sorry for this going off-topic. It has nothing to do with the changes proposed by
> Wei, but is more about something to keep in mind when considering upcoming support
> for narrow band channels at band edges.

Except that it seems to have inspired Wei to change the patch to do
exactly what you're arguing against ;-)

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

