Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=cbaBEuyFnawNux+DhN7vAjJWJSM/f6RsVVV67CjkZZs=;
 b=HaxCKlrlnNyA6x
 L6824/L9foD7UdPusa0esXmaiSV6is8uOMDmCRz/c1MRy0NluXEfUkem7TNmrLkcKo9Z0F2nWn0TC
 9ZiTpnxfngWkWOvFy0P02dxEem6I1a7WpcYWFem6+VPFL0ii5LVA+MZOhgp18reC4GOW/ow5Q3V18
 JXqqNLvHC0qoqlcikcCYZwyTKdgMn1gJbPtTJF/MH/WBOUeVW/vXmNPGVQi8F11IgVJmhGb7xUdCv
 LtnrtjUVKr7wc8re+fSFlZRfkU1SSzmic/inPq2+YO5bepvyUs7D/z1SeVhKXtKgfyo8rCYJufc4s
 TCIZGK2HPl1wzyijvtig==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EnS-0001E9-E8
 for wireless-regdb@lists.infradead.org; Fri, 23 Aug 2019 19:00:28 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1i1EnO-0002d9-Jn
 for wireless-regdb@lists.infradead.org; Fri, 23 Aug 2019 19:00:22 +0000
Received: by mail-io1-f71.google.com with SMTP id e20so12208812ioe.12 for
 <wireless-regdb@lists.infradead.org>; Fri, 23 Aug 2019 12:00:22 -0700 (PDT)
Date: Fri, 23 Aug 2019 14:00:19 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190823190019.GZ3071@ubuntu-xps13>
References: <1564427246-25592-1-git-send-email-hanipouspilot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564427246-25592-1-git-send-email-hanipouspilot@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update regulatory
 rules for Russia (RU) on 5GHz
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
To: Dmitry Tunin <hanipouspilot@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jul 29, 2019 at 10:07:26PM +0300, Dmitry Tunin wrote:
> Russian entry is incorrect. According to the last regulations document of Feb 29, 2016,
> 160 MHz channels and 802.11ad are allowed.
> 
> http://rfs-rf.ru/upload/medialibrary/c1a/prilozhenie-1-k-resheniyu-gkrch-_-16_36_03.pdf
> 
> Note that there was never a DFS requirement in Russia, but always was
> NO-OUTDOOR on 5GHz.
> Maximum power is 200mW that is ~23dBm on all 5GHz channels.
> Also Russia has never been regulated by ETSI.
> 
> Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
> ---
>  db.txt | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 37393e6..d95ed5e 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1097,14 +1097,12 @@ country RS: DFS-ETSI
>  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>  	(57000 - 66000 @ 2160), (40)
>  
> -country RU: DFS-ETSI
> +country RU:
>  	(2402 - 2482 @ 40), (20)
> -	(5170 - 5250 @ 80), (20), AUTO-BW
> -	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -	(5650 - 5730 @ 80), (30), DFS
> -	(5735 - 5835 @ 80), (30)
> +	(5170 - 5350 @ 160), (23), NO-OUTDOOR
> +	(5650 - 5850 @ 160), (23), NO-OUTDOOR

Based on the translation I've read of the document you've linked to as
well as a couple of others, it sounds like the use of these ranges
requires TPC. Since TPC is not supported in Linux, we need to reduce the
max EIRP for these ranges to 20 dBm.

While modifying them, let's also update the 5170-5350 range to 5150-5350
to match the regulations.

Thanks,
Seth

>  	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
> -	(57000 - 66000 @ 2160), (40)
> +	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
>  
>  country RW: DFS-FCC
>  	(2402 - 2482 @ 40), (20)
> -- 
> 2.7.4
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
