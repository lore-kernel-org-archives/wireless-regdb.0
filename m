Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from dub004-omc4s5.hotmail.com ([157.55.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWCE-0007CU-Kb
 for wireless-regdb@lists.infradead.org; Mon, 02 Mar 2015 19:40:09 +0000
Message-ID: <DUB408-EAS2734863A7781C6603935630F0100@phx.gbl>
From: =?utf-8?Q?J=C3=BCrgen_Vogl?= <juergen.vogl@outlook.at>
References: <DUB408-EAS367CCE6240821ED3A644E56F0140@phx.gbl>
 <DUB408-EAS1652BC7618FD5CCB9A287D4F0140@phx.gbl>
 <20150302134559.GA801@jouni.qca.qualcomm.com>
In-Reply-To: <20150302134559.GA801@jouni.qca.qualcomm.com>
Date: Mon, 2 Mar 2015 20:39:42 +0100
MIME-Version: 1.0
Content-Language: de-at
Subject: Re: [wireless-regdb] WG: [PATCH] wireless-regdb: Update Austria
	(AT) regulatory rules
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
To: 'Jouni Malinen' <jouni@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

> -----Ursprüngliche Nachricht-----
> Von: Jouni Malinen [mailto:jouni@qca.qualcomm.com]
> Gesendet: Montag, 02. März 2015 14:46
> An: Jürgen Vogl
> Cc: wireless-regdb@lists.infradead.org
> Betreff: Re: [wireless-regdb] WG: [PATCH] wireless-regdb: Update Austria
> (AT) regulatory rules
> 
> On Thu, Feb 26, 2015 at 06:37:18PM +0100, Jürgen Vogl wrote:
> > just a little Update of the Austrian regulatory rules - because it
> > looks like the current ones are incorrect.
> 
> Without commenting on the correctness of the interpretation of the
> regulatory rules in any way, the proposed changes themselves cannot be
> correct as far as the use of AUTO-BW is concerned. That flag would not do
> anything in either of the two cases where it was used here and removing the
> AUTO-BW flag from 5150-5250 would break use of 160 MHz channels on the
> combined 5150-5350 area.
> 
> As far as the TPC requirement is concerned, I would like to keep in mind that
> we drop the TX power limits by 3 dB on regions requiring TPC for a good
> reason (not supporting TPC).
> 
> --
> Jouni Malinen                                            PGP id EFC895FA

Well, it's probable that my interpretation is wrong. I mean, I'm just a Linux User how wants to get full access (as it's allowed in my country) with his hardware - I don't have to do anything with the Austrian Government or the Austrian Communications Authority (https://www.bka.gv.at/site/3862/default.aspx ) who could say the exacly limits allowed in Austria.

Jürgen Vogl

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
