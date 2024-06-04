Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 473FAC25B78
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Jun 2024 09:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBAZpKBJMEQJW5pOnt25m8oqXxOOt9atElAyJVXDdoo=; b=srcVXASniZ9srM
	4r6JJywl9oAPxYlJEmm/D21EZLG8RETxpUlAS/yElZjA9ASR3TZddT24EiXiZGWlXOLL3ZHEDuRWs
	Wqu6d5I8qLZJF7NCE7rHLvXLWn3Ms+vUgQU5aQPTNAeoWzm3OKhP51VoDStisoBZEVeJHi/T1FLQJ
	BjwwrvQ2Gm4Re63x7/39IlTkm5kgKMAOI/6bsl8EhnwZsx5GKyUYAbyyaLJdu9lbezTvkUcm1mhHh
	07S0A2JWr1vAwD0VL1UloLN5QcNLfpxMiCJrZt+I1eI4Glzyu8gPe9//mEvQN5mPgMqg33VYq4FtC
	YKXKkfZxn9Ecbm72Vbmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEQlJ-00000001v7N-1gWP;
	Tue, 04 Jun 2024 09:47:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEQlG-00000001v5r-0aGC
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Jun 2024 09:47:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6F08E60F13
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 09:47:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23244C32782
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 09:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717494441;
	bh=gV/s0gTHzfrAqjPHGzD+HluRoVjakFEe5wjs/8B7mOE=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=RVtSci9ckfBFt27p6qn+ZfXa6x5u5hbApNj+bffcsTnLYYDqt47tkRgZ9zwMUKWsC
	 fZbaOoS/lgByqOVG7OPsIcjmuZDVWOnc2LxKX7/r5RUCyIWd1iZaCbe5nVD8xgyL4f
	 nGlHPm3GhJFbXefl4fuxBqK01zj7QIPlgL9j9Tr8Q1ZkcdYe5A32FYGoHV9jIa/ZKj
	 HlxZKRq6LDWk5vjbmBPu5Ez4mT2UisPval5x4t1GTKAt9holVL3Fy2Gdg1eu91d1qO
	 opbcwhXzWpkDlxGK5eVH5X3VF236TGLsOJLEW2+c2h5JRnZR/f2w87I9I2JMNohPRm
	 yLkOKnaH51qQg==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e95a1eff78so70308251fa.0
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Jun 2024 02:47:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWFuevPyBWtyIZMxiM078k8wOnPeoIUKRo3lPjSOvPLBAquTHF+TNLf7douQ4+FEYzqlqDzXprUoWB/dNMCGUgz9I6Y8sw8WZ5qNC1GBw/xo3gq
X-Gm-Message-State: AOJu0YzMJTuDVV0vIXvGhspg8MCcb+ZG7YyMj5qI4LGuZZ8AOeiklRaN
	jq7dvmtWgIl2/vnU9dxVSfbCrB7uVQIqJSbmMP6vPaRtEKH7duN0lIlgFYFT6AV2+zZWCm37yLX
	JV4uHcAqzp10tJtzXmGy31AnClKo=
X-Google-Smtp-Source: AGHT+IEJUzjVtKnXfAvlrJA7Ti0ZbA+DMweV3NWxNJZ+e8ablHroJuHc4uxh+VerEFIm5nTfKwinDS4a2iRIOLQLD68=
X-Received: by 2002:a2e:8e6f:0:b0:2dd:cb34:ddbc with SMTP id
 38308e7fff4ca-2ea95202c06mr80818131fa.48.1717494439507; Tue, 04 Jun 2024
 02:47:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240603060558.98791-1-pkshih@realtek.com>
In-Reply-To: <20240603060558.98791-1-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Jun 2024 17:47:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Q_MRBUEU=M5M_74dr0JOKnRgGECZrR6uSecTdHaN1WQ@mail.gmail.com>
Message-ID: <CAGb2v65Q_MRBUEU=M5M_74dr0JOKnRgGECZrR6uSecTdHaN1WQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] wireless-regdb: Update regulatory info for Malaysia
 (MY) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_024722_239865_68504813 
X-CRM114-Status: GOOD (  13.67  )
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
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

On Mon, Jun 3, 2024 at 2:06=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> wr=
ote:
>
> Malaysia Communications and Multimedia Commission announced CLASS
> ASSIGNMENT NO. 1 OF 2022, which page 11 describes frequency bands
> 5925-6425 MHz are used with conditions of 25 mW EIRP for indoor and outdo=
or
> use and 200 mW EIRP for indoor use only.
>
> [1] https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-sign=
ed_19012022.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>

For the changes in this patch,

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index f27dd5214630..adfcce15e3a7 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1294,12 +1294,15 @@ country MX: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signe=
d_19012022.pdf
>  country MY: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (24), AUTO-BW
>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>         (5490 - 5650 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (24)
> +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>
>  country NG: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

