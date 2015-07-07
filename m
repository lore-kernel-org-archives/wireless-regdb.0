Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f180.google.com ([209.85.214.180])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCZDZ-0002YG-QJ
 for wireless-regdb@lists.infradead.org; Tue, 07 Jul 2015 20:11:50 +0000
Received: by obdbs4 with SMTP id bs4so136666562obd.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 07 Jul 2015 13:11:28 -0700 (PDT)
Date: Tue, 7 Jul 2015 15:11:26 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150707201126.GB369@ubuntu-xps13>
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
 <55966D1B.1040603@neratec.com>
 <CAHr=VqnpJ_+ovmB3gqm+X9WX98ZeVuO8VZ2cq6OFPcdjy8Rkgg@mail.gmail.com>
 <5596A3C0.6020303@neratec.com> <20150706132707.GA22962@ubuntu-hedt>
 <559A9378.7000006@neratec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <559A9378.7000006@neratec.com>
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

On Mon, Jul 06, 2015 at 04:40:56PM +0200, Zefir Kurtisi wrote:
> On 07/06/2015 03:27 PM, Seth Forshee wrote:
> > On Fri, Jul 03, 2015 at 05:01:20PM +0200, Zefir Kurtisi wrote:
> >> On 07/03/2015 04:20 PM, Wei Zhong wrote:
> >> [...]
> >> From your other post:
> >>>>     >
> >>>>     >  -       (5490 - 5730 @ 160), (24), DFS
> >>>>     >  +       (5490 - 5590 @ 80), (24), DFS
> >>>>
> >>>>     I agree. 5590 is more strict than 5600.
> >>>>
> >>>>  
> >>>> On a second thought,  5590 implies channel 116 can't have 40MHz. I think that is
> >>>> still allowed per regulation.
> >>>>
> >>>>
> >>
> >> No, channel 116 is not usable for HT40 if weather radar channels are disabled,
> >> since it can only be combined with channel 120 and that one partially falls into
> >> the restricted range.
> > 
> > It's not necessary to restrict the band down to 5590 or break out the
> > rule for channel 116 separately, the software is smart enough to work
> > out what's allowed based on the original rule Wei supplied for 5490-5600
> > MHz. In fact that rule exactly matches what we used to have in db.txt
> > for the US prior to the TDWR restrictions being lifted.
> > 
> 
> Yes, the SW is smart and sane enough to extract the limitations even if they are
> defined less restrictive than required. Which raises the general question of what
> needs to be defined as rule and what can be relied on to be handled correctly by
> the SW.
> 
> Example: why do we need to bother about the max-bw parameter for a rule at all? We
> know there is no 160MHz channel within 5490 and 5600, as does the SW. If we wrote
> (5490 - 5600 @ 160) instead of (5490 - 5600 @ 80), nothing would change.
> 
> To me it sounds not fully consistent to explicitly limit max-bw while relying on
> SW to sanitize frequency ranges. Not that it really matters in practice, but it
> has a potential to simplify the rules (i.e. provide max-bw parameter only if the
> according country defines restrictions and leave SW to handle it otherwise).

The database is just about capturing the rules of the various regulatory
bodies. I don't know off the top of my head if there are any cases today
where the maximum allowed badwidth in a given range is less than the
maximum possible bandwidth in that range, but it certainly doesn't seem
impossible. So I wouldn't call it inconsistent.

We aren't expecting the kernel to "sanitize" the frequency ranges
either. It doesn't rely on the regdb to tell it which frequencies are
legitimate.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

