Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=tsJKtEBtgHb7+taUser09FmCcar7wDecTQUq9jjjDbM=;
 b=LoqnZoB3uonYZK
 nrpzQpD0weV/e7gM7J3jamtCnbz0w8FrhuNAr05pCiUa/rJTsVKwSzcnXFSXNtCdCTdP7F/0e0hN1
 9c4Wcz5qzZyGsYj0l9gpHl+Z78vU+Nu1JNJUUdAtE820BEFSll0BT65WmaApw/2SmA6C1pRAB9rL9
 Tj7qCBXIptbIeq/3l1gRKZVHt1cy9+REnmu2PIbJGqpnr7tZ5Ff3nvHf/6g3nfK9i9js/5eo3Mcxz
 hweGRfiDWZbBaaOam4kpnAlJC3BKJutoGT+SH6Ll9izto111iiN7g1rWHM3KrMxHvxU9onshfiV1G
 M1T1u1Ly1XnA3DLYss0g==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMWiT-00A9mk-IK
	for wireless-regdb@lists.infradead.org; Fri, 12 Aug 2022 15:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660318612;
	bh=gY1P8nxIlbQB9jeZnDM+nQ2iHpLt3YEQ7SuFPK2EXrY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kgjvG1fSzxk+GodgEUW/OKSWNM7M+ZkOPPyk2MGIkmjhSC6pjkEMSqOm0orMeZc32
	 TwcfK33AsDnMWAvOowsuENNJM3PC885u6K1PMkluHW++zli8+1X+g2cp2vkipxvKP6
	 uMHjuvQNw1jnWwlK2ePs1nBCGDuxb96sjF3fA0y/9Hp7/bSWCSwhYwpvMrDlXqdQTs
	 BeJ3EYhNnL9yaJv6OKtPrgok6MP6QYa5u6l4qOUHjnqDJUtmPXVOW+goQkcuTWTtZR
	 v9C/braiy+6rG2Dez1ddoznFwNfARvknxf8QlUVepanM2o2/tCDsxCV7M4P3hZbPlO
	 GkGYutMgAhAXg==
Date: Fri, 12 Aug 2022 10:36:51 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YvZzk7r5/PlZ5v23@ubuntu-x1>
References: <20220805170207.121080-1-sforshee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220805170207.121080-1-sforshee@kernel.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 5 GHz rules
 for PK and add 60 GHz rule
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Murtaza Saeed <mnk.saeed@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Aug 05, 2022 at 12:02:07PM -0500, Seth Forshee wrote:
> [1] contains updated information for 5 GHz in PK as well as information
> for 60 GHz use. Update the rules to match.
> 
> [1] https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
> 
> Cc: Murtaza Saeed <mnk.saeed@gmail.com>
> Signed-off-by: Seth Forshee <sforshee@kernel.org>

Applied.

> ---
>  db.txt | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 16abf2951e77..07cdf4a29e49 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1362,8 +1362,14 @@ country PH: DFS-FCC
>  country PK: DFS-JP
>  	# https://fab.gov.pk/type-approval/
>  	# https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
> -	(2402 - 2482 @ 40), (20)
> -	(5725 - 5875 @ 80), (30)
> +	# https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
> +	(2402 - 2482 @ 40), (100 mW)
> +	(5150 - 5270 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +	(5270 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
> +	(5470 - 5610 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
> +	(5610 - 5725 @ 80), (200 mW), AUTO-BW
> +	(5725 - 5875 @ 80), (1000 mW)
> +	(57000 - 66000 @ 2160), (40)
>  
>  # PL as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
> -- 
> 2.34.1
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

