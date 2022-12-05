Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=aeVkh6z6ZR8MocWT+PrWq172m5iE3E9ISvgtNZEcAZk=;
 b=X4wdqBAJRaPZ2F
 YKUDGspKdlJJzllhp6iguj3iapDYeu9NMz8eMsGZbC6dHC+CkgzirrsJ9YBOzmdoNz687iSK7XL0X
 FZ4iL2/ph2VwoMnp3hq52nQUCyw2RtkiJgxazE09/OJDk+SFN7OM5+9LTeDpe+klfOhyxaNmixqpg
 PXlw/P7pkQkoaCa+PDdP/QuXQI8MSNVcWWoxNRYiTQ2llkGl+j364a3rb+y8/x2/lin+1ApR1DXJ3
 5SSmW8O2i+TFei2EtE7xmwPzzJoyUh6fHpskKZsFQfgmy9RXVg7zrHraQwqcUms+P8tA+enA3wtP5
 YJH+f2fEF10M3AbpSOoQ==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JdL-00B6aw-R7
	for wireless-regdb@lists.infradead.org; Mon, 05 Dec 2022 22:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670278095;
	bh=gHqtxLNinWHlwCLy2Fxuy4wHAPCR+sLgYbAsrBrnwNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c9Gn9u0XRw4YZzhpJ2snv19QxiKCQca0JVqEPJiL70BcZzaxs9RV1OG9tqtUvR7Kq
	 yJeEjCcKSrTpoRL9bSMOsIIB8HmK4VqrqPBhLwyrSdj2CpQVN0A8YI6e3x+ujG5yF/
	 M52q2+QUW75E2GZn4aGZueRntodSkrelTxlL0srZyzmNkHau0ON1TKBqANkf6QDU4I
	 LdnSwl96+792l2Wt3rBG3ZuSj3bmh7XVAVhgfPxc7fFkMtnGFcAI3sZlvI59yAJIQs
	 4+ATOeGwRqLF3/z1d6QnvsAHIjhVwiOjG81ayCZHnpVtgnbIoOvtJX2/0rF9h1Txn4
	 WMMEnC4zlntZA==
Date: Mon, 5 Dec 2022 16:08:13 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Y45rzTlZvlFrqao/@ubuntu-x1>
References: <20221122024550.11415-1-jk.shin@newratek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221122024550.11415-1-jk.shin@newratek.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add support for KR
 S1G channels
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
To: JUN-KYU SHIN <jk.shin@newratek.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Nov 22, 2022 at 11:45:52AM +0900, JUN-KYU SHIN wrote:
> The 917-923.5MHz band is KR USN 1 band, so follows
> the emmision limists described in part 8.4.4
> 
> The 925-931MHz band is KR USN 5 band, so follows
> the emmision limists described in part 8.8.1
> 
> Signed-off-by: JUN-KYU SHIN <jk.shin@newratek.com>

Thanks for the patch. I have some questions and comments, below.

> ---
>  db.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index 012824f..1b4fe11 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -950,7 +950,14 @@ country KP: DFS-JP
>  # https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205195
>  # https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205187
>  # https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000206568
> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000211335
>  country KR: DFS-JP
> +	# S1G Channel USN 1 (917 - 923.5)
> +	(920.5 - 921.5 @ 1), (10)
> +	(921.5 – 922.5 @ 1), (14)

I don't know anything about S1G channels in Korea so I'm curious -- are
these the only 2 channels defined in the 917-923.5 range?

> +	# S1G Channel USN 5 (925 - 931)
> +	(926 - 930 @ 1), (17)
> +	(926 - 930 @ 2), (20)

This unfortunately doesn't work. While it's possible to have both rules
in the database, to the best of my recollection the kernel only ends up
using the one with the larger bandwidth to set the power limit. So then
the higher power limit would also be used for 1MHz channels.

Thanks,
Seth


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
