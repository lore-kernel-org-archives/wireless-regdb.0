Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ig0-f173.google.com ([209.85.213.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPtYb-00022y-58
 for wireless-regdb@lists.infradead.org; Thu, 13 Aug 2015 14:32:37 +0000
Received: by igui7 with SMTP id i7so393385igu.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 13 Aug 2015 07:32:14 -0700 (PDT)
Date: Thu, 13 Aug 2015 09:31:54 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150813143154.GA121347@ubuntu-hedt>
References: <1439299795-17359-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439299795-17359-1-git-send-email-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add 2.4GHz regulatory
	rules for Cuba (CU)
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Aug 11, 2015 at 03:29:55PM +0200, Xose Vazquez Perez wrote:
> Resolución 127, 2011 - Reglamento Banda 2,4 GHz.:
> http://www.mincom.gob.cu/sites/default/files/marcoregulatorio/R%20127-11%20Reglamento%20banda%202,4%20GHz.pdf
> 
> Cc: Seth Forshee <seth.forshee@canonical.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: wireless-regdb@lists.infradead.org
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
> ---
>  db.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index 982db34..2edbf90 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -275,6 +275,13 @@ country CR: DFS-FCC
>  	(5490 - 5730 @ 20), (24), DFS
>  	(5735 - 5835 @ 20), (30)
>  
> +# http://www.mincom.gob.cu/?q=marcoregulatorio
> +# - Redes Informáticas
> +# Resolución 127, 2011 - Reglamento Banda 2,4 GHz.
> +country CU: DFS-FCC
> +	(2400 - 2456 @ 40), (200 mW)
> +	(2456 - 2483.5 @ 40), (200 mW)
> +

Based on the Google translation of the document you linked to, I don't
see anything which would prevent merging these rules into one rule. Am I
missing something?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
