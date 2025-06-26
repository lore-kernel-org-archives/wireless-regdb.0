Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB3ADC7EE39
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r44Ps5HqcvcXd12Bv7YuHRDLW7HVn7gJJ8BWHLqEXCo=; b=gyajzG6VXyezZrXdBv5vi2BjsR
	V4Mk3Opv9Ox3OfWo6AxrFgpCJTYWB9A6uygGpyO3HsCY6xWxr0oq8M6YbkSK9AjrUrK+Id/nfTfk9
	SwbH1hvPTzLTiSKH9r6VKNtcQm4b7DRbaf32bXknDeCCbuC6KHlOoDOFeBa7hChDAz3hFdFXcM2Uz
	km2S8Kvw0hyZkUT6J3zfzvSzT8bt7v0BEW+qAg9eoyG5PDVaEAc3d7LA7wCK/DlPMle6q7SDDlwgT
	vKKQn6KL+UerZPgQ2xlxLYYHFIhcAGXJJI3n8AzHUC2rGODWhPyzZ5uzx1qUBdCCOKykPrC6ZBcFj
	Qil4moRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiTd-0000000B4ao-2800;
	Thu, 26 Jun 2025 09:01:01 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhwx-0000000Ay05-3Pax
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:27:17 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-74924255af4so731119b3a.1
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750926435; x=1751531235; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r44Ps5HqcvcXd12Bv7YuHRDLW7HVn7gJJ8BWHLqEXCo=;
        b=R9x8njpfOw+HUl3l7P89DBoVKhiQja23Kz9Kd9L8BKq9rCpl99XAB0jghA82oZAxL4
         iXDJ4FC00hIyNqlHQzUFgaV3WYaM4W7T4D+O5Q+3UObyykNwTzVfxcBB6/yomFshYrsP
         eM8iaOVITygPZNsyLhnkyKkDa2Q2wA6tamED3HHlooTglLL44mLiHLFKy7S9g8Htmk13
         ZtrNJNC/qNBJoAuVbif3OSofQjk30AIh90ChG5l+N/IG+GbdngKL2fJS8xIRGJzXxv5f
         S95+zhrbOd4Ul/LPZmMzZRciIRXy9MDcm3AbyJeESIZ/85rHnw6pRnXRoz2fbvdsaW2k
         9jdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750926435; x=1751531235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r44Ps5HqcvcXd12Bv7YuHRDLW7HVn7gJJ8BWHLqEXCo=;
        b=TaImj8xXBjQwRR3UajCNjO3L+Q1Ilod9Pt+MMJDpnYukwfcduhGtG6N+9opeN9ELoX
         JaORuFVt2eifUzPRz7bxuPYCix4+6hKR11WjWsgqAGWdqUgscaGpuTLnlJB1jg5fw3fp
         J5EzeeBaVO5+UROVG8uzRY9u2FIETbV3vGqaFuk/Vdta45aJeBUfnA8B9afaFaE8KbKN
         gIhTO/OSEWVc1DLNnQt2r69RDjbBrbz8ZC/gYTHsSWBki703aSOQDenft/dzjDqZDY57
         GaTIJ2bAXVnunsgDTeIsYm+4IpSibgzdaZNKjDkCGMGSVtkRCBB3XRE/LD+iOKY/p2Cg
         hVjw==
X-Forwarded-Encrypted: i=1; AJvYcCU8YjsvUcqky+FBVI3TG9FmUp/3sbDS3cNdTAUBGak1mskcyQwOsySfdwBXWR2P/V4tBMj5kww/eAW3qhDWAA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIGDSnaVQ5VrUI4gI5qMWHG3nkgzevSewoehejlpb2XIZbizRm
	oV3fWMimRqWSnPjdmwDHotUvnnDBpzNoh2Y+0enIKGQfZ/SaGV2ZrCLYrzKXwQqW
