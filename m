Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=vxUV8xicDdFjrc3tbxNByOlw7O/jqwn9k63dK9Avk24=;
 b=f6xkC1MVFtrQ+q
 xiZOG123/Oi7tIjO0Q2q8T6LibAy9yTWKPdNIr7CKwj1JkFZA57ZoYL03QQiIJ/AbLtdrNDcwvGJQ
 h4FkFIs3KYAyVBNDbXGqYmvQnZiv/T7mLlFPnFpHaIciiGuZlKTSNW3m51rKUJ1HasaGEWx2warU5
 xQH59vomhwzocPT4hUklWx1f+7EIEBsiIeicHGhZ6hiY89NhqV+D2Imr6UQ6tTADgUftrVsB38q/2
 eV2D+gff0QeWYJ6jse3mYDa8sdPJIr6e/jFxTOO6zmOatTAXalxsRwmBzkVGdO47LWt1Stlcb9n5k
 gVJ31DLBuapRLc6PDpIw==;
Received: from mail49217.hm1479.locaweb.com.br ([201.76.49.217])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUF3K-00BzQS-PO
	for wireless-regdb@lists.infradead.org; Fri, 02 Sep 2022 22:22:23 +0000
Received: from mcbain0006.email.locaweb.com.br (189.126.112.72) by
 mail4970.hm1479.locaweb.com.br id h2a0322n8lg0 for
 <wireless-regdb@lists.infradead.org>; Fri, 2 Sep 2022 19:14:01 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
Message-ID: <6b577581-9daf-ff11-1aaa-ff1243eb9c03@cesarb.eti.br>
Date: Fri, 2 Sep 2022 19:21:50 -0300
MIME-Version: 1.0
References: <20220901232734.5488-1-cesarb@cesarb.eti.br>
 <b8674e67fee2393d4c5fe9d9842028545c6adcfa.camel@sipsolutions.net>
Content-Language: en-US
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
In-Reply-To: <b8674e67fee2393d4c5fe9d9842028545c6adcfa.camel@sipsolutions.net>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Brazil (BR)
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
To: Johannes Berg <johannes@sipsolutions.net>, sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Em 02/09/2022 11:53, Johannes Berg escreveu:
> On Thu, 2022-09-01 at 20:27 -0300, Cesar Eduardo Barros wrote:
>>
>> +	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
>> +	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
>> +	# requirements, we can extend the range by 5 MHz to make the kernel
>> +	# happy and be able to use channel 144.
>> +	(5470 - 5730 @ 160), (27), DFS
>> +	(5730 - 5850 @ 80), (30)
>>
> 
> If you do the latter as 160 as well, and add AUTO-BW, couldn't you split
> them at 5725 correctly? But I guess it doesn't matter anyway.

This was copied from the US rules (including the four-line comment), 
which have an identical split. If AUTO-BW worked here, I'd expect the US 
rules to use it.

-- 
Cesar Eduardo Barros
cesarb@cesarb.eti.br


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

