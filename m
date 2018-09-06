Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=9FA9h/B8q6+XES/aDc+dfSZfaM7oluDEq35ew8FG3Ok=;
 b=SZbkDBGHxoBJ/d
 kLlbT9PE95oiWiR1AJFFjCcf2SCJxltanlkfBI6mZL8IogJOUq/R/Lh42rxEtMvKJTrvSbAC2v7pz
 AFENBUN+hWLBZe0kvhgUBGZrMSkYj5L3OeK4nKKCYuTrnqLa6cbOMI+FU5TXy/FWZkJ8dJPr7Mxme
 jzPwdw2x4EM13nHvp+t6SbigU+ke+DvR0xFHz1Lxq2DoefKIi8Ey739+2GEX8Eq8X56tAhqT/p+Kh
 QJ0k+KvHdUAh1kcr1WjJXPJViHmcGvIsGoq88YH5Yjp0J/zCpzVzXgUXkQARbnVF4+YO6dezuJ5g6
 B6+313u0UvgjcFEyKGTQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxu0r-0001Go-J5
 for wireless-regdb@lists.infradead.org; Thu, 06 Sep 2018 13:07:59 +0000
Received: from mail-yb1-f199.google.com ([209.85.219.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fxu0g-0001aS-2Q
 for wireless-regdb@lists.infradead.org; Thu, 06 Sep 2018 13:07:46 +0000
Received: by mail-yb1-f199.google.com with SMTP id m9-v6so3810951ybm.20 for
 <wireless-regdb@lists.infradead.org>; Thu, 06 Sep 2018 06:07:46 -0700 (PDT)
Date: Thu, 6 Sep 2018 08:07:42 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180906130742.GF4251@ubuntu-xps13>
References: 
	 <CADyz9cHb+T3dTfQGShs3oHiZagQDdJP8LRKwmWPzp1fD_EPxag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADyz9cHb+T3dTfQGShs3oHiZagQDdJP8LRKwmWPzp1fD_EPxag@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Finland (FI) on 5GHz (SRD devices)
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
To: Jukka Pirinen <jukka.pirinen@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Aug 28, 2018 at 01:32:25PM +0300, Jukka Pirinen wrote:
> Viestintävirasto 15 AM/2018 M
> 
> Section 10 Non-specific short range devices
> https://www.finlex.fi/data/normit/32670/Regulation_15AM.pdf

Thanks for the patch. It looks like it should be fine to add that range,
but there are a couple of problems. First, your patch has tabs replaced
with spaces and so it does not apply. Second, you must include a
Signed-off-by tag as specified in the CONTRIBUTING file.

Thanks,
Seth

> 
> 
> diff --git a/db.txt b/db.txt
> index 8cf7dee..7abb064 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -460,6 +460,8 @@ country FI: DFS-ETSI
>         (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>         (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>         (5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
> +        # short range devices (ETSI EN 300 440-1)
> +        (5725 - 5875 @ 80), (25 mW)
>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
>         (57000 - 66000 @ 2160), (40)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
