Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=5R+a+DnhJWrmMANVbph4U5y30BaieTX0Oj7P4qsW9JQ=;
 b=OHFRpstUDSdlMO
 6wphIUhHGNUH9Yriv82hH3arfnN+ia4uJwhS05x1MDiyn+A2BsJX1OGk1KiNZ0xjrmG2dZ6odgQYj
 CXpUr2yrjUXNepb2ERmwwh0mifbu8aXPq5bZ7KYcwrDRLRGZcWaV17QHIfG/7pzgxBxyilIeE9/gU
 yNUmOQk3valJGc2qu5Zeaqv5K+4DuuhaWIzt5t/9OmXlhYfHkAMYBdH2pjkiS9gHO7FOqP4KU17Kc
 uvJ0UnKTQemeMhRSoMy/ZQRHqNAcCWHBauehy1TGht+xFfA9QLOOlYJuBSu69K6znBr8t6FW/gbBR
 gNOCJK299iNxJhhwaQfA==;
Received: from mail-io0-x234.google.com ([2607:f8b0:4001:c06::234])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dkceA-0000uE-AE
 for wireless-regdb@lists.infradead.org; Wed, 23 Aug 2017 20:53:08 +0000
Received: by mail-io0-x234.google.com with SMTP id c18so4585755ioj.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Aug 2017 13:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=9wD3EuAOrqOuf0N8PsXHn3A5EF3k7KjCvHdC66zsfM8=;
 b=Vd0DcAtjU1C8WPnkp62jyXiMPA64uAve3N9I+ZhdcYD+xNapuXKNpWSQsP0QAHxDZT
 IX7ytk9eolTDGAons0jgEnHRmUA6IZLKB8iH47fwjGn2GgSf6pH710qWxzYnUtHfOvSL
 a1CM3wHIbYi9Te0mVfSKfK8Qf3ikjCkpngoyhQUq7iHVPn06LIimunaZuVbowp0EhjLC
 mA3GQuir+y4xL9hj1LQlTMMp5+ZIxq72TFlcg/ZvTwELREHgLqk5Hu3x8AHV9Stcl3n/
 uZVRtQrsQRZONxntjQPsOZmdZQ4DhFcdqJE74D0D0fAkwB0xBmMG2PbttPdP9ebM48iK
 MT9w==
Date: Wed, 23 Aug 2017 15:52:40 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170823205240.ycyrszsvjugtosdi@ubuntu-xps13>
References: <20170807081950.13327-1-sven.eckelmann@openmesh.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170807081950.13327-1-sven.eckelmann@openmesh.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Singapore (SG)
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
To: Sven Eckelmann <sven.eckelmann@openmesh.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Aug 07, 2017 at 10:19:50AM +0200, Sven Eckelmann wrote:
> 2.4GHz and the lower 5GHz band can now be use with up to 23dBm. But the DFS
> channels in general require TPC to be usable. Only 5150 - 5250 has an
> exception which allows the use of it without TPC when reducing the power to
> 20 dBm.
> 
> Signed-off-by: Sven Eckelmann <sven.eckelmann@openmesh.com>

Thanks for the patch, and apologies for the slow response. One comment
below.

> ---
> Please check this twice because this is my first attempt in converting an
> official regulatory document to an wireless-regdb entry.
> 
>  db.txt | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 0bc068e..df30f37 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1078,12 +1078,17 @@ country SE: DFS-ETSI
>  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>  	(57000 - 66000 @ 2160), (40)
>  
> +# Source
> +# https://www.imda.gov.sg/~/media/imda/files/regulation%20licensing%20and%20consultations/ict%20standards/telecommunication%20standards/radio-comms/imdatssrd.pdf?la=en
> +# page 12-14
> +# The EIRP for 5250 – 5350 can be increased by 3dB if TPC is implemented.
>  country SG: DFS-FCC
> -	(2402 - 2482 @ 40), (20)
> -	(5170 - 5250 @ 80), (17), AUTO-BW
> -	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
> -	(5490 - 5730 @ 160), (24), DFS
> -	(5735 - 5835 @ 80), (30)
> +	(2400 - 2483.5 @ 40), (23)
> +	(5150 - 5250 @ 80), (23), AUTO-BW
> +	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
> +	# 5470 - 5725 is only allowed when TPC is implemented
> +	# (5470 - 5725 @ 160), (30), DFS

I'm not sure that the lack of a specific provision for operating without
TPC in this range means that it cannot be used. As I understand it, TPC
would only result in a reduction in EIRP of 3 dB, so as long as we use
a power limit of half of the maximum allowed we will be safe.

If this is incorrect I'd appreciate it if someone more knowledgable on
the topic could chime in.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
