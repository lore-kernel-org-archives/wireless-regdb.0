Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yh0-f49.google.com ([209.85.213.49])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMZ3y-00080y-GT
 for wireless-regdb@lists.infradead.org; Wed, 27 Aug 2014 08:58:43 +0000
Received: by mail-yh0-f49.google.com with SMTP id b6so13255073yha.36 for
 <wireless-regdb@lists.infradead.org>; Wed, 27 Aug 2014 01:58:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140519203644.GL7650@tuxdriver.com>
References: <5367850A.7060600@gmail.com>
 <CALf=PEYzpx_EcqMEGRTHYkmR-92qEzKL2jDM0tRPEkdcpuAz9g@mail.gmail.com>
 <20140519203644.GL7650@tuxdriver.com>
Date: Wed, 27 Aug 2014 01:58:20 -0700
Message-ID: <CALf=PEZWTmjb0De4m6UXg_PEh5beLk-O40_HXve273mC6ikcVQ@mail.gmail.com>
From: Daiwei Li <daiweili@suitabletech.com>
Subject: Re: [wireless-regdb] KR Country Code Allowed Frequencies
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Xose Vazquez Perez <xose.vazquez@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Resending, as my previous e-mail got rejected due to HTML content.
Here's a patch:

wireless-regdb: Update KR rule to include 5825MHz

The Juniper WLA532-WW allows the setting of channel 165
for country code KR. Various Cisco documentation sources [1],[2]
state that 5825 MHz is allowed for country code KR. Aruba's documentation [3]
states the same.

Perhaps someone can also confirm that the KCC documentation matches [4].

[1]: http://www.intermec.com/public-files/product-profiles/en/Cisco1230AGAP_spec_web.pdf
[2]: http://www.cisco.com/c/en/us/td/docs/wireless/wcs/3-2/configuration/guide/wcscfg32/wcscod.html
[3]: http://www.arubanetworks.com/vrd/OutdoorMIMOVRD/wwhelp/wwhimpl/common/html/wwhelp.htm#context=OutdoorMIMOVRD&file=AppA.html
[4]: http://rra.go.kr/board/law/view.jsp?lw_seq=187&lw_type=3

diff --git a/db.txt b/db.txt
index 3d15930..19fd209 100644
--- a/db.txt
+++ b/db.txt
@@ -533,7 +533,7 @@ country KR: DFS-JP
        (5170 - 5250 @ 80), (20)
        (5250 - 5330 @ 80), (20), DFS
        (5490 - 5710 @ 80), (30), DFS
-       (5735 - 5815 @ 80), (30)
+       (5735 - 5835 @ 80), (30)

 country KW: DFS-ETSI
        (2402 - 2482 @ 40), (20)


On Mon, May 19, 2014 at 1:36 PM, John W. Linville
<linville@tuxdriver.com> wrote:
>
> On Tue, May 06, 2014 at 12:31:01AM -0700, Daiwei Li wrote:
> > Hi Xose,
> >
> > Thanks for correcting my URL. I remember getting it from this page:
> > http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb
> > although the links there are now the same as what you sent. I
> > downloaded the latest release:
> > https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2013.11.27.tar.gz
> > and am still seeing the same frequencies for country code KR:
> >
> > daiweili@jfl: ~/wireless-regdb-2013.11.27 $ regdbdump regulatory.bin |
> > less | grep KR  -A 10
> > country KR:
> > (2402.000 - 2482.000 @ 20.000), (N/A, 20.00)
> > (2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
> > (5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
> > (5250.000 - 5330.000 @ 80.000), (N/A, 20.00), DFS
> > (5490.000 - 5710.000 @ 80.000), (N/A, 30.00), DFS
> > (5735.000 - 5815.000 @ 80.000), (N/A, 30.00)
> >
> > country KW:
> > (2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
> > (5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
> >
> > Should I submit a patch for review, or can I expect someone from this
> > mailing list to validate my finding?
>
> Let's have a patch, and maybe we can validate.  Can you identify your
> source of information?
>
> John
> --
> John W. Linville                Someday the world will need a hero, and you
> linville@tuxdriver.com                  might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

