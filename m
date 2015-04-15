Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-vn0-f42.google.com ([209.85.216.42])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YiNL3-0000SP-I1
 for wireless-regdb@lists.infradead.org; Wed, 15 Apr 2015 13:26:46 +0000
Received: by vnbg62 with SMTP id g62so14944807vnb.6 for
 <wireless-regdb@lists.infradead.org>; Wed, 15 Apr 2015 06:26:23 -0700 (PDT)
Date: Wed, 15 Apr 2015 08:26:18 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150415132618.GA5251@ubuntu-xps13>
References: 
	 <55B7C19249033A4482157731B0C0AF19AE253FAF@banasiexm01.ASIA.ROOT.PRI>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55B7C19249033A4482157731B0C0AF19AE253FAF@banasiexm01.ASIA.ROOT.PRI>
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
To: Atul Joshi <Atul.Joshi@csr.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Apr 14, 2015 at 03:17:51PM +0000, Atul Joshi wrote:
> 
> 
> Hello,
> According to the mail below The BR(Brazil) has  .  Center frequencies 5180 ->5320 are as indoors but the db.txt does not show any such restriction.

Do you have a link to the documents which describe this requirement?
Feel free to send a patch with the changes you believe are needed.

> country BR: DFS-FCC
> 	(2402 - 2482 @ 40), (20)
> 	(5170 - 5250 @ 80), (17), AUTO-BW
> 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
> 	(5490 - 5730 @ 160), (24), DFS
> 	(5735 - 5835 @ 80), (30)
> 
> Am I missing something?
> Also Can you please explain what is AUTO-BW used for? Is it for automatic selection of 20/40/80/160MHz Bandwidth selection?

Wide-bandwidth channels are allowed cross contiguous frequency ranges if
the contiguous ranges both have AUTO-BW set.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

