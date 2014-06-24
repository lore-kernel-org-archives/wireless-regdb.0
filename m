Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzGsU-0000ho-LY
 for wireless-regdb@lists.infradead.org; Tue, 24 Jun 2014 02:54:35 +0000
Received: by mail-lb0-f180.google.com with SMTP id w7so5557958lbi.25 for
 <wireless-regdb@lists.infradead.org>; Mon, 23 Jun 2014 19:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=AuiluQrMYFNO1o0Qg+zREb09vt3Y/2rZZzoinAOPqHc=;
 b=CYbPtUkeuKU8XZdNTLeywPPvuip6iE/ZVhVGXjAop9ASGOq+0MFIEmLeHNzZvRJrki
 JHeSLD10i/k7PpI22Ye6a5lUcVwBZuDH8utd92eCcCOl4S0+hqV+vljR19jeCW5DW8Tx
 VwzYfyCOQNV08VfC/Vnw5BwooFJXXWM0Rmz8jQA6V0Lc79H8YzQ4TCZzT6m7fDCZfafS
 Zg85SYJZYml5nEyKF0+yD6mvPpE8fW5hcOJyuhGgpyO7pKWwx730LNyt2Bmrq6g51Fqj
 EdS5nV4Ycpb+S7BW+4Ko/+xiY5UeyZQhlC/iXRyS9r8RSSOq6ddjMjmBTrz3xHCUdLxT i8Vg==
MIME-Version: 1.0
In-Reply-To: <53A8E3F9.7000001@candelatech.com>
References: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
 <20140623191504.GD1390@garbanzo.do-not-panic.com>
 <53A89011.1010806@candelatech.com>
 <20140623205451.GG1390@garbanzo.do-not-panic.com>
 <53A89A0F.9090509@candelatech.com>
 <20140624004442.GH1390@garbanzo.do-not-panic.com>
 <53A8E3F9.7000001@candelatech.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 23 Jun 2014 19:53:51 -0700
Message-ID: <CAB=NE6XJaHNAL17mN7Ghw9GnatOwaOacikv5XupK7xKjUe=m_Q@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC] wireless: improve dfs-region
	intersection.
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
To: Ben Greear <greearb@candelatech.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Kalle Valo <kvalo@qca.qualcomm.com>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jun 23, 2014 at 7:35 PM, Ben Greear <greearb@candelatech.com> wrote:
>
>>> Maybe just use time-zone or user hints in this case since NICs cannot
>>> be fully trusted.
>>
>>
>> WTF no, the regulatory hint stuff should all be automated and user input
>> should really only come from trusted sources, see the cell base station
>> hint as a good example use case. The NICs are trusted as that's what
>> regulatory bodies like folks to do. Hell even the country IEs are only
>> trusted for the alpha2, the actual contents are disregarded. Regular
>> user input should only help compliance further, that's it.
>
>
> NICs just aren't that reliable, seems you can buy NICs with any number
> of regulatory domains on the interweb, and then you can hop on a plane
> and go other interesting places.

You can also reverse engineer firmware, also design RW support on OTPs
and EEPROMs, so there's tons of ways one can circumvent regulatory,
its not meant to be perfect, specially since tons of software is
required for hugely complex regulatory compliance rules such as in
DFS. We however do the best to enable all types of devices to be
compliant, we do the very best, and its also why we get vendor support
upstream even with open firmware designs. Location information is also
important for a device that get calibrated for a specific region --
the architecture on some devices mandates that you can only fit
certain things into hardware / OTP / EEPOM and some folks optimize
functionality of a card so that that very specific tuning applies only
to a specific region it got certified for, so the ideal operation of a
device is for what area it was designed for. If folks repuropose them
it may not work as well.What ends up in the market will vary and what
folks do in their basement or lab is up to them -- enable onus kernel
flag stuff and go to town.

There's tons of good resources an operating system can rely on to
guarantee the region other than a stupid EEPROM / OTP / Country IE,
the ideal solution folks should strive for would be a series of
heuristics that can guarantee this and only use the OTP / whatever for
when the location cannot be known for sure.

An easy start up idea would be to find a really cheap way to ensure
this for hardware other than GPS. The resolution would suffice to be
ISO3166 specific to the most popular countries.

> If you ever have a system with NICs with two different regulatory domains,

Folks should not be selling these and if they end up with them the
intersection is taken, and additionally user input is welcomed.

> I assume it is very likely that it was not certified in that configuration.

A device *sold* under that configuration would need to be certified.

> Maybe the user's input (and AP's beacons and such) are more reliable in this
> case.

Location information should use a series of heuristics, and a degree
of trust should be used to quality them. Userespace input for hints
coming from cell base stations are of a good source, as an example and
some folks ship products using it. Users should only be allowed to
help compliance further, that's it. The default stuff should be done
without any user input.

> But, not worth arguing about at this point.  As long as the basic regulatory
> bugs are fixed (as per the other thread), then my problems should be
> solveable.

Yes, lets use our time effectively please.

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

