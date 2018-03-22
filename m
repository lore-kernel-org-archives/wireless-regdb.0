Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=H/kHqUkHq2rpFd4BrYz+dLGFNlcEZlh+jXVJWbaq5Pw=;
 b=Cs0rlw+OrNBoCE
 psapaCx79L/rjrclrnNOZ7iFC7/+S1szilEUvj5HuDiP7LkKJNCYjXKmibK9fUvPZ0bd/lTIC3KJS
 BgTZJ6nHpbwwt9K5kGnJB4gV/79JUggmLazLHA53bIBSAibDGid3KBKPTB6ZvnZTW5Tl7Hg0aHKuF
 ZBBLxk8JVDTtC0bhfF8YMscUb18velfhFcu94jUBhQHGyG8Ia6hwkqWPdkRRd+2u8idbKAEgZcQfj
 2QE/rplwOsXCnstUAjmmyhxpSEwcOaDw1UwTbg89F/B41KAs5+1bDIx4QDF2B7ke26smOOq+WSt7W
 ryBOiDegVVudtOS0O02w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyzdj-0004L1-Hx
 for wireless-regdb@lists.infradead.org; Thu, 22 Mar 2018 12:48:21 +0000
Received: from mail-it0-f72.google.com ([209.85.214.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eyzdW-0003g1-0H
 for wireless-regdb@lists.infradead.org; Thu, 22 Mar 2018 12:48:06 +0000
Received: by mail-it0-f72.google.com with SMTP id k17-v6so7536584ita.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 22 Mar 2018 05:48:05 -0700 (PDT)
Date: Thu, 22 Mar 2018 07:48:02 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180322124802.GA3467@ubuntu-xps13>
References: <CADGYwvBNy4T4m5+i1km4cUPJd69NfxswqkHtUD=cOt3JrNXxgA@mail.gmail.com>
 <20180306090923.GH6547@ubuntu-xps13>
 <CADGYwvD5GgyC70FFtD3cOb+1QTbBJaU9khhYWNPtEk=qFVAZZQ@mail.gmail.com>
 <CADGYwvBiNhRGy8UCajV-k4qEjsFXftOUhhV+dmiC42nmFTpLuA@mail.gmail.com>
 <CADGYwvDJJUhZd_PzTAqZyX7RgRt22z49Gi=RfhZZNbugRkc-pg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADGYwvDJJUhZd_PzTAqZyX7RgRt22z49Gi=RfhZZNbugRkc-pg@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: add Short Range Devices (SRD)
 for Qatar
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
To: Faisal Wiryasantika <faisal.wiryasantika@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Mar 20, 2018 at 07:21:22PM +0300, Faisal Wiryasantika wrote:
> Dear Seth,
> 
> 
> diff --git a/dbA.txt b/dbB.txt
> index 990abf9..b28e654 100644
> --- a/dbA.txt
> +++ b/dbB.txt
> -country QA: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5735 - 5835 @ 80), (30)
> +country QA: DFS-ETSI
> +       (2402 - 2482 @ 40), (20)
> +        (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +        (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
> +        (5470 - 5725 @ 160), (200 mW), DFS
> +        # Short Range Devices (SRD) (ETSI EN 300 440)
> +        (5725 - 5875 @ 80), (100 mW), NO-OUTDOOR
> +        # 60 GHz band channels 1-4, ref: Etsi En 302 567
> +        (57000 - 66000 @ 2160), (40)
> 
> 
> Best regards,
> Faisal Wiryasantika

Thanks for all the information. I'm still a bit hesitant because
documents I find on http://cra.gov.qa/ either do not show these updates
or else they are documents for proposed updates. The letter you supplied
seems to indicate that the changes may have just recently gone into
effect, however I can't find any public information which says the same.
Do you know why the public documents have not yet been updated?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

