Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34CEBCD4F3C
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 May 2026 06:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNAyPjzpSp3cuBgZs82o3keQuS7UVqRa6p7gqQncaqU=; b=SQO4CHUxSo+xiN
	ZS2nqHzZ4mfdNmrvIu+B/Xx7fwZ7LJHVKMXFkC7B3Hz6YbjtJ04Sv/VNEw9I63MjJyydXBy0oOKum
	wXgWLtEFOP5Zv8GNJNW/ROD+eWlv0+Rd+suZee/i+sE2LIFKUWdGvnYzWAKKGHcZSY/UXtgqqFmVw
	uAr63yLHpQParQX7P9C2b2JTyLDa0yveHyzRM9lb/Q9zBpa/b/O9oCdeeX2m+3qMV24FRftGfH6dM
	BtLk5nvkz5GhsJL6uHEgzbBUpqCn6Jkva/R3UeUWSq03Wc2iG5lmoeEtqBnpS7U8GftwUHqRbzDLW
	2shPTCxTJFuBul46jprw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEJH-00000000PVv-3m2I;
	Tue, 19 May 2026 06:52:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEJD-00000000PUi-3inz
	for wireless-regdb@lists.infradead.org;
	Tue, 19 May 2026 06:52:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 40C47434E6
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 06:52:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23908C2BCC9
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 06:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779173527;
	bh=d+jkC9HbWWu+r9ZJREbh6okGKMKsoQ8P/ug5XNjSXbY=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Q5ISkx0i4i++qoaqhB9NFaZ5tEOFNUVRQ8VEldFFfu7fhXacj9wyWQeqKN0gl7/X4
	 XdI9rHMdknCZj0JVabtddaCcD6ex2vFa8mBlXt80rlcpAT9gTkwj86T11i595V1Usx
	 Abcg38exak+4KYqJl9XRxLnyNL0eptGqs+m+WGKAhEk1eqqGBBvs3iEeiDmg9DJO2c
	 eGQin/q3qm54NGWplujQl/nG/1CKXbYSVhPotFAi0j6G0+TakdtBEwK4s9FHKfKJwE
	 FIe2Twecgso2q9PbLf7Wy8TecvpoZjv2z7WZXdxDXoftL28ovH9LUaD4jNO49Io+12
	 +xxXa+kV4YruA==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5a8c6fc5fd3so4305304e87.0
        for <wireless-regdb@lists.infradead.org>; Mon, 18 May 2026 23:52:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+dgcgQ1wd5ZIXFh89/sIiiRhA0ZgMc8TvB91zNNeXui72yunHK5VOLKo1FfR0KK2QC7MrcMyWVVIvjuUORpg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRQCbU29DwALpnFjaqRczOKflxH+5EvxyzSDSUZnpgEqBXsq25
	laYzT1skLisxEwD7siU9egKh3l3e+mplDCPquq9uHc8TklDeTi7tg+v/oHG5x6WgBvKdErnVEQS
	VT3yJMNPsjPM8tYxCJ3lFT2/qDnsD/TU=
X-Received: by 2002:a05:6512:1095:b0:5a7:4912:1a50 with SMTP id
 2adb3069b0e04-5a8ffc8a076mr5928382e87.20.1779173525534; Mon, 18 May 2026
 23:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrRpu=-ngPpe2MsmWz0gQq1VVxbr9L0+jUos3o62wPUY-wXqQ@mail.gmail.com>
 <20260518074743.179402-1-maashif011@gmail.com>
In-Reply-To: <20260518074743.179402-1-maashif011@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 19 May 2026 14:51:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v67qTxBwOrpgBV6+hm1=h7ZAz0oVmR4uPuMw6otfHAWw0Q@mail.gmail.com>
X-Gm-Features: AVHnY4J4Qoe4rQjlKzSCEocD1spDtInRhG4NAVo-Coua9DC4afuAWbxB-fTgtjY
Message-ID: <CAGb2v67qTxBwOrpgBV6+hm1=h7ZAz0oVmR4uPuMw6otfHAWw0Q@mail.gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
To: Mohamed Aashif <maashif011@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	pkshih@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_235207_967104_4D3F010A 
X-CRM114-Status: GOOD (  17.68  )
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

On Mon, May 18, 2026 at 3:48=E2=80=AFPM Mohamed Aashif <maashif011@gmail.co=
m> wrote:
>
> Update Sri Lanka regulatory domain based on the RTTE Type Approval
> Rules 2020 from the Telecommunications Regulatory Commission of
> Sri Lanka (TRC).
>
> Source: https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-Engli=
sh.pdf
>
> Key changes:
> - Change DFS region from FCC to ETSI (document references ETSI
>   standards EN 300 328 and EN 301 893 as the applicable radio
>   interface standards)
> - 2.4 GHz: expand to 2400-2483.5 MHz at 23 dBm
> - 5150-5250 MHz: 23 dBm
> - 5250-5350 MHz: 20 dBm with DFS (no TPC, 3 dB reduction per EN 301 893)
> - 5470-5725 MHz: 27 dBm with DFS (no TPC, per EN 301 893)
> - 5725-5875 MHz: 24 dBm with DFS (per ETSI EN 302 502)

The numbers and units should match the official regulations.

The official document you provided uses mW, so please use mW throughout,
unless there are dBm calculations like for the reduction due to no TPC
or adoption of dBm numbers from ETSI rules.

> Note: The TRC gazette conflicts internally by allowing 30 dBm for
> 5725-5875 MHz while citing EN 301 893 (which doesn't cover this band).
> Lacking TRC clarification, we conservatively default to the ETSI
> EN 302 502 limits (24 dBm).

             ^ TPC

Will fix up when applying.

>
> Signed-off-by: Mohamed Aashif <maashif011@gmail.com>
> ---
> Great, thanks. Removed DFS from 5150-5250 MHz.
>
> Changes in v3:
> - Corrected the table caption in the source comment to "Table 2 - Applica=
ble Standards- Wireless"
> - Removed DFS flag from 5150-5250 MHz
>
> Changes in v2:
> - Split 5150-5350 MHz into 5150-5250 MHz (23 dBm) and 5250-5350 MHz
>   (20 dBm), adding AUTO-BW to both.
> - Applied a 3 dB reduction to 5250-5350 MHz and 5470-5725 MHz (now
>   27 dBm) to comply with ETSI limits since TPC is unsupported.
> - Capped 5725-5875 MHz at 24 dBm per ETSI EN 302 502.
>
>  db.txt | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index fdc2c13..8038f5a 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1058,12 +1058,15 @@ country LI: DFS-ETSI
>         # 60 GHz band channels 1-4 (ETSI EN 302 567)
>         (57000 - 66000 @ 2160), (40)
>
> -country LK: DFS-FCC
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 20), (17)
> -       (5250 - 5330 @ 20), (24), DFS
> -       (5490 - 5730 @ 20), (24), DFS
> -       (5735 - 5835 @ 20), (30)
> +# Source:
> +# https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-English.pd=
f
> +# Sri Lanka RTTE Type Approval Rules 2020, Table 2 - Applicable Standard=
s- Wireless
> +country LK: DFS-ETSI
> +       (2400 - 2483.5 @ 40), (23)
> +       (5150 - 5250 @ 80), (23), AUTO-BW
> +       (5250 - 5350 @ 80), (20), DFS, AUTO-BW
> +       (5470 - 5725 @ 160), (27), DFS
> +       (5725 - 5875 @ 80), (24), DFS
>
>  # Source:
>  # http://lca.org.ls/images/documents/lesotho_national_frequency_allocati=
on_plan.pdf
> --
> 2.54.0
>
>

