Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-vc0-f179.google.com ([209.85.220.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WetwC-0004Ob-Ez
 for wireless-regdb@lists.infradead.org; Mon, 28 Apr 2014 22:22:13 +0000
Received: by mail-vc0-f179.google.com with SMTP id ij19so8945483vcb.38 for
 <wireless-regdb@lists.infradead.org>; Mon, 28 Apr 2014 15:21:50 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 28 Apr 2014 15:21:50 -0700
Message-ID: <CALf=PEb+YoLZBdrqocyu6DpTOLJi-8C1nTu4GJZmOm8-x+3iag@mail.gmail.com>
From: Daiwei Li <daiweili@suitabletech.com>
Subject: [wireless-regdb] KR Country Code Allowed Frequencies
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

Hello,

We've found that our Juniper access points (WLA532-WW) allow the
setting of channel 165 (5825 MHz) for country code KR. However, the
regulatory database on our Linux machines does not seem to contain
that frequency for country code KR:

country KR:
        (2402.000 - 2482.000 @ 20.000), (N/A, 20.00)
        (2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
        (5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
        (5250.000 - 5330.000 @ 80.000), (N/A, 20.00), DFS
        (5490.000 - 5710.000 @ 80.000), (N/A, 30.00), DFS
        (5735.000 - 5815.000 @ 80.000), (N/A, 30.00)

I've checked the latest database from
http://wireless.kernel.org/download/wireless-regdb/regulatory.bins/
and it appears to be the same.

We've also found some documentation of Cisco access points ([1], [2])
that state that 5825 MHz is allowed in Korea.

Is it possible that the regulatory database is wrong in this case? If
not, is there some documentation to the contrary?

Best,
Daiwei

[1]: http://www.intermec.com/public-files/product-profiles/en/Cisco1230AGAP_spec_web.pdf
[2]: http://www.cisco.com/c/en/us/td/docs/wireless/wcs/3-2/configuration/guide/wcscfg32/wcscod.html

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

