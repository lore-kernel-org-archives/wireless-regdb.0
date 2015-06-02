Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f53.google.com ([209.85.218.53])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YznP5-0005lG-SD
 for wireless-regdb@lists.infradead.org; Tue, 02 Jun 2015 14:42:56 +0000
Received: by oihb142 with SMTP id b142so127078417oih.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 02 Jun 2015 07:42:35 -0700 (PDT)
Date: Tue, 2 Jun 2015 09:42:31 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150602144231.GA31648@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add 60GHz regulatory
 rules for Russia (RU)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "John W . Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 02, 2015 at 05:04:09PM +0300, Vladimir Kondratiev wrote:
> Source is document named
> Changes to NLA 124_Order №129_22042015.pdf
> 
> Signed-off-by: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
> ---
>  db.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index f361030..79dac92 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -978,6 +978,8 @@ country RU: DFS-ETSI
>  	(5250 - 5330 @ 80), (20), DFS
>  	(5650 - 5730 @ 80), (30), DFS
>  	(5735 - 5835 @ 80), (30)
> +	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> +	(57000 - 66000 @ 2160), (40)

It looks like your tree is out of date and missing:

  aa1d66d wireless-regdb: Disable VHT80 where 40/80 MHz on 5 GHz is not allowed

I see that you directed the patch at John, so I'm guessing that you're
still using his tree. I took over maintainership of the database in
December, and you should be using this repo for new work:

  git://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
