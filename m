Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE4DCC7EE32
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cvGXJZ5mCQXLNNruf7I63Z9QnuEQfUAXtElT8QSqxJ0=; b=ZkYT9zlQPMJnyxor/WF7BJy8G5
	3XE0TAl/AlJXFJxZhbexcygvnIv+7PLkcc/gTI9p2XA8kprUe49EBHaDSDJOFTdVbhJydUQQB6cuO
	NZV4nHQ/j4jbSBKmTUBxJRXIBvHTNs66J06xykeblTBnTHtRFnl5KbBmjGVBcVuXBQWHUdnp9ZKla
	Jb1AMuB1+LvQVmpBhI0plRXRx8J9SVfn6K4BSkjJUp9HSCO1DpTc9xWtp5Yy+b0fnRQjaglu6Ga/u
	O5g3j9VEc+sR8CVDkrFlV79usfRYiTIQORN4cgOGSaDZJAUPXWY2U2h1KnFoC6c609liFwkBzkX/3
	yGi3b7DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiTc-0000000B4Zu-1r2C;
	Thu, 26 Jun 2025 09:01:00 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhvB-0000000AxhF-3y2K
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:25:27 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-22c33677183so8135145ad.2
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750926325; x=1751531125; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cvGXJZ5mCQXLNNruf7I63Z9QnuEQfUAXtElT8QSqxJ0=;
        b=CNRmQ/VBbODCFgOc5wtHJuOgoMtNyeHHNcHD5zgUdH3gKiGy5ZAmQHreEOir2I32/6
         97UB+cJZUzSCjDPLYlvfqns0ygvCJJUvZENSCuiDiAcLL/NqzDPOliIrd4mv9Gp6AZXp
         YtewHM7wSlpQsM75whQx8Ux5/TZzR+Wikbls6a2uzYlkHzgSFMHWlcfdc60NyeuiZjIV
         DIDi0EOsIfiWoYQ9RxiUOR4TWPPStLHAaop8BlbNVJ6Ucv/aeKZ4Y3Hy4WtQnIbexTza
         +qIosetYqFSKlIAvhkgVdVQwCQzERb6YrCuAq8mXhMXQHonW0v4sp/yxeevcSsAOCNNW
         yHPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750926325; x=1751531125;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cvGXJZ5mCQXLNNruf7I63Z9QnuEQfUAXtElT8QSqxJ0=;
        b=NTDGUIJiu7MSnNFAlcoqNWthgOrqx2/TDne3gKmnG8BM02CK0nAkVUw6FbwOgGBn5Y
         0sNiSALiadLMpPe0J8Xo9/0wBuyndV18MNjxCO2cYbdLM6NiTxMid+F7QZFhAzQ8WsRG
         6QK8IyiGoYQFcCaiW8AwstaUt0KgprZKZZhv+ckIVlaCzOthPvH0MRI9bQ/4dvsAh3Wu
         aEM8tVeeloRcXozQIZs/xp9JIt1F0+SlyEK6A0+myMs1YEVOHb4UgXubWUfA+kcE8J2i
         R6i8bH3HpaNiW/lwpEBfNZI16VaF6I8ZC7g4H1Y/lP9Cti94FDGzJJH3FWMbQL6dx4Ns
         gbuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWB847sqCFyL7YBathGxIgZzpm+h/s+EWz4ZDWt3FmteVKDYjAKDNXU6YWgITbgdETqTV3P9EWeUfn/n7CHRw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwccFyElATh8lQJ4/DCT+EFsB2uj5Sdmty3K4XSVTtpi3VgwGyG
	Z2lmNdrb0PAzJBGHsKad2F1pqIvhOws3Kq7qIytIlJf0IOgkbHVUpjUbLbacMctX
X-Gm-Gg: ASbGnctcUS7VSepgXZfI0LhFJBxAk4rNB5KFvI1skQM1kYTnXhZh1FtvdDoy6B1vks4
	sfqwVX5HGCx75J9mg2/cN81KcYeF1F3hLmEiPhjkJPhgpcC/B+o7qh5bkyQdoSMJSLQ+muaXwac
	BkALh4AVWGwQMHPrik169k7PGOc7+JthLtuh9hc2/M+bBojQOWo6gNb5rH0LsjeAIiv1gu2sonW
	kABecjaSoPonQM6+cAnpLbsavX2WcEXVS59enOC7uwLdnVTGLNYrGfY3FzFvZIGPPey4b5HFI/O
	Pvq4l7JDxWdwTyBQpNopxi3m6dqdAemmZDR7pVkhHuBKIhcf5cWAp4a3zciAe2eEuVsqeQf1dIZ
	ppsGeKwOg74IV4hc7FV8Tvf/HCqJBtaS7jRvPeQ==
