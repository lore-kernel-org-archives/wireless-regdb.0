Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-am1on0144.outbound.protection.outlook.com
 ([157.56.112.144] helo=emea01-am1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgDZA-0003wI-9t
 for wireless-regdb@lists.infradead.org; Thu, 09 Apr 2015 14:36:25 +0000
Message-ID: <55268E40.40102@bluetown.com>
Date: Thu, 9 Apr 2015 16:35:44 +0200
From: Quinn Plattel <q@bluetown.com>
MIME-Version: 1.0
References: 
	 <55B7C19249033A4482157731B0C0AF19AE215D61@banasiexm01.ASIA.ROOT.PRI>
In-Reply-To: <55B7C19249033A4482157731B0C0AF19AE215D61@banasiexm01.ASIA.ROOT.PRI>
Subject: Re: [wireless-regdb] Regulatory requirements for Japan/Europe
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

According to IEEE802.11-2012 standard, center frequencies 5180 -> 5300 
are Indoor for Europe.  Center frequencies 5180 ->5320 are Indoor for 
Brazil. Center frequencies 5745 -> 5825 are for short range devices in 
Europe.  Center frequencies 5260 -> 5700 require DFS for USA, Europe, 
Japan, and Australia.

Br,
Quinn

On 09/04/15 10:50, Atul Joshi wrote:
> Hi,
> I have a question on Regulatory requirements for Japan (and Europe)
> According to db.txt
> country JP: DFS-JP
>       (2402 - 2482 @ 40), (20)
>       (2474 - 2494 @ 20), (20), NO-OFDM
>       (4910 - 4990 @ 40), (23)
>       (5030 - 5090 @ 40), (23)
>       (5170 - 5250 @ 80), (20), AUTO-BW
>       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>       (5490 - 5710 @ 160), (23), DFS
>
> But it appears that (5170 - 5250 @ 80), (20), AUTO-BW is no-outdoor.
> Is my understanding correct?
> Also according to http://en.wikipedia.org/wiki/List_of_WLAN_channels both the above bands (UNII-1 and UNII-2) are indoors only.
>
> Which one is correct? Are the indoor/outdoor restriction up-to-date in db.txt?
>
> Thanks
> atul
>
>
>
> Member of the CSR plc group of companies. CSR plc registered in England and Wales, registered number 4187346, registered office Churchill House, Cambridge Business Park, Cowley Road, Cambridge, CB4 0WZ, United Kingdom
> More information can be found at www.csr.com. Keep up to date with CSR on our technical blog, www.csr.com/blog, CSR people blog, www.csr.com/people, YouTube, www.youtube.com/user/CSRplc, Facebook, www.facebook.com/pages/CSR/191038434253534, or follow us on Twitter at www.twitter.com/CSR_plc.
> You can now access the wide range of products powered by aptX at www.aptx.com
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

