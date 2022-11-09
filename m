Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=k2TXW+mPBaU/D9AvY9UUzv++ms2+26vSeHCFGokuDzM=;
 b=KIbk1WcZrKqGCW
 Bo+oDvh2G9bQkjGc6YutDIm+IMtRLygvtL7HY3Omy7+009mpc86v3N+8whLMiSWQpPSpoNkb0An4W
 KOWXIe/jInj/9+HSky5NGhfdz29rTAA5lyed0e5Tatn8JHF9Yyu8M07RBEeU4f8txuVpCyLKQJp4W
 asfdRz+uRmROrvEw86kTo/v1Pef/5Um9PmBjyv4ndtF1xxLRgtsprN7B+zD86bNmiIDVRB2Fr7xPD
 egktHeR8S/SsQ6ppDQpPRL7RiTJGUQWpKjWPYbctT6CJEAPgZdBSu5ZMLsq5AVxR03VLjoInYapob
 E4NfG8VOyIJBv+NFgtug==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osnv4-00F1NG-QD
	for wireless-regdb@lists.infradead.org; Wed, 09 Nov 2022 16:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668011234;
	bh=Kf1Uav0Jvf3kL1HMfC7BCUlGrQ5MIRxDnA+H66XQ/5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TjTCYw+/Wyumyf0w26Wt7kXnhlh1kW5HbGJv1r8KFJc57mq3910Qbi+GHJ0FDgoKB
	 wCiKuxJZsKxna1qxv+dIA0jlAkV5C7hsXQL1c7Ynflo/UeG/JoeFc1VkwETxt1Xwtb
	 bcfXyS+7EE5odUQy2PiKJ92UVq/y6uZG9dygROwEINrS/fOE9ZzF+WlxCDSdQLvEof
	 1kbSxE+r4Qkdr1PZgG2V3eTj4n8xJQjRWDbpv+SOcxJx6PZYUd2ch9iDn3U/punK7Z
	 qTDFBLSIqDt2pdQLAo+2QzR+w9VMDU9GBZx++TO0nkZ4G8PRYPxXD1ca3mIZzfY8Uj
	 sEwyqTTEkr40A==
Date: Wed, 9 Nov 2022 10:27:13 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Y2vU4YAs5wmibcGF@ubuntu-x1>
References: <20221030110510.752996-1-PascalCoffeeLake@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221030110510.752996-1-PascalCoffeeLake@gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Japan (JP) on 6GHz
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

On Sun, Oct 30, 2022 at 08:05:10PM +0900, CaffeeLake wrote:
> Support 6GHz for JP Region.
> 
> The Ministry of Internal Affairs and Communications has approved 6GHz (5925 - 6425 MHz) in Japan.
> 
> Source: https://www.soumu.go.jp/main_content/000833682.pdf
> 
> Signed-off-by: CaffeeLake <PascalCoffeeLake@gmail.com>

Sorry for the slow response on your patches.

This patch conflicts with the other patch you sent for 5 GHz. I can
easily reconcile the conflict in the rules, but I cannot read the linked
documents (and machine translations is not proving very helpful). I
can't tell if the link in this patch supersedes the link from the other
patch, or if they are complimentary and should both be kept in the
database. Can you clarify, or else resend both as a series with the
second patch based off of the modifications from the first?

Thanks,
Seth

> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index 012824f..96527c9 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -907,6 +907,8 @@ country JO: DFS-JP
>  	(5170 - 5250 @ 80), (23)
>  	(5735 - 5835 @ 80), (23)
> 
> +# Source:
> +# https://www.soumu.go.jp/main_content/000833682.pdf
>  country JP: DFS-JP
>  	(2402 - 2482 @ 40), (20)
>  	(2474 - 2494 @ 20), (20), NO-OFDM
> @@ -914,6 +916,7 @@ country JP: DFS-JP
>  	(5170 - 5250 @ 80), (20), AUTO-BW
>  	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
>  	(5490 - 5710 @ 160), (23), DFS
> +	(5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
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

