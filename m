Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=+5PCsGlOdwpx87BsQaZ2eAp8lnLCQdZqkjNrSYdb7MA=;
 b=HoTbPlnXKnfOJP
 aXFqTVYOwj0/QqxRQFjagpSPI8NQt4dnMil/SO/SU4eiBGC35XFSu+P+DH44KG0x1gLOFtwPch4/Q
 VZ2hy/1EwW5mB5nR64rB6WkTdcYAhjdTPxmvBx92IuGeIvN/7HPD2yZNwXu6MsgSGMleaWYtXBKLA
 /ccIrDlHfzkHIX1iwuS5ia09G524gFgr/QrPGDhLDTNzbcZTrV3R45lXCbL2q/qIP1iaNdR/MO3UC
 ddNxaQPMYro4ym5pXgJQBfkms0boFRpGffGU9pLSAIwDaFL1ZbdloboBV1tAYN77S/zQPqclA3+BD
 6lDWtgoRS35ly8GW42dg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuftK-000rSl-8X
	for wireless-regdb@lists.infradead.org; Fri, 27 May 2022 19:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653680696;
	bh=lXSksNhhxS6wVSQc8mjtMd3gxscsWFnEp9uTMt+wlfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RtEnNqE33DvOmVfBsIaLjt07zRjwlu5i+xg+W/hBltIlsDGp5O0VjgUJPW0/mmEGG
	 QkGacIsnTC0X146eiYXXKAbqvGwgAOYYw/bNY+M0SpWDtMV3FGe+IH+cmnBY8xGb8C
	 clOu+Y6METgvIdO6/2LKmUuttj5JJjrgjSBL0zJV87d6iAUcY2uMYoSowk17Ajztt1
	 +ETJK9NfbPTaZI8t7lMeJ5bEoo71k3aRq6xftIJI9O803+0AXw6FlhyC1Z7EhskxP4
	 B9Cajd/DfJjaOLRqzuzAFaQHcmLMpGfUvRbR04nIe6OPkykDS+eHID8b1SCosx17AA
	 GeNo52wCAJxHQ==
Date: Fri, 27 May 2022 14:44:55 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YpEqN6hwBoGIEuhb@ubuntu-x1>
References: <20220525133609.1740457-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220525133609.1740457-1-stijn@linux-ipv6.be>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update regulatory
 rules for Bulgaria (BG) on 6GHz
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
To: Stijn Tintel <stijn@linux-ipv6.be>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Petko Bordjukov <bordjukov@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 25, 2022 at 04:36:09PM +0300, Stijn Tintel wrote:
> Reviewed-by: Petko Bordjukov <bordjukov@gmail.com>
> Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
> ---
>  db.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index fcdc74a..0d24e96 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -219,6 +219,10 @@ country BF: DFS-FCC
>  # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
>  # BG: https://crc.bg/files/_en/Electronic_Communications_Revised_EN1.pdf
>  # BG: acceptance of 2006/771/EC https://crc.bg/files/Pravila_06_12_2018.pdf
> +#
> +# Amendment of the rules for free use of radio frequency spectrum
> +# (Изменение и допълнение на Правилата за свободно използване на радиочестотния спектър)
> +# https://dv.parliament.bg/DVWeb/showMaterialDV.jsp?idMat=168250
>  country BG: DFS-ETSI
>  	# Wideband data transmission systems (WDTS) in the 2.4GHz ISM band, ref:
>  	# I.22 of the List, BDS EN 300 328
> @@ -232,6 +236,8 @@ country BG: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	# I.43 of the List, BDS EN 300 440-2, BDS EN 300 440-1
>  	(5725 - 5875 @ 80), (25 mW)
> +	# WiFi 6E
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI

Applied, with a small change from 200 mW to 23 dBm both to use the same
units as the regulations and to keep the rule consistent with other EU
countries. Thanks!

>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	# II.H03 of the List, BDS EN 302 567-2
>  	(57000 - 66000 @ 2160), (40)
> -- 
> 2.35.1
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