X-Gm-Gg: ASbGncs5US4hsC9nfuddWEHUVZxAZlQpfGOQ/DyX6eaCOha3dMTCkd6uURUcDNpUhJz
	N+qgk8+HpxNlR63odM4QCTRwa/hxBkz/k2qYP788URgzp0UuqI6HHlZD1aEHCrPjZXNDOOWapv7
	MlArjHHegWoKv6WWkDd9vegFIISDtBEuMp4BkBXNZA+t9r1HlUfFeQbbSEjzeATav5CZdcLsFhq
	u5PvVp+X7fPGOzIMBV3yARzyz8dVhglcdBUsAPnIxgLKEKq7O7zhCsD2GjK7I3318u7+FN1qTM6
	fVC30i2HeoGfSy6qhe7rDHco4dkstmFx3wOghrH1M0d9EC0iGcjwlUcbbb1+B43ZhaJUzF8lKU2
	la0hfxWUDT+cm/g3i4K1tdOyTN270N5wv9D+EOg==
X-Google-Smtp-Source: AGHT+IEiHwZoRdxmeyDqqEk5iNn/sTySGGYhVTyXP+TA9IALmRWdoU/A9ILuHjZO/XP1IKMFQaIFXg==
X-Received: by 2002:a05:6a00:9a9:b0:740:b5f9:287b with SMTP id d2e1a72fcca58-74ad445badamr8669777b3a.1.1750926434952;
        Thu, 26 Jun 2025 01:27:14 -0700 (PDT)
Received: from ?IPV6:2804:d51:4975:7202:7e03:331b:6be0:eea6? ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749c88721b9sm6390260b3a.150.2025.06.26.01.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 01:27:14 -0700 (PDT)
Message-ID: <a5d676db-20e2-476a-aa75-53e2c99629e1@gmail.com>
Date: Thu, 26 Jun 2025 05:27:11 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Brazil (BR)
 on 6GHz
Content-Language: en-US
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
References: <20250602121434.3011282-1-marcoshalano@gmail.com>
 <CAGb2v645_kB3mNb79ytFb9y2xw6zp1oFvof5NX-FF7eDPNCBFQ@mail.gmail.com>
From: Marcos Alano <marcoshalano@gmail.com>
In-Reply-To: <CAGb2v645_kB3mNb79ytFb9y2xw6zp1oFvof5NX-FF7eDPNCBFQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_012715_852216_FB8FE597 
X-CRM114-Status: GOOD (  12.76  )
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

On 26/06/2025 05:12, Chen-Yu Tsai wrote:
> On Mon, Jun 2, 2025 at 8:15 PM Marcos Alano <marcoshalano@gmail.com> wrote:
>>
>> Change rules for 6GHz on Brazil removing `NO-IR` and adding
>> `AUTO-BW` so the 6GHz band can be used.
> 
> AUTO-BW is not needed since there are no adjacent bands that can be
> combined.
> 
Ok. I thought it was about the range selection, like if there is no 
320MHz available, it would choose 160MHz.

I will remove then.

Marcos.
>> Add the relevant normatives in comments.
>>
>> Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
>> ---
>>   db.txt | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index e331d4f..3b0adbb 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -321,8 +321,8 @@ country BO: DFS-JP
>>
>>   # Source:
>>   # https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
>> -# https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
>> -# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
>> +# https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772
>> +# https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915
>>   country BR: DFS-FCC
>>          (2400 - 2483.5 @ 40), (30)
>>          # The next three ranges have been reduced by 3dB, could be increased
>> @@ -331,7 +331,7 @@ country BR: DFS-FCC
>>          (5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
>>          (5470 - 5725 @ 160), (27), DFS, AUTO-BW
>>          (5725 - 5850 @ 80), (30), AUTO-BW
>> -       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
>> +       (5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW
>>          # EIRP=40dBm (43dBm peak)
>>          (57000 - 71000 @ 2160), (40)
>>
>> --
>> 2.49.0
>>
>>

-- 
Marcos Alano


