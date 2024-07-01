Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C31C2BD09
	for <wireless-regdb@archiver.kernel.org>; Mon,  1 Jul 2024 09:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvts7I8kxmOIK1fV0z/auvX7cVDFtLhb0ShtsI+V8cI=; b=0RIhaLqEq8QqOa
	tbg2VXl9Ru4m8lY/SNL38zIYCNY2E1ahVe5LUxT8dxbF6k5LqADFcWPmPdI5a0Q+o2UU969kUY2AN
	lSPGsd0EEPTeWdUX083EVDPjjwyeQD4SxBjpyM8nlM9ZIkqz2znDiRcgfFQKt91HDRGRTZ/MKc0VH
	ixpd9QGkwe82SP6bRRqxrbsx1nvlW5mUb/MoRNmJQBOgMd4w+cbZ27zm7wKDMZIJZqfXLJC5IDf9j
	Joq5ZWQbQSO3nn8D460n0Q68WlGaw+16Cu2KNtyNPVKmZRjIj6dV6tzyxVUdVJj0cpuyTsX2l0S9v
	W72xR9ZrMuiUXspvWalA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODAO-00000002Q36-2hS8;
	Mon, 01 Jul 2024 09:17:44 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODAK-00000002Q25-3QsL
	for wireless-regdb@lists.infradead.org;
	Mon, 01 Jul 2024 09:17:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BE1EECE0EE3
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 09:17:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD2CC32786
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 09:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719825458;
	bh=BRj5TyyN/MhwYou5SO7UHZe2yy9s3hsj6dSrEl4jloA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=TWcHt3h9QF4+YYUDl+GqBTr0DZoWum5R3CnwrWAH92sNKIBi/S/W7qERGeXb+8WfN
	 4wYQkYi6X3LUfay5iwGvCAT9FePLJnIDPEVqR1sW2fWdN3tcQgznnzsAzM6rd46nYW
	 INgQ4CQLDRaIs7wjqWzgm/47oCOyL19tZLnkCeyGN+W7gvmM1AF6WYnOqkcGBfriLC
	 lyRyevAhUMLpbBij/eEHL4EF6GBHebR72aZQ5v8YG8nZER0sa4lE9BwIBqhu5p0dSi
	 74Rz9YZ8caLDg5kbdxeEEhmBtSCkyu2kPPDpE0FrJnmR9BGFoJBi2ENrK7K8cGES+E
	 ob2PgjeZb2/Zg==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ebe785b234so27040761fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 02:17:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXTxuRdTlg5wUKMKKJmDA9JBHWUVy1yiotD8SFz25IKEojANZiIjEK99W2wiq0RhG/YC51KY6havcrPGtEJWlPyH3YNadtsxO+ILjyO+KoMvP4N
X-Gm-Message-State: AOJu0YzDIGZO1kneT/M9SSQ29O+i1CgxInBe1yoD+zGIl+2RrOqdd4is
	rgT0igAmDgZiqpahQX7OkBPazWYiGnrnQIUxHHjvkrOA8nOp7V6ItVbN3Zia6hjIOIdOlAdlyow
	BnDA61jTLBBS+v3wdsLxLYVSrH54=
X-Google-Smtp-Source: AGHT+IG0YPZx+f/bXw9vPiret5Oj94L29UlMcCJrk2yJVP6Q0mn51uJgy5d6Jr56c3dl3YGtiNR36PQ/RbHjfyAlgE8=
X-Received: by 2002:a2e:b8c6:0:b0:2ec:5502:b2de with SMTP id
 38308e7fff4ca-2ee5e70742cmr41219631fa.51.1719825456436; Mon, 01 Jul 2024
 02:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240624025623.6021-1-pkshih@realtek.com> <20240624025623.6021-4-pkshih@realtek.com>
In-Reply-To: <20240624025623.6021-4-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 1 Jul 2024 17:17:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v64Mnu9kOjTttonyacv5wFyhC3=2=9ZUimDSRuEwaerZ4g@mail.gmail.com>
Message-ID: <CAGb2v64Mnu9kOjTttonyacv5wFyhC3=2=9ZUimDSRuEwaerZ4g@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] wireless-regdb: Update regulatory info for Macao
 (MO) for 2024
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_021741_232219_8CFCB49A 
X-CRM114-Status: GOOD (  15.06  )
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

Hi,

On Mon, Jun 24, 2024 at 10:56=E2=80=AFAM Ping-Ke Shih <pkshih@realtek.com> =
wrote:
>
> MACAU SPECIAL ADMINISTRATIVE REGION OFFICE OF THE CHIEF EXECUTIVE release=
d
> Order from the Chief Executive No. 64/2024, which wireless data
> communications equipment defined as
>
>  - 2400-2483.5MHz 200mW
>  - 5150-5350MHz   200mW
>  - 5470-5725MHz   1W
>  - 5725-5850MHz   1W
>  - 5925-6425MHz   250 mW (for indoor use)
>                   25 mW (for use in outdoor spaces)

Could you also add 60 GHz, since the new Order lists it? That would be
57 GHz - 66 GHz at 10 W.

Thanks
ChenYu

> [1] https://bo.io.gov.mo/bo/i/2024/16/despce.asp#64
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
> v2:
>    - change 5470-5725MHz to 5470-5730MHz to have 160Mhz bandwidth
>    - keep DFS flag for original ranges since it defined DFS-FCC
> ---
>  db.txt | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 648530192b75..c26174cb6a74 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1256,12 +1256,15 @@ country MN: DFS-FCC
>         (5735 - 5835 @ 80), (30)
>         (5925 - 6425 @ 320), (100mW)
>
> +# Source:
> +# https://bo.io.gov.mo/bo/i/2024/16/despce.asp#64
>  country MO: DFS-FCC
> -       (2402 - 2482 @ 40), (23)
> -       (5170 - 5250 @ 80), (23), AUTO-BW
> -       (5250 - 5330 @ 80), (23), DFS, AUTO-BW
> -       (5490 - 5730 @ 160), (30), DFS
> -       (5735 - 5835 @ 80), (30)
> +       (2400 - 2483.5 @ 40), (200 mW)
> +       (5150 - 5250 @ 80), (200 mW), AUTO-BW
> +       (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW
> +       (5470 - 5730 @ 160), (1000 mW), DFS
> +       (5725 - 5850 @ 80), (1000 mW)
> +       (5925 - 6425 @ 320), (250mW), NO-OUTDOOR
>
>  country MP: DFS-FCC
>         (2402 - 2472 @ 40), (30)
> --
> 2.25.1
>

