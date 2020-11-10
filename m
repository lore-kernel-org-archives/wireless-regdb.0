Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=fA+cMGGu9WuRJJ7YtzlXIB4EcGdMrnictEhQ6zS66wU=;
 b=hjxENSQ8K+GIJrzpzDtDKaqFl
 SHTN+k1PDXGI5rFWaDxdlOaUCA3NOLLLVMJh4WWBi5QKlDw4nkiE0Cvgkz3+xydt65zpo02eEAYEL
 yHmnbIABNwQn22DT1od5KfHsvJHg04HrE6HApV33gr8A8UymAn+C9NjL9zXjEWHAg19kKUSHY6YYF
 +5uqEU4nTOvMjCnVS4/3RpTcTxz/Ina8TaEX1CPQq9A84lCMHwE2nLlUmlyJFlruturHLjt18DkOe
 3IYhwpcYg6sJrO+QYjDduFAOfL3aSYwL+oue1Zrn86X2ENw+nsMwokL+Ff41hZXjY+QINTprAkRds
 /UAZcRKeA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcbNw-0001tK-Ni
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 21:41:05 +0000
Received: from mail-oi1-f197.google.com ([209.85.167.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kcbNv-0003PE-OQ
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 21:41:03 +0000
Received: by mail-oi1-f197.google.com with SMTP id 25so32833oip.11 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Nov 2020 13:41:03 -0800 (PST)
Date: Tue, 10 Nov 2020 15:41:00 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201110214100.GN6125@ubuntu-x1>
References: <20201020181731.GA18865@leagueoflegends>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020181731.GA18865@leagueoflegends>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Pakistan (PK) on 5GHz
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
To: Abdul Rauf <abdulraufmujahid@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 20, 2020 at 11:17:31PM +0500, Abdul Rauf wrote:
> Update range to 5.725 - 5.875 Ghz
> as mentioned at https://fab.gov.pk/type-approval/
> 
> Signed-off-by: Abdul Rauf <abdulraufmujahid@gmail.com>

Applied, thanks!

> ---
>  db.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index ac32483..ce8449c 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1243,8 +1243,10 @@ country PH: DFS-FCC
>  	(5735 - 5835 @ 80), (30)
>  
>  country PK: DFS-JP
> +	# https://fab.gov.pk/type-approval/
> +	# https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
>  	(2402 - 2482 @ 40), (20)
> -	(5735 - 5835 @ 80), (30)
> +	(5725 - 5875 @ 80), (30)
>  
>  # PL as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
> -- 
> 2.25.1
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

