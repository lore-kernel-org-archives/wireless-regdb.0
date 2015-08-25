Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp1.lantiq.com ([195.219.66.200])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUG8t-00067X-Fq
 for wireless-regdb@lists.infradead.org; Tue, 25 Aug 2015 15:28:08 +0000
From: <Arnon.Meydav@lantiq.com>
Date: Tue, 25 Aug 2015 15:27:44 +0000
Message-ID: <10D0CC65D322B8498995F168AE8D89DA011E83929D@MUCSE037.lantiq.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] Incorrect power for United Kingdom 5GHz?
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,
In the latest released regulatory database (http://kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2015.04.06.tar.xz), 
the transmit power of GB is 20dBm, even for the lower 5GHz channels (e.g. channel 36).

country GB:
        (2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
        (5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
        (5250.000 - 5330.000 @ 80.000), (N/A, 20.00), DFS
        (5490.000 - 5710.000 @ 160.000), (N/A, 27.00), DFS
        (57000.000 - 66000.000 @ 2160.000), (N/A, 40.00)

From my understanding, and from what I see in:
http://www.digitalairwireless.com/wireless-blog/recent/quick-guide-to-5ghz-uk-part-1.html

The transmit power should be 23.

Is this a bug in the database, or was this restricted intentionally?

Thanks,
Arnon Meydav


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

