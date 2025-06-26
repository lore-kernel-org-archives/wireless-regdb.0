Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 493F6C7EE32
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zETTt0UjxOK/zagtJhTyNnL4v0GhjgZOZo5txGCvY/U=; b=4Z8Wn/GBJMlAaoKgqm/tSKWObF
	iyX+fHaIHbg+DvPjyFZXEZroeXf19OWVgNWA0ixAemtfugeN4aB9Wibu79KuVbVYBLuwB/U2+iPqU
	YVJj6r+EeyPGpcc4MaXPJq/8Mt9KTV8oPKQnvD5H2dkY3WYRJtp8ZEKtE7SzYC+HPZeUH/GSIJr7K
	iH8l0pWv4745vTq3nmy2Db/sJNverP40kCRxltayXuocquu3o6tFaJM16Kg0cufSpaEarKk43ftQG
	i5RtPfXNXRad7tFFJptzjHYXi8r45i8LmJ14bBn21fYSuqQrwGQSjeuKcRe1iZ0VuHbTqYQiNj7g6
	tN6zCxsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjG1-0000000BCMu-07EK;
	Thu, 26 Jun 2025 09:51:01 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiwP-0000000B8ta-1vCA
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 09:30:46 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-23636167afeso8142845ad.3
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 02:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750930245; x=1751535045; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zETTt0UjxOK/zagtJhTyNnL4v0GhjgZOZo5txGCvY/U=;
        b=fmT6xGtZrFA3rTPc/bRIG1ZlwzGv8HoLzLe5k8/BO5FWU7oZJkfW1vxZpCMJ2y4b7a
         78BdFnzBt3PnyaMh/IlVvNJmc5ZRFQnv0b6rvEqb5xTEtcqakhvYAZpF5jc2Rv5MGD43
         3WgvXoAqHruFi40X1XHbe+DHbqapsQcMd31PcxMmqC4q6MD/oLmfBWHQrqD0+0rk025j
         EozSeXeVyT1a67iAFwWe5jPZMaIrS4vI2VWAwwZ7PvU1e9yTfx3d5f0MH4zJteMFwDC/
         1T6bqMW0iCiphXvrqkfA6sz+eV0NOPP9VgZTHelfYY7aqx1F4go4FRhg2ajna3GtlqA6
         Y9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750930245; x=1751535045;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zETTt0UjxOK/zagtJhTyNnL4v0GhjgZOZo5txGCvY/U=;
        b=qHz2y+XbwmEyPRLGhzCEWj1ZECacHlxRzgCBePNDeTT90/u2rZuG/ll6aiWEmZa1Bn
         8kK1X+pdyoMp9hhp+gVcAewBKza/kZ9sM9y5eZ9y1AHQELe79LjBd1bxtiUEewGtrfcz
         lc5oN44x22sztdVROraOT+1pEdO4Pnf9V8co5Pbzj55ZzV665KZW1ACwUOkRx5S/n/zX
         /vhTOus5zfvLbCmVOsLNFMQ8QE6X2HPNFOvyU2aW4g7RJOGwnZRlUoHz1zaNA9pg8WmY
         bS85B/JCjggsM9cLyBdsdBQZHVbyX0kWg0X4FSiSaf13ua4Bxnt62x+Q9t553eeHp79U
         JiNw==
X-Forwarded-Encrypted: i=1; AJvYcCX3xahu7rxDFlZ+oNnGja7YokK/4oTxCgOqmzOnPixTGE4aDBBRLGufnr5ubXspbhMFpUSm//vTQ8AnKEag6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3Px93bn/B9CpPMMAuIg0LfK+gZdGurZufA6vjYDwpqa4eHnL2
	FW9c24XoPOojJfA9wRM2FgeC8IyjVuWTIpvtGC53EfeiedLZkk5UD2iSCk11FBR7
X-Gm-Gg: ASbGncvVHte1iWdwDODabgEwqUf3QVCAnBX6obABQgYn0Mw2WYCLUZztb5rPxvDS15P
	6Xks7cjAr9PWS+rlvKRF9AyPdf+GyLjBGiiJKJptQtU9mKQGknvaGkf9kP8zOhfhd5kBq06yhw4
	Id2gHwPIBEYp4RXpnqPrHvdyp0NRj5Dp5r6iC58ye3+chcaMrewu/PswILKnoQyhe14UeHbPOHL
	y6SDK0Knz6U3OLXmDP3/zh15pJIkWMBdWlUTvhO2yIVhpMndKPhJhNe5YFN8Q5ZU8L1p8I/szwi
	TStFuz0h/sMyVeOie9QMg8NS6lVjrVE8HuFV5wCGgxWoAWOHK7gyeg9ikiKOu3WYIWTYmv/lgiZ
	aLeGd0MF8ZQ5KrOVaudCYWnTlx7kYrF+mS94l8Q==
X-Google-Smtp-Source: AGHT+IEFzpeIO52rdCSy6hT/2X+dCOtcMavVCiRsGNz3VRawhGkW2OXEWWFWi6TkMbC1Y8lRFYsoAA==
X-Received: by 2002:a17:903:1aac:b0:234:aa98:7d3e with SMTP id d9443c01a7336-2382403df49mr113894545ad.29.1750930244680;
        Thu, 26 Jun 2025 02:30:44 -0700 (PDT)
Received: from ?IPV6:2804:d51:4975:7202:7e03:331b:6be0:eea6? ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d8752146sm157903605ad.252.2025.06.26.02.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 02:30:43 -0700 (PDT)
Message-ID: <4a604550-aa8e-4d91-9daa-91e8089fe9c6@gmail.com>
Date: Thu, 26 Jun 2025 06:30:40 -0300
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
X-CRM114-CacheID: sfid-20250626_023045_500048_8511BC71 
X-CRM114-Status: GOOD (  17.44  )
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
Hi,
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
I understand. The problem is: with NO-IR set, we can't configure an AP, 
since the AP is the initial radiator.

So we just could remove NO-IR so we can create and use APs in this range?

In this case, I will create a v3 of the patch that just removes NO-IR 
and keeps the documentation links as is.

Please let me know what you think.

Marcos.
> ChenYu
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


