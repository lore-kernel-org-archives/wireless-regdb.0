Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=5MZ4yphQ+nv5R8YwAZp3a90q6CKEGgm1IW/z3gW/YXA=;
 b=bGwvrjvMhfxIF8
 YRsMjlrb+oaEXBloyk/xB9/ufOjZy1QWTXFUh/dMtmlOULiPqG2rHCDzvBy1Ayt1Myy+Uff8mQyAs
 Iw1huMy81sL27EUfKtazODILL7AFs17DZ8PHasE4CpUramOM2yLK+seZ9EPuQh/1nkPbiXiHWft4n
 TOkU5/KSEp88k8NsefMx3OWGA9MGJAv0RnpU40NQezG4O8hMLB2NHJdw3F/im7/tsNAm6Y6HWhFVE
 FSnN14rj2ywkzBC1cVBkjSpgvRj9b7bUJJvfwWTLpLYXg3uaPqt+d0FcLO+161XrezSSgsKa1Tunt
 EDbaaOZuH/MhA5zKnYEw==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrMgI-0032aq-0d
 for wireless-regdb@lists.infradead.org; Wed, 18 May 2022 16:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652891866;
 bh=QTbK/2IznBPfqUOaYkRi7Lzp+0TDxudbTxkk0+gtxdA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mN8NhLhjtY+cSlHRuVLWEaUULv9hF4P8Yx+bNbrznbkQrtkbcUbWhpIU53m3xrv0H
 Q37rcvrMky2GvN8UFsz8s+9mQLOFhi52wlyZXDaokLgw6tv2p1XaFsRr0jNI4BQUWl
 mOcJV3soUQqPrPl4fkBJ6Vk82JxYO54axu73PjlomRjJ8ym5m4iw69HvtV+cRzo+hH
 soeATfLrPOhBojZ4vm9AvyRBtfibBrFF+BRKuG/3lbJPbTzpayax8+/eE69z4jSyBX
 apGL26pJNy7VPhgPJ2utHETOrYOeEcJAl794HJ37ajxErAEObr+bHfQYC87KyYq8zK
 PF3eY7zwTzR/A==
Date: Wed, 18 May 2022 11:37:45 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YoUg2QiBxYIGRWp+@ubuntu-x1>
References: 
	 <CAPRryQp5b3eknS8vxq4kOGBSiZHn2=jy6E8hrbvACGKxJn1hLQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRryQp5b3eknS8vxq4kOGBSiZHn2=jy6E8hrbvACGKxJn1hLQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Regulatory update for 6 GHz operation
 in FI
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
To: Dennis Bland <dennis@dbperformance.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Apr 26, 2022 at 09:52:31PM -0600, Dennis Bland wrote:
> Add 6 GHz operation for FI:
> 
> https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
> 
> signed-off-by: Dennis Bland <dennis@dbperformance.com>
> ---
> diff -up a/db.txt b/db.txt
> --- a/db.txt 2022-04-08 09:54:37.000000000 -0600
> +++ b/db.txt 2022-04-26 21:44:39.000000000 -0600
> @@ -570,6 +570,7 @@ country ET: DFS-ETSI
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
>  #  EU decision 2005/513/EC:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
>  #  EU decision 2006/771/EC:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
> +#  EU decision 2021/1067/EC:
> https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
>  # Harmonized CEPT countries (July 2019):
> https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
>  country FI: DFS-ETSI
>   (2400 - 2483.5 @ 40), (100 mW)
> @@ -578,6 +579,8 @@ country FI: DFS-ETSI
>   (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
>   # short range devices (ETSI EN 300 440-1)
>   (5725 - 5875 @ 80), (25 mW)
> +       # 6 GHz band
> +       (5945 - 6425 @ 160), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI

I know we have AUTO-BW in this rule for other countries, but there are
no adjacent ranges, so this just seems to be a mistake that I didn't
catch previously. I'll do a patch to fix them all. I can either apply
this patch first and fix it, or you can provide an updated patch,
whichever you prefer.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

