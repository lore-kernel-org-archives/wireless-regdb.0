Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=kvzZpjPKCi3o21KC0H06BVCGMn3odK8Yi++fFjdwshI=;
 b=pJm1Jb7QNZDH2u
 81i2Nrad2phMChf1nA1XSVXWjvWR48i6UFS12kRJqr9fG1l3yTF1K36yEv3QKmsf/yxzU/d4p0raX
 HzDbp+TpcUIr6BSaIidkqbExKkMkf3E8SYWTar1nLDs4uMUEux8RZKVqnbW/1xgDlWaa/HQMYi7mM
 C1DcyM32YWZaTzGcU7n4s33Y7PEKZ7VXitsgKEUtc1/Wk0ZXJAw9ncJc0G9CGIDArd4g1LNswJVzD
 lu3jo8cyO/nLQQjFPA+97pcgPDwxK4vFMQ/QiSBrIW18B5Pjeg3GKKG3VQ5AXLAz3w5Mg4kQiB3v/
 7bDm8a/POceXF1UJY+Tw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JeQ-00B7Hp-Pc
	for wireless-regdb@lists.infradead.org; Mon, 05 Dec 2022 22:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670278165;
	bh=60NlLFX+EDU05h3PfVBbqUOSwhIMzkLYZPYAqEyh4c8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U6+AE79FTTV5QgHBExtZ2Gr78p+6x9Z7eFIp9i8sNGedsVe/WbOcbsj+TjtYFa2ND
	 K2rlVvRinpFt2oVQM5/VyYkmjNjYpPzTHzd/oPpaLR79GlQmEADFTbH3QgKrA2sgqh
	 ATKRbhWK0rscpaLQy6oy8fkxMmy1dmUVM9xBj30qn2pJlG77XAX6CszZcd4zjYE4HP
	 JbT0888aI9YdwDbyKFJm16w8I4FkMXTZ8nsPDwilSlXFMC8CaDPGOSj81Pzpat3tOv
	 z3YPGldZeislAGh1hY5Mq/+uMHCGb7UMRfspdIEq8XMdXLtwaSak56PmK3eqQY4JgD
	 ffcL5oGcHDh8Q==
Date: Mon, 5 Dec 2022 16:09:24 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Y45sFNcWYpISRYXa@ubuntu-x1>
References: <20221017025204.1370004-1-PascalCoffeeLake@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221017025204.1370004-1-PascalCoffeeLake@gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Japan (JP) on 5GHz
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
To: CaffeeLake <pascalcoffeelake@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Oct 17, 2022 at 11:52:04AM +0900, CaffeeLake wrote:
> Support 144ch for JP Region.
> 
> The Ministry of Internal Affairs and Communications has approved 144ch in Japan.
> 
> Source: https://www.soumu.go.jp/main_content/000635492.pdf
> 
> Signed-off-by: CaffeeLake <PascalCoffeeLake@gmail.com>

Applied, thanks!

> ---
>  db.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index 012824f..8b3827a 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -907,13 +907,15 @@ country JO: DFS-JP
>  	(5170 - 5250 @ 80), (23)
>  	(5735 - 5835 @ 80), (23)
> 
> +# Source:
> +# https://www.soumu.go.jp/main_content/000635492.pdf
>  country JP: DFS-JP
>  	(2402 - 2482 @ 40), (20)
>  	(2474 - 2494 @ 20), (20), NO-OFDM
>  	(4910 - 4990 @ 40), (23)
>  	(5170 - 5250 @ 80), (20), AUTO-BW
>  	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -	(5490 - 5710 @ 160), (23), DFS
> +	(5490 - 5730 @ 160), (23), DFS
>  	# 60 GHz band channels 2-4 at 10mW,
>  	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
>  	(57000 - 66000 @ 2160), (10 mW)
> --
> 2.37.3
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

