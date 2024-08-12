Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD68C3DA7F
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 11:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tl5A5OblV5XVWMm0AASRkS892R+h1FRmHY3a39/eDWk=; b=exbJXAAnflxUOG+hkqR0WWuUAe
	wbfrsa3jl0Nb/56VEJ+pnOn7raSoVsgkaQuujSM9OVVlM6iLDyLNjIguBdkpiorewgsT+cPQ+5eqm
	5sJY/g2IblDf9CZRoo+2q2ZLF92e5GpP40+L3o1JniVm+ft4QTHYSYPFQJvc1fDmAkn1ICN1E6huL
	6LBKTGhIJ9El4/B/3fYLd+o32orWZBb0izfAQN0/WOkLTZ0lHI4RiuEba2EykZkzMJLwQFLYmcaYM
	5BbAywQMOhBQME+XApYqTlaklXI7iHB+wLgvQ2REnEUEy0s5zGdQx+RWYkILIL8M9g8KyXT/7HGoo
	yvsdqtRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTNI-000000009Sz-3Mdf;
	Mon, 12 Aug 2024 11:38:08 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdRFr-0000000HQo6-42sQ
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 09:22:21 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-70f5ef740b7so3765889b3a.2
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 02:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723454539; x=1724059339; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tl5A5OblV5XVWMm0AASRkS892R+h1FRmHY3a39/eDWk=;
        b=BJ5HgT7bDPS7NjAuOTWP2lsGrnROlRstDzqRO9LXjvOruoFeBOWxq1tUbJK2Mi0Ppu
         iYNEh5BGSJAZg3HLLRGi2PRGfebnB3tR1sfVfddS8TVMQ9ek3gDbZrjajya8dqdn7sK6
         fHixGhn6pmPaPgAo3TqCyfj7CxXDRgoW6Av3V0u+RsZxWmOokvpA8iJ2IPssvanE7UHq
         fV4a60RYHYgXxVw77JsjTcL2qcnX2/8tAOVddOsL5nFblVbHHTX4ZO0/4zE7K5Il1vNc
         BeFDpfhRd5iA/Cw4Hn5oHJwcSGJpTuHNvBB0ZjrgUWAenMxtQbPnEvXqZnVWNd4F4m4u
         oFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723454539; x=1724059339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tl5A5OblV5XVWMm0AASRkS892R+h1FRmHY3a39/eDWk=;
        b=JWFI7+rxkE+8O7betNvkua2v13cDba4lO31yyidAaocMakuvwD2xwqD9CaE1X22nQh
         Xd32ZvRLLbQxzIp1OS8heUiXg0zlzO+yP9ZoM2GeKizvBhGDxiXmcd+sC8Q+s0pTrdtI
         656NaIU2x+4hvlpXX5/7o1GEHnQ44zVQRqObZfHMSL8BWiEGeHEy9zTu9PmJO7/MPSzu
         a4f/EdpEUFJjHjdGhfi7Ep5iO2TEFACM0Cq+iBsACxxKV4LgVWvzBP52z9GS3lGV8FTm
         Ex+BMOKNbgRcCP9agNfBvEjknlEiRKQm7IVB8EQ2qrJ0wujUPRYWVIO4nER7+lkltPrC
         QhbQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2nUz7C8FB5Q7WBu4GWehrbRRPayuX82+3EK3Su5oQH/zLqTlYd0z/XbZ3D62JvLFC/FZuAJr6rZoi9sFDleC3FYb39e2Vb9v9Y3j0DQJk2qk1
X-Gm-Message-State: AOJu0YxUjUoal7ZVWe/PxJTEgaY+HSCnCJqHEEfKCIZjTcfqAJ8PY5kU
	Sn/qtheywOUSJJ6GJmsN4xUrO+E/LvxyimE4YqnvSiBzaumruCjKgj7xSQ==
X-Google-Smtp-Source: AGHT+IEcog8jghpbEsT40ekKK8skI8oBehCCCPOecT8tMxB1IXsyOm//ovP2R7SJg5PhzQbQpS83uA==
X-Received: by 2002:aa7:8892:0:b0:70d:350c:757e with SMTP id d2e1a72fcca58-710dc6cb9cbmr10744935b3a.10.1723454538538;
        Mon, 12 Aug 2024 02:22:18 -0700 (PDT)
