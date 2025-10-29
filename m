Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA34CCF9EA
	for <wireless-regdb@archiver.kernel.org>; Wed, 29 Oct 2025 01:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VPtSj0fFIMDGLS2SgZPTTrJVOWKnJmdwr1FL7j6l5NA=; b=IvGhaRpXgt+785y+zIiT6/awyk
	PUUCyl2bJFqEGVcLp/tvWael3mMSFt18ybBL+O0mqPB6CKBPyPmr/qqFcrncNsHjhwbhAFSN7dJls
	Y6N6FSftJXnLwolR3NdNb2wDCh93Xu99mEHIZflfs85j/knr5WSkXDSgSpE9AZEv5SQLoO3kyGtoQ
	46UpvLNLeAiouHN6J0qNJnjMxOuz7uG9DmnqD8oWEfl+qfEvCXIEMNsB/J9qfR3SlQknqxCvQ+5Vo
	iw3N6F2l+17CZ2yO6WD2vwjaBroCKLjopR6xOpBDvTKqPR2nyg8EAHCFmP2IXQ9dTa8Tfe+RfDuJM
	hpG4AAOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDur3-0000000Gun8-1pkR;
	Wed, 29 Oct 2025 01:20:01 +0000
Received: from mail-vk1-xa2f.google.com ([2607:f8b0:4864:20::a2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDur0-0000000Gum7-1ERn
	for wireless-regdb@lists.infradead.org;
	Wed, 29 Oct 2025 01:19:59 +0000
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-556a4b387c8so219198e0c.3
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Oct 2025 18:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1761700796; x=1762305596; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPtSj0fFIMDGLS2SgZPTTrJVOWKnJmdwr1FL7j6l5NA=;
        b=HkGsLO7l5tKmkol+UkB6BPUBwsYFmxGCXilOmM5M7bj/kQu1oC9qpjficCNDfxImsV
         m+ef8RXeV7fFoczRUJmDJFpa3RxWz1Vo/ymjYD3gUe9RTkQY0usWG03xUk47TOxVy5rD
         LJu4IVVIwKd25b/rLw5AiUxAcVsvofCh1gFtI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761700796; x=1762305596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPtSj0fFIMDGLS2SgZPTTrJVOWKnJmdwr1FL7j6l5NA=;
        b=XrN8a2YVre6ssSna7NxWYkcJ9tBSfXT+iKt8dXycu7FRlK+H0hYx3Htd36C44yRt6x
         EDnmiyyxZ/8MEznhN0TBFz+IN6ztTJaZhPezM4W4pCnGm7MdMRqUIg5Q9q9mvX/bKIk0
         dPkR2UUTR8U9ERWihr9/zHQWz2o5JGae2+70G5ONLi3UURfU1HG0oqMhdkSpT8PzHPdV
         ZtbNlu/h3w2dXVknmCORUG3VdjG1Lw42baAgkTB6hyBBN5JMyUMnnBTLojrrCwUKKQDJ
         hxInik50jcw/sCXq3zZwIqFGd6y6jHV5ow2xVk4e+WWwxmfEvARJYOn4rbeelZyzk9nz
         1IzA==
X-Gm-Message-State: AOJu0Yyp3XS5iZ8497WUtLeoCOIlJVXMI6yCtrcqSUHq7gRSl6sUQNgZ
	4eMRnUta9sNbywy1iT0a3HY1q1aJajxIYWeFppTBLFuf5HwNvQBytrWyIOZnsO+ihyNB25jg+UN
	FuUDk33GOiBadiWArxdwYINfIV6ykUR8O6SSp0o78
X-Gm-Gg: ASbGnctvno9mwJImA5z5PpR/SWXw6WGbDrjt5vN07VwnQZ691rFIiP0eYEcoi5AQrBh
	a6KrZRkctdHbFoyFp6rGpWiJo2wDr5COVWG2m0mA7YZBySQ+D+QQWnnBqCnsd5MP+FrI75X9rID
	Em9efsDM/ANl/Q7/g2ljxnkYSH7CKq/htcCMzY2XrDUbSqU9eI9xCCgkO9s8is2kxDpzp4EO/6x
	MsMdpvcZVU8kYsghqEwvpcwOqcFN/NsgAy0LdyY+4z7DohpMU9q9ZAatEuvlKbFwfVbypOYZona
	xDzRx68zENs0wZa6h6OjuzE8mtel9QCw7oh4qKhbTpS2gjw=
X-Google-Smtp-Source: AGHT+IEcdaslXY3XsuAHL1V0660dEzO5GpCdSU7baZ/FcwUTmpsk4TTFsV3icbvkERgoYsCYEUelpyceBhYyUCP1E8U=
X-Received: by 2002:a05:6122:e017:10b0:557:d141:6e63 with SMTP id
 71dfb90a1353d-55813ecb474mr124998e0c.0.1761700796551; Tue, 28 Oct 2025
 18:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <20251028062841.49216-1-me@ndoo.sg> <20251028062841.49216-2-me@ndoo.sg>
In-Reply-To: <20251028062841.49216-2-me@ndoo.sg>
From: Andrew Yong <me@ndoo.sg>
Date: Wed, 29 Oct 2025 09:19:40 +0800
X-Gm-Features: AWmQ_bnrtVb2ugEjs_y9339JYSOl7LErC8e8dRjh8t7Df7Fxt7Ciyfiw_9lQvMg
Message-ID: <CA+yTfBCmq-Xvn4XDPXvQpruUJ4rFbN9LzF3St8-mvnYCgkUm_w@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Malaysia
 (MY) for 2024
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_181958_345766_8AB35B72 
X-CRM114-Status: GOOD (  13.66  )
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Dear all,

Kindly DO NOT MERGE as I have found that there is a superseding document.
https://mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-2-of-2=
025.pdf

I will send a new patch series accordingly.

On Tue, Oct 28, 2025 at 2:28=E2=80=AFPM Andrew Yong <me@ndoo.sg> wrote:
>
> Malaysia Communications and Multimedia Commission announced CLASS ASSIGNM=
ENT NO. 1 OF 2024[1].
>
> With reference to class assignments on page 10, and Power Spectral Densit=
y (PSD) limits on page 20, update the following rules:
>
> 2400-2500 MHz: Align previous 2402-2482 MHz rule to class assignment
> 5150-5250 MHz:
>   1. Align previous 5170-5250 MHz rule to class assignment
>   2. Mark as NO-OUTDOOR
> 5250-5350 MHz:
>   1. Align previous 5250-5330 MHz rule to class assignment
>   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calcula=
ted at 20 MHz channel width
>   3. Mark as NO-OUTDOOR
> 5470-5650 MHz:
>   1. Align previous 5490-5650 MHz rule to class assignment
>   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calcula=
ted at 20 MHz channel width
> 5725-5875 MHz: Align previous 5735-5835 MHz rule to class assignment
> 5925-6425 MHz: Increase EIRP from 200 mW to 250 mW (remains within PSD li=
mit of 12.5 mW/MHz)
>
> [1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment=
-No-1-of-2024.pdf
>
> Signed-off-by: Andrew Yong <me@ndoo.sg>
> ---
>  db.txt | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 1d17271..3df9c41 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1450,14 +1450,16 @@ country MX: DFS-FCC
>         (5925 - 6425 @ 320), (12), NO-OUTDOOR
>
>  # Source:
> -# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signe=
d_19012022.pdf
> +# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-=
No-1-of-2024.pdf
>  country MY: DFS-FCC
> -       (2402 - 2482 @ 40), (500 mW)
> -       (5170 - 5250 @ 80), (1000 mW), AUTO-BW
> -       (5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
> -       (5490 - 5650 @ 160), (1000 mW), DFS
> -       (5735 - 5835 @ 80), (1000 mW)
> -       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> +       (2400 - 2500 @ 40), (500 mW)
> +       (5150 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR
> +       # 5250 - 5350 MHz regulatory limit is 1000 mW, but 200 mW reaches=
 the PSD limit of 10 mW / MHz at 20 MHz channel width
> +       (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
> +       # 5470 - 5650 MHz regulatory limit is 1000 mW, but 200 mW reaches=
 the PSD limit of 10 mW / MHz at 20 MHz channel width
> +       (5470 - 5650 @ 160), (200 mW), DFS
> +       (5725 - 5875 @ 80), (1000 mW)
> +       (5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
>
>  # Source:
>  # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
> --
> 2.50.1 (Apple Git-155)
>

