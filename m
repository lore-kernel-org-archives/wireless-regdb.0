Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED2CCD4F3C
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 May 2026 06:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46+rr8q03Yc+zEcR+n4tpZu1LfK0gz5GulreOSIXnUY=; b=UJHispdEPjlv9Z
	bXKQwRSUz9dGMCWV50q9b7T8otZuCOK7EF/qmPXMKq8xEGycVEGRq1xOU1FFFDfDLbVT5AIs9fLLK
	Rb1NzzN20pQZRWw+uJ4JgSXms81ouepJZMaZhZsXsYgTUUycJ0+fUV4XhITKshvj1QVPKWGEdkUU/
	HZC3TiIdDOS79ytDsfrg+wV0yAmi2jXJW4KplsRc/6Axg684wVzphlhCVO3OJrwsaFMq+0bhQ7Iq0
	XD4K1orQdQyh2zmbpjLaTjqtQIH0WMoX5RMtOfQTnjvEArWyX+N3KPE9kbF1dopuvHRXhy77tUwde
	sCqwQ21AKxeqkEChyVWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPE9B-00000000NYm-3yHU;
	Tue, 19 May 2026 06:41:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPE98-00000000NXr-1C5u
	for wireless-regdb@lists.infradead.org;
	Tue, 19 May 2026 06:41:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A61DC402BA
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 06:41:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87A28C2BCC6
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 06:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779172901;
	bh=HWHosOrNJ6PP/PMVms5O55R5dHcu/KFNcOUCtba9UcI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=QZEBPmmBgLQoyjLsFeK5/NqSobQsz+V9E7RDMmIuMhjiu6hBOdRsCNv1xaUfg5AzO
	 NW7JU/SeSDvOCcxK0gSD2BWVaKqJYqqvkBPIoHi8PeW9JxfUbdm3icIQLyN0LVuw9v
	 HjQnTLSSKZFn0q31rYBV1J3rFE8xAazFITQ/oDJYqwXPf295zWPzgNi8YfUW99ATNa
	 yoeRJX9Pb3CmvxXGJEt4qFLdEovfKK5HV3958vFPpmDiaOy75qLjoFqoM4pJh89eRs
	 XgDZiccwtUeb7ZgnqisD20YGyoU8PzBlnSpEWmtAt7DFgFiKs9lPn11MQBXMszoDzI
	 3AbsEfNsgNKyQ==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-39394e1e8f3so33812941fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 18 May 2026 23:41:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8V0EPd9bsABNI9yucRIlnS8EzWLpxasr7vTYjwRZV7wrXFduZQCqfPMjjHDrFMFMtzbqYa2ZKOUSzml+qFcg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxr1O9pGq1IA5TEMIEU8KxbhhRPkcXaD/quoFDfwjtQ6QbE86NH
	pXtB+aTcy8+szMP+RlijCyU5xmhzTV1dCky7T2Eb044Q2mnWnzPx+CWe8kXu0HwtO5FuTk+PTIh
	42YXqzaeBLKWzZy6yj3ZQVy6ZWAbzUzI=
X-Received: by 2002:a05:651c:12c1:b0:38c:13c8:a4b2 with SMTP id
 38308e7fff4ca-39561d62689mr55825151fa.17.1779172899922; Mon, 18 May 2026
 23:41:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260501153303.8521-1-hfzz7@duck.com> <BFBA868E-9B63-48A6-9B73-E749857BD106.1@smtp-inbound1.duck.com>
In-Reply-To: <BFBA868E-9B63-48A6-9B73-E749857BD106.1@smtp-inbound1.duck.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 19 May 2026 14:41:27 +0800
X-Gmail-Original-Message-ID: <CAGb2v64pXqi0ZSGKwphHWPhre0jH+kux+y5tceFYruAmVX0ThA@mail.gmail.com>
X-Gm-Features: AVHnY4LQs2e9gsbzquZw57Hq6K7qVBjGw1OPzFpDJDxKzQVG59tRNFoqekYiZe4
Message-ID: <CAGb2v64pXqi0ZSGKwphHWPhre0jH+kux+y5tceFYruAmVX0ThA@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Brunei
 Darussalam (BN) for 2022
To: hfzz7@duck.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_234142_363563_2EF6CC9F 
X-CRM114-Status: GOOD (  19.84  )
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

On Fri, May 1, 2026 at 11:41=E2=80=AFPM <hfzz7@duck.com> wrote:
>
> In 2022, Authority for Info-communications Technology Industry of Brunei
> Darussalam (AITI) updated The Brunei Darussalam Radio Spectrum Plan. [1]
>
> * 2400-2483.5 MHz
>         - 200 mW
>
> * 5150-5350 MHz
>         - 1000 mW
>         (For 5250-5.350 MHz, DFS and TPC are required)
>
> * 5470-5725 MHz
>         - 1000 mW
>         - DFS
>         - TPC
>
> * 5725-5850 MHz
>         - 4000 mW
>
> Also, add regulatory info for WiGig/60 GHz
> * 57000-66000 MHz
>         - 10 W / 10000 mW

The power density should be mentioned, and there should be separate
entries for indoor use and outdoor use. I added them while applying.

> Note: According to the Telecommunications (Radio-communication) Regulatio=
ns,
> 2013 of the Telecommunications Order, 2001 (S 38/2001), "non-localised us=
e"
> refers to the operations of specified radio-communication equipment or ne=
twork
> at a specific frequency or in any specified frequency within the whole of
> Brunei Darussalam. [2]
>
> [1] https://aiti.gov.bn/media/planjc1p/bd-radio-spectrum-plan-2019.pdf
> [2] https://www.agc.gov.bn/AGC%20Images/LAWS/Gazette_PDF/2013/EN/s086.pdf
>
> Signed-off-by: Hafiz Zafran <hfzz7@duck.com>
>
> ---
> Changes since v1:
>         - fix grammar issues on the commit message
>         - adjust transmit power limit to 500 mW for frequencies that
>           require TPC
>         - add INDOOR-ONLY flag to WiGig, as per review
> ---
>  db.txt | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 3252521..2de3281 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -326,11 +326,16 @@ country BM: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> -country BN: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (20), AUTO-BW
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -       (5735 - 5835 @ 80), (20)
> +# Source:
> +# https://aiti.gov.bn/media/planjc1p/bd-radio-spectrum-plan-2019.pdf
> +# Section 7.5, Page 244-251
> +country BN: DFS-FCC
> +       (2400 - 2483.5 @ 40), (200 mW)
> +       (5150 - 5250 @ 80), (1000 mW), AUTO-BW
> +       (5250 - 5350 @ 80), (500 mW), DFS, AUTO-BW
> +       (5470 - 5730 @ 160), (500 mW), DFS
> +       (5725 - 5850 @ 80), (4000 mW), AUTO-BW

This should start at 5730 since the previous one end at 5730. Also,
AUTO-BW does nothing for this range now, as there is nothing to combine
it with after it.

> +       (57000 - 66000 @ 2160), (10000 mW), INDOOR-ONLY

This should have been NO-OUTDOOR. I fixed it up while applying.

Please check the commit after I push it out.


Thanks
ChenYu

>
>  country BO: DFS-JP
>         (2402 - 2482 @ 40), (20)
> --
> 2.54.0
>
>

