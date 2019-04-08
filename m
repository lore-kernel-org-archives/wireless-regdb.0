Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=puQ7WBpFR/Z8MIkY85YyHVV3I/MBidmLcxBl9DcyPgw=;
 b=c0n2779DKCOKCz
 a9r6L3WTd7BDYinFGrN8Ps1tnOOpbQ5LU3SUWrP+4oax13Bf6yys6cy7nTyLRSly/AVL5sTUekV3n
 jCHP9x/Kts3uhg6QzxpFnbIjQAhRDpBxtOAOqGC0sXWK/SbY8thCtckyzwsw/iiLdfC2dRmOc8jHO
 joHMGNWxVCSKCWm7QukS6es8IXADXlPGeK9uof34uWhKVPQqCNmawqIgKpgKgztjFhzZmE5zy9uzh
 uB/jNplUDSb60ERIS6uOVCmOjQqaWC4lVtVRjLzGtiOKBgNI7PqaoyBZnekBU32T5IFj08OcMV0jE
 dSsiNULqnh3UIRFxpH7Q==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDTbC-0002iY-7R
 for wireless-regdb@lists.infradead.org; Mon, 08 Apr 2019 12:42:09 +0000
Received: from mail-yb1-f197.google.com ([209.85.219.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hDTb8-0008Mm-Ga
 for wireless-regdb@lists.infradead.org; Mon, 08 Apr 2019 12:42:02 +0000
Received: by mail-yb1-f197.google.com with SMTP id c14so10388471ybf.23 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Apr 2019 05:42:02 -0700 (PDT)
Date: Mon, 8 Apr 2019 07:41:59 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190408124159.GC15126@ubuntu-xps13>
References: <1553711659-27600-1-git-send-email-peter.oh@bowerswilkins.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1553711659-27600-1-git-send-email-peter.oh@bowerswilkins.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for South Korea
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
To: Peter Oh <peter.oh@bowerswilkins.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Mar 27, 2019 at 06:34:29PM +0000, Peter Oh wrote:
> From: Peter Oh <peter.oh@bowerswilkins.com>
> 
> Update power limit as documented in:
> https://www.rra.go.kr/FileDownSvl?file_type=LAWKR&file_parentseq=54&file_seq=27
> which revised on November 30, 2016.
> 
> Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>

I usually try to check the changes against the documents, but in this
case I haven't been able to get any English tranlation for the document
(or even view the contents it in any meaningful way). I don't suppose
you know where to find an English version of the document?

Thanks,
Seth

> ---
>  db.txt | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 4fb1948..52c17e9 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -695,11 +695,12 @@ country KP: DFS-JP
>  	(5735 - 5815 @ 20), (30)
>  
>  country KR: DFS-JP
> -	(2402 - 2482 @ 40), (13)
> -	(5170 - 5250 @ 80), (20), AUTO-BW
> -	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -	(5490 - 5710 @ 160), (30), DFS
> -	(5735 - 5835 @ 80), (30)
> +	# ref: https://www.rra.go.kr/ko/reference/lawList_view.do?lw_seq=54&lw_type=3&searchCon=&lw_select=ALL&lw_model=&searchTxt=
> +	(2402 - 2482 @ 40), (23)
> +	(5170 - 5250 @ 80), (17), AUTO-BW
> +	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
> +	(5490 - 5710 @ 160), (23), DFS
> +	(5735 - 5835 @ 80), (23)
>  	# 60 GHz band channels 1-4,
>  	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
>  	(57000 - 66000 @ 2160), (43)
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