Received: from [172.16.40.166] ([103.78.35.70])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-710e58a80dfsm3573500b3a.52.2024.08.12.02.22.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 02:22:18 -0700 (PDT)
Message-ID: <53f4f012-a454-443b-a2de-6151752fa5db@gmail.com>
Date: Mon, 12 Aug 2024 17:22:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: wireless-regdb: Inaccurate regulatory rules for Brunei (BN)
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
References: <45213523-32f6-4e82-958b-6271e8b7e366@gmail.com>
 <CAGb2v64OsGpERdrojMgfbQspk_vwsm-X16Nj4ntvN+1azaEM9w@mail.gmail.com>
Content-Language: en-GB
From: Nathaniel Chin <thegamingorangutans@gmail.com>
In-Reply-To: <CAGb2v64OsGpERdrojMgfbQspk_vwsm-X16Nj4ntvN+1azaEM9w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_022220_029486_C7EB7860 
X-CRM114-Status: GOOD (  20.98  )
X-Mailman-Approved-At: Mon, 12 Aug 2024 04:38:07 -0700
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

Hi,

> Thank you for reporting this. I currently cannot open the 2014-2015
> document, nor the underlying website. It seems I am blocked.
I also seem to be unable to access the entire aiti.gov.bn domain as a 
whole as well but this specific document hasbeen archived in archive.org 
<https://web.archive.org/web/20240724130146/https://www.aiti.gov.bn/media/voqau1jw/brunei-darussalam-radio-spectrum-plan-2014-2015.pdf>

> the 2018 document reports two
> limits: 100 mW and 1000 mW. Do you know what that is about?
Unfortunately, no

I've found another document 
<https://web.archive.org/web/20240724125731/https://www.aiti.gov.bn/media/qjchjoni/code-of-practice-for-srd.pdf> 
(appears to be un-dated) which makes specific mention of DFS and TPC.

Best regards,
Nathaniel

On 12/8/2024 4:19 pm, Chen-Yu Tsai wrote:
> Hi,
>
> On Tue, Aug 6, 2024 at 12:51 PM Nathaniel Chin
> <thegamingorangutans@gmail.com> wrote:
>> Hi,
>>
>> I've noticed that the current values in the regdb for Brunei do not
>> match with the Brunei Darussalam Radio Spectrum Plan (2014-2015 version)
>> <https://www.aiti.gov.bn/media/voqau1jw/brunei-darussalam-radio-spectrum-plan-2014-2015.pdf>
>> and the Telecommunications (Exemption from Sections 33,34(1)(b) and 35)
>> Notification, 2018
>> <https://www.agc.gov.bn/AGC%20Images/LAWS/Gazette_PDF/2018/S039.pdf>.
>>
>> Which both state that the authorised bands are: 2.4000 - 2.4835 GHz at a
>> max of 200 mW; 5.150-5.350 GHz at a max of 1000 mW (2018 document); and
>> 5.725 - 5.850 GHz at a max of 1000/4000 mW (with the latter requiring a
>> license).
> Thank you for reporting this. I currently cannot open the 2014-2015
> document, nor the underlying website. It seems I am blocked.
>
> Regardless, the values you report align with the 2018 document. One
> oddity is that for 5.150-5.350 GHz, the 2018 document reports two
> limits: 100 mW and 1000 mW. Do you know what that is about?
>
>> Additionally the 2015 document refers to FCC and ETSI regulations and I
>> don't see any mention of Japanese regulations?
> This is from an old change that added DFS-JP and associated a bunch of
> regions with it. There was no reference given.
>
> Without access to the 2015 document I have no idea what the DFS requirements
> are. They could also be under some technical specification that describes
> the test methods for compliance.
>
>
> Thanks
> ChenYu
>
>> Best regards,
>> Nathaniel Chin
>>
>> P.S I've had to resend this email because initially it was sent as HTML
>> instead of plain text so if you've received two copies: sorry.
>>


