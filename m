Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF25CC7EE3A
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2YTccq4Lc7u3MiksKCLpSHjMBz8TibLa7GdmdTjd/yk=; b=b2PV4SKWOwPnIvYcGJD9FbbMWI
	kqA6cP9wzsGLxErnmzeNlG1rYCFrBwZNFtGFNahELRc/6HhS6ROf3fSmifbEW95cXe/rWRHZHE2BV
	JCMKzZry/tXKo8ExaasWzA0RJyO3plkII7nPpMBNUWTF2FuZBz/JirrYH8dnqrx6KgfoUEh5e18Vi
	H87TslwwdU7zUMSSrJU/g85eLmtRd9pwZfdro0f79/R/wcN40kTGCP38nwMRRArWGCntGLlaa4MOl
	aHJSAiZZ3XhxyqyH+cUOETbDjX1r5zyH1ry1FcWkezSWbyv5Gs/hjuuahGS64AZLHTReX5An9A01R
	prkaCzxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjGK-0000000BCYs-2L7s;
	Thu, 26 Jun 2025 09:51:20 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUj0g-0000000B9hw-3hLV
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 09:35:12 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2360ff7ac1bso6914455ad.3
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 02:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750930510; x=1751535310; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2YTccq4Lc7u3MiksKCLpSHjMBz8TibLa7GdmdTjd/yk=;
        b=E10Dmm09+bS55Zicz2zIkGJfZCbrrgGuMe6/+cAf55Io8Y7Yif5OTZwqnudLF7qXYO
         VNwqehrR6gTgUuQqYFkTjf1JFeSzTT7wwbPPqdSXrnd3vsSA6VzKhIooyf8bthPQVdBN
         c3rd0AOFo48j4vMnT1b6r9jugYD9jw69ngHbKhXJeIl+GJ20SOMDZn5xkEVCCAIBUiB1
         9GISnISiEgHQ48o//H9vEa2VnKQEFcGYTxUwT45WD5BzJHRQVjQhf/um6pHZauJnGwuh
         kSIlTUDhrVNVIBWZ+DJTnzBOVA9mOHJfLCxF12V029v46myEjPXSCkobLn/K8Dh81thV
         Nr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750930510; x=1751535310;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2YTccq4Lc7u3MiksKCLpSHjMBz8TibLa7GdmdTjd/yk=;
        b=IeSpzeanj9QFNbJXAIF+uEfcnjjkwSnYw+YM+TzmnWCHBMoG2d/hbNe4KKYXWgsW9n
         2lpfbaikYOme9sdEhgGI4NRtgdLSD8LO33FXNvxzdcasoR9b6BkawWzJqAqA1P+EF/6J
         9yfZfrvzluW/6GEsWZwx/UzthKmYj5NGDz/h11737qJXhfRlymJstg+w+UnCOr7q4JKw
         5XsrGdGlnySh9ORH7ddSnPsuYSu23h0OBGUH38UduFlpM55XVN4m8WiUumIujYms3yBl
         gbUhdyd2a91mr2C2kyRJitkee34J+olU6iIuLi7B2uefrwRV+OYJaGW6Kd3Q2wPAnDrT
         6XMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpxLUJ65Zy1owdakf0HMwCBUBbXhkmnUtv89gwLlTM0yxQpJO4oySETFG0PovdjDnOVZMdbn6tzaJ8BeLnyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkHYkwiazeOk2UAalKjXNUmyGUfwQiPowtU2Q/0/+T0dsoObue
	MW0J2quu3SXBaR4v9sqCNjYTULmVWh9r3fq5cPknGSy1GtuDcjMxxsv6
X-Gm-Gg: ASbGncvlkidGnxOI+oAcwvBqxWfJSePCO9Ut1OTILlHqeBi32Dt1IZycwCc0g8EuTr7
	Us++Btvi/q0qN+KJ+N0HI+oMmXL0dj4ENfuhAeKpoOWS6cOIQmDNdwuexNcygjqNExuDmZ+Tiyg
	pfOWywJzLifmHmV0sX5mM3ZNtJ7KUNTEri244XrRhMCwwu+oGZ9ZZVAGbCaiUBwBiX41gFILjcH
	F4WMEVIcQ8zHE14BILX45UBzQc7FHlSSL6IvhH+YrBLPc+bdMNqFblRuUCClSmhQP5bkdTMmM/y
	RNWQeMaMKtR+rhYv/aHYZ86oaNI48qI5DaOVBWsYUIm09+oW7GtLoSJ66a0AyqNe7q7R7WAlj+f
	vPcayFj9esvM8w3GGXBJVYAScylWifRQ1tJkrgQ==
X-Google-Smtp-Source: AGHT+IF5YlfxD1w98JEd+twGu2u73yP5jiUJbiU11iK9yejZxpyWbiGfd1Ju2WGdUjMuMX1bg5LQ9Q==
X-Received: by 2002:a17:903:41c1:b0:233:d1e6:4d12 with SMTP id d9443c01a7336-238c8720354mr40121295ad.13.1750930510061;
        Thu, 26 Jun 2025 02:35:10 -0700 (PDT)
Received: from ?IPV6:2804:d51:4975:7202:7e03:331b:6be0:eea6? ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83fb15bsm153502275ad.81.2025.06.26.02.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 02:35:09 -0700 (PDT)
Message-ID: <fd31fb5a-5bed-4920-925c-e848f2dc4b13@gmail.com>
Date: Thu, 26 Jun 2025 06:35:06 -0300
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
X-CRM114-CacheID: sfid-20250626_023510_944953_7B9BC4DE 
X-CRM114-Status: GOOD (  16.81  )
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
Based on that, what should be the maximum dBm? I saw it mentions 30dBm 
but also 24dBm.
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


