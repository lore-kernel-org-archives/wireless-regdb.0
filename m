Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QI0vi-0007U8-Rp
	for wireless-regdb@lists.infradead.org; Thu, 05 May 2011 15:57:31 +0000
Received: by iyb39 with SMTP id 39so2396296iyb.36
	for <wireless-regdb@lists.infradead.org>;
	Thu, 05 May 2011 08:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=qBf3sY/TvN9bmjBxm93wKr0tUxCI7J1i9EJfFbATUvk=;
	b=EA1KeOrrCeqM2C79Ac/ruKCgtesQFUPv+fImfwRvoZWlvHqexbXKs//ea+zfaZdMAQ
	QAlGT+Q8fY7VVHhD7b/Fb70ZuLRUuhXxKp9FMuzdkiWR3mtmhsedhdfxGfNMEhMnQZSK
	dV6APqFX6rw4mF/8xbeg2+WtgaXu3lMzHl1L4=
MIME-Version: 1.0
In-Reply-To: <1304594478.3749.61.camel@wimaxnb>
References: <1304594478.3749.61.camel@wimaxnb>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Thu, 5 May 2011 08:57:09 -0700
Message-ID: <BANLkTimGs+hAX=5wE7PiTuVzD=4iLShBHQ@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb US and CA settings incorrect?
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Juuso Oikarinen <juuso.oikarinen@nokia.com>, Michael Green <Michael.Green@atheros.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "ext John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 5, 2011 at 4:21 AM, Juuso Oikarinen
<juuso.oikarinen@nokia.com> wrote:
> Hi John, all,
>
> The following is an excerpt of the db.txt from most recent
> wireless-regdb.
>
> country US:
>         (2402 - 2472 @ 40), (3, 27)
>         (5170 - 5250 @ 40), (3, 17)
>         (5250 - 5330 @ 40), (3, 20), DFS
>         (5490 - 5600 @ 40), (3, 20), DFS
>         (5650 - 5710 @ 40), (3, 20), DFS
>         (5735 - 5835 @ 40), (3, 30)
>
> country CA:
>         (2402 - 2472 @ 40), (3, 27)
>         (5170 - 5250 @ 40), (3, 17)
>         (5250 - 5330 @ 40), (3, 20), DFS
>         (5490 - 5710 @ 40), (3, 20), DFS
>         (5735 - 5835 @ 40), (3, 30)
>
> We are under the understanding that the Canadian national rules deny the
> usage of the 5490-5710 range of frequencies (ref from RSS-210), but the
> range is present in the allowed range of frequencies for the CA region:
>
> "Additional requirements for the band 5600-5650 MHz: Until further
> notice, devices subject to this Section shall not be capable of
> transmitting in the band 5600-5650 MHz, so that Environment Canada
> weather radars operating in this band are protected."
>
> Then again, the FCC rules (15.407) do not prohibit the mentioned range
> of frequencies within the US (with DFS and limited power level) but in
> the regulatory database that range is missing.
>
>
> Is there a bug in the regulatory db, or am I misunderstanding something?


Michael, any opinion on this?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
