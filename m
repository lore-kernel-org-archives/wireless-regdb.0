Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82055606A31A
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 08:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EesZMBML;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Q03lgtU1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QRXBPA2aMQnEWk1htW5qbPs6cG9+tctAn+xKJ5Wtsfs=; b=EesZMBMLxMglMdINNxsC5LvlvB
	231koHpTOznkTbU7dzFyCMfRtoVd4LoJtdyt8ZECtCPoeaDxKUUPDeirTUoCvQe9j2V/fRd9NE2OB
	YWkeeFUy6I2o289iKY9cYf3zmSb9u3CB9BRgatL/RiBLp2Wpbo9Zzw4Q/+jIrXten986Kw0VvMYBv
	BgF7leyDFLMFLOO3nf22B0/VkO31OiP8LU22Hgo3ok4/b+caBZ7AUL0WbtP7fBrDTcsXiodoumaEh
	oX6WFdGinT6m0+R0+otrpvqnhnZo/CjjQEnYpwLTI0ejxMLlPuV8Qj0yAvwEPSTUrXW2zCVOnZvrR
	hCXX2wrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPbb-00000002af0-3N8a;
	Mon, 23 Nov 2026 08:40:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPbW-00000002aeG-0MWo
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 08:40:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 872396022B
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 08:40:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E173F1F000C6
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 08:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795423248;
	bh=QRXBPA2aMQnEWk1htW5qbPs6cG9+tctAn+xKJ5Wtsfs=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=Q03lgtU1WJyaSuO1vflp5VgUGcutvC8WG2puydargr0YHOAXePIjV9HaRgfzA1gor
	 +4wrZ+OpANP6ecohEnAgDZ7vaWQfyQxs2aN7B4X3AcM2N+rxPTy/FHAonUW7zsYKLw
	 tSnsRJrVeXllhJlGiVo+Ewsk356Xpy/zCr00fYbFnDbFG8VsjZHEQJqhWbNf9QYUAW
	 FByK47Jil2D45Q5lrrUmlX8jo1xxlIlgX+iuVkAla4Cq6uX/em5JIKulqn/IYdwEAx
	 oOmmBNsav68awIL6QikL+uiT6Ywmblzbt2NHNDSWqrWxFKSv7I0b5dKtV+fhj5Lre/
	 tYjFXm0K5Dh7A==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3ae6f2b193fso15301571fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 00:40:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErGJgwnbJuWqnHNSOj4Arev7Gh+x/e9eXEOEa4q+EfOX57brXv+SwWVGOTEPb4+oKqGMJ6/7cg+Sb7rMe8PZVQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8Sl8fvjmQSUmzCRr8kWzw6dpZybBDspe5tpZXR6jKvWS7yvLbf
	IZ/oUG4tyK1hzbN1Oy2vp5YJuxfzPR03KASd+NtMP6Kf09/RsdjttKc2f5/LiA0RS/GgatUHXeQ
	3ody8MFy8hSOYNVSJWVV83r9d2n2nCzc=
X-Received: by 2002:a2e:be26:0:b0:3ae:25c9:f5d1 with SMTP id
 38308e7fff4ca-3ae7f9d255cmr28773671fa.11.1795423247354; Mon, 23 Nov 2026
 00:40:47 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <1844356607.822318.1792144991919.ref@mail.yahoo.com> <1844356607.822318.1792144991919@mail.yahoo.com>
In-Reply-To: <1844356607.822318.1792144991919@mail.yahoo.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Nov 2026 16:40:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v64NdP_SrBjrUZaBuMAB5EwsacnZH=YV7i+Jk9L2vm+0TQ@mail.gmail.com>
X-Gm-Features: Aa3M54qwH1whWvhObfYe-WlNsYmELQW_9kYghPU4lMJs_TVptLWBzvkVAJVVsXY
Message-ID: <CAGb2v64NdP_SrBjrUZaBuMAB5EwsacnZH=YV7i+Jk9L2vm+0TQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bangladesh
 (BD) to allow 6 GHz (UNII-5)
To: blackbird <jewel_boss_m@yahoo.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, 
	"wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	PDS_BTC_ID,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Oct 16, 2026 at 6:03=E2=80=AFPM blackbird <jewel_boss_m@yahoo.com> =
wrote:
>
> Dear Maintainers,
>
>
> The Bangladesh Telecommunication Regulatory Commission (BTRC) has officia=
lly approved the lower portion of the 6 GHz frequency band (5925=E2=80=9364=
25 MHz) for shared, unlicensed use including Wi-Fi 6E/7, IoT, and Wireless =
LAN (WLAN) devices.
>
>
> Please update the database rules for Bangladesh (BD) to permit indoor tra=
nsmissions on the UNII-5 band up to a 160 MHz channel width.
>
>
> Official Regulatory References and Direct Circular Evidence:
> - Official Announcement Notice Page:
> https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d
> - Direct Source Regulatory PDF Document:
> https://objectstorage.ap-dcc-gazipur-1.oraclecloud15.com/n/axvjbnqprylg/b=
/V2Ministry/o/office-btrc/2024/12/18337854ab6c487fa749464c7672c8a8.pdf

The announcement does not say what the power limits are. Without supporting
evidence, we cannot add it.


ChenYu


>
> Proposed database block update for db.txt:
>
>
> country BD: DFS-FCC
> (2402 - 2482 @ 40), (20)
> (5170 - 5250 @ 80), (23)
> (5735 - 5835 @ 80), (30)
> # 6 GHz band (UNII-5) approved by BTRC circular on Sept 15, 2024
> # Shared unlicensed indoor use for Wi-Fi, IoT, and WLAN
> (5925 - 6425 @ 160), (23), NO-OUTDOOR
>
>
> Signed-off-by: Syed Mubashir <jewel_boss_m@yahoo.com>
>
>

