Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00BB9EE0209
	for <wireless-regdb@archiver.kernel.org>; Wed, 11 Sep 2024 05:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bJLrTEng+6Jx7oKK3DNfPjxsGDrJ5KjOSDCymU8hD2o=; b=maGDlJ3TfBxR9WiRLr2HEoAK71
	ydP04tc/zGMXMW2n+tOGWQ0OhAkXzvvj207mz7cAQGapgiPdqhfUWu2cH7zqlOK7LWu6B1Rcwp4cu
	JWyHfrDRpJWnjQEtQ5lZrnFkhQUYwYfuH6fC9amu4DKgW71l9b+nU/QiYk0DPWcx/hzJvCHLRUH17
	y/wQI0XdrcJ/za4qerRjA0FWd2GuyuhY0DNj4OsjCOcyEfWyft8hfsKNhDD3ZCO0UBMmE2ZEEuhnX
	6sdAJtrjbNaI8MG2sqaa2VKuZXy7B9fP9DnSqdWGFElOupddhZ8uxL/oiXdFTL8+v8TBATk5Lv9P1
	HyuPNK0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGIA-00000008CQw-2fz8;
	Wed, 11 Sep 2024 05:53:26 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGI4-00000008CPz-2se7
	for wireless-regdb@lists.infradead.org;
	Wed, 11 Sep 2024 05:53:24 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a8d0d0aea3cso627490366b.3
        for <wireless-regdb@lists.infradead.org>; Tue, 10 Sep 2024 22:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726033999; x=1726638799; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bJLrTEng+6Jx7oKK3DNfPjxsGDrJ5KjOSDCymU8hD2o=;
        b=NWxHft2ViKz/YcNplC0AJu2vtHtyhL4v8Fj2q2Tk+QY41sC2tpT5G/WWboKRijgPjA
         Fwm8eNXKp03IQrBV6sAm9wSFQTCdr5KYuhsZ/6f/w9HhHFlOUKQ54TaYWf4sxMLCB3cs
         l4yDFMp37sSyMSyeKGyntMsRHwFSY7/n7BRkMVkCXjOxYr1tWTjxBtgeL87f48ar0xjQ
         0acH73Attq5iBWyAyfoLh3WMBNdT+jcUnyRLnhxtyQPGIFLXpIsjeErEhXGM/1iQNgPN
         Hih1LunnmOgVxAIYl8NH9uPjh9cDSrWwWAPiF446NLSq8M7Eu3ka6xClw8xXf1z5fDSN
         Kg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726033999; x=1726638799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bJLrTEng+6Jx7oKK3DNfPjxsGDrJ5KjOSDCymU8hD2o=;
        b=aAR57lwF/fWcpiSAbfE0f9ycWyP6RLthfAc/FUrRYeWN4U1YVGwu1fqEby06i5ZrNU
         bCnMa8sTu4BcB3aFXAdTRxizZRhtpkvTgoN0SeIFB3YD2Fko+j7kap3aDzRnvATP2Jz7
         GRst3BMXO8cNIhlY3VyG2udtnCl1vsRXbAuSikqmUL11AbRbNbrHJBX+98O2La/gjM7L
         kwnsAJLdU5Bbytuw35F36EctNvtEyCEfeKcdzvKCHnkPcPaf3b18s+YNow5QM36DQKjK
         ymEKuIKGHEvw0wG/8GuODUCruD+GR+SN+vJyBnnHg1+dAe8di3s/cXqU+/FlbDzYWh9x
         4Sgg==
X-Forwarded-Encrypted: i=1; AJvYcCXIF5ziU83pOfZKgXKxB0Wjd9WuhbitTjobJzngmvQoJ5xyyQHPeXN7mG9DKd8YPxlU5JW8x0nu9Q2kZZGAaA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzswvEXKBgkGdDB9x4Cc8jVodSnHou94RorFSJbxV1jGmMJcsEC
	G2VxY4/qKlOIFHgV1j3cJhRK1y9prA6UQWNL6ufEbryp/krnQzamBZcT40va1w83Ca9SkxDIRTt
	wOXBBMx1HGb3WpMpL3RIDVMmgatp+R9rIGJs=
X-Google-Smtp-Source: AGHT+IEYxeCzzwzF3KQtrk4/6mHLEV4G0TwzNALY82kLWkdFzVqRJU0JkOAmC6t2WpbswtPGXetSvACEbVjuHgRRLMg=
X-Received: by 2002:a17:907:7d87:b0:a8a:9207:c4c1 with SMTP id
 a640c23a62f3a-a8ffae0ae15mr283232366b.58.1726033997782; Tue, 10 Sep 2024
 22:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAKAWfyLVNrCzYoACGt2zAJ5K5FnBJkDmHuVAfmScQ3=_ahSEbw@mail.gmail.com>
In-Reply-To: <CAKAWfyLVNrCzYoACGt2zAJ5K5FnBJkDmHuVAfmScQ3=_ahSEbw@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Wed, 11 Sep 2024 13:53:06 +0800
Message-ID: <CAHrRpumE7KsEDaF+Ec288q5xGGAetVAfg4j8TGd_cLqT2MDFpg@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Indonesia (ID)
To: Zulkifli Izoel <izoel21@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_225320_745344_3CE0F620 
X-CRM114-Status: UNSURE (   4.64  )
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Zulkifli Izoel <izoel21@gmail.com> wrote=EF=BC=9A
>
> country ID: DFS-JP
> # ref: https://jdih.kominfo.go.id/produk_hukum/view/id/862/t/peraturan+me=
nteri+komunikasi+dan+informatika+nomor+2+tahun+2023
> (2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
> (2400 - 2483.5 @ 20), (4 W)
> (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR
> (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR
> (5150 - 5350 @ 160), (200 mW), NO-OUTDOOR
> (5725 - 5825 @ 80), (200 mW), NO-OUTDOOR
> (5725 - 5825 @ 20), (4 W)
> (57000 - 64000 @ 2160), (10 W), NO-OUTDOOR
>

You should send out a patch to update the rule like others [1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git=
/log/

