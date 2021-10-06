Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=032xofcZTLm18B/dRKaPz/+sVoakvoMTQPt10OpfktU=;
 b=0hqy2xmaZ8lOlj
 xoo9rpOjscJF2rf9nfxPQ8Osz1rLVqDxvPkm77/c5vFyxDDIAA6Otb034hxjzmjYiX9aSeTmLiDcy
 oSgXaQeHMWFEq5q5WX6FzFQ6gC10UNGhD6OdgiyBXHqalMxX7B4cYqJ5QU4Klp6vxXBO81fk9KHTy
 sU5iFUokjfjvc7fm7srw3MAvjB1HE4XSmgMVKLgrTldjMF2nbls1G0LUO+EaJpyUne42CUxDqdKNU
 aaKoW/zUgY8/PAhSl3MCsGn7fHvnAkezwanmmZu3BdXwH3+y1GfVH8xDA41kCkTREKgT0YXBnOdoB
 uhQKYWCHgUInt58zbIwg==;
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYCQk-00FOvp-PL
 for wireless-regdb@lists.infradead.org; Wed, 06 Oct 2021 19:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run;
 s=MBO0001;  t=1633547892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2JR3sxSadwbqy6GXWUkD+q3LL05/UAfpJRSr0hVWMI8=;
 b=RJ1JAPnVOqmW60n2EQna5LJ50JGMl7A/KnTSmxOr9Z3RL/3csUBybi5WnFrl/K2rwLUokK
 yv2OCs+JuTmWU6i4bDW5jDIM4/Tg81cQ0Yl8EAmjlcIONTC2wcrWBZmhsce7ERFIw175n3
 MTDHOHbV8zP84rxtDQ5BYkhe+hyZlW3fDK47l8w6GkuTfo2iddigYulcosLMCHKHWE13MM
 NidZ39iVIDdlUfhrKJfFCiQU4PUivI0nhQRk5ucGmpO+jVwbAHInpX168YeaVv218h+15h
 Rzg6jhc74yxcUHklOENSP1ez1ScC/ZW7Rc9UjXVfxd6KguOu0kr9WnHbXUls3Q==
Message-ID: <a4cb97fc-de32-4d15-47a5-a7ad26bd32ab@gorani.run>
Date: Thu, 7 Oct 2021 04:18:01 +0900
MIME-Version: 1.0
References: <20210929172728.7512-1-mans0n@gorani.run>
 <YV2tukujds7PodAf@ubuntu-x1>
From: Sungbo Eo <mans0n@gorani.run>
In-Reply-To: <YV2tukujds7PodAf@ubuntu-x1>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for South Korea (KR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On 2021-10-06 23:07, Seth Forshee wrote:
> On Thu, Sep 30, 2021 at 02:27:28AM +0900, Sungbo Eo wrote:
>> This patch is based on MSIT Public Notification 2020-113 ("Unlicensed Radio
>> Equipment Established Without Notice"), officially announced on 2021-01-06.
>>
>> Extend the last 5 GHz frequency range to 5850 MHz.
>>
>> WiFi 6E is now allowed with the following restrictions:
>> * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 250mW EIRP
>> * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25mW EIRP
>> Here only the former entry is added.
>>
>> And also update the regulatory source links.
>>
>> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
>> ---
>> I have two questions.
>>
>> The regulation has one more restriction:
>>    The TX power should not exceed 2.5 mW/MHz
>>    when the frequency range includes the whole or a part of 5230-5250 MHz
>>    and the bandwidth is equal to or less than 40 MHz.
>> That leads to the followings:
>>    5230-5250 @ 20 -> 17 dBm
>>    5210-5250 @ 40 -> 20 dBm
>>    5170-5250 @ 80 -> 23 dBm
>> Is it possible to add this rule without lowering the TX power for 80 MHz bandwidth?
> 
> I've tried to look at the documents, but much of the information appears
> to be in images where machine translation doesn't work, and I haven't
> been able to find English versions.

Oops, sorry. I should have prepared it in more convertible format.
There's no English version of it, but at least I could find a HWP 
document file [1] that contains regular tables instead of images. (The 
URL is from the "attached files" tab in the source link.)

You can open it with a dedicated viewer [2] or an online viewer [3]. But 
those free viewers do not offer conversion to DOC or HTML. (It seems the 
dedicated one has "print to PDF" feature, though.)

I also tried an online convert tool but it failed due to the long 
processing time... I can send you converted versions myself if you prefer.

[1] https://www.law.go.kr/LSW//flDownload.do?flSeq=93728653
[2] https://www.hancom.com/cs_center/csDownload.do
[3] https://hwp.polarisoffice.com/

> 
> Taking the above at face value, I actually get slightly lower EIRP
> values for a PSD of 2.5 mW/MHz (EIRP = PSD + 10 * log(bandwidth)): 16
> dBm for 20 MHz and 19 dBm for 40 MHz.

I thought log(2.5) equals 0.4? We also have 2.5 mW/MHz * 40 MHz = 100 mW.

> We don't currently have any way to
> express PSD limits in the database nor a way to express different power
> limits for different bandwidths, so it's not possible to comply with the
> PSD limits for 20/40 MHz without also lowering the EIRP for 80 MHz.

Too bad. :( I'll prepare v2 soon.

> 
>> And do we need AUTO-BW for 6E channels? I thought it is for merging adjacent frequency ranges.
> 
> That is correct. Since there are no adjacent rules, AUTO-BW doesn't make
> sense.

Okay, thanks!

Regards,
Sungbo

> 
> Thanks,
> Seth
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

