Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUGQ6-0001Si-UQ
 for wireless-regdb@lists.infradead.org; Tue, 25 Aug 2015 15:45:56 +0000
Message-ID: <1440517529.2192.42.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 25 Aug 2015 17:45:29 +0200
In-Reply-To: <10D0CC65D322B8498995F168AE8D89DA011E83929D@MUCSE037.lantiq.com>
References: <10D0CC65D322B8498995F168AE8D89DA011E83929D@MUCSE037.lantiq.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] Incorrect power for United Kingdom 5GHz?
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
To: Arnon.Meydav@lantiq.com, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2015-08-25 at 15:27 +0000, Arnon.Meydav@lantiq.com wrote:
> Hi,
> In the latest released regulatory database (http://kernel.org/pub/sof
> tware/network/wireless-regdb/wireless-regdb-2015.04.06.tar.xz), 
> the transmit power of GB is 20dBm, even for the lower 5GHz channels 
> (e.g. channel 36).
> 
> country GB:
>         (2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
>         (5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
>         (5250.000 - 5330.000 @ 80.000), (N/A, 20.00), DFS
>         (5490.000 - 5710.000 @ 160.000), (N/A, 27.00), DFS
>         (57000.000 - 66000.000 @ 2160.000), (N/A, 40.00)
> 
> From my understanding, and from what I see in:
> http://www.digitalairwireless.com/wireless-blog/recent/quick-guide-to
> -5ghz-uk-part-1.html
> 
> The transmit power should be 23.
> 
> Is this a bug in the database, or was this restricted intentionally?
> 

A lot of the values like that were halved due to indoor/outdoor or TPC
requirements - I don't know if that's the case here though.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

