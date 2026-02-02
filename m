Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD207D172B9
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Feb 2026 03:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=COETjjbFF+LevxkcCjI2dliwuZzCjoZh9t1BqAtEzd4=; b=gLHdKUpXwMOpXih3GlA4cWxBEF
	CjhwB/Wpd2Jj362YsVXbV3V6/E7yHGHmsRlOzSQjjzftZ1npvpoOVxEAhBDmMG6VEisfXMqRR+Ibq
	1k3JtF+/t3dLFvnhhHieX27am8GkIYXOzDlWaGDMxWV7FWGEXWH9r1d/DmZK76c4Nh17AvcoR8WXF
	P/aNNvc/UQo09tX8RanxbskcDEyDitQdmKtJOzumCkHoBUire6Qzy829Lkc6Zg/q2Uh55RdQU25xI
	Dp1DV+DQVbwoa2VprQ1R7QkGy2vC5o/VDygCoinKG4oTrcaUxnEQai8/JED/jr2ym3RubgztP2sW0
	cqwlWAsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmkGo-00000004Myt-3nLF;
	Mon, 02 Feb 2026 03:06:34 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmkGm-00000004MyQ-3tke
	for wireless-regdb@lists.infradead.org;
	Mon, 02 Feb 2026 03:06:34 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-658d54197d3so6429081a12.0
        for <wireless-regdb@lists.infradead.org>; Sun, 01 Feb 2026 19:06:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770001590; cv=none;
        d=google.com; s=arc-20240605;
        b=C9vsU3l7M9w6jLpDpti6ZC1O8P02YKCny3jhL0fA+EMgo9iuejv8rcQYHCCVEplvhb
         JKDNgQhHyXmMEtQyK1Ao3IvM3+Q8kQNl+YtXJXDUuxYAqU3K+UgIlnmdOLo01ztAvM6+
         8BsAdtS/EkKi/xF+ftLiBLF2d7piluNdV5CsnZRcw565ChU6kH8VOHHQXNV45G/GVVgi
         P7SvtNn6xd+I08pRq/bTFFUcCCmL2RsBBDwz/OhsGkZGTSwIsCeitivwzP/4vj3lN6OE
         yruQlTWNbmBSLCzAlqy4/HoFJN60MP9YZZpTAjKhzuemFY+QevdEg8kiXJJZN1W/zw0a
         dm5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=COETjjbFF+LevxkcCjI2dliwuZzCjoZh9t1BqAtEzd4=;
        fh=gagmHbxBnmSJFZNDDUIA3tc0oN5wfQXUi89CI8oB8y8=;
        b=UjVQbSx7QQ/yhbO1vCGd+WX4kIL6B0ZOP5lH6WFgwjTyrp1KWG4dh1VNkGrIXpqDN/
         57XZ8uitinMIMihxqCO7jzlDR2sstLeLBhc7SJPSDJ1pXfLfk+3kvSEST4uks/O/dWLb
         WvL3JF2tQfwAeD8iVxPnnpT5nS3og2vigwyqQyCB1+8euMdQu4eew/agFwqgS8A1QFbw
         cvfoDTIPW/6/qAfEMTM1o1t8Uohe5MOz8BrpAZvje3sYtwa801y82SxWxTB0CzNNYLJU
         TfHc9gP2DaEREYzjSfe9nAnAkHunDMpjSDtiDPSzxgzMdiWx9OCmzKOr2u3dEEegmDnl
         KBHQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770001590; x=1770606390; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=COETjjbFF+LevxkcCjI2dliwuZzCjoZh9t1BqAtEzd4=;
        b=UbngIedux8YeLLCHatRJqitvuBf7lTXUqzIpD0XlQ4YDW6276zTJeMKuiT7QsoaP7c
         tnQtvgs15cPXzrh8TV+uc+N9JgN1EbtdSvuJAuAEshMQt5h7WuYywTKPv6+masz0ZWiH
         WQYc7QnWejR/HTpsnZC3doqjPSbQqpMaBMgwhhtTHa9EEVAv9u66vx7ctXRbVdP9xHVL
         myq1Byl6MVCINWbXZEC/kGViheVHyzke6SNYqG6u8f3C4kxlmXjpZxiNuwISsl3T9G5t
         wwIrwE6QHYxegcVhto9TgOayjRlB+p4jBa3jDn/+nFSSdm0zz9JNv/47L5ykh3ec19am
         9Ixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770001590; x=1770606390;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=COETjjbFF+LevxkcCjI2dliwuZzCjoZh9t1BqAtEzd4=;
        b=RVIOlM0+IXbArcB1C8PT2BaRgfSI8EtFWab9rLCP0qXIPhNBvIJ0Mmb3jWZthU1MkE
         FZuLYItfQ5rMIbkgAkUvnieA6bZ/YPVgTijFogp9X0HZOj5Ot9HCT1v1AyjTdJ1H1RAj
         s76Esg7RNFr/Xubi/OGPjo2cBuqy5gvhfEUX2/+QSj6czF6SM3wSChfX0R1p3AY2dv78
         hwM8Mh7WCvfDf9idbMb+LmVK4Xe64lLG/d54/MfghopUce+ffrJHpDuy0QxXcEGsfEPo
         SQhi3h+Ek4OJ//oXYzS4wCUxvX4JAikbw/2YnHC3R54FOj6I7nHhxByimyrVgYCiUlGk
         tZpA==
