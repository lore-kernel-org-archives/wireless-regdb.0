Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1OEC-0007me-PY
 for wireless-regdb@lists.infradead.org; Mon, 22 Jul 2013 22:05:14 +0000
Received: by mail-la0-f41.google.com with SMTP id fn20so5688321lab.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 22 Jul 2013 15:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=zJyZjH4q/jpcU1ZRs3AWT9k4OLBYjdEDYKau766/bwM=;
 b=LKgSMM92FUem6j6gIv2zt1/XsEGZafPxV6VeKyZyZaFCh6WJI7/LDF0e7vd8FB8J25
 peWqOgWucO1ABLTp71q0xd7ul/2UdAO6YJNQbt15FLxV6lLSwp3GTrCY30Qke5waVAq1
 +XuhaoFc5nesJjFiV/vYPLWFiI0bZkkJ6WNSWXh7viW26kBghrgJe25WnpuWuKY527+E
 Ij5C8YTcKdPfNATCJCIrFy4cTh0r6ZyFi9tBTxpmc9HKsnoMwlwu/UELX4VzyGSzHKMz
 u3wmJmE1xaNiFUrDyJgBmpJkisHxkzw3dJTTnGQJQeu9bgSRi0eHm5h0KfRr7dy5K8DC mGAg==
MIME-Version: 1.0
In-Reply-To: <CAB=NE6X0vJ4Ts6p8M3i9GyZPCY6Gf6ztCdWvhdsVySO+4CL7pg@mail.gmail.com>
References: 
	 <CAB=NE6X0vJ4Ts6p8M3i9GyZPCY6Gf6ztCdWvhdsVySO+4CL7pg@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 22 Jul 2013 15:04:29 -0700
Message-ID: <CAB=NE6W=RZFNJnLSZZXn4dAeutuMFjMMzfqLd3-=QgeJwaqYaA@mail.gmail.com>
Subject: Re: [wireless-regdb] IEEE VHT80 802.11 channels
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
To: linux-wireless <linux-wireless@vger.kernel.org>
Cc: Felix Bitterli <ic.felix@gmail.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 3, 2013 at 12:05 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> We reviewed a while ago how we'd enable VHT80 channels and decided to
> go with a scaping of the regulatory data even though IEEE defined very
> specific channels. I hadn't seen a list with these center of freq IEEE
> channels so I figured I'd post them. As far as I can tell I see these
> defined. Whether or not you can use them will vary depending on your
> country's regulatory rules.
>
> 5210, 5290, 5530, 5610, 5610, 5690, 5775

The below extended map may help and could also be used to help
understand the corner case of VHT80 support on VHT80 center of freq
5690 MHz.

IEEE VHT80 center of freqs possible:

Center                  20 MHz channels                    ath10k capable
        __________  __________  __________  __________
       /          \/          \/          \/          \
5210     5180 (36)   5200 (40)   5220 (44)   5240 (48)           OK
5290     5260 (52)   5280 (56)   5300 (60)   5320 (64)           OK
5530     5500 (100)  5520 (104)  5540 (108)  5560 (112)          OK
5610     5580 (116)  5600 (120)  5620 (124)  5640 (128)          OK
5690     5660 (132)  5680 (136)  5700 (140)  5720 (144)*        Nope
5775     5745 (149)  5765 (153)  5785 (157)  5805 (161)          OK

Other vendor should consider reviewing their own implementation /
support / regulatory considerations / preferences for collateral of
not having a 20 MHz IEEE channel at center of freq 5720 (144) before.
I'll be pushing out how we address this next.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

