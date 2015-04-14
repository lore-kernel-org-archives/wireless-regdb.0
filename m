Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cluster-d.mailcontrol.com ([85.115.60.190])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi2bb-0003WU-MN
 for wireless-regdb@lists.infradead.org; Tue, 14 Apr 2015 15:18:29 +0000
Received: from banapppus01.asia.root.pri
 (static-42.188.93.111-tataidc.co.in [111.93.188.42] (may be forged)) by
 rly48d.srv.mailcontrol.com (MailControl) with ESMTP id t3EFHrMp044083
 (version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO) for
 <wireless-regdb@lists.infradead.org>; Tue, 14 Apr 2015 16:17:56 +0100
From: Atul Joshi <Atul.Joshi@csr.com>
Date: Tue, 14 Apr 2015 15:17:51 +0000
Message-ID: <55B7C19249033A4482157731B0C0AF19AE253FAF@banasiexm01.ASIA.ROOT.PRI>
MIME-Version: 1.0
Content-Language: en-US
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
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>



Hello,
According to the mail below The BR(Brazil) has  .  Center frequencies 5180 ->5320 are as indoors but the db.txt does not show any such restriction.


country BR: DFS-FCC
	(2402 - 2482 @ 40), (20)
	(5170 - 5250 @ 80), (17), AUTO-BW
	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
	(5490 - 5730 @ 160), (24), DFS
	(5735 - 5835 @ 80), (30)

Am I missing something?
Also Can you please explain what is AUTO-BW used for? Is it for automatic selection of 20/40/80/160MHz Bandwidth selection?
Thanks
atul

Today's Topics:

   1.  Regulatory requirements for Japan/Europe (Atul Joshi)
   2. Re:  Regulatory requirements for Japan/Europe (Quinn Plattel)


----------------------------------------------------------------------

Message: 1
Date: Thu, 9 Apr 2015 08:50:58 +0000
From: Atul Joshi <Atul.Joshi@csr.com>
To: "wireless-regdb@lists.infradead.org"
	<wireless-regdb@lists.infradead.org>
Subject: [wireless-regdb] Regulatory requirements for Japan/Europe
Message-ID:
	<55B7C19249033A4482157731B0C0AF19AE215D61@banasiexm01.ASIA.ROOT.PRI>
Content-Type: text/plain; charset="iso-8859-1"

Hi,
I have a question on Regulatory requirements for Japan (and Europe) According to db.txt country JP: DFS-JP ???? (2402 - 2482 @ 40), (20) ???? (2474 - 2494 @ 20), (20), NO-OFDM ???? (4910 - 4990 @ 40), (23) ???? (5030 - 5090 @ 40), (23) ???? (5170 - 5250 @ 80), (20), AUTO-BW ???? (5250 - 5330 @ 80), (20), DFS, AUTO-BW ???? (5490 - 5710 @ 160), (23), DFS

But it appears that (5170 - 5250 @ 80), (20), AUTO-BW is no-outdoor.
Is my understanding correct?
Also according to http://en.wikipedia.org/wiki/List_of_WLAN_channels both the above bands (UNII-1 and UNII-2) are indoors only.

Which one is correct? Are the indoor/outdoor restriction up-to-date in db.txt?

Thanks
atul



Member of the CSR plc group of companies. CSR plc registered in England and Wales, registered number 4187346, registered office Churchill House, Cambridge Business Park, Cowley Road, Cambridge, CB4 0WZ, United Kingdom More information can be found at www.csr.com. Keep up to date with CSR on our technical blog, www.csr.com/blog, CSR people blog, www.csr.com/people, YouTube, www.youtube.com/user/CSRplc, Facebook, www.facebook.com/pages/CSR/191038434253534, or follow us on Twitter at www.twitter.com/CSR_plc.
You can now access the wide range of products powered by aptX at www.aptx.com



------------------------------

Message: 2
Date: Thu, 9 Apr 2015 16:35:44 +0200
From: Quinn Plattel <q@bluetown.com>
To: <wireless-regdb@lists.infradead.org>
Subject: Re: [wireless-regdb] Regulatory requirements for Japan/Europe
Message-ID: <55268E40.40102@bluetown.com>
Content-Type: text/plain; charset="windows-1252"; format=flowed

Hi,

According to IEEE802.11-2012 standard, center frequencies 5180 -> 5300 are Indoor for Europe.  Center frequencies 5180 ->5320 are Indoor for Brazil. Center frequencies 5745 -> 5825 are for short range devices in Europe.  Center frequencies 5260 -> 5700 require DFS for USA, Europe, Japan, and Australia.

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




------------------------------

Subject: Digest Footer

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb


------------------------------

End of wireless-regdb Digest, Vol 48, Issue 5
*********************************************


 To report this email as spam click https://www.mailcontrol.com/sr/ESb6MuWH4l3GX2PQPOmvUtVTDJsKpCsgRS0iZjqfuR3tlTA27M7ghyj4yVQFSn4!+dOp9Ed2Y2wbMAc+oOGgZg== .

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

