Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D77FC021AA
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Feb 2025 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6q5Z6fDtJn6BBS+T7U1DdO17HL5vyinICaaufLicu8=; b=LpOFu64goKxxKcf6qq21s9Fuz/
	HS3jnaAe1BDlF7QHNQURzr9lGUm/ZGfTRlR7P4s2E7nOsqObujPuJsmgC46/ZA3bvfLU1ADa+bPy0
	YlRYYOPgh3wSmdazq/Zn12vhgX1N9eiyjIuJYMQuATDhgwNc6L3D2DxSIY0NlWtN6xxfQISIXA8ey
	2naqrqp7+g4E0N/pZNA+nc5SObUWPGl6lzLgvv35+mNQSHrDNNL+/soguZeix+LKHffhiQ9ABLX+/
	Nrsa+xXM9j++kCERf3lCnoPCFQ8cDq3Gna2lEtc32kv8rePX2lk+3B+fCr9Bjf+JEgCRb+VK0cUs4
	xJ+Eux4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkLVc-00000007tEi-309Y;
	Tue, 18 Feb 2025 11:11:24 +0000
Received: from mobintestserver.ir ([138.199.196.29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkLVZ-00000007tD0-2KRQ
	for wireless-regdb@lists.infradead.org;
	Tue, 18 Feb 2025 11:11:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=dkim; bh=J6q5Z6fDtJn6BBS
	+T7U1DdO17HL5vyinICaaufLicu8=; h=subject:references:in-reply-to:cc:to:
	from:date; d=mobintestserver.ir; b=Oj1ckdEEMEPqZ8o2klEJbrewgCUk5noiRQl
	KovWANZmgyD/DnGf7lz9llqjbfimq+5GzBK86t0hFpumwJ2aWulhi0hwllhtjiFYAiaY5X
	t4Ppyq7A0euJChk1KZUih8v4EW5cvMpC/MnzkZKXNpmbKbYnRrmiSD3cdWTizpJMYXfYOE
	CKeCu98WsW4Qgx/1LYAn4YyeSPovU8YrSoWSwcHBMwJgs6XiLTt2guxTMXbSWj9rVGMDMW
	4d19mEWvUJRQxFnYCHksp/Ja/RX/nzzZwbKVp+D7G4XX/kR8VBgX9CoMzkGJ7H6a6XuFjD
	cdjAdZK3eixqpbaT9AHmbMD+Urg==
Received: by mobintestserver.ir (OpenSMTPD) with ESMTPSA id 9d7a8db4 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 18 Feb 2025 11:11:18 +0000 (UTC)
Date: Tue, 18 Feb 2025 14:41:12 +0330 (GMT+03:30)
From: Mobin Aydinfar <mobin@mobintestserver.ir>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: wens@kernel.org, linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Message-ID: <7c909df2-2651-497c-91c2-624a7e3db43f@mobintestserver.ir>
In-Reply-To: <20250218025957.13818-1-pkshih@gmail.com>
References: <20250218025957.13818-1-pkshih@gmail.com>
Subject: =?UTF-8?Q?=D9=BE=D8=A7=D8=B3=D8=AE:_[PATCH]_wireless-r?=
 =?UTF-8?Q?egdb:_Update_regulatory_?=
 =?UTF-8?Q?rules_for_Iran_(IR)_on_both_2.4_and_5Ghz_for_2019?=
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <7c909df2-2651-497c-91c2-624a7e3db43f@mobintestserver.ir>
Read-Receipt-To: mobin@mobintestserver.ir
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_031121_895457_9BE08E44 
X-CRM114-Status: GOOD (  14.36  )
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

=DB=B1=DB=B8 =D9=81=D9=88=D8=B1=DB=8C=D9=87 =DB=B2=DB=B0=DB=B2=DB=B5 =DB=B0=
=DB=B6:=DB=B3=DB=B0:=DB=B3=DB=B8 Ping-Ke Shih <pkshih@gmail.com>:

> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Decision No. 4004-01DEC-CRA, 8th Edition - February 2019,
> Radiocommunications and Regulatory Organization.
> General radio license for the use of parts of the frequency bands
> 2400-2483.5 MHz, 5150-5250 MHz, 5350-5250 MHz, 5470-5725 MHz, and
> 5850-5725 MHz in radio access networks. [1]
>
> * 2400 - 2483.5
> =C2=A0 - 100 mW e.i.r.p
> =C2=A0 - 10dBm in every 1Mhz
> * 5150 - 5250
> =C2=A0 - 200 mW e.i.r.p
> =C2=A0 - 10dBm/MHz per 1MHz bandwidth or -6dBm/25kHz per 25kHz bandwidth
> * 5250 - 5350
> =C2=A0 - 200 mW e.i.r.p
> =C2=A0 - 10dBm/MHz per 1MHz bandwidth
> =C2=A0 - DFS
> * 5470 - 5725
> =C2=A0 - 1000 mW e.i.r.p
> =C2=A0 - 17dBm/MHz per 1MHz bandwidth
> =C2=A0 - DFS
> =C2=A0 - If TPC is not used, the maximum radiated e.i.r.p. must be reduce=
d
> =C2=A0=C2=A0=C2=A0 by 3dB.
> =C2=A0 - Outdoor use only
> =C2=A0=C2=A0=C2=A0 (Since NO-INDOOR flag is not supported by current form=
at, don't add
> =C2=A0=C2=A0=C2=A0=C2=A0 this entry.)
> * 5725 - 5850
> =C2=A0 - 4000 mW e.i.r.p
> =C2=A0 - 36dBm in every 500 kHz
> =C2=A0 - DFS
> =C2=A0 - Outdoor use only
> =C2=A0=C2=A0=C2=A0 (Since NO-INDOOR flag is not supported by current form=
at, don't add
> =C2=A0=C2=A0=C2=A0=C2=A0 this entry.)
>
> These information is from [4], Mobin Aydinfar shared the official link=20
> [1]
> (inaccessible from outside of Iran), a mirror version [2] and=20
> translated
> version [3].
>
> [1]=20
> https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-=
0050569b0899
> [2] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
> [3] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
> [4]=20
> https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1a=
fe@mobintestserver.ir/T/#u
>
> Cc: Mobin Aydinfar <mobin@mobintestserver.ir>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
> db.txt | 9 ++++++---
> 1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index d56ad32d31c9..0189355dff17 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -934,9 +934,12 @@ country IN:
> =C2=A0=C2=A0=C2=A0 (5470 - 5725 @ 160), (24), DFS
> =C2=A0=C2=A0=C2=A0 (5725 - 5875 @ 80), (30)
>
> -country IR: DFS-JP
> -=C2=A0=C2=A0 (2402 - 2482 @ 40), (20)
> -=C2=A0=C2=A0 (5735 - 5835 @ 80), (30)
> +# Source:
> +#=20
> https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-=
0050569b0899
> +country IR: DFS-ETSI
> +=C2=A0=C2=A0 (2400 - 2483.5 @ 40), (100 mW)
> +=C2=A0=C2=A0 (5150 - 5250 @ 80), (200 mW)
> +=C2=A0=C2=A0 (5250 - 5350 @ 80), (200 mW), DFS
>
> # IS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301=20
> 893)
> # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300=20
> 440)
> --
> 2.25.1

Thanks for the patch, I should mention the document date is February=20
2021, Not 2019.

Best Regards

