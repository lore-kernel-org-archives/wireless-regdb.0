Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:References:Cc:To:From:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=sG2vq4V+p8B7bY2T3+bgUrjweSsf6SnlVJ5wTDI1vIc=;
 b=UrMqbQQxhytWvu
 +FMxD+LSfmj9hoMhxJeLvsR5bvLBWTI9JmJ4gwRXOyuZCQsnwuB0HJ5Cib6rh2wlCmr4PlQiZaTAG
 emMusffI2DHLANF5KRoeWv/xyO9M4/j2/iPdreGXAZRUESPGPanrYoVeL3Np4ENR4+meBe0wpNgJ1
 phJFp6owAcuFEJB1dKLK/lzPW8Rq9nQDvzCY1SBYWuBccFLiVo3q/JxwLDDFeAPF43XfrGFUug4i3
 GwhMx8oqOUHE3Wj3eY4K7gbIvBdNZwOx2p6Zk0uFZw4PUnMCO4OZkpb4A4NnOsgGh9bMkCFyT6Fa7
 93cqBbqSpo2h0+BD1erg==;
Received: from hm1831-n-117.locaweb.com.br ([189.126.112.117])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOTXB-009NRL-SX
	for wireless-regdb@lists.infradead.org; Thu, 18 Aug 2022 00:37:20 +0000
Received: from mcbain0001.email.locaweb.com.br (189.126.112.11) by
 hm1831-n-113.locaweb.com.br id hvm3h02n8lgi for
 <wireless-regdb@lists.infradead.org>; Wed, 17 Aug 2022 21:25:49 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
Message-ID: <b453df46-01c4-0c89-1408-1f22eb8666bc@cesarb.eti.br>
Date: Wed, 17 Aug 2022 21:36:57 -0300
MIME-Version: 1.0
Content-Language: en-US
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
References: <271ca023-d574-7d84-a020-ec5950fb500e@cesarb.eti.br>
 <f0b68f02-a95d-93e6-6437-523f360e4eb6@cesarb.eti.br>
In-Reply-To: <f0b68f02-a95d-93e6-6437-523f360e4eb6@cesarb.eti.br>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Brazil (BR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Em 17/08/2022 21:07, Cesar Eduardo Barros escreveu:
> Em 17/08/2022 20:31, Cesar Eduardo Barros escreveu:
>> For range 5925-7125 MHz (article 11.7), there are different rules for 
>> APs, clients, and very low power devices. For APs (article 11.7.1), 
>> the maximum EIRP is 30 dBm (article 11.7.1.1), and it's INDOOR-ONLY 
>> (article 11.7.1.3); for clients of an indoor AP (article 11.7.2), the 
>> maximum EIRP is 24 dBm (article 11.7.2.1), and it's INDOOR-ONLY 
>> (article 11.7.2.3); for very low power devices (article 11.7.3), the 
>> maximum EIRP is 17 dBm (article 11.7.3.1).
> 
> Thinking better about it, I might have miscalculated this one. Since the 
> smallest channel we use is 20 MHz, and the EIRP power density for 
> clients is limited to -1 dBm/MHz (article 11.7.2.2), if I'm doing the 
> calculations correctly the limit for clients would be 12 dBm, that is,
> 
> (5925 - 7125 @ 320), (12), NO-OUTDOOR
> 
> It's unfortunate that we cannot represent that kind of rule in db.txt, 
> and are forced to artificially limit the power by 12 dB (the full power 
> of 24 dBm I had calculated would work only for 320 MHz).
> 
> I would appreciate if you could look over these power density rules, 
> especially the ones which are in dBm/MHz instead of mW/MHz, since I 
> might have miscalculated something else.
> 

And thinking even more about it, if I'm understanding article 11.7.10 
correctly, a client can transmit only when associated to an AP, except 
for the negotiation while joining the AP. I believe this corresponds to 
NO-IR, so the correct line for that range would be:

(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR

-- 
Cesar Eduardo Barros
cesarb@cesarb.eti.br

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

