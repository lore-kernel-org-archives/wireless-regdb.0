Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=eWPh0D7Kw0j2UfOdoCMQq2hrOK446VzfBkm5f/1KdPw=;
 b=kX3+7KiYlG/6ZG
 L5MiHZe+Q/jxFYlK99rVt+MMurWn4yu27x8uoDU5VOj/g9Xp0vyNpeCZZ2lUE6Dlb63DJpRIg049n
 uN+iaF6lf38txGcR+x2kbAgqHAk+Juj4Wn1+QiSwBNWbXOX2Gi3zqIrGTN2bdIpHXqRWOTba2ie8V
 GRv0UCiHsn4E96SaXp/yWtx0XEaKTwbN0Qpqo0Omg4TRiuEGmFk/82q3R6NKGDB4HgVlUoTbXaLIh
 WkbAs9uqqybbqAyAfPM/W9wpeeT5b2eEO4QLq17ixjC6OXK24dIWAD3dbFbs37X5EdR6T2s8bF04m
 JFVfZdLG21MJ8JpUdQTg==;
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5K5f-00047V-0F
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 23:19:04 +0000
Received: by mail-pf0-x243.google.com with SMTP id e64so8204363pfk.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 19 Oct 2017 16:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=fKRGqhA/dsjysC9TqbuMgx0U8zpryUGyPLorqaCo+tk=;
 b=dafnMqZUXTrma1+lln/1R/aKIOCcfzC8OfRqjIMZqwBvbMEpQbe5/RLDF/a7qesE90
 evgmCRF64d2HUoVqc8l9VBEyxU5JpKbbngMjN6goqPqLoEl+EzGCOWzsRYPLMRggGto7
 4TQuxDBpyUEm9em663Oemue8NMsl3YM9i49YQgSOLJbvtro0c6dVAdKfqgR3lu/JcBFw
 WzPfXsDapNBpTke+pSOTACLLHQ6wv6DNR7369SfGH0ABnHJzRm8GpWqhIHiegbQ24Nrv
 bTDh3WGKOYx9JElitKzkrXM/F5BA+VgLXdUYHPqmey3kZzBnJTjYA/DUdqNrMmFsfVMX
 czjg==
MIME-Version: 1.0
In-Reply-To: <20171019213834.23127-1-seth.forshee@canonical.com>
References: <20171019213834.23127-1-seth.forshee@canonical.com>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Fri, 20 Oct 2017 09:48:25 +1030
Message-ID: <CAN+fvRZo6UtqDZN2Mhukx8EOiO+JcpSBvbM3RRka4kzscWjLDA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add 5 Ghz rules for
 Kazakhstan (KZ)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: =?UTF-8?B?0JDQvdC00YDQtdC5INCY0LLQsNC90L7Qsg==?= <wowz89@mail.ru>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This is missing the DFS domain, which is almost certainly DFS-ETSI as
KZ is in ITU region 1.

Regards,
Ryan Mounce

On 20 October 2017 at 08:08, Seth Forshee <seth.forshee@canonical.com> wrote:
> Add rules for 5150-5250 MHz, 5250-5350 MHz, and 5470-5725 Mhz
> based on the documents at [1] and [2].
>
> [1] http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
> [2] http://adilet.zan.kz/rus/docs/P000001379_
>
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
> ---
>  db.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index e48f9a619651..96d8fda44284 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -689,8 +689,14 @@ country KY: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
> +# http://adilet.zan.kz/rus/docs/P000001379_
>  country KZ:
>         (2402 - 2482 @ 40), (20)
> +       (5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> +       (5470 - 5725 @ 80), (20), NO-OUTDOOR, DFS
>
>  country LB: DFS-FCC
>         (2402 - 2482 @ 40), (20)
> --
> 2.14.1
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

