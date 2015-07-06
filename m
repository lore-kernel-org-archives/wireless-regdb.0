Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f49.google.com ([209.85.218.49])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC6RQ-0002sN-CS
 for wireless-regdb@lists.infradead.org; Mon, 06 Jul 2015 13:28:13 +0000
Received: by oihr66 with SMTP id r66so61588001oih.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Jul 2015 06:27:50 -0700 (PDT)
Date: Mon, 6 Jul 2015 08:27:07 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150706132707.GA22962@ubuntu-hedt>
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
 <55966D1B.1040603@neratec.com>
 <CAHr=VqnpJ_+ovmB3gqm+X9WX98ZeVuO8VZ2cq6OFPcdjy8Rkgg@mail.gmail.com>
 <5596A3C0.6020303@neratec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5596A3C0.6020303@neratec.com>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>, Wei Zhong <wzhong@google.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jul 03, 2015 at 05:01:20PM +0200, Zefir Kurtisi wrote:
> On 07/03/2015 04:20 PM, Wei Zhong wrote:
> > On Fri, Jul 3, 2015 at 4:08 AM, Zefir Kurtisi <zefir.kurtisi@neratec.com> wrote:
> >>
> >> On 07/02/2015 07:44 AM, Wei Zhong wrote:
> >>> commit 2fef4cad8a1bd9cbbf178e59a1b3ca672b057095
> >>> Author: Wei Zhong <wzhong@google.com>
> >>> Date:   Wed Jul 1 22:39:09 2015 -0700
> >>>
> >>>     wireless-regdb: update CA rules for 5600 - 5650 mHz
> >>>
> >>>     Related regulation:
> >>>     http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3
> >>>
> >>>     Frequency Bands 5470-5600 MHz and 5650-5725 MHz
> >>>     Until further notice, devices subject to this section [i.e. Wifi device
> >>>     supporting 5 GHz bands] shall not be capable of transmitting in the band
> >>>     5600-5650 MHz. This restriction is for the protection of Environment
> >>>     Canada’s weather radars operating in this band.
> >>>
> >>> diff --git a/db.txt b/db.txt
> >>> index 809cd3c..da0cfad 100644
> >>> --- a/db.txt
> >>> +++ b/db.txt
> >>> @@ -216,7 +216,8 @@ country CA: DFS-FCC
> >>>         (2402 - 2472 @ 40), (30)
> >>>         (5170 - 5250 @ 80), (17), AUTO-BW
> >>>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> >>> -       (5490 - 5730 @ 160), (24), DFS
> >>> +       (5490 - 5600 @ 80), (24), DFS
> >>> +       (5650 - 5730 @ 40), (24), DFS
> >>>         (5735 - 5835 @ 80), (30)
> >>>
> >>>  # Source:
> >>> --
> >>
> >> I believe this could also be interpreted differently. If the change is only about
> >> removing the weather radar band (5600-5650), the change should be
> >>
> >>  -       (5490 - 5730 @ 160), (24), DFS
> >>  +       (5490 - 5570 @ 80), (24), DFS
> >>  +       (5570 - 5590 @ 20), (24), DFS
> >>  +       (5650 - 5730 @ 80), (24), DFS
> >>
> >> The second rule explicitly states that channel 116 remains available for HT20. If
> >> this level of strict correctness is not needed, rule 1 and 2 combined would be
> >>
> >>  -       (5490 - 5730 @ 160), (24), DFS
> >>  +       (5490 - 5590 @ 80), (24), DFS
> > 
> > I agree. 5590 is more strict than 5600.
> > 
> >>
> >>  +       (5650 - 5730 @ 80), (24), DFS
> > 
> > 5690 MHz is not a channel can be used, is it still necessary to mark
> > this band as 80MHz while in practice it is not possible to fully
> > unitize the entire band?
> > 
> 
> I must be missing something here, where does the restriction for 5690 come from?
> The document handles the band 5650-5725 as available, I don't see any further
> restrictions for 5690.

I've only looked briefly at the relevant documents, but I also am not
seeing where this restriction comes from. The regulatory document linked
to in the patch description doesn't seem to restrict it, nor does
anything I see in the discussion of VHT80 center frequencies in IEEE
802.11 (in fact channel 138 is explicitly listed as a possible VHT80
center frequency index in some of the tables).

> From your other post:
> >>     >
> >>     >  -       (5490 - 5730 @ 160), (24), DFS
> >>     >  +       (5490 - 5590 @ 80), (24), DFS
> >> 
> >>     I agree. 5590 is more strict than 5600.
> >> 
> >>  
> >> On a second thought,  5590 implies channel 116 can't have 40MHz. I think that is
> >> still allowed per regulation.
> >> 
> >> 
> 
> No, channel 116 is not usable for HT40 if weather radar channels are disabled,
> since it can only be combined with channel 120 and that one partially falls into
> the restricted range.

It's not necessary to restrict the band down to 5590 or break out the
rule for channel 116 separately, the software is smart enough to work
out what's allowed based on the original rule Wei supplied for 5490-5600
MHz. In fact that rule exactly matches what we used to have in db.txt
for the US prior to the TDWR restrictions being lifted.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
