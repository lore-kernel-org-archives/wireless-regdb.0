Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yk0-x22c.google.com ([2607:f8b0:4002:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZB1q5-00052Y-Bm
 for wireless-regdb@lists.infradead.org; Fri, 03 Jul 2015 14:21:14 +0000
Received: by ykdr198 with SMTP id r198so96623700ykd.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 03 Jul 2015 07:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=20120113;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type:content-transfer-encoding;
 bh=r9sb/F3aEALDHdf+yWAf17VcDOspmPnHqZyrmlfkfOA=;
 b=mHSVI4i+3vHiJGo7KkMLW5o/TCwrHxYO0hON5KBrnXc6yRukuGj3XjGtOxUdWouzeX
 Uj7ZPgKp5sOMnadrlFUCN4VawDnF2kkNyfvP+dZcOFSjli9hdUY8fKpF5iVOVZsx+/D7
 NtYf89ilSIqy2kdnrHuyJgaTy/oldY0VaOHQfor+rb1RHokyKYmZCplBsiRGGjLQfIl5
 tVUV/Cpjv8HdZ9siOvIeFzOYh4b1RrC5Ovu/zA+d/b8s0a55SUVT32JlzNz7y+2qhCB/
 XTIp6HGak8p9skY0AiqkWEb/o/zB7e09S8J/GhkYe0CQvf2NTrgFGTQEXyLw9Zg5vrRv OP3g==
MIME-Version: 1.0
In-Reply-To: <55966D1B.1040603@neratec.com>
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
 <55966D1B.1040603@neratec.com>
Date: Fri, 3 Jul 2015 07:20:51 -0700
Message-ID: <CAHr=VqnpJ_+ovmB3gqm+X9WX98ZeVuO8VZ2cq6OFPcdjy8Rkgg@mail.gmail.com>
From: Wei Zhong <wzhong@google.com>
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
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>
Cc: linux-wireless@vger.kernel.org, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jul 3, 2015 at 4:08 AM, Zefir Kurtisi <zefir.kurtisi@neratec.com> wrote:
>
> On 07/02/2015 07:44 AM, Wei Zhong wrote:
> > commit 2fef4cad8a1bd9cbbf178e59a1b3ca672b057095
> > Author: Wei Zhong <wzhong@google.com>
> > Date:   Wed Jul 1 22:39:09 2015 -0700
> >
> >     wireless-regdb: update CA rules for 5600 - 5650 mHz
> >
> >     Related regulation:
> >     http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3
> >
> >     Frequency Bands 5470-5600 MHz and 5650-5725 MHz
> >     Until further notice, devices subject to this section [i.e. Wifi device
> >     supporting 5 GHz bands] shall not be capable of transmitting in the band
> >     5600-5650 MHz. This restriction is for the protection of Environment
> >     Canada’s weather radars operating in this band.
> >
> > diff --git a/db.txt b/db.txt
> > index 809cd3c..da0cfad 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -216,7 +216,8 @@ country CA: DFS-FCC
> >         (2402 - 2472 @ 40), (30)
> >         (5170 - 5250 @ 80), (17), AUTO-BW
> >         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> > -       (5490 - 5730 @ 160), (24), DFS
> > +       (5490 - 5600 @ 80), (24), DFS
> > +       (5650 - 5730 @ 40), (24), DFS
> >         (5735 - 5835 @ 80), (30)
> >
> >  # Source:
> > --
>
> I believe this could also be interpreted differently. If the change is only about
> removing the weather radar band (5600-5650), the change should be
>
>  -       (5490 - 5730 @ 160), (24), DFS
>  +       (5490 - 5570 @ 80), (24), DFS
>  +       (5570 - 5590 @ 20), (24), DFS
>  +       (5650 - 5730 @ 80), (24), DFS
>
> The second rule explicitly states that channel 116 remains available for HT20. If
> this level of strict correctness is not needed, rule 1 and 2 combined would be
>
>  -       (5490 - 5730 @ 160), (24), DFS
>  +       (5490 - 5590 @ 80), (24), DFS

I agree. 5590 is more strict than 5600.

>
>  +       (5650 - 5730 @ 80), (24), DFS

5690 MHz is not a channel can be used, is it still necessary to mark
this band as 80MHz while in practice it is not possible to fully
unitize the entire band?

>
>
> Cheers
> Zefir

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
