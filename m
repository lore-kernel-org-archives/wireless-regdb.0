Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f182.google.com ([209.85.214.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsxOR-0004Tl-2Q
 for wireless-regdb@lists.infradead.org; Thu, 14 May 2015 17:58:02 +0000
Received: by obbkp3 with SMTP id kp3so58639042obb.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 14 May 2015 10:57:37 -0700 (PDT)
Date: Thu, 14 May 2015 12:56:49 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150514175649.GB29739@ubuntu-hedt>
References: <1431041765-27166-1-git-send-email-bordjukov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431041765-27166-1-git-send-email-bordjukov@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update BG rules for
 5725 - 5875 mHz
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
To: Petko Bordjukov <bordjukov@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 08, 2015 at 02:36:05AM +0300, Petko Bordjukov wrote:
> The ETSI EN 300 440-1 and EN 300 440-2 standards mandate the use of the
> 5725mHz - 5875mHz band as follows:
> 
> Application - Generic use
> Maximum Radiated Power - 25mW
> 
> The Bulgarian Communications Regulations Commission has made the
> decision to harmonise its regulations for this band with the EU
> regulations [1], [2].
> 
> Based on this data, introduce the 5725mHz - 5875mHz band for the BG
> regulatory domain.
> 
> [1] http://crc.bg/files/_bg/Spisak_2015.pdf
> [2] http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
> 
> Signed-off-by: Petko Bordjukov <bordjukov@gmail.com>

What I find odd here is that none of the other EU contries in the
database that I looked at include this range. Based on the google
translation of [1] above (I can't find any reference to this range for
SRDs in [2] above) and the ETSI standards it references it looks like it
should be okay. So I'm not sure whether I'm missing something or those
countries have additional rules against that range, or if other EU
contries could be updated similarly.

I'm going to leave this on the list for a bit longer to see if someone
with more expertise can provide clarity about this range in the EU.

> ---
>  db.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index ad2acf5..daa84f9 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -141,6 +141,12 @@ country BG: DFS-ETSI
>  	(5170 - 5250 @ 80), (20), AUTO-BW
>  	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
>  	(5490 - 5710 @ 160), (27), DFS
> +        # 5 gHz Short Range Devices, ref:
> +        # Etsi EN 300 440-1
> +        # Etsi EN 300 440-2
> +        # http://crc.bg/files/_bg/Spisak_2015.pdf
> +        # http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
> +        (5725 - 5875 @ 80), (14)

Please use a tab to indent rather than spaces.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