X-Forwarded-Encrypted: i=1; AJvYcCVPvSCi3XWuNtzm96UbNWiF85sO2C9fsLx3us2dZY6liJ5i20tJVvxCMCf96lrHWEzXvq/SFdP3ZF17t6PTRg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+dQkzXFJ4Iqw6ff/9UBP2Qc3uXnpXgwPvSvjIMbFpc6mkTcRw
	lKiXxlBla5dRZkqYyO5v13rzWB9f/yxOkZVxS4oFfetfR3tifzZHTLPG5t2bRkLw2vr2Gx9/9QM
	Q/Mpm3xDJ+PK7o2zr6tobIBh7k21Ovt8=
X-Gm-Gg: AZuq6aLICkOF93RJojkreIRJqHy+sJaJV2ktMITG4WrQAsNHA7PUk150jBaixUKTLlk
	z5fLs4ioG7zdHThgfVIuqJol/r0gqKPnQYew9etUE/2JPokudjVACO1Yjs1kHEgee4luqu/5xX3
	PskGzLYhj6FX9jQd+hK1gtmDrbo7TuPAJs1llJRe2icFL6aJfdDGb+ylxdAOgB5uRoaOpocmf+Y
	tfKzf+wog5it8sMtmUc0J8NS3w6zj6jNrTPqNp6DOW5SI9OsPW1GyIRY6o0Pt5THDA9Lyk=
X-Received: by 2002:a05:6402:210b:b0:64b:572e:6ba8 with SMTP id
 4fb4d7f45d1cf-658de5adc90mr6548802a12.32.1770001590186; Sun, 01 Feb 2026
 19:06:30 -0800 (PST)
MIME-Version: 1.0
References: <20260128074236.965019-1-wens@kernel.org>
In-Reply-To: <20260128074236.965019-1-wens@kernel.org>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Mon, 2 Feb 2026 11:06:19 +0800
X-Gm-Features: AZwV_QjgUltB7sREOUuqoW3RQ8oS0gPCr9qiGxGalraqZYhMcfBG91hxb9xNz_0
Message-ID: <CAHrRpumYeNObHDtHi7YNj_bd+ixMewfOP8bKpX2PbUPL5LUfpA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Canada (CA)
 for 2025
To: Chen-Yu Tsai <wens@kernel.org>
Cc: druth@google.com, Ping-Ke Shih <pkshih@realtek.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
	Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260201_190632_987839_E70B11F0 
X-CRM114-Status: GOOD (  14.42  )
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

Chen-Yu Tsai <wens@kernel.org> wrote:
>
> Canada issued a new revision of its regulatory standards for 2.4 GHz
> and 5 GHz license-exempt local area network devices - RSS-247.
>
> Update the rules to match the new version. Fix up band boundaries and
> power limit values and units to match the text.
>
> Note: the database is supposed to have values for e.i.r.p.. Most
> regulatory documents specify e.i.r.p. as well, except for FCC ones and
> any regions that have rules based on FCC ones.
>
> Details about the changes and justification for them are as follows.
>
> - 2.4 GHz band boundary aligned to actual text instead of WiFi channels
>
> - 2.4 GHz band changed from 30 dBm (1W) to 4 W
>   section 6.3.2 explicitly states e.i.r.p. limit at 4 W.
>
> - 5.15 ~ 5.25 GHz band power limit unit changed to mW
>   section 7.3.1.2 explicitly states e.i.r.p. limit at 200 mW.
>
> - 5.25 ~ 5.35 GHz band power limit changed to 500 mW
>   section 7.3.2.2 states e.i.r.p. limit at 1 W, but requires TPC for
>   e.i.r.p. above 500 mW. As the database nor Linux implements TPC,
>   the 500 mW limit is chosen.
>
> - 5.4 ~ 5.725 GHz band combined and power limit unit changed to mW
>   the new revision removed the restriction 5.6 ~ 5.65 GHz usage.
>   the two existing rules are combined to cover the whole band,
>   and the upper boundary has been increased to 5.73 GHz to cover
>   the whole WiFi channel and make it easier to write the rule,
>   like how the US rules are written.
>
>   section 7.3.3.2 states e.i.r.p. limit at 1 W, but requires TPC for
>   e.i.r.p. above 500 mW. As the database nor Linux implements TPC,
>   the 500 mW limit is chosen.
>
> - 5.725 ~ 5.85 GHz boundaries aligned and limit changed from 30 dBm (1W)
>   to 4 W; AUTO-BW added for combined usage with next band.
>
>   section 7.3.4.3 states maximum conducted power limit at 1 W, but no
>   explicit e.i.r.p. limit is given.
>
>   apply "e.i.r.p. = max conducted power + 6 dBi" conversion, arriving
>   at roughly 4 W. This aligns with the ratio for the 2.4 GHz band.
>
> - 5.85 ~ 5.895 GHz band newly opened in this revision
>   section 7.3.5.3 states maximum e.i.r.p. for indoor clients at 1 W or
>   30 dBm, with maximum e.i.r.p. spectral density at 14 dBm / MHz.
>
>   Apply spectral density limit at 20 MHz channel width, arriving at
>   roughly 27 dBm e.i.r.p. limit.
>
>   While the limit comes from the "indoor clients" rule, it is the lowest
>   limit of all the types, hence it should be applicable without any
>   restrictions.
>
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

All content is consistent with the description in RSS-247.

Reviewed-by: Ping-Ke Shih <pkshih@realtek.com>

