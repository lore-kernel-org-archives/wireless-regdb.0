Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:References:Cc:To:From:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=bUrudNpTh4U9A/rzyKAz3C0TkeYkDR3RCnNYP9tj7lY=;
 b=3w4GqTtrjjEy/5
 TysXH6u77aGZLyiNniRtWw5hi3XHn5WLQHwO8yak4Wzx/vIIiXXk6dT0BlalQ6upxgW0I7tSFHBaT
 JQd+byQvcXNXqzWPaYuw8W+FdLfMW2NYUiFGPdEvTgXEzMjMsWCwhJ4ItaU8hD4byNJ/ZpGgwj4YU
 r8I4s4WsyBpWRLPyZRQBDuIKBiVo44+6X5rY62sBlTh2DQArHlxnaEyfdIp/37M8JULBUA1KFJ22P
 kFXNs4p26QrHisXXTtrAisI1q62tmnh0Zz+FmQcIyNmBCftNZevvOF1ItOjXNJVLPFWpzCwx1v3lR
 9uBdMTP/Sj2Aut7WSO0w==;
Received: from mail49196.hm1315.locaweb.com.br ([201.76.49.196])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOT4R-008zRV-Py
	for wireless-regdb@lists.infradead.org; Thu, 18 Aug 2022 00:07:37 +0000
Received: from mcbain0014.email.locaweb.com.br (189.126.112.17) by
 mail4950.hm1315.locaweb.com.br id hvm1c82n8lg5 for
 <wireless-regdb@lists.infradead.org>; Wed, 17 Aug 2022 21:07:32 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
Message-ID: <f0b68f02-a95d-93e6-6437-523f360e4eb6@cesarb.eti.br>
Date: Wed, 17 Aug 2022 21:07:27 -0300
MIME-Version: 1.0
Content-Language: en-US
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
References: <271ca023-d574-7d84-a020-ec5950fb500e@cesarb.eti.br>
In-Reply-To: <271ca023-d574-7d84-a020-ec5950fb500e@cesarb.eti.br>
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

Em 17/08/2022 20:31, Cesar Eduardo Barros escreveu:
> For range 5925-7125 MHz (article 11.7), there are different rules for 
> APs, clients, and very low power devices. For APs (article 11.7.1), the 
> maximum EIRP is 30 dBm (article 11.7.1.1), and it's INDOOR-ONLY (article 
> 11.7.1.3); for clients of an indoor AP (article 11.7.2), the maximum 
> EIRP is 24 dBm (article 11.7.2.1), and it's INDOOR-ONLY (article 
> 11.7.2.3); for very low power devices (article 11.7.3), the maximum EIRP 
> is 17 dBm (article 11.7.3.1).

Thinking better about it, I might have miscalculated this one. Since the 
smallest channel we use is 20 MHz, and the EIRP power density for 
clients is limited to -1 dBm/MHz (article 11.7.2.2), if I'm doing the 
calculations correctly the limit for clients would be 12 dBm, that is,

(5925 - 7125 @ 320), (12), NO-OUTDOOR

It's unfortunate that we cannot represent that kind of rule in db.txt, 
and are forced to artificially limit the power by 12 dB (the full power 
of 24 dBm I had calculated would work only for 320 MHz).

I would appreciate if you could look over these power density rules, 
especially the ones which are in dBm/MHz instead of mW/MHz, since I 
might have miscalculated something else.

-- 
Cesar Eduardo Barros
cesarb@cesarb.eti.br

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

