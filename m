Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1XmqeP-000676-HM for
 wireless-regdb@lists.infradead.org; Fri, 07 Nov 2014 21:00:58 +0000
Date: Fri, 7 Nov 2014 15:59:58 -0500
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20141107205958.GE29733@tuxdriver.com>
References: 
	 <CADofcAWAQ9ZFLbJz3B0s8ewbNB96zpD+Jy+wDrG8pC4NOLbEVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADofcAWAQ9ZFLbJz3B0s8ewbNB96zpD+Jy+wDrG8pC4NOLbEVA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 1/1] wireless-regdb: Update rules for
 Australia (AU) to align with class licence
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
To: Michael Harris <harmic@gmail.com>
Cc: Jouni Malinen <jouni@qca.qualcomm.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Michael,

I tried to apply your patch, but it conflicts with "wireless-regdb:
Add 160 MHz channel bandwidth for VHT" (which I had already applied).

It is unclear to me how to resolve the conflict, and FWIW Qualcomm
seems to be using values very similar to what was already in the
database.  I know that they take a strong interest in ensuring the
accuracy of that data, so I would be extremely uncomfortable digressing
from what is there.

Could you work with Jouni or other interested parties to reach
agreement on exactly what the rules for Australia should be?

Thanks,

John

On Thu, Oct 23, 2014 at 05:45:06PM +1100, Michael Harris wrote:
> I am not sure where the existing regdb rules for Australia were derived from
> (perhaps some default template?) but they are a lot more restrictive than the
> actual class licence requirements.
> 
> I have updated to the best of my ability according to the "Radiocommunications
> (Low Interference Potential Devices) Class Licence 2000" which can be
> found here:
> 
> http://www.acma.gov.au/Industry/Spectrum/Radiocomms-licensing/Class-licences/class-licences
> 
> There is also a useful FAQ for 2.4GHz WLANs here:
> http://www.acma.gov.au/Citizen/Consumer-info/My-connected-home/Wireless-local-area-networks/wireless-lans-in-the-24-ghz-band-faqs
> 
> Signed-off-by: Michael Harris <harmic@gmail.com>
> ---
> NB. I am resending this message as my first attempt did not make it onto
> wireless-regdb (although it did get to linux-wireless). I didn't
> realize one has to
> subscribe to wireless-regdb in order to post. Apologies in advance if anyone
> gets unwanted multiple copies.
> 
>  db.txt | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index f0e4312..94c7010 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -78,12 +78,22 @@ country AT: DFS-ETSI
>         # 60 gHz band channels 1-4, ref: Etsi En 302 567
>         (57240 - 65880 @ 2160), (40), NO-OUTDOOR
> 
> +# Reference: Radiocommunications (Low Interference Potential Devices)
> Class Licence 2000
> +# http://www.acma.gov.au/Industry/Spectrum/Radiocomms-licensing/Class-licences/class-licences
>  country AU:
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (17)
> -       (5250 - 5330 @ 80), (24), DFS
> -       (5490 - 5710 @ 80), (24), DFS
> -       (5735 - 5835 @ 80), (30)
> +       # Item 45A
> +       (2400 - 2483 @ 40), (36)
> +       # Item 44
> +       (5150 - 5250 @ 80), (23), NO-OUTDOOR
> +       # Item 44A (assuminging no TPC implemented).
> +       # If TPC implemented then 23dBm allowed.
> +       (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS
> +       # Item 46 (assuming no TPC implemented)
> +       # If TPC implemented then 30dBm allowed
> +       (5470 - 5600 @ 80), (27), DFS
> +       (5650 - 5725 @ 40), (27), DFS
> +       # Item 45B
> +       (5725 - 5850 @ 80), (36)
> 
>  country AW: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 1.8.3.1
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb
> 

-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

