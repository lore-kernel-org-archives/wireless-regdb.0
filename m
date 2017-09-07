Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=9wW7Ysxv6iZQc7KkrPKaAIFX/X9SocTG7Lj8J5zTAuc=;
 b=J/W5noXRepqbn82Z8TZ0Lacd2
 dRF7RSbbxma9GPjLLab2/AAHfbCf5ty/WenDY27jTEBaVT8niSBp1SXljdVT3BpwEkPcrx2xnqaZy
 7JfO8eCzuOylB4EihGJYMZWCqEClLut2b1vF9ZplQtHeHg42lkD+XBZJGNFdtud6WywMtSYRDTNZu
 iqitUrSQbb8eJNM1jmj4FnrXRoLLTAwAy14gFMgRU6qvAZ/6famTwrQsW+fKHshfrxSxtU16SSmNo
 U6BpzPld+6+0mdbTz1c+1pXD4pgwwhV9DPRz4MQxGul9QFyDmJ+Y9jVKJIIqi+/1rIuGb1uknvcvy
 /pjiMCMCQ==;
Received: from mail-wr0-x22e.google.com ([2a00:1450:400c:c0c::22e])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpxPK-0006nD-7X
 for wireless-regdb@lists.infradead.org; Thu, 07 Sep 2017 14:03:55 +0000
Received: by mail-wr0-x22e.google.com with SMTP id 108so19594302wra.5 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 Sep 2017 07:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=mX7Vv65nogNvKcnbRzTcocYlYb8UpTfGoDAlRQ/TyeY=;
 b=oxNyPDyxKshbaf5pmfKGfvZixDUF5pLmhiMS2PwEqdigGTJY46lxvaohRCYml4E1Jb
 jhmET72KVt+ni+BKJatXCbe1j4YHit78ZcgLv0XA/HmNuX9u3A2jxTmBC6Mf78WngEso
 fQteGdD+/1lMANwvDiaG6mJauUEoahbuv/UMI28TZqlkR4uV8FSMqATS50cmGkcZqOG6
 /hTWWd21caQ0Ws4J3E+mb7hqFIF781I32iaoe9IPvgderr47FktBTxHxp4oz5XA09YIY
 JRo/nJCCWOllxoioggYJj0hLa4FnS28wIsD6uXBk65gh9ClW9NyCV5PK0COLUGo1tPOa T/wQ==
References: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
 <CAN+fvRZxr4=1fVqOpXhv-4p-tVa7R3TcFCyYg8dd5urLOQoh+g@mail.gmail.com>
 <52d133f8-7c2e-c9ae-f14d-8b6261408817@gmail.com>
 <CAN+fvRZbcDm+3+Kf7BHFWO-w5b_mwGGcPUHYykZSN+V=bzZ6Jg@mail.gmail.com>
 <893ab8a7-322d-a01c-a9dc-32b55fde35f2@gmail.com>
 <CAN+fvRYeCHRPjGYmWh6Lb9Lvq2s7qoMJttwiKO9uj2wP37v6ZA@mail.gmail.com>
From: =?UTF-8?Q?Mathieu_Peyr=c3=a9ga?= <mathieu.peyrega@gmail.com>
Message-ID: <2fe0333a-2539-a895-48d9-24e1ccf5ff98@gmail.com>
Date: Thu, 7 Sep 2017 16:03:19 +0200
MIME-Version: 1.0
In-Reply-To: <CAN+fvRYeCHRPjGYmWh6Lb9Lvq2s7qoMJttwiKO9uj2wP37v6ZA@mail.gmail.com>
Content-Language: fr
Subject: Re: [wireless-regdb] Question about 5.8 GHz in E.U.
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Ryan Mounce <ryan@mounce.com.au>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

unfortunately, my wifi skills are not (yet ?) allowing me to track 
further than what the "iw reg get" command tells me (confirmed by some 
off the shelf Wifi analyzer sofwares).
Do you have pointers/tutorial to help me doing that ?

Further reading your answer, my guess is that DJI has complied to UNII-3 
choice. At least on their website Spark spec page, they clearly give the 
good max power figures and make the difference between FCC and EU areas.

This leads to my concern about why not adding the matching rules in the 
DB for EU countries that have transposed it into their laws.
Is this regulatory DB supposed to strictly reflect the current state of 
local regulations or doe it also endorse a higher level of 
"responsability" in order to prevent issues with non complient devices 
as I understand your fears ?

Regards


Le 07/09/2017 à 15:44, Ryan Mounce a écrit :
> You can see the 'FR' Country Code, can you see the full 802.11d
> Country Information IE that is broadcast by the DJI drone?
>
> I can see how this situation has come about. In much of the world
> including China (DJI) and the USA (DJI's largest international market)
> the 'UNII-3' equivalent range is a simple default choice with high
> power and outdoor use permitted, with no DFS to worry about.
>
> Europe is not so simple. In roughly descending order of device compatibility.
>
> 2.4GHz has power restrictions compared to USA/China, and is polluted
> in every country.
> UNII-1 is indoor only and should require the user to confirm they are
> indoors (for a device like a drone that is likely to be used outdoors,
> unlike a home WiFi AP)
> UNII-2 adds DFS and TPC restrictions to UNII-1, quite restrictive.
> UNII-2E is fairly quiet and allows more generous power, however DFS is
> still a consideration and a portable device like a drone would have to
> scan for at least 60 seconds before broadcasting in this band.
> UNII-3 has the strictest power restrictions of all, and thus the most
> limited range.
>
> So it seems that DJI have simply ignored this altogether, and are
> broadcasting in a poorly supported frequency band in Europe with
> either a very weak short range signal or a very strong signal in
> violation of regulations. Either way, this is very much their problem
> (and unfortunately also their customers').
>

-- 
tel : +33 (0)6 87 30 83 59


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
