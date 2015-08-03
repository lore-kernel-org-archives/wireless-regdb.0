Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f182.google.com ([209.85.214.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMKZr-0002Vw-P7
 for wireless-regdb@lists.infradead.org; Mon, 03 Aug 2015 18:35:12 +0000
Received: by obnw1 with SMTP id w1so105322620obn.3 for
 <wireless-regdb@lists.infradead.org>; Mon, 03 Aug 2015 11:34:50 -0700 (PDT)
Date: Mon, 3 Aug 2015 13:34:22 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150803183422.GD21180@ubuntu-hedt>
References: <1437622380-4154-1-git-send-email-wens@csie.org>
 <1437622380-4154-5-git-send-email-wens@csie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437622380-4154-5-git-send-email-wens@csie.org>
Subject: Re: [wireless-regdb] [PATCH v2 4/5] wireless-regdb: Update 5GHz
	rules for US
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
To: Chen-Yu Tsai <wens@csie.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jul 23, 2015 at 11:32:59AM +0800, Chen-Yu Tsai wrote:
> The FCC increased the maximum conducted transmission power for the
> U-NII-1 (5150 ~ 5250 MHz) band to 30 dBm or 1 W for master devices
> and 24 dBm or 250 mW for mobile/portable devices.
> 
> Effective 6/2/2014.
> 
> See FCC KDB 905462 D06.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index cadd52c..29ba4b6 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1160,7 +1160,7 @@ country UG: DFS-FCC
>  
>  country US: DFS-FCC
>  	(2402 - 2472 @ 40), (30)
> -	(5170 - 5250 @ 80), (17), AUTO-BW
> +	(5170 - 5250 @ 80), (30), AUTO-BW

The 30 dB limit is for devices in master mode, for clients the limit
seems to be 250 mW (about 24 dB). Given the TPC requirement for U-NII
devices the most it could be bumped up to is 21 dB, unless there's some
other reason I don't know about to keep it at 17 dB.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

