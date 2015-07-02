Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f53.google.com ([209.85.218.53])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAfXc-0005AU-R1
 for wireless-regdb@lists.infradead.org; Thu, 02 Jul 2015 14:32:41 +0000
Received: by oigx81 with SMTP id x81so57081069oig.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 02 Jul 2015 07:32:19 -0700 (PDT)
Date: Thu, 2 Jul 2015 09:31:44 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150702143144.GB40677@ubuntu-hedt>
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
 <20150702134801.GA40677@ubuntu-hedt>
 <CAHr=Vqn8LzpsbAk=V2yC3Q0Xd5DHqfuSCW4G6vs1vZqBG-VSMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHr=Vqn8LzpsbAk=V2yC3Q0Xd5DHqfuSCW4G6vs1vZqBG-VSMw@mail.gmail.com>
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
To: Wei Zhong <wzhong@google.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jul 02, 2015 at 07:21:30AM -0700, Wei Zhong wrote:
> Thanks for the reply. I'll fix the format and re-submit.

Thanks.

> > Why isn't 80MHz channel bandwidth allowed in the 5650-5730 range?
> 
> It could. But since the entire band is only 80 MHz, in practice, not a single
> center_freq, channel 136 or140 for example, can utilities 80 MHz, right?

I don't know, that's why I asked :-)

I actually haven't read up yet on how VHT80 is done in practice. I was
just curious why an 80 MHz channel wouldn't be possible when there's the
space for it.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

