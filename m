Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=kPSy5++7iQUg95zpI92Sjys8t4VVObRvLVuolUS6Xno=;
 b=VO/U1hshQLW0UQ
 noHaiBd/BwriTlV3XCO7QS4ioCTtueune2pdXXZxgtUO7NVrY8UcnqCiEeDKLMaGpvFGu/mA4fDuO
 ddMriStPLd4S7lECXnQaq/QfVuSmOJmHV6LqSMR9zh7OrOuc1YE4Okhaw6xo1/rl2bcNZbPAhYvIQ
 vJpzS13Ofbd1riT8J43gNB6orTkGQyWXOeCQhr1GJw1QcPCE6ILT9Zj3KltGtC8QgUQSFKu23cja4
 duOQulYMx8SL+Qm3MOEz7ept/EcDHeBqjy6g7qSJGCrWZo96om/hN7mPc8IW5lJHJZPzzlerl1bJt
 Gzd+V8aiX31XqotjGG/w==;
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKUw-009Ngi-Lb
 for wireless-regdb@lists.infradead.org; Sun, 27 Feb 2022 14:26:08 +0000
Received: by mail-oo1-xc32.google.com with SMTP id
 189-20020a4a03c6000000b003179d7b30d8so14887233ooi.2 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Feb 2022 06:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google; h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nCSNjW6GLQs6x2LHKD7pNvu0A8Xsd9UJz/bVYAIE2yQ=;
 b=l05ilw6s8RWKQXvTRXU/uswaTQdy4cLK2OrxAzhOhu/rmUHoaUlrNrXBH4aC/84xQ5
 zstguE3KEu2FCBtgVEU5QA4EKHkyxDfTQCFzyhWGe++Fl4knP7l/trAi30/zZIVHMzvJ
 N5HIocJIMLvkgW3DF2gYS4HM/eK1CBeyehpxsvL/sgCLgc3f2/9xqAy4WQnp98BLc4nc
 hDD+HjC0UrshfSU/XQnjNRGKdQWUU6OFMCHxJOEVrlaBUPJ/HRDbvkf4tdyIQwZ0Ag0H
 vsxOGPmenqbZmPNwQLr2gom/s4DviNl6T4tQJgk1SbHZr09kRiVIA60OR11z+H6VpdTF tA6A==
Date: Sun, 27 Feb 2022 08:26:04 -0600
From: Seth Forshee <seth@forshee.me>
Message-ID: <YhuJ/PsGjRQ2XvSR@ubuntu-x1>
References: <MwMNV0b--7-2@tutanota.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MwMNV0b--7-2@tutanota.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Israel (IL) on 5GHz
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
To: roman.kunz@tutanota.com
Cc: Wireless Regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Feb 20, 2022 at 02:46:13PM +0100, roman.kunz@tutanota.com wrote:
> The Israeli Ministry of Communications has published an updated
> revision of the normative radio band allocation table on 2021-03-29.
> Notable change is the expansion of the range of allowed frequencies
> in the 5GHz band.
> 
> Signed-off-by: Roman Kunzman <roman.kunz at tutanota.com>

Thanks for the patch! Unfortunately there's a formatting problem, and it
won't apply as-is. Did you generate the patch with git-format-patch? If
so, it may be a problem with your mailer; in that case you could try
sending it as an attachment.

I also have a couple of comments/questions, below.

> ---
> db.txt | 9 +++++++++
> 1 file changed, 9 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index d45ec08..e107933 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -777,10 +777,19 @@ country IE: DFS-ETSI
> # 60 GHz band channels 1-4 (ETSI EN 302 567)
> (57000 - 66000 @ 2160), (40)
> 
> +# IL: Wireless Telegraph Regulations (type approval) (2021)
> +# IL: published on 29 March 2021 in KOVETS HATAKANOT No. 9301.
> +# IL: https://www.gov.il/he/departments/legalInfo/telegraph_law
> +# IL: official document (pdf): https://rfa.justice.gov.il/SearchPredefinedApi/Documents/IdngyMn~ojdQSrkxuAqfZqiM8c1foi3TSZQhp7OMszo=
> +# IL: also available as unofficial word doc: https://www.nevo.co.il/Handlers/LawOpenDoc.ashx?id=199708
> country IL: DFS-ETSI
> (2402 - 2482 @ 40), (20)
> (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
> +	# Table B List of conditions, row 63, indoor short range device without TPC (ETSI EN 301 893)
> +	(5470 - 5725 @ 80), (500 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> +	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
> +	(5725 - 5875 @ 80), (200 mW), AUTO-BW

Machine translation isn't working well for the document, so I'll have to
rely on your reading of it. Is there some limitation behind the 80 MHz
max bandwidth restriction for 5470-5725 MHz instead of 160 MHz? 

We don't have AUTO-BW elsewhere between these ranges, and I'm trying to
remember why. Having it would obviously allow use of channel 144, and I
can't recall a reason for not having it. In some cases we've fudged the
boundaries where 5470-5725 is the more restrictive rule, and GB has an
exception carved out for 5725-5730. Neither of these is true for ETSI EN
301 893 though. Maybe someone else will remember a reason for not having
AUTO-BW, but if not then it seems okay to me.

Thanks,
Seth

> 
> country IN:
> (2402 - 2482 @ 40), (20)
> --
> 2.25.1
> 
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

