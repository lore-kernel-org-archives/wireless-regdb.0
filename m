Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11BC9E83EE9
	for <wireless-regdb@archiver.kernel.org>; Wed,  4 Feb 2026 08:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaeOT4pUPMC/NvBvIrt3/1kGXwa2OrjGq4j3WKaP/vw=; b=QKwjYukZS2HMJJ
	lJzBOWyR36ZtmTQpZP319+L30MUywiu7Ads/IRxpO/4M3M8Jb2MpK/fBy+5YAcU7MGXECtInhEz8Z
	wtXKi6O4w3i9koV6wjIC4ZE+4035iU5WfnDkszs1X3UmbVLm7dnHJH3z0ePYij3nJXa/rn5tEHyKl
	D6TWqVA3TFep3PPr/gKVzXcr/a+8kYMM15HbzO8PrnqIsMNX/fnBLKNwknbyyaicZA8PrVf9LvHPs
	/MHHDiN59oFbUaZpYlIVxjjadKyDDfL4gSXurBAXmXe2hp1j6ubYtxm/rBo1UmtxySO6jrIDr1Oez
	/B/4MAmmVp3FPWb75frg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnXp5-000000084wp-3G3T;
	Wed, 04 Feb 2026 08:01:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnXp4-000000084wj-12B6
	for wireless-regdb@lists.infradead.org;
	Wed, 04 Feb 2026 08:01:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ACAFE600C4
	for <wireless-regdb@lists.infradead.org>; Wed,  4 Feb 2026 08:01:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63FE5C4CEF7
	for <wireless-regdb@lists.infradead.org>; Wed,  4 Feb 2026 08:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770192073;
	bh=jChZOFyfVAkUwehK2VPjnnIZgAsClarnWhSGFHek3dQ=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:From;
	b=JvlluKgqtqaLFtt0tbqlueAX8GrFqq1+/ponQsu40LI9EQg6iol6EBiJBWxoZIOzj
	 QbTe1XlqaQBnMLXND1Zkx3A5zJQGg8ozRfbvt6HS8PR9lp1nwzmmlchAZYW2nWUiqt
	 7fne3XdJaL9xpzCmBRKbwREM1WxJr9iUeP+HYX75WSPOWtNhY8nMdT/F+q7uK2UG22
	 YnjUK0ATmRR/P331ygxZ/NlLftg534FBOGkARbJohssO3ArwPiOH7twbeAiPOsBm6H
	 +1hu0JIrRFxjbg7fWzCCGfDgXbZV3umQIgnhsIk2YAJiqf5eyrwLx+tdJg81N4bDKF
	 UlhElVbg3uekw==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37fd6e91990so65428151fa.3
        for <wireless-regdb@lists.infradead.org>; Wed, 04 Feb 2026 00:01:13 -0800 (PST)
X-Gm-Message-State: AOJu0YzrlzoO1kHqzYJYwoqABHrcatP55CT+7yddwGeCd4ONgnIcsDUP
	/LyNguL3vZarp1kB+E1nSprw8n46K27ewFqG/JqIOpQkqE8Br42b765xIOkzVccbWE1j7rDft9f
	nZPZcM8JkDXGyuyVnDHU3fKYF6TDypM8=
X-Received: by 2002:a05:651c:41d8:b0:383:18aa:50c4 with SMTP id
 38308e7fff4ca-38691c6de06mr9221921fa.6.1770192071748; Wed, 04 Feb 2026
 00:01:11 -0800 (PST)
MIME-Version: 1.0
References: <aYL8hbqyYUSaF9vn@wens.tw>
In-Reply-To: <aYL8hbqyYUSaF9vn@wens.tw>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 4 Feb 2026 16:00:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v643iTkHNR3zvg+griMMQ0HT6M1__QkRyG4nDGHOk=D-ag@mail.gmail.com>
X-Gm-Features: AZwV_QhK_rrv5PvgbofP3QdHMQYBxZhVyWmoIfTgvE2UXUJZJpF_MnhZEZyGD0M
Message-ID: <CAGb2v643iTkHNR3zvg+griMMQ0HT6M1__QkRyG4nDGHOk=D-ag@mail.gmail.com>
Subject: Re: [ANN] wireless-regdb: master-2026-02-04
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Oops, please ignore this email.

It has the wrong tag and URL.

ChenYu

On Wed, Feb 4, 2026 at 4:00=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrote=
:
>
> A new release of wireless-regdb (master-2025-10-07) is available at:
>
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb=
-2025.10.07.tar.xz
>
> The short log of changes since the master-2025-07-10 release is below.
>
> --
>
> Andrew Yong (3):
>       wireless-regdb: Update broken link in regulatory.bin(5) manpage
>       wireless-regdb: Update regulatory info for Malaysia (MY) for 2024
>       wireless-regdb: Update regulatory info for Malaysia (MY) for 2025
>
> Chen-Yu Tsai (2):
>       wireless-regdb: Update regulatory info for Canada (CA) for 2025
>       wireless-regdb: update regulatory database based on preceding chang=
es
>
> Ping-Ke Shih (1):
>       wireless-regdb: Update regulatory info for Tunisia (TN) on 6GHz for=
 2025
>
> Richard Huynh (1):
>       wireless-regdb: Update regulatory info for Australia (AU) for 2025
>

