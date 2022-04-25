Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:
 To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=3J+PU5l05EQBHSnhtEQ/po3f+VYW5r4YtYJnukS9ydY=;
 b=dGc9tVRplXCF08
 u7jB9BXm7CHiZ5USV1//hbaH3pZS6L03VmQudVmNNHL4nzZ3mmDADdnrEwdEfDkY+FmijOUcGdz72
 ezOTiNf4rpFe6mJuqX/s8fsAvg9pKMdC8Svi/y02HFXEN4RqDjvdZK3aNM59W9Z/mXdipEijd4w+G
 W8DNrqP0yrWylqoybQ/DaAfnfXSx32e/m+bhPWGrcqFGj9bwdkXUxYfHg80F4zlWZmweivXTXTjVZ
 47/PG6nB1GS+XNjtHJ3OQsOZ3vIQFue2co2z2mr67JeMqQLoTuvEFqM6UoLuJOmr3yH4j2FtZMRD+
 7f7ws2DYZCKgPRNuh/Yw==;
Received: from mail1.nippynetworks.com ([91.220.24.129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niybM-009cfr-RA
 for wireless-regdb@lists.infradead.org; Mon, 25 Apr 2022 13:18:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wildgooses.com;
 s=dkim; t=1650892678;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ugldtJvJRE+iZ7grfzTpN4hFTUFMYT/R84SKDFhQpEU=;
 b=FPQd6IKeSalwjjWt93VUceESHSDwBrK/TrQ8ZUPEZm7+o7bOmVc4b1DWvyVv8Hwk5W/jX9
 c8L+Q6bwMuSdo011LK3KPaEiPh9goUw7SHzGQ3DOYn6BwTQDfiE7qZQYXqGJ3LSxDR0wYN
 tXxcROiOWtw3vslDhSlA557EvH22th4=
Message-ID: <e7268989-03cf-ae7c-f3c6-b48fe679b790@wildgooses.com>
Date: Mon, 25 Apr 2022 14:17:57 +0100
MIME-Version: 1.0
Content-Language: en-GB
References: <4d07581c-a3be-a3c6-bf32-7007eb45d541@wildgooses.com>
 <20201106214446.GG6125@ubuntu-x1>
 <2a710032-f2ec-d55b-5da4-d881089fe0cd@wildgooses.com>
 <20201120175444.GN5439@ubuntu-x1>
From: Ed W <lists@wildgooses.com>
In-Reply-To: <20201120175444.GN5439@ubuntu-x1>
Subject: Re: [wireless-regdb] Correction of wireless-regdb for GB
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On 20/11/2020 17:54, Seth Forshee wrote:
>> Signed-off-by: Ed Wildgoose <lists@wildgooses.com>
>> ---
>>  db.txt | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index ac32483..cc5ffd0 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -588,13 +588,16 @@ country FR: DFS-ETSI
>>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0019/136009/Ofcom-Information-Sheet-5-GHz-RLANs.pdf
>>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
>>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0013/126121/Statement_Implementing-Ofcoms-decision-on-the-57-71GHz-band.pdf
>> +# GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0036/198927/6ghz-statement.pdf
>>  country GB: DFS-ETSI
>>  	(2400 - 2483.5 @ 40), (100 mW)
>>  	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>>  	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>> -	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
>> +	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
> This looks okay to me.
>
>>  	# short range devices (ETSI EN 300 440-1)
>> -	(5725 - 5875 @ 80), (25 mW)
>> +	# See UK specific notes in ir-2030.pdf, p47
>> +	(5725 - 5850 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI
> To echo what I said above, I'm unclear whether this change is in effect
> yet, and based what I've seen so far I think it would need to include
> NO-OUTDOOR.
>
>> +	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> I'm also unclear on whether this change is in effect yet.
>
> Thanks,
> Seth
>
>>  	# 60 GHz band channels 1-6
>>  	(57000 - 71000 @ 2160), (40)
>>  
>> -- 
>> 2.26.2
>>

Hi all, I dropped off watching this for a while....

Seems like the update to IR2030 (GB country code regulations) was re-published last year, and the
relevant sections are in pages 32 + 34-36

My reading of this is:

- Other stuff we changed 2 years ago seems ok, caveat I'm unclear when we need to state half power
vs using mean EIRP?
- The 5.9-6.4Ghz range is now good for use (page 35 near the bottom), perhaps add something like:

+    (5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI

- The 60Ghz range seems to available now, but I'm not sure what power number we should have in our
db.txt, see page 32.
Says "40 dBm e.i.r.p / 27 dBm maximum transmit output power"
- There are also some geographic restrictions, not sure what we can do about those?

So something like this perhaps?:

> +	(5700 - 71000 @ 160), (40)

Happy to knock this up into a patch if you can help with a little guidance (although it might be
faster for you to just commit the 2 extra lines if you agree?)

Thanks

Ed W

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
