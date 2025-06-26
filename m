Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F12FFC7EE39
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pDl+HjQKNblyTENuKkC8aXRjpJuMBJaBTg0TQtM+X6g=; b=XpEUhM1W250LwPToxz7IEPRjeQ
	MY4P3XCmOW4P79l63hJYTvtW6Gx/Q5eEkjpTEyz81q2ooK6rGVsfpWCp1lupSWy7qJQux3Fl5Nox9
	9bIXwLdF83IvUt3M3wZRZNw0ETSR1QaaEiCCo7HrlX6BuQ1vRjXXvSayBSnXOXxyCd9W+M4xC+dRw
	GZ9Qv1tN/S8qbDj1ulhju+G9q1+TMCY6Ocs6gs675jeA3SYIfBAfvWmYIUkIux3nbyYtXm61Qs+8D
	oiONQPjV0+UPxSDYVAl4U2fIbTVXQ/if4mbEFjYU2lUJ+KHOtHtsv9dvugWdjg2icLL+j/1420zhk
	eCfDENEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiVr-0000000B596-220p;
	Thu, 26 Jun 2025 09:03:19 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUi6z-0000000Azgl-37GQ
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:37:39 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-313eeb77b1fso630538a91.1
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750927057; x=1751531857; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pDl+HjQKNblyTENuKkC8aXRjpJuMBJaBTg0TQtM+X6g=;
        b=CgKg3NY9EDbGQYgQFgdCgbwO99cwvH12YD1YJIo606NBWQq1I4bEiAxEOjJp77Pp9m
         6BkzbN3RG2ttwHKdms2/bdhgG328il15ddyCHE4nbYqsmHewIq5lsPqv6kSX8IU6x4Ag
         O/auAGUT6qnDHTDcFbV+U4DX95tqN2kEEHJfFXjYccORHBgRvx7izZkBHAS31SDMxr4X
         wDcYJbarthbZetqwxhZ6AfPs9PQSFpfOXDOQziVASj7yyQyojUZHcKOcOODXGl2GGnko
         GD2H/QLvxdPYbNKybaJozfPE9aMH4I4Ka0UEoIo6qa0v2YRN+uLOHiA7ZwcT/OWpDJXw
         aQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750927057; x=1751531857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pDl+HjQKNblyTENuKkC8aXRjpJuMBJaBTg0TQtM+X6g=;
        b=brw+a92zgTHfOeToBKyVfhmfE+DEd/aB3LVyqrGxmum0VR8ikBt0aCfLW2k6UidXHv
         iz6yAA1xmA36KFo4oZwJDIl3iuGNdqWcNPjAMBPWOjkRRT+3G+BQBYHRiuoi/xuO8qmP
         LZzdqW1+EfPQ/KomUH6cqaE3Tn18Dk/HgwWWzLzA66MSR7lE9pwOStQocYFZywXMhBJr
         VYsFosUNjPWHEMrSeQFBBY+daMy2ck/5YgY6rZKxIVdmKJPiZipPWascPdAhKH1NBWP5
         j4TFdOeEhvCFy2IKqR1F2idUCZhXmmU87/+JDkTxXZB/2OC172uNUdx893pvLNdUPBFn
         kW2A==
X-Forwarded-Encrypted: i=1; AJvYcCUVeiREA5CLkxdiwI6cTYfYuzGHrYCQNme7Ngcl+OD2vIu7L0LyjJ91bitRfu1Ylt1Hf3vEFJMx9QaGnffh2Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxhiNwH8ut/osqJ9ydA5a8bd7AlJl1RKSJ7PIAUBEXwi2ByiiXG
	J50tp7Gg7We5VHDN8XjASfXHuXbMi6I3IrQPhzbGMe2gUap46wn5WUW7
X-Gm-Gg: ASbGnctZVauo7eQ1Gx1XnZ+8PGsPw3sIkcOXPx5NCZyDSinHEgSaweWvMOW7EyUysyT
	UVp0VKzmLW0BY5mEhU21hrQUz52qUMvmfLGIXDzS0Gn14t/4HBR/PzW2gJ66HrNJk/Xg3Yden7o
	+iTXscWRt6hUYAH9rbJiTpaMPmpCCn/guKpT8t6upmxNKWan2fwdpJ2R5r/FB0Av0JReZdqoJX1
	ONMyG5TDjpevyS7G/5b/hTDgIkRtS+bZ1Qg2kOg+fbvYoknHG4V04HfskWnYWVdCSoGgUZveKro
	fSDREPVBo1zFqJGZNQ03kN4rByv046K5PbdIQD84xFW0ErPanWFvzwesa5BU1UF8QaJ0Ja71IHe
	OOfpUgKXQj4GXJekhVNpA6eJWF/jrl7sS/ts2KQ==
X-Google-Smtp-Source: AGHT+IGGI6j+XWoUEwc2yyqWgS4iONzHoahjfEhD/mKHPQcivQf6GhaO+Paty0zfnbLFeWS5rNokSg==
X-Received: by 2002:a17:90b:5548:b0:313:28f1:fc1b with SMTP id 98e67ed59e1d1-315f25e0325mr9102336a91.9.1750927056855;
        Thu, 26 Jun 2025 01:37:36 -0700 (PDT)
Received: from ?IPV6:2804:d51:4975:7202:7e03:331b:6be0:eea6? ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-315f53a6f47sm3762243a91.14.2025.06.26.01.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 01:37:36 -0700 (PDT)
Message-ID: <ee7a2587-3e4c-4bb2-8eeb-961dbbb9ca97@gmail.com>
Date: Thu, 26 Jun 2025 05:37:33 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Content-Language: en-US
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
References: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
 <CAGb2v64z3Yv_MNxJDTMcDR5ajD_L0zpsea2aBcrCLKfw3HUmiQ@mail.gmail.com>
From: Marcos Alano <marcoshalano@gmail.com>
In-Reply-To: <CAGb2v64z3Yv_MNxJDTMcDR5ajD_L0zpsea2aBcrCLKfw3HUmiQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_013737_778845_D82A6AD3 
X-CRM114-Status: GOOD (  10.89  )
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

On 26/06/2025 05:15, Chen-Yu Tsai wrote:
> On Mon, Jun 2, 2025 at 9:23 AM Marcos Alano <marcoshalano@gmail.com> wrote:
>>
>> Hi,
>>
>> The rules for Brazil were based on this normative
>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680,
>> as mentioned in the comments of the entry.
>>
>> This January came out a newer normative
>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772,
>>
>> It allows 6GHz frequencies, so the line:
>> (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
>> Should change for, at least:
>> (5925 - 7125 @ 320), (12), NO-OUTDOOR
>> The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don't
>> work because of this outdated rule based on an outdated normative.
> 
> Those are very large documents. Could you help point out which sections
> or comments apply to your argument?

https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915: 
in the items IX.4 and IX.5 mentions the 6GHz frequency.
https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772: 
You can search for "5925-6700" to check how the allocation is done.
It mentions satellites, so that's why I set indoors, but maybe you 
understand that is not necessary.

Marcos.


> 
> Thanks
> ChenYu
> 
>> I'm no lawyer, so please if you see something different, like more
>> granular control in the allowed frequencies, please let us know.
>>
>> Thanks,
>> --
>> Marcos Alano
>>
>>

-- 
Marcos Alano


