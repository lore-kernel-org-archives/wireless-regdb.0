Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA3CCC282E3
	for <wireless-regdb@archiver.kernel.org>; Wed,  5 Mar 2025 12:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wvs1e6vwjLTOlaO5tmCHzHkdMT/VyLpu7IdRu0rcFs8=; b=uq80lmeOE7rw9q+zYXTZlDQo74
	ZMwhI5k0KJCk5jGE37fJwOPltTQnHxcf6wxlG11EXFkWR3A8/nVG6CgKoa3qsXOz+3i4lEHFZIBQc
	iyU2SjC00h5EXCSz5yVpAlAi8TY5jjYXC7FRm0UvUgZSrPkjaoMj+5nZaJr2fVgQ9OqDPgjRwT8zc
	JYM1R0PHdOWr46+QOoz8StDOSLijVnkUxfTwu7oUWoKQA+cxD90hx9q4J5IEMj0S/oWtghbzW/R7t
	gBiq4sRy5/LyTUUfZK7UKSp8VOHyzAoJXB7lA/3H7u0/ZWhu0rU5d7VOICLalQeMGFtE2Tke+odAZ
	SHQViK5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpnxt-0000000822w-0ngu;
	Wed, 05 Mar 2025 12:35:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpnia-00000007zxi-3Ybp
	for wireless-regdb@bombadil.infradead.org;
	Wed, 05 Mar 2025 12:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Wvs1e6vwjLTOlaO5tmCHzHkdMT/VyLpu7IdRu0rcFs8=; b=rAD5y7IZpVPl7fJfqxZMPVE4Ll
	u705eCet71iNTYmFGZbEHWjoOMlQ11paj0sy5BcJ7F6neCszf0tbPmwG6r4okgWOkVxOEGUM27RJE
	PW6BS40YnpnsBkiPWel6GymC5ePKKiDf+bdUWgwEBCTbRsdAKKkPgdr9cwG9Wpuf4/Eb9XBzh45Kw
	OwGv23X82VSuuNSeUPens3SL5RxCQCPzl5LQTGUGxjmb2UszzbvVdQNiqMD7C5vryuTBmhmni9OCZ
	qNS0gttlsTKn3LsTbfLlBxllHlnRa0wqH4UvSNByHJQ2s7pZSXzvytlDApVc2ZO76KIcjpV99GJqP
	vT25uXjA==;
