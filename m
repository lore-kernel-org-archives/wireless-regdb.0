Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=07a4RVG1MIApl33w9kZntknJZTS8uMtJYYPSkRVROf4=;
 b=FNAWYucPjkNmYe
 oXWHV5VfkNpMtC9PWE3LIloM4UiwDFwCedvBfBus14s3xXWeZZVFtWnNXcPL5zjpkLbFnJyeEIxMX
 s6jRsop8PAW7XEGFp57NFZ+kUum9bGUSbNVRnGa/wrxjaahoFCrKdaGN22CWYni779tsenxTFY/s1
 AqlHX2J8Ywg11a2dxsGgh+VRsa9XrjIHw/AE3DDZizFE5QePlidJEH2o9/rx9s2rU6CJux0IP0M69
 TcYbGOgmvAFVZl6l3HUVdqcHVjpJ/pG7+tj8dY6D9DCCjOwVDpz5WoxX+7Y55KJHUdqEmYCs2+2GN
 vUPm0P1E00pftOiSXdZQ==;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAUPC-007MWZ-0F
	for wireless-regdb@lists.infradead.org;
	Tue, 05 Dec 2023 12:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1701778794; x=1701865194; bh=LYTagK/x6R2Jzf9idMqtInA320s+jpeKq7U
	532VcMYI=; b=JvZbCqHa5uT4cPtnMVJxB/t6Ght9Tf4uUIkjN7yR43zbK1vXYxC
	UXIP5AWdBl8AhUBlYL3NBw/zvGvxiuAQG6PABtslRRZGuXmp5EBzQAXfb9vR/5an
	yBTg5beLgfxdn8wdhNToIJGN0qSogZ2v2m70+YE4TF6rohPNMzgoh0Uswtd4wwml
	iZFWhSDdTgT7KSEQAYH2WPLI7wM6/A6Q6xl+FDfLFn+L1GYkWxyaTLVgtkMRsfGA
	FEvDCBydpBY5ySX9vKFtqxkfzgPxk4f2fcSax2OX0agF4IR/BP/GaoNaYcBACrEr
	T0MTqidz8q/MEU2zC69LqkaYsHtCar6w/wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701778794; x=1701865194; bh=LYTagK/x6R2Jzf9idMqtInA320s+jpeKq7U
	532VcMYI=; b=RtLizhpQ4fQ52yZ3eOTQNscV7kB0I3/gxJjl5MIlyKG/nLodqqr
	M6UY65B78FLW3PA27BS/6g7SwTrCprhCaX9XOreVpJpLqPW5aM2R0EpOLhTRhGSx
	+n+i8/1csTZYYC8yYorYg2lUoZ2ULgw3pSnZpvAwYeLz3oMQTI4JbZ8YTJ7/WjLH
	rS4sPqeCpdb7wYeD6Q2Xhkuuhhq3A/sLoCsUjsYdBmWtSAU7VMXw2hqxFsVZZ0wj
	WQ74skV6dixtcqSG93FSc+2CAPwFDvp5/rjFsAaHW8KVXXuwxgOUvt5TE3I2SnmX
	o5sTzSkO0TjzrDbzESQUEaedoAxcSozcIYA==
MIME-Version: 1.0
Message-Id: <2954b739-b711-4c81-a9a6-e4a1579dacf7@app.fastmail.com>
In-Reply-To: <170176747748.1180638.6206522543570761190.b4-ty@kernel.org>
References: <20231119182401.7630-1-jiaxun.yang@flygoat.com>
 <170176747748.1180638.6206522543570761190.b4-ty@kernel.org>
Date: Tue, 05 Dec 2023 12:19:34 +0000
From: "Jiaxun Yang" <jiaxun.yang@flygoat.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for China (CN)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Chen-Yu Tsai <wens@kernel.org>, linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>



在2023年12月5日十二月 上午9:11，Chen-Yu Tsai写道：
> On Sun, 19 Nov 2023 18:24:01 +0000, Jiaxun Yang wrote:
>> China had updated regulations on 5150 MHz to 5350 MHz by
>> "中华人民共和国工业和信息化部令（第54号）", which released
>> an update to "中华人民共和国无线电频率划分规定".
>> 
>> The new regulation effectives from 1 July 2023.
>> 
>> In updated regulation, footnote "CHN44" had restricted 5150 MHz to
>> 5350 MHz as in door only for Broadband Wireless Access systems.
>> 
>> [...]
>
> Applied, thanks!
>
> [1/1] wireless-regdb: Update regulatory rules for China (CN)
>       commit: 8c784a10448e36dc387fe02ae6bf69f4ae0208d2

Hi Chen-Yu,

I didn't see this commit in[1], did you move upstream repo?
Better to update documents here[2] as well :-)

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/
[2]: https://wireless.wiki.kernel.org/en/developers/regulatory/wireless-regdb

Thanks
- Jiaxun
>
> Best regards,
> -- 
> Chen-Yu Tsai <wens@kernel.org>

-- 
- Jiaxun

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
