Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEF3EC8302D
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 11:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r4kNAGRJV8NTLdF9b/sI3XexTkYxZMN+OUBXRm12vFA=; b=aoKRb+/mWC3zR9z8lYbNg+zNnY
	vVc3TzJeCCK6+WSkESyKth6ukkkdCcdzWaXgSl1JSLSfPQhBGiz4zo2fYB3kwrD2wfvHspIiHQmAY
	wxx1IBoa0gmcrX2ZhL0WLtnwPz8oEDmQpLHbE5UG2NySl7OcLbsFfEAvIkIpGw4Egrl4Qe8ks7ow6
	mDusueKFUjNsIoEyOFkHASDbjzb/AYMSrWv3rwNbEVSEyz5ZwtlydakT4ZFGfWhlKFLTvtrsCXGoP
	etyB+smuMAjA4w6PHjp2HS0l6kbBgZ/Y/fIZ+6jqjkSUSDCNfOaMlWkz9v/PvycyP7Zf89IOgDQh9
	lfMJ1nNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUkh9-0000000BOCQ-0upi;
	Thu, 26 Jun 2025 11:23:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjbi-0000000BFr5-0tTr
	for wireless-regdb@bombadil.infradead.org;
	Thu, 26 Jun 2025 10:13:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=r4kNAGRJV8NTLdF9b/sI3XexTkYxZMN+OUBXRm12vFA=; b=TZxPpcupeGaSk7Mqz979AMtSfM
	b+7xlFe4TgWjr/1gLUAF6cjpY2IiAEWneQ6M2wBLmLduaeUNq3OPjQTUZmq2IN3ANROemwSYQBGhg
	Z6Y/QxnnIhSOLtrEg6d8RejnsHQ8DodCBMSefqR0xbvLfQKuZO3SzP96kibr1dVsXE6VEIgEN6MAv
	fmxseI6R/wovrIt52RsHh5xMwe31GM43xuNtqGxeFoV1gYr0I8rzTReuwZFXW7TkS9tGc4vRfrbmn
	ZQcUvNCXugWk01pCOe58HC5/6n/kA+IBeqF/FSIk9UnhK+AmRAw8qadjNj9M+gTZfOA/vMPqGi8XF
	SwAhFFDA==;
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjbf-000000065AI-0MmU
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 10:13:25 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-234d3261631so6573495ad.1
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 03:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750932801; x=1751537601; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r4kNAGRJV8NTLdF9b/sI3XexTkYxZMN+OUBXRm12vFA=;
        b=fBuFR99DlhMMTN2pBc4G8ovtN3hyXPn+z2VIijtmGgMvIRgILnpMNGidvH8T1thTLs
         e7m7dDXgX4NjHvsNfjaq99bDlanx8oA3nBs9z12LcmNOD7+RhpQFlCrbcYdP5DM7Cu+h
         IxgN7PDh4sDZjYu5lELVcecY447Ex6TLTk5F+CMUNLbolOd7PabHh/9npZlruRBHp0eH
         /pIxyhK6Xbxis97lrpkv7QoU8/CVtMzriNQQMqMiwhku7xc7Ul1sF5FZ0RKpG785hWnW
         jrtZZAGSICMuRh9l6eQgFf9wGLlPvhmUzQ9rySt99MrhFnh9zcO7iEf/B9Di09PuEhjw
         MpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750932801; x=1751537601;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r4kNAGRJV8NTLdF9b/sI3XexTkYxZMN+OUBXRm12vFA=;
        b=Y2HVIkxgf4VKE8rFcJpa9wXT/6z4r3A6wbvzz9DkNzXilS8kk91jX79BqI1NsLD6Cf
         ChwIO1WRu0AJUlxmfb/CSdKQmU/q25Ymo4kw7hGiMlzWxLSATn9WBOWW1iXP86+R2DNk
         GEmileq/94dQg7JNmoiCWLcXfyGpU8+axBRIyY93BqBJ75rMLK+bmkWkSIskjnOyvJLo
         ZguGvmiveaZPKmNL4TpTko1INmnaOTPIOtEiD7cOxmiALyFUVLiEpXApnLv1CaMSxaW+
         b52nsEm1oYZAKIHs9DzqQTcwR5NGYlHfH70ybUc5dllM3j1l9ywfTKr4scv8616beTm1
         /wGg==
X-Forwarded-Encrypted: i=1; AJvYcCULmOu4uFsQEK5cfFo9nJNHpk3NpjuUjguQGEWNT7EcgLmmrLmZdVJEsA/lPWXz2yvOj867AuSuBBBr92QA3w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2MlXNPJ0lpCGlgknjkaG6lfabctsS3H4mBgJOZk0W2jA5Q2+d
	dxN2ICkCDq/jHFeEZF01ps5YoMlYlcaGb2+shwh/8qRKDxd++0ht/d7MC/9Z4FTv
X-Gm-Gg: ASbGncsDnnQQdwYB+/SGMfpLzvTCoyjgzZpsmqaxl7Vbe0oeKssnhrz+R5XgY/tz3wW
	oKPxEiY40Ty9dk7uSqXzv6qzcUi6mD19gtnY95+Hkn0fGcF37CrktjeEHuj503uECbOVuquWsEg
	yS0vgZccEw6EH8rwjX7C7SpyyaiBSA76Uwb6Nt8NW0npz5noQUsffClh5jiR3FMrNWJ1SkIvbK3
	TftJLvkPeGt7mCGYcvf/IEfAfg3noHDIirCVs3gbhI6BSWEp2xD2iVmRsV3RpFd9JeN/5pRuT/g
	dlmqw1uA2F/bzK2cM8NG1jmN0jJFd0Kz6d+AOm6VHEv2IifMX1EkyN33A1l2noHGJ/IdWbE/vPc
	YgeO2uWV6UwfNOPw5uyZPLgHspOuGJvA6sOx6xhma1Cv6qfgH