X-Google-Smtp-Source: AGHT+IE7csJp1OjepPT/fKyPevx3HFtsn7+CJhPoZvjV5WQvpgR0r692NTPW9rpMbrhAk7rs86Ix+Q==
X-Received: by 2002:a17:902:ef03:b0:237:cc75:77a4 with SMTP id d9443c01a7336-23824362a9fmr91006855ad.42.1750926324557;
        Thu, 26 Jun 2025 01:25:24 -0700 (PDT)
Received: from ?IPV6:2804:d51:4975:7202:7e03:331b:6be0:eea6? ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83cddb0sm154224535ad.58.2025.06.26.01.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 01:25:23 -0700 (PDT)
Message-ID: <d73a8c5f-15ec-4ae1-b4e1-b2113bd82cfc@gmail.com>
Date: Thu, 26 Jun 2025 05:25:21 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Brazil (BR)
 on 6GHz
Content-Language: en-US
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
References: <20250602121434.3011282-1-marcoshalano@gmail.com>
 <CAGb2v645_kB3mNb79ytFb9y2xw6zp1oFvof5NX-FF7eDPNCBFQ@mail.gmail.com>
 <CAGb2v67zJ5RSyc-tEw2bXYzeJ2q+rkqbgCNZO3Gm+krRbap-RQ@mail.gmail.com>
From: Marcos Alano <marcoshalano@gmail.com>
In-Reply-To: <CAGb2v67zJ5RSyc-tEw2bXYzeJ2q+rkqbgCNZO3Gm+krRbap-RQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_012525_985243_819C6BE1 
X-CRM114-Status: GOOD (  12.40  )
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

On 26/06/2025 05:16, Chen-Yu Tsai wrote:
> On Thu, Jun 26, 2025 at 4:12 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>>
>> On Mon, Jun 2, 2025 at 8:15 PM Marcos Alano <marcoshalano@gmail.com> wrote:
>>>
>>> Change rules for 6GHz on Brazil removing `NO-IR` and adding
>>> `AUTO-BW` so the 6GHz band can be used.
>>
>> AUTO-BW is not needed since there are no adjacent bands that can be
>> combined.
>>
>>> Add the relevant normatives in comments.
>>>
>>> Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
>>> ---
>>>   db.txt | 6 +++---
>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/db.txt b/db.txt
>>> index e331d4f..3b0adbb 100644
>>> --- a/db.txt
>>> +++ b/db.txt
>>> @@ -321,8 +321,8 @@ country BO: DFS-JP
>>>
>>>   # Source:
>>>   # https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
>>> -# https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
>>> -# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
>>> +# https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772
>>> +# https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915
>>>   country BR: DFS-FCC
>>>          (2400 - 2483.5 @ 40), (30)
>>>          # The next three ranges have been reduced by 3dB, could be increased
>>> @@ -331,7 +331,7 @@ country BR: DFS-FCC
>>>          (5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
>>>          (5470 - 5725 @ 160), (27), DFS, AUTO-BW
>>>          (5725 - 5850 @ 80), (30), AUTO-BW
>>> -       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
>>> +       (5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW
> 
> Also, the 12 dBm power limit is warranted by the PSD limit of -1 dBm / MHz.
> At the smallest 20 MHz channel width, that converts to around 12 dBm.
You can see here: 
https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915, 
in the items IX.4 IX.5 from table IX, that the maximum allowed dBm is 38dBm.

That seems to align with the 40GHz range, where the maximum dBm is 40, 
but it's up to you.

Marcos.
> 
> ChenYu
> 
>>>          # EIRP=40dBm (43dBm peak)
>>>          (57000 - 71000 @ 2160), (40)
>>>
>>> --
>>> 2.49.0
>>>
>>>

-- 
Marcos Alano


