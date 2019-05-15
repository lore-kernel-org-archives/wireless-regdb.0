Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
 In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=1I9hKfAnig58yUoTDS83ZXCFI3kxTPo1odkGb7g30l8=;
 b=MwctqmnLq296rp
 i979oqkv/gjU18cAcOEu4Btb4okoq50g8uq8k6vV2QzYKxAiq6OxztV8LN/8YFeOZAvXJ+KdzqlOr
 XVKPRhpnCbUS4tfkG92uJGQO+adKyutJ904PuN8fICm7wi97tJffWlI81UgiujrXwn8huWO5iKyhY
 RynQgDx46md4DnApNHGwgoWDelvwnRa892epxAK9p8Cw0Z3vbJjfVV/mcB+HrnzftMTMJ8CLoev3x
 GnpqlYbnrwyjC/Xl4EjSx3G19bn3ruXrPXML3rgcSkVa8E8SEPDACXF4SAYDbqRYaAVQc4ybytiN3
 dAl+rQ1qVkDFEbnSRlRw==;
Received: from mail-db3eur04on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::619]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzGs-0004Y7-58
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 19:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bowerswilkins.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hntLkJMhwM4hkzqBfWhnbannNEOpGGgC5nNM7gZLwLM=;
 b=EEkzgYNhQdnAisSgzVqZw32nu/pY4ptgk6EBiNlLNhdnvE5/kSJRmZdCq5WPnJbO01tRufEquVD/hfQwqk7CoCvIxRfp+tHQaW5TScbUqTRzObKTrLKbeBufEimJ4cQhU15p/DpisXy3gbC1ZjXnKzXgjBtu8yKcqBagfbicZN8=
From: Peter Oh <peter.oh@bowerswilkins.com>
Date: Wed, 15 May 2019 19:08:54 +0000
Message-ID: <75c8361c-616b-314f-5efe-6092ca43ac11@bowerswilkins.com>
References: <1556314283-17842-1-git-send-email-peter.oh@bowerswilkins.com>
 <20190515130339.GY4357@ubuntu-xps13>
 <a2fa616d-7829-137c-7f48-6c59974cfa46@mail.com>
 <20190515162142.GC4357@ubuntu-xps13>
In-Reply-To: <20190515162142.GC4357@ubuntu-xps13>
Content-Language: en-US
Content-ID: <8968AA5363F148418B2445075064D949@eurprd04.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for South Korea
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
To: Seth Forshee <seth.forshee@canonical.com>, suchan <abnoeh@mail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>



On 05/15/2019 09:21 AM, Seth Forshee wrote:
> You dropped Peter and the linux-wireless list from your reply, adding
> them back.
>
> On Thu, May 16, 2019 at 12:10:16AM +0900, suchan wrote:
>> 2019-05-15 10:03PM at Seth Forshee wrote:
>>> Is there any mention of transmit power control in the document? The fact
>>> that some of the old limits are exactly half of they values you've given
>>> makes me wonder if they weren't set lower for TPC, especially for
>>> 5250-5350 MHz where TPC is common.
>>>
>>> Since you're changing these rules, I'd also like to see the frequency
>>> ranges changed to match the documented ranges, i.e.:
>>>
>>>    2400 - 2483.5
>>>    5150 - 5250
>>>    5250 - 5350
>>>    5470 - 5710
>>>    5735 - 5850
>>>
>>> I left the gap in the 5470-5850 MHz range since I can't tell exactly
>>> where the DFS requirement ends. Usually it seems to be 5725 MHz, but
>>> that is not universal. If you can determine where the break is those
>>> ranges could also be expanded.
>>>
>>> Thanks,
>>> Seth
>>>
>>> _______________________________________________
>>> wireless-regdb mailing list
>>> wireless-regdb@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/wireless-regdb
>> from same document, just under the table for wifi range itself 5250∼5350
>> MHz and 5470∼5725 MHz need TPC and DFS
>>
>> TPC rule is if power exceeds 25mW/MHz (this includes antenna gain), it
>> has do be able to reduce it under 12.5mW/Mhz.
>>
>> DFS rule itself (DFS-JP) looks right.
DFS bandwidth is correct although the rules(radar types and etc.) are 
different from JP, but no plan yet to add KR rules to DFS (requires 
kernel space patches).
> Thanks! Based on that I think this is probably what we need:
>
>   (2400 - 2483.5 @ 40), (23)
>   (5150 - 5250 @ 80), (23), AUTO-BW
>   (5250 - 5350 @ 80), (20), DFS, AUTO-BW
>   (5470 - 5725 @ 160), (20), DFS
>   (5725 - 5835 @ 80), (23)
>
> Peter, if that looks good to you please send a v3 patch.
It looks good to me, too. I'll do v3.

Thanks,
Peter
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