X-Google-Smtp-Source: AGHT+IGKjEitZIKhw6knJii5Dxdp3cWfS/YAZDRrid2FuTClMjpwwICMJFaYBg1PXx4GSc0zDjS9hg==
X-Received: by 2002:a17:902:ce02:b0:235:f3df:bbff with SMTP id d9443c01a7336-2382409e385mr102562735ad.4.1750932800774;
        Thu, 26 Jun 2025 03:13:20 -0700 (PDT)
Received: from ?IPV6:2804:d51:4975:7202:7e03:331b:6be0:eea6? ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d874fe39sm153753155ad.251.2025.06.26.03.13.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 03:13:19 -0700 (PDT)
Message-ID: <af36819b-74a3-4fb1-9b4a-69d77dcec863@gmail.com>
Date: Thu, 26 Jun 2025 07:13:17 -0300
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
 <46ab2a6b-82ff-4330-819e-99a67280409a@gmail.com>
 <CAGb2v65BO=EV+HxwOV7it94q2wNQA5_8AtjuHkLdV_2R33T_NA@mail.gmail.com>
From: Marcos Alano <marcoshalano@gmail.com>
In-Reply-To: <CAGb2v65BO=EV+HxwOV7it94q2wNQA5_8AtjuHkLdV_2R33T_NA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_111323_312131_B7920F52 
X-CRM114-Status: GOOD (  19.17  )
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

On 26/06/2025 07:05, Chen-Yu Tsai wrote:
> On Thu, Jun 26, 2025 at 5:56 PM Marcos Alano <marcoshalano@gmail.com> wrote:
>>
>>
>>
>> On 26/06/2025 06:23, Chen-Yu Tsai wrote:
>>> Hi,
>>>
>>> On Thu, Jun 26, 2025 at 4:37 PM Marcos Alano <marcoshalano@gmail.com> wrote:
>>>>
>>>> On 26/06/2025 05:15, Chen-Yu Tsai wrote:
>>>>> On Mon, Jun 2, 2025 at 9:23 AM Marcos Alano <marcoshalano@gmail.com> wrote:
>>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> The rules for Brazil were based on this normative
>>>>>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680,
>>>>>> as mentioned in the comments of the entry.
>>>>>>
>>>>>> This January came out a newer normative
>>>>>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772,
>>>>>>
>>>>>> It allows 6GHz frequencies, so the line:
>>>>>> (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
>>>>>> Should change for, at least:
>>>>>> (5925 - 7125 @ 320), (12), NO-OUTDOOR
>>>>>> The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don't
>>>>>> work because of this outdated rule based on an outdated normative.
>>>>>
>>>>> Those are very large documents. Could you help point out which sections
>>>>> or comments apply to your argument?
>>>>
>>>> https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915:
>>>> in the items IX.4 and IX.5 mentions the 6GHz frequency.
>>>
>>> This only covers point-to-point usage. You would need to modify the rules
>>> and add the PTP flag. Likely not what you actually want.
>>>
>>>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772:
>>>> You can search for "5925-6700" to check how the allocation is done.
>>>> It mentions satellites, so that's why I set indoors, but maybe you
>>>> understand that is not necessary.
>>>
>>> This only gives the band allocation, not the requirements for each use.
>>> Also, satellite communication is a different use category. We should look
>>> for WiFi or RLAN, or perhaps "comunicação multimídia".
>>>
>>> The requirements I were able to find are:
>>>
>>> https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2021/1510-ato-1306
>>>
>>> ChenYu
>>
>> I created a v3 patch that updates the comments with the new normative
>> you found, removes the NO-IR so a AP can work correctly, and changed the
>> maximum power from 12 to 27, since for APs it seems to mention 30dBm,
>> but I considered TPC like the other frequencies.
> 
> You failed to consider the power spectral density requirement. As I
> mentioned in a previous reply, the requirement for clients is -1 dBm/MHz,
> which at the smallest channel width, translates to a power limit of around
> 12 dBm. The original value is correct.
> 
> The database in its current form simply does not have the capability to
> model things like PSD or AP vs client device specificity.
> 
> If the regulations require NO-IR for clients, then we cannot remove it
> just so that APs can work. See [1] for the same discussion for US 6 GHz.
> 
Where can I check if the regulation requires NO-IR? I couldn't find any 
mention to this.

> Sorry.
> 
> ChenYu
> 
> [1] https://lore.kernel.org/wireless-regdb/14ab2a58e7603047354a17b2c980c143992a6782.camel@sipsolutions.net/
> 
>>>
>>>> Marcos.
>>>>
>>>>
>>>>>
>>>>> Thanks
>>>>> ChenYu
>>>>>
>>>>>> I'm no lawyer, so please if you see something different, like more
>>>>>> granular control in the allowed frequencies, please let us know.
>>>>>>
>>>>>> Thanks,
>>>>>> --
>>>>>> Marcos Alano
>>>>>>
>>>>>>
>>>>
>>>> --
>>>> Marcos Alano
>>>>
>>
>> --
>> Marcos Alano
>>

-- 
Marcos Alano


