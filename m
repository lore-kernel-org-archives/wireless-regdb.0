Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D882AC7EE30
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 11:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=37koSnKgU7hvKQYo2n96QVYEhjOgjKih/EBKKAgCbs4=; b=5CIWQQXmInRVkkaov98tSJygtb
	Uq0wJjfR5Eq4MOkrDjs5jEDaQwKi+XsQCnpRPZjcHblDBhc54p6xMEerr8VgXCDPQnaGqrQnMe67N
	odekUMFF+3pgIEwkqtGoGeiMn3XRIHcI6kmAcBezsl64a+sC/HGulnfcff/o9F8xnXT2Z+wVYO2EX
	W0TqVPrlnFQ4A6gEJKaFGqcNSmJkKuPh/9aVG7BZxmedwfCBvV5tuGOKT8RccovXYzDNmEPyWMri/
	6WmDa/GOPU2LgbEzb8YvxT/z53+Q+kX67nOVUukGtlOWDP0E6zU2mLU1pqcgqSnatzvF2FOIej2Be
	EoVmwp3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUkgw-0000000BNwE-3AVw;
	Thu, 26 Jun 2025 11:22:54 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjKz-0000000BDT6-3edj
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 09:56:11 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-22c33677183so8744215ad.2
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 02:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750931769; x=1751536569; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=37koSnKgU7hvKQYo2n96QVYEhjOgjKih/EBKKAgCbs4=;
        b=EsQxilgQGmUKnQ9JUWnSutIxdOaCpzwB87+uFU/t91k6gqB/ySHJ8iJxgzaiSmfihU
         eP1wQvWD+I0N7gLnuUxtX/NCutrHcb2tnx4unrrrWql06RpdMJx9RmxXwVmZgMVhHUBy
         05fIuGjvi0gdDO02umEZY1OfSY/8D+UB8MgRCa3DGnzuJ7Qk6JgxhifcpPhz5RPpMm3b
         vOZd5RUbIrNaCM/8mwMYhHnj0j8quhSQ1u+1CpJNRdD7HldMHI4TPVnRYucGcd6419/l
         ynU0W4VQbYSV3dXEP+OAZUX4U4CnR5S7UGABpPlkcCOSzp4CB7iGGL/83B9epSU3iZOp
         H3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750931769; x=1751536569;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=37koSnKgU7hvKQYo2n96QVYEhjOgjKih/EBKKAgCbs4=;
        b=rXI1NMLiETP4NcvWrX0xsMQ9CeWw6tE9Hh9EvyEk42R6AOr0EZEkBbsBSbPCe4MMZH
         BerXWoSl1l5Z4bubvWcz0/p2tppN9hoq3Dpl2BV71IeXIfp0+5UUxPUOtqiuEmnOw4iN
         jEJjoAe4DYGYx8s/XVsCFxtKwX6R7gWP7LbEoyqAyTcBKGn3wS9M89FP/67SV7b1ElVD
         XPb2+rFV/kAt/tHwoa1vn8f3dOJ1sTl/KZ254zMfbacbp4BHPOcQf3kBFntZKY9IMK3m
         Xo5Qk2PZAPb1r43k+XGsl3QEvAvHfl4KIa5+7qkniw0lrLT2/j5hlmLIOXJpF7fYDfhC
         JWtA==
X-Forwarded-Encrypted: i=1; AJvYcCUeCfkNYVlejhmcRPaxVBvjE78+6yKXstwUz9isEp1dY57uk4hz6AhP7KAJakTZ+/+SFgrCXocFEmCE5eaHcg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMHuOFyCuVUEfNlTdhZV+uZa32xnfci4DIECuLxTmAxvrspRIz
	FH7ZkDszE91jD9/OxwbHPaG33PH3tOAd+vh973PoHbsvAugB8fP4kLi2
X-Gm-Gg: ASbGncslv9Nhk2pdZM1tH6c7ZDyavKA3KA8GHrxybA4BqlMH84AieHcHmi7OIOMMS3P
	eq1/9Ad1WPW4EuxntqLMQMXvKc9iTHvwY6BsXgE9x8v5zG4x7jzQzJLlfw+tfAMW9Lhk71UkRKn
	zk6uZFsGf9VDnoOcnbdquYbMpkkSwOylElt40YEh28ZeemCTGgwJRbMuHeP1Ja8FdRsdUb1lt9W
	1rTtWsp2EArC5xy+mzm3L2nAOeGoGK6LXA5gzESBPBMVmh+nVet2f3/+HF9GKpBOaGOr5qJNTis
	R0thskfF2APJFia2EMovJVCAXZag3IVaSoVLQ7VwS7ttFx4a3B2W4b3biIwzQGehJOMpD08g1uy
	vXJOsTwlh4MZpdAJMaB9UZ9DI0HU8/jaE1ED2XQ==
