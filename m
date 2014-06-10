Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuUGt-0007HM-8e
 for wireless-regdb@lists.infradead.org; Tue, 10 Jun 2014 22:11:59 +0000
Received: by mail-la0-f42.google.com with SMTP id el20so4391988lab.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Jun 2014 15:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=4IfxWQsX6KkR9tclw3U82vlTL2nXwYQPv+2yovCOlTo=;
 b=y9Jy5kC1rTfiB5pFm467wG+d+rn/VViPV/Amd00bbho2+wJsg+Vsk04781/pqD/Qyn
 jtnTuXjWYRQ9T2t1NSJWanMjTgw2IAJQ4r9Y4d7qRSxsjnqxegkhD2ZVZTTcoXSAKf9Y
 xooDBoxIHBWo6q/p9DE3BpJl6wunGb4+IMb8QsMsN/wa8SfoFIHW0tAXqo2IqzZ3jz9Q
 0l06e/dx2KzmtxXkhWWJ1vUnnnApNy/zHYkz99/UHJu5P5wpd1dlZrvuE2HzZY4h0bI/
 v4VSWayB4WbrfaUh0+siacEdK8UNJefkLb+T7vcOsASY6mV85t8vVUY4wCT+GPJNVL08 PoXA==
MIME-Version: 1.0
In-Reply-To: <1402385153-5056-2-git-send-email-janusz.dziedzic@tieto.com>
References: <1402385153-5056-1-git-send-email-janusz.dziedzic@tieto.com>
 <1402385153-5056-2-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 10 Jun 2014 15:10:56 -0700
Message-ID: <CAB=NE6X=Uzu_SQbaHuA-uVoU+tdz=yW6PuBOgDyB75VOG1EFOw@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 2/2] crda: add crda_tiny implementation
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>, Felix Fietkau <nbd@openwrt.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 10, 2014 at 12:25 AM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> add crda_tiny and crda.sh implementation.
> This implementation base on db.txt file
> signed via PGP. Next crda.sh do db.txt veryfication.
> crda_tiny as a input get regulatory domain
> in text format, parse this and send using
> nl80211 to the kernel.
> This implementation skip regulatory.bin file and
> works directly on signed db.txt file.
>
> Added gpg directory with db_signed.txt file and public key
> required for veryfication.
>
> crda.sh require installed gpg.
>
> To test just run:
> - make && make install
> - sh gpg/install.sh
> - cp /sbin/crda.sh /sbin/crda (or change udev rule)
>
> All logs will be available in /tmp/crda.err file

It seems Felix had some other ideas on how to scale binary
compatibility, this doesn't seem to care for it.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

