Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B28AFF885D
	for <wireless-regdb@archiver.kernel.org>; Sun, 26 Apr 2026 15:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zln5WY0KHGryN1dNp4lR+2pZ10RpRHoat17iHGOZMUc=; b=LzyV3m1txqTPox
	8dQ8bUy9mF581CNZbDT5jrjyiYoP26x4dmfVov+MLsAisnoHTwljeKZmLZaPi8cUEmZMaBlaYxe/f
	JE/8trtdqMbcntilWVqG07u8GU0r0JjRA6eObGdXV3Si7MkSZq1MyRnPPjM6v1uAoSpWeakvB3+F+
	8EUJkR3x/nyMjcl03jPNJI018FOp3/y8uLOZWJdP+ZtH8Qj1r4lUjoriYb7KMFZf7qfM2102+zN0B
	pB0sVOsHNcEXZciArm0skeT17gls547FNr3Ebc/CLPx9asB1fIjpRTmNAM7C921OFQhgyPE4H57c4
	5FqLNQVUYpACcBJk2pAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH18y-0000000Fe7f-1JFG;
	Sun, 26 Apr 2026 15:11:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH18v-0000000Fe7M-3eYV
	for wireless-regdb@lists.infradead.org;
	Sun, 26 Apr 2026 15:11:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CC1A7442ED
	for <wireless-regdb@lists.infradead.org>; Sun, 26 Apr 2026 15:11:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADFC8C2BCB3
	for <wireless-regdb@lists.infradead.org>; Sun, 26 Apr 2026 15:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777216290;
	bh=LW0+GhismAPlistvT3H4Z8FHNjDLsP7KvWYvDcgArbg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:From;
	b=U4I/ywpBaOhDeLk/AawJ+TNY+5Slakao0AkA/BW/QkeSGA/0HsuawLBr7iXmVF/Tz
	 IBSI1G+CqY+XkXt4mjzk9UdNiC3KdXLLzkuA+q1+sgwgGXet6Em9q0lkxAd3PfAkYN
	 sSvoxDeaESD2E/RXqKv5fdiOb1BGjvXcZ8xJtYvj+uC6x5YgrOLQzRQgnHDXSr6OYS
	 oUGEuq9sYfJlMBkaciQmeNXUXTaxUrGp5zfmBCgdDFl0UOXurqj3RuDkRtkcgl+MQo
	 3dajKsaRFFTrL2yQsWNejHMp9PQKUA9v4R983W1QYTPZKNub6LAeBs3jUZzNpPifC/
	 Zrtpf95LvWyDw==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-38e7d983f79so71493011fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 26 Apr 2026 08:11:30 -0700 (PDT)
X-Gm-Message-State: AOJu0YwikDQqMVDI/2PRuMqDGCiq1pAfhWrpN12tXtuFb62+c1isNdNE
	lQLnm5bzHBfhnJK38kV0jVIm7NCLQj6rPwjUDsC/DsVb1xFwNQMdnYCR+8e4sq24KGygbjl3mgM
	HcHmJnQWjpTAF1IpAq5Mlu48MPw/cz4Q=
X-Received: by 2002:a05:651c:154d:b0:38e:a00e:2bb5 with SMTP id
 38308e7fff4ca-38ec7aa49bcmr127218691fa.19.1777216289046; Sun, 26 Apr 2026
 08:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <abojEyQYNTJM-v5u@wens.tw>
In-Reply-To: <abojEyQYNTJM-v5u@wens.tw>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 27 Apr 2026 00:11:16 +0900
X-Gmail-Original-Message-ID: <CAGb2v65t=NXDwV72wU3q_SRtWd-Pm4teVseP+=tOOQJ9c4HQkg@mail.gmail.com>
X-Gm-Features: AVHnY4L48tXjSMiAdhQuhwwpqQDb0dAUrtul1MVxTfSDyTaRSZ1fqXfa3jXng34
Message-ID: <CAGb2v65t=NXDwV72wU3q_SRtWd-Pm4teVseP+=tOOQJ9c4HQkg@mail.gmail.com>
Subject: Re: [ANN] wireless-regdb: master-2026-03-18
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_081133_931484_5007ED07 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
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

On Wed, Mar 18, 2026 at 12:59=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wro=
te:
>
> A new release of wireless-regdb (master-2026-03-18) is available at:
>
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb=
-2026.03.18.tar.xz

Apologies to everyone. It seems after sending the announcement I forgot
to actually upload the tarball. It is now *really* available after a
colleague notified me.


ChenYu


> The short log of changes since the master-2026-02-04 release is below.
>
> --
>
> Ben Hutchings (2):
>       wireless-regdb: Fix regulatory.bin signing with new M2Crypto
>       wireless-regdb: Replace M2Crypto with cryptography package
>
> Chen-Yu Tsai (2):
>       wireless-regdb: Update regulatory rules for India (IN) on 6GHz
>       wireless-regdb: update regulatory database based on preceding chang=
es
>