X-Google-Smtp-Source: AGHT+IEMYT2m1/4OY42gRrv08XFk24ea9yFOUWIux+JsIeLqU2Vjysir8YigFi2HW8kVa7afDe4ijg==
X-Received: by 2002:a17:903:2bcb:b0:234:8a4a:adb4 with SMTP id d9443c01a7336-238240f5674mr92109895ad.21.1750931769058;
        Thu, 26 Jun 2025 02:56:09 -0700 (PDT)
Received: from ?IPV6:2804:d51:4975:7202:7e03:331b:6be0:eea6? ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d860a36dsm153819385ad.126.2025.06.26.02.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 02:56:08 -0700 (PDT)
Message-ID: <46ab2a6b-82ff-4330-819e-99a67280409a@gmail.com>
Date: Thu, 26 Jun 2025 06:56:05 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Content-Language: en-US
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
References: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
 <CAGb2v64z3Yv_MNxJDTMcDR5ajD_L0zpsea2aBcrCLKfw3HUmiQ@mail.gmail.com>
 <ee7a2587-3e4c-4bb2-8eeb-961dbbb9ca97@gmail.com>
 <CAGb2v640p2zfD9T6PnmfOwJY8nMeSyY5CJNhtdW9B-+ZPNSW4Q@mail.gmail.com>
From: Marcos Alano <marcoshalano@gmail.com>
In-Reply-To: <CAGb2v640p2zfD9T6PnmfOwJY8nMeSyY5CJNhtdW9B-+ZPNSW4Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_025609_931814_1B88D02E 
X-CRM114-Status: GOOD (  17.97  )
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



On 26/06/2025 06:23, Chen-Yu Tsai wrote:
> Hi,
> 
> On Thu, Jun 26, 2025 at 4:37 PM Marcos Alano <marcoshalano@gmail.com> wrote:
>>
>> On 26/06/2025 05:15, Chen-Yu Tsai wrote:
>>> On Mon, Jun 2, 2025 at 9:23 AM Marcos Alano <marcoshalano@gmail.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> The rules for Brazil were based on this normative
>>>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680,
>>>> as mentioned in the comments of the entry.
>>>>
>>>> This January came out a newer normative
>>>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772,
>>>>
>>>> It allows 6GHz frequencies, so the line:
>>>> (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
>>>> Should change for, at least:
>>>> (5925 - 7125 @ 320), (12), NO-OUTDOOR
>>>> The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don't
>>>> work because of this outdated rule based on an outdated normative.
>>>
>>> Those are very large documents. Could you help point out which sections
>>> or comments apply to your argument?
>>
>> https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915:
>> in the items IX.4 and IX.5 mentions the 6GHz frequency.
> 
> This only covers point-to-point usage. You would need to modify the rules
> and add the PTP flag. Likely not what you actually want.
> 
>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772:
>> You can search for "5925-6700" to check how the allocation is done.
>> It mentions satellites, so that's why I set indoors, but maybe you
>> understand that is not necessary.
> 
> This only gives the band allocation, not the requirements for each use.
> Also, satellite communication is a different use category. We should look
> for WiFi or RLAN, or perhaps "comunicação multimídia".
> 
> The requirements I were able to find are:
> 
> https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2021/1510-ato-1306
> 
> ChenYu

I created a v3 patch that updates the comments with the new normative 
you found, removes the NO-IR so a AP can work correctly, and changed the 
maximum power from 12 to 27, since for APs it seems to mention 30dBm, 
but I considered TPC like the other frequencies.

> 
>> Marcos.
>>
>>
>>>
>>> Thanks
>>> ChenYu
>>>
>>>> I'm no lawyer, so please if you see something different, like more
>>>> granular control in the allowed frequencies, please let us know.
>>>>
>>>> Thanks,
>>>> --
>>>> Marcos Alano
>>>>
>>>>
>>
>> --
>> Marcos Alano
>>

-- 
Marcos Alano


