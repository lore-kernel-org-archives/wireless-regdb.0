Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78395C54FB3
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Jun 2025 01:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:Cc:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S2CgSy13ZScnq7dO2F3vOd+BoHdjpC/dfBE6NY2PG1I=; b=ixQmVnboaaNVpMl+JdBX5Q3pxA
	DJzgTWEKqD+gxKDCtLKUrFOKXRQ5v982rNW4/wMpAEnkHXWgDTrT19fsGYAYpN/EMKCaY3oTpW27y
	3mTlrqqUjYCVcRaldDHRBVzUR5yPZOo5R0e6q1VvKrREZ8XivB6jrzcEZqMok3VsTfFn4qikgRiiU
	z34M7JtjG6q2Wmcs2qGOtRmDHyP/mdV7p6db6hSkS4051CPZkea5NhONMK9kmkkMGWJXqCGOgob6x
	6BHj76NgKdQOnNkQKPMbpGsOcPQN5qwogVzxm0yQhQp8x69P0UWixYQ6Xji6q3etOKPjCBTys8dOx
	X1G/TIKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLttC-00000006U6c-2Tkg;
	Mon, 02 Jun 2025 01:22:58 +0000
Received: from mail-vs1-xe36.google.com ([2607:f8b0:4864:20::e36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLsR0-00000006BGB-0JOe
	for wireless-regdb@lists.infradead.org;
	Sun, 01 Jun 2025 23:49:47 +0000
Received: by mail-vs1-xe36.google.com with SMTP id ada2fe7eead31-4e6312895d0so1039078137.3
        for <wireless-regdb@lists.infradead.org>; Sun, 01 Jun 2025 16:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748821785; x=1749426585; darn=lists.infradead.org;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S2CgSy13ZScnq7dO2F3vOd+BoHdjpC/dfBE6NY2PG1I=;
        b=B90hWtvsjNYXGKR+MKV+zIuTfVyITLMshKLRK6p7290LsYeIXDjGce7py8GxjIvxCY
         pZl+fac3ULjIxjtD8q2Kj/MdhMF8/r2hmH+5EwbEoqoVeiTLFnnKK/hvZ01u4q1/JIZW
         eanDQjwzDtAMIMXCjryRBKMq60ZUDP5R6cubawpCw5Glzv4gF8IAVwg3TEjJPpULA1+U
         2Dp5RO7RoEZ2Y4FBsRADNJnorQsn0iHn/phyrrkX4EbIrU/fL1zExrJbHmTuaYfI4T03
         VwAMib8f/SRRNSkawvtwdCSgFxHdziJpAEjSeA4V7lL2Hl8OYD+kvb0IqOmjJZccUYcY
         X6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748821785; x=1749426585;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S2CgSy13ZScnq7dO2F3vOd+BoHdjpC/dfBE6NY2PG1I=;
        b=HUctsVUdAd/Jd+PJKcw4035/YghmyAor+fvl7xN2iZuaWL6v27kMYgtXVL6d7T5MD7
         bG/n+fCzfA6Kl3L8bh03ZV+03f016gsVYuk0pI8J3YzqBchVcyYCtIjmSmk4yYmahlXQ
         gTca/6zxpVCKRj4otNo+Y4mkeqHVIMscwqoogIBBSkEGC7dXZnaUipd27vPe2Ni2jBLr
         u+VSuiK7zCdlSCTJnFEqdCbZFFwvbf2noZhTd7gRYJv3GnBve0DoFPBA2SX9bHfnJpwM
         foL5FwvcgqYPp+6dIqPeBpuJb/qk3jG39jDV+bbRlytWAOtIO4pPWjlyX6EJIrtXM+WE
         90Hg==
X-Gm-Message-State: AOJu0YwPg4x8vzkzE85+8eFDegM703+W2gMHCMgFoiRsT82b1i2UwPWc
	OFu2Uw0rBJu+tUWbEji9MqN+LeGuDAMzWQvgTt6NkMWbOv/Uckg7WBDL
X-Gm-Gg: ASbGncvMdw/eemg2zCWiRegTkmIwvxP+HNrBO/z+Msb+bAaBzksB2RCrga0JexrSjy0
	xHVKPCELHv86vnmdN95H2QREG8Ngyd18Tx11YTK5xw1+KXjuZ5/ygcKrcg9zqXHyShliEP02G1n
	aEI/y4iPHf6henpv0zLReyYxjVi+DNml9v1TyxNdKJ/DF6Pp+9KAHyXO0wRsXudCTk28txmjcEU
	PTYeYacMemkWjW19UNi/YoqEdOcLnRFPJ9M1RiHpyK96EMXCe9BZ50dfZt5EZLT5jLYoySnX6Im
	pxw3oVJdnEuOBcH5flAQQr2QQIQmFUneEdbXS8N44wvjqeWLH2Zy1dwYRQUT/gVQaFhaovZg36Y
	1kmJ9DLe/4i8zn8lvG7zKloVdUX4=
X-Google-Smtp-Source: AGHT+IFnCDtvyl/q2zkM4qGm1EDB/tPwvLvLdaGbTU8lTzF8UBazLVL9QZ1Y2QCNwAt7YHjsSTjt8g==
X-Received: by 2002:a05:6102:3750:b0:4dd:b9bc:df71 with SMTP id ada2fe7eead31-4e6ecd66b88mr7559355137.10.1748821784718;
        Sun, 01 Jun 2025 16:49:44 -0700 (PDT)
Received: from [192.168.1.130] (177-1-191-98.user3p.v-tal.net.br. [177.1.191.98])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4e6fc6ca062sm3454575137.22.2025.06.01.16.49.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jun 2025 16:49:44 -0700 (PDT)
Message-ID: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
Date: Sun, 1 Jun 2025 20:49:42 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
From: Marcos Alano <marcoshalano@gmail.com>
Subject: wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_164946_118168_1572036B 
X-CRM114-Status: UNSURE (   4.71  )
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

Hi,

The rules for Brazil were based on this normative 
https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680, 
as mentioned in the comments of the entry.

This January came out a newer normative 
https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772,

It allows 6GHz frequencies, so the line:
(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
Should change for, at least:
(5925 - 7125 @ 320), (12), NO-OUTDOOR
The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don't 
work because of this outdated rule based on an outdated normative.

I'm no lawyer, so please if you see something different, like more 
granular control in the allowed frequencies, please let us know.

Thanks,
-- 
Marcos Alano