Received: from mout.kundenserver.de ([212.227.126.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpniX-00000000WDp-2h29
	for wireless-regdb@lists.infradead.org;
	Wed, 05 Mar 2025 12:19:19 +0000
Received: from [192.168.0.37] ([151.127.53.97]) by mrelayeu.kundenserver.de
 (mreue009 [213.165.67.103]) with ESMTPSA (Nemesis) id
 1MJm8H-1tWDSK0BCr-00PU5n; Wed, 05 Mar 2025 13:18:49 +0100
Message-ID: <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr>
Date: Wed, 5 Mar 2025 13:18:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: wireless-regdb: Allow 6ghz in the US
To: wens@kernel.org, rmandrad@gmail.com
Cc: Dennis Bland <dennis@dbperformance.com>, Ping-Ke Shih
 <pkshih@realtek.com>, linux-wireless@vger.kernel.org,
 wireless-regdb@lists.infradead.org
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com>
 <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
 <ff6ad414457e4b1cb68e834978a553c3@realtek.com>
 <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com>
 <002d01db8da7$daf2ed50$90d8c7f0$@gmail.com>
 <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com>
From: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
Content-Language: en-US
In-Reply-To: <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:TdFC4C+tT5kSz2bQvDxcenP/KJxtth+dF5oAaOfsVs507FhnUD5
 rIZYSJT1jp9RL+zR0s3/+jQwAYy3/faGw4c8oHyqDeJO4cioHwjjcsqhfb9cZBzs/8kfv9y
 2rC/VxZwjqKXCZJz3vKAlqQH4NGMVPzD21vX9q3SU9+84o9lfydkSmVb0fJULz8gmzxLMpL
 CJPHsnVw1oqIaHyMsm5oQ==
UI-OutboundReport: notjunk:1;M01:P0:UjtVAMrsT9I=;W0dcGmO+rhACtRH/xCQLpth95A0
 y8nL4GpVCXMtraUY1LIWBJN8xJCAZ1pCMxiOAre5vUVIxuE0iOPQ9jIdg+0CqzhmjPeNWrvn6
 9Ku53fJrVhecCCTvA6/KWnvNnCljqzFzzPnE8TFnHwGOT0iC9Rc42Vv1PzKXeZxHcPI++YVfU
 stvyOWCVI69O2IJjVbev9N9acTrC5D+wwyxcr80AvDhtoiChuA7b6CjUh3sjJS5ko1xkmjzNW
 Q4YXce4mgiQOyeyLXWfZknqOpxKQZ9zkNoOaBho8I9BXDhbOMQRPgXSrEr+jyKDfkar3mM0dT
 fPL8zOpUABwUWFZ+I1r0PP45dRDYGwhN/0KBba9633XIqS+T2b5NTS1IaiL+Z9F8+3hZRzUq4
 5FODwF3MywMhYR4gNGtycff3sBn5EMuoq1e9X8cBYFs2RBb1nCFk+DSlOe5NqOZpWZ0mbYrOl
 oli8gj2PlnSnQZD/iP2kCTJ2SJq8Yf3uUjAJO6zl31q/b4ZWI2mjkit6hLygJxWKy1KnAuPVx
 vwhSEmQUQkI5IvNBMHfGjLXo1t+gSfshfGKASWgsNYss9qMkHM24BfswMDSQ12/xEtee8pPtN
 yklLT+j2QMZI5xneZXeoJFaClQxgWe93mwf8GEjTJyYlkhGgmcv3z0bHhDCpN9JjQf+SdnOgY
 2cTbz4NHAQOwKvjUcmqSQSHNNdTmNOXGJZoiSkckYQuliH+b0DrWq56PeUlOeei8GpZdbljwq
 ScoHE6813MoG0/iw7qHoZDkmHWnPmakw9rDbG25AzS/abpnGFXLq+opuXCgtDicvVZOhA7BTI
 85nTtK8alBenSTym3Q+avQm5cSx5UaKRszvdmm4bS4twPzE+1pN1iaso/rn81arLTntsiyQAb
 Jkd53YvsVQg1Ybegz9451bHCnpXma+O15RyDszhjXOzYH0j97bfZ/TpbAzDC9Wrm1v3whrEZM
 /CehGL/amM9fA/K+uvyvU0DvJkzHJ+Sn2UaAnSkK66nl4Bz5+emM1C8GuB4asht0IXwNdntuw
 mPiUNkBBL8Y3HjjGN3pv+geW5YjxySscGzKA2cPuZTGhbKCV1F53xESrtoV2bDSSdnSuaD1Bw
 B4e4BXNYCtytMfm2e5VrJlAH98x8SVjAD1ojtdGOxguc+tHA/FJY4rM2OYYsAcU4qBUVFTVIm
 EdHkZXTn8NaAZwsibwmpk5varolHYZIVjV63xJk8lzznWkhw3qAA0KEJxsocdcBYKwVYM5YuX
 nMg/hqy66BmhoHLIS9ZdA244+j5SUQMvwhLhYWq5Odq5RFdteoQJLtEUw8fn5u7u5Z45jzpLd
 zQZ5bblNgb3GCOjs4xXP9r9fe7PEkr5YCM6GuHJwTzwVCTC3NENoIXqWFpPXV+ilv4K
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_121917_861744_85A3DE31 
X-CRM114-Status: GOOD (  15.02  )
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

On 05/03/2025 09:58, Chen-Yu Tsai wrote:
> On Wed, Mar 5, 2025 at 4:23 PM <rmandrad@gmail.com> wrote:
>>
>> That is not specifying NO-IR which basically is denying any 6Ghz in the US what it means in my opinion is
>>
>>
>>
>> Client devices (like phones, tablets, laptops) need to find Wi-Fi networks before they can join them.
>>
>> One-way devices do this is by sending out probe requests. These are little "Are you there?" signals that ask nearby access points (routers) to respond, so the device knows which networks are available.
> 
> Section 122 says: The Commission therefore only permits a client
> device to send a probe request to an access point after it has
> detected a transmission from the access point. The client device
> will be required to send the probe request on the same frequency
> as the access point's transmission.
> 
> I think this translates to "passive scanning only", which is what
> NO_IR is meant to specify. NO-IR was previously called PASSIVE-SCAN,
> and was renamed when it was merged with NO-IBSS.
> 
> Maybe the kernel's implementation needs work? I'm not a WiFi person so
> I really don't know all the details.
> 
>> That is why drivers use the non 6Ghz for allowing clients to identify the router has 6ghz capabilities… I don’t think is for wireless-regdb to take over the HW router compliance and certification which is  what 122.  is about
> 
> No, section 122 is definitely about client devices, which is what Linux
> devices are.

No, Linux also supports access point, IBSS, OBSS and mesh, not to 
mention monitor injection.

If you remove NO-IR, you are allowing Linux to create access points, 
ad-hoc and mesh networks on the channel without conditions.

