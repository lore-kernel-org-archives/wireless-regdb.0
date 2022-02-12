Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=dDMB0F43p+RP14zfl3VAfiSKGnpFbqdyZb6YRAx9d28=;
 b=aZTXVzT6Jn8CEs
 am82KNsQ/6N6UTvY4nrael5xXKBPcB4bvyZvG2cwfiOHT2PNsbc5n7xO3NgI/sgqSc3CufXZmmAld
 lKrMn1TicDIC9rNzmsReTeYBjbaI1phVb190nEICw3uOf6wdmiq1haiGLtT/83x4+Qz7v9L5eiBQd
 F1f2pbNDUoqcPt9+ZHPA5dhPeFvUtxclnZtmnP8U5tJBiOCFWEUqP59ONtuwP+XIJwGRhVUN6z9V2
 FdLfLtrH8C0WQlHFMztrJ2m5D1lzSgy0hipae+Cw9r4ZPae3NDCIESgr22SKPUn0Ubn50bZRGNpC5
 wXiCVt9QQKw58QHCu3Mg==;
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIvpT-00AEX2-50
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 17:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run;
 s=MBO0001;  t=1644685493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=anMkyDU83H0cP6q78rzpCnNAbKIGFvp3ArJhC6EayYE=;
 b=lSCO+L2+melbUcW8Wc7jKkGtyyCpBOUyXiVG2PQbzVxJcw5jNWU0+mpTH1GiczdNdTiMER
 21aROD10pUijkwkp3wRYqvYD9+f+5OalivoGxg7gNYeSwQ5RlBPeA/xX1gc0FexS6pAWFL
 kf2YBeaP/OKNqYVzLZ2f9thRdw/yIBvB/jdMoE1pCZWdbsr/bANKVRNzsNKOgl/tF/JMsV
 8GaRjalO5+XcwhUNKsFZAVO6/P62dv5z3XkexSwQhTD5aw/50Pgh+zltbWfIkqpnPE7+Kc
 o94/M+jKVJ9e23sHOaALCtJbKQEVIriiSlTl5yzKwL1Cs7iNHnfq8FqpgPIgLQ==
Message-ID: <6b4d9cbc-6f73-0a9f-6198-37ded06c7d32@gorani.run>
Date: Sun, 13 Feb 2022 02:04:42 +0900
MIME-Version: 1.0
References: <20211212152050.25962-1-mans0n@gorani.run>
 <20220130124907.39224-1-mans0n@gorani.run> <Ygff0yenjQMS64BP@ubuntu-x1>
From: Sungbo Eo <mans0n@gorani.run>
In-Reply-To: <Ygff0yenjQMS64BP@ubuntu-x1>
Subject: Re: [wireless-regdb] [PATCH v4] wireless-regdb: Update regulatory
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

On 2022-02-13 01:26, Seth Forshee wrote:
> On Sun, Jan 30, 2022 at 09:49:07PM +0900, Sungbo Eo wrote:
>> This patch is based on MSIT Public Notification 2021-86 ("Unlicensed Radio
>> Equipment Established Without Notice"), officially announced on 2021-11-29.
>>
>> The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
>> part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
>> This leads to the following:
>> * 5230-5250 @ 20 -> 17 dBm
>> * 5210-5250 @ 40 -> 20 dBm
>> Here the power limit for >20 MHz bandwidth is also lowered to 17 dBm, as
>> it's not possible to set different power limits for different bandwidths
>> at the moment.
>>
>> Extend the last 5 GHz frequency range to 5850 MHz.
>>
>> Wi-Fi 6E is now allowed with the following restrictions:
>> * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 2 dBm/MHz PSD
>> * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25 mW EIRP
>> Here only the former entry is added.
>>
>> And also update the regulatory source links.
>>
>> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
>> ---
>> v4:
>> * merge 5210-5230 MHz band rule
>> * revert back to "indoor only" 6E rule as its power limit is higher
>>
>> v3:
>> * update regulatory source to newer revision
>> * replace "indoor only" 6E rule with "both indoor and outdoor" rule
>>    as "indoor only" rule limits PSD instead of EIRP
>>
>> v2:
>> * split 5150-5250 MHz band rule to accommodate the PSD limit
>> * remove AUTO-BW flag from 6 GHz band rule
>> ---
>>   db.txt | 16 +++++++++++-----
>>   1 file changed, 11 insertions(+), 5 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index b898799..9b02a2c 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -862,15 +862,21 @@ country KP: DFS-JP
>>   	(5490 - 5630 @ 20), (30), DFS
>>   	(5735 - 5815 @ 20), (30)
>>   
>> +# Source:
>> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205195
>> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205187
>> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000206568
>>   country KR: DFS-JP
>> -	# ref: https://www.rra.go.kr
>>   	(2400 - 2483.5 @ 40), (23)
>> -	(5150 - 5250 @ 80), (23), AUTO-BW
>> +	(5150 - 5230 @ 40), (23), AUTO-BW
>> +	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
>> +	(5230 - 5250 @ 20), (17), AUTO-BW
>>   	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
>>   	(5470 - 5725 @ 160), (20), DFS
>> -	(5725 - 5835 @ 80), (23)
>> -	# 60 GHz band channels 1-4,
>> -	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
>> +	(5725 - 5850 @ 80), (23)
>> +	# 6 GHz band
>> +	(5925 - 7125 @ 160), (15), NO-OUTDOOR
> 
> I'm curious about this power limit. In v1/v2 it was 24 dBm, then in v3
> you lowered it for indoor/outdoor. Now you've chaned it back to indoor
> only, but the limit is 15 dBm rather than the 24 you had in v1/v2. Why
> the change?

24 dBm in v1/v2 was from max EIRP for 160 MHz, but I realized I should 
use PSD instead of EIRP, and I got 2 dBm/MHz * 20 MHz = 15 dBm (to fit 
the smallest bandwidth).

Regards,
Sungbo

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

