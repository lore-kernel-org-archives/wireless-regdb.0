Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1QZXfy-00009L-17
 for wireless-regdb@lists.infradead.org; Thu, 23 Jun 2011 00:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=green@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1308788502; x=1340324502;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 z=From:=20"Green,=20Michael"=20<green@qca.qualcomm.com>
 |To:=20"Luis=20R.=20Rodriguez"=20<mcgrof@gmail.com>,=20Ju
 uso=20Oikarinen=0D=0A=09<juuso.oikarinen@nokia.com>|CC:
 =20"ext=20John=20W.=20Linville"=20<linville@tuxdriver.com
 >,=0D=0A=09"linux-wireless@vger.kernel.org"=20<linux-wire
 less@vger.kernel.org>,=0D=0A=09"wireless-regdb@lists.infr
 adead.org"=20<wireless-regdb@lists.infradead.org>
 |Subject:=20wireless-regdb=20US=20and=20CA=20settings=20i
 ncorrect?|Date:=20Thu,=2023=20Jun=202011=2000:18:24=20+00
 00|Message-ID:=20<237CF5B631AA3446BAC55A2F73815CEB01185DC
 6@nasanexd02b.na.qualcomm.com>|References:=20<1304594478.
 3749.61.camel@wimaxnb>=0D=0A=20<BANLkTimGs+hAX=3D5wE7PiTu
 VzD=3D4iLShBHQ@mail.gmail.com>|In-Reply-To:=20<BANLkTimGs
 +hAX=3D5wE7PiTuVzD=3D4iLShBHQ@mail.gmail.com>
 |Content-Transfer-Encoding:=20base64|MIME-Version:=201.0;
 bh=VwHbGUcW74T+ybEjEDlvROdZuJGY1jxfh4EBxzSHHD8=;
 b=asp/sL9s4wG6/MI9mIxpE01ThPDKwj0wVDuFw7wsJobzv6xPbWkSe0Mf
 B5CU0eldCtPKR1oB94umdXGEHGM/7xtqHXlbi7sNikrdifv9KrgJaTvU6
 ofkvbn/cZdAiDedI6yRiX9GQMAVGM1YHOkdc53VeLXDsK6GlgSPNsq8Jd 4=;
From: "Green, Michael" <green@qca.qualcomm.com>
Date: Thu, 23 Jun 2011 00:18:24 +0000
Message-ID: <237CF5B631AA3446BAC55A2F73815CEB01185DC6@nasanexd02b.na.qualcomm.com>
References: <1304594478.3749.61.camel@wimaxnb>
 <BANLkTimGs+hAX=5wE7PiTuVzD=4iLShBHQ@mail.gmail.com>
In-Reply-To: <BANLkTimGs+hAX=5wE7PiTuVzD=4iLShBHQ@mail.gmail.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb US and CA settings incorrect?
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
To: "Luis R. Rodriguez" <mcgrof@gmail.com>, Juuso Oikarinen <juuso.oikarinen@nokia.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "ext John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

Well, the FCC & Canada regdomains should disable those TDWR channels for an AP.
But regdomains for client devices should not disable those channels.

In our licensed sw, we use different regdomains for AP vs. STA to accomplish this. Not sure how linux handles this.

Michael Green
green@qualcomm.com

Qualcomm Atheros, Inc.
781-400-1491 (office)
508-380-4921 (cell)


-----Original Message-----
From: Luis R. Rodriguez [mailto:mcgrof@gmail.com] 
Sent: Thursday, May 05, 2011 11:57 AM
To: Juuso Oikarinen; Michael Green
Cc: ext John W. Linville; linux-wireless@vger.kernel.org; wireless-regdb@lists.infradead.org
Subject: Re: wireless-regdb US and CA settings incorrect?

On Thu, May 5, 2011 at 4:21 AM, Juuso Oikarinen <juuso.oikarinen@nokia.com> wrote:
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
> We are under the understanding that the Canadian national rules deny 
> the usage of the 5490-5710 range of frequencies (ref from RSS-210), 
> but the range is present in the allowed range of frequencies for the CA region:
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
