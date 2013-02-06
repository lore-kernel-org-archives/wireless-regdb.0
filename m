Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from tuxdriver-1-pt.tunnel.tserv13.ash1.ipv6.he.net
 ([2001:470:7:9c9::2] helo=smtp.tuxdriver.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U39zz-0007kQ-3d
 for wireless-regdb@lists.infradead.org; Wed, 06 Feb 2013 18:45:36 +0000
Date: Wed, 6 Feb 2013 13:39:41 -0500
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20130206183940.GG2148@tuxdriver.com>
References: <8774585.BvFN3Opv12@lx-vladimir> <2225032.pbhpKMrF3f@lx-vladimir>
 <1355142835.9857.19.camel@jlt4.sipsolutions.net>
 <2028055.RB8DPWJWyd@lx-vladimir>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2028055.RB8DPWJWyd@lx-vladimir>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: add regulatory
 rule for ETSI members on 60gHz band
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Cc: linux-wireless@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>, wireless-regdb@lists.infradead.org, robertbasic.com@gmail.com
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Dec 10, 2012 at 05:48:24PM +0200, Vladimir Kondratiev wrote:

<snip>

> and, patch:
> 
> From 69554755daf74ba32ebe0d028de57ed45003e0ab Mon Sep 17 00:00:00 2001
> From: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
> Date: Mon, 10 Dec 2012 17:43:53 +0200
> Subject: [PATCH v2] wireless-regdb: add regulatory rule for ETSI members on
>  60GHz band
> 
> Purpose is to serve for 802.11ad specification that introduces operation
> on the 60GHz band, using bandwidth 2160MHz.
> 
> For the 60GHz band, regulation defined in the "Etsi En 302 567"
> http://docsfiles.com/pdf_final_draft_etsi_en_302_567.html
> 
> It defines for the frequency range 57 GHz to 66 GHz,
> Max. power level (EIRP) for
> indoor only: 40 dBm, and indoor/outdoor: 25 dBm
> Also, there is spectral power density limit
> 13 dBm/MHz for indoor and -2 dBm/MHz indoor/outdoor
> 
> Only indoor part specified, as kernel can't use multiple
> rules per frequency at the moment. Also, standard do not set bandwidth limitation;
> for purpose of 802.11ad this patch specifies bandwidth 2160 MHz,
> in this case gross EIRP limit applies. Frequency limits also set accordingly
> to the 802.11ad channel allocation.
> 
> This patch apply this to the full ETSI member countries:
> 
> The EU member states:
> Austria, Belgium, Bulgaria, Cyprus, Czech Republic, Denmark,
> Estonia, Finland, France, Germany, Greece, Hungary, Ireland,
> Italy, Latvia, Lithuania, Luxembourg, Malta, Netherlands,
> Poland, Portugal, Romania, Slovakia, Slovenia, Spain, Sweden,
> United Kingdom
> 
> plus:
> Andorra, Iceland, Norway, Switzerland, Croatia,
> Bosnia and Herzegovina, Serbia, Macedonia,
> Ukraine, Turkey, Georgia
> 
> Final country codes list:

<snip>

> RS

<snip>

> @@ -575,6 +639,12 @@ country RO: DFS-ETSI
>  	(5170 - 5250 @ 40), (N/A, 20)
>  	(5250 - 5330 @ 40), (N/A, 20), DFS
>  	(5490 - 5710 @ 40), (N/A, 27), DFS
> +        # 60 gHz band channels 1-4, ref: Etsi En 302 567
> +        (57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
> +
> +country RS:
> +        # 60 gHz band channels 1-4, ref: Etsi En 302 567
> +        (57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
>  
>  country RU:
>  	(2402 - 2482 @ 40), (N/A, 20)

Is this really the correct rule for RS (Serbia)?  Only 60 GHz is allowed there?

The bug reporter here seems to disagree...

https://bugzilla.redhat.com/show_bug.cgi?id=908267

What should the rules really be for Serbia?

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

