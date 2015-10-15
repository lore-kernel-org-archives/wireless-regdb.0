Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f181.google.com ([209.85.223.181])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmmtI-00075S-KF
 for wireless-regdb@lists.infradead.org; Thu, 15 Oct 2015 18:04:38 +0000
Received: by iow1 with SMTP id 1so99199408iow.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 15 Oct 2015 11:04:13 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:04:08 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151015180408.GA31612@ubuntu-hedt>
References: <1444761084-4399-1-git-send-email-andrej.vlasic0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444761084-4399-1-git-send-email-andrej.vlasic0@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
	rules for Croatia (HR)
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
To: Andrej Vlasic <andrej.vlasic0@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 13, 2015 at 08:31:24PM +0200, Andrej Vlasic wrote:
> Update frequency allocation rules to mach data from table [1].
> 
> Also increase allowed power limit for range 5150-5250 Mhz to 200mW.
> 
> [1] http://tablice.hakom.hr:8280/vis?lang=en
> 
> Signed-off-by: Andrej Vlasic <andrej.vlasic0@gmail.com>
> ---
>  db.txt | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index d57ea84..3b36616 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -504,11 +504,17 @@ country HN: DFS-FCC
>  	(5490 - 5730 @ 160), (24), DFS
>  	(5735 - 5835 @ 80), (30)
>  
> +# Data from table of frequency allocations: http://tablice.hakom.hr:8280/vis?lang=en
> +# For 5ghz range see http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_85.pdf
> +# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_86.pdf
> +# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_87.pdf
> +# TPC devices on range 5250-5350 can use 200mW, and 1W on range 5470-5725.
> +
>  country HR: DFS-ETSI
> -	(2402 - 2482 @ 40), (20)
> -	(5170 - 5250 @ 80), (20), AUTO-BW
> -	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -	(5490 - 5710 @ 160), (27), DFS
> +	(2400 - 2483.5 @ 40), (100 mW)
> +	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
> +	(5470 - 5725 @ 160), (500 mW), DFS
>  	# 60 gHz band channels 1-4, ref: Etsi En 302 567
>  	(57000 - 66000 @ 2160), (40)

In general the changes look okay to me and in line with the published
regulations (I couldn't read some of the documents you linked to, but
the limits do look to be in line with ERC/DEC/(01)07 and ECC/DEC/(04)08
which are referenced by the frequency allocation table).

It seems pretty arbitrary to change from dBm to mW however, especially
for those rules whose power limit isn't actually changing. I'd prefer we
leave them in dBm for consistency, in which case I think we end up with:

country HR: DFS-ETSI
        (2400 - 2483.5 @ 40), (20)
        (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
        (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
        (5470 - 5725 @ 160), (27), DFS
        # 60 gHz band channels 1-4, ref: Etsi En 302 567
        (57000 - 66000 @ 2160), (40)

If that looks fine to you then I can fix it up when I apply the patch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

