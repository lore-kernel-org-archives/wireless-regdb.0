Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=vh+Sq3X+XrMJIWx7x8fqo2qRKroCqpk1J5Hxc/qkDKo=;
 b=a7eWeZXqAj92eo
 igqSpMJCZCx7AGOu0A7ZVhxvc6CdlUrbbGPzhEh1kTaYK7CeyWAPuMw8Wvw3vLiivzQxDjNp0Owbc
 IeDKJX6Usvmx+IvmZi3Otexu85abMQYHMURtmrwKipiVT20Q1uO7xlMVJbod86znzCxyh9YjabSRX
 /VUi+Ah94gFHq5SPDK87LiF+f8TeFeEMxmKH4p8CAF6LMoKmZJ/JnqDCa0hNhIl+iArcHZFVA9Qlh
 9i/b1RnnDQZgY4DZLP5+D/24KdCQsNlqMl4pXmKrXAyWqxnGywAPRly/71eSQ0OevFaVVdVGPnKFg
 DQWynyYM1HA+V6gQVK8A==;
Received: from mail-ot0-x243.google.com ([2607:f8b0:4003:c0f::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fFXn8-0002Po-0x
 for wireless-regdb@lists.infradead.org; Mon, 07 May 2018 04:30:27 +0000
Received: by mail-ot0-x243.google.com with SMTP id g7-v6so30543982otj.11
 for <wireless-regdb@lists.infradead.org>; Sun, 06 May 2018 21:30:13 -0700
 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to :cc;
 bh=CZWQMH0GyRpgyAamJL+pcr/lt5es98Tgx2+h8WddBic=;
 b=Uny1NnwxrL8Nynyez9g8Lj2UsBGDk5imX2OyFXgkmRKeQ2hap35yTwAiNocljjEmZQ
 BRiDNMeW5MufVjSIPt4ymA0gDATvyHtuyQrY+35taZUFSIcvypTk30sFUPouxsHovk7N
 39JOQetyy4F7cTALcrw5w3hEV/jKUEvwkEqUvF90iQmBz/Sfnd1YH/FPa6A/wEnWSPlg
 7V47HMj/vE3yxx28pFgS5gt8bzacr7ih/Bvja6UERAaFkGQQz/1Kxch4zXnH/bC0F+MZ
 o6E3Upqk7Vkdg8rz5AUB842MCniFHoSQMmTyyQELyGHLQs+tCP2rc6YyIwrqLuZlSZun ZJNw==
MIME-Version: 1.0
In-Reply-To: <20180501201600.29126-1-seth.forshee@canonical.com>
References: <863d1ab01d8e45b9a16d53e56ec6c5a0@NASANEXM01E.na.qualcomm.com>
 <20180501201600.29126-1-seth.forshee@canonical.com>
From: Faisal Wiryasantika <faisal.wiryasantika@gmail.com>
Date: Mon, 7 May 2018 07:30:11 +0300
Message-ID: <CADGYwvD_j+mF9afCwUeF9nWHNptX=ngg2+8Wkbwt9-t8Yy-BqA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for QA
 and add 5 GHz and 60 GHz rules
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
Cc: Michael Green <green@qti.qualcomm.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Thanks Seth & Michael.

Will it be affected immediately in the database? One of the mobile
device manufacture said to me is not updated yet.


Best regards,
Faisal Wiryasantika


On Tue, May 1, 2018 at 11:16 PM, Seth Forshee
<seth.forshee@canonical.com> wrote:
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
> ---
>  db.txt | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 990abf997a12..153d837e6928 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1031,9 +1031,13 @@ country PY: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> -country QA: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5735 - 5835 @ 80), (30)
> +country QA: DFS-ETSI
> +       (2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
> +       (5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
> +       (5725 - 5875 @ 80), (100 mW), NO-OUTDOOR, DFS
> +       (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
>  country RE: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.17.0
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

