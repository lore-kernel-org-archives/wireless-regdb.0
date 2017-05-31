Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=N+8cno5Gw414K9uQMdsUXsBX0OmlXu1KHaAzTjjreAA=;
 b=A+qr+z+WtJXZze42FGPopvSFr
 XLdP3B8Px0PPjYvHC3mNZYrMmBBXFQbWejMWuuQy8Mc04Kisz+47I7Wco89blO5Le2dOLp+LV47zk
 jITOGJtTLxv0FS0hMPXD/+KD7I4DiW1TAQBW3BV8G21ZTvpIb8TQLSjaD022ryZvdSaUKTk/vzolV
 NeaBLxjDQGxqoMflhNk3INKR5zf0XgFMbT+FLawnSFCFtT8csAAFwSKzI73ef8ZNspIuYcf3t6lHz
 gPcnoctO4nMB8MQovjeXdCgC1x2oElCP+jtU3Kn1mEoZ1aj1sudJPys3OeJ7UpjNuMqrSQpIcAgAv
 TvY2pLhXA==;
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dG2b7-0000ho-F9
 for wireless-regdb@lists.infradead.org; Wed, 31 May 2017 12:19:35 +0000
Received: by mail-wm0-x233.google.com with SMTP id e127so17327579wmg.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 31 May 2017 05:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hrt-email.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=TIsLECzqI2nZEIgEzmQKq79ca5K/BNC3usOzHvpQFNg=;
 b=e4wI9/vn/U5H1xJZ9Ak84DzULqs/oK9dK///cq3oTVKZxxnuVL0ET+TcFxSsKXEclZ
 +Z2RlL+O2RO9J3aoGDNVZBUz7oz3zHpCeOCqMRpzPSJqm/XMwHvkJiJ36bOzpcQuT1BX
 zq/+/b06TjQqYbU8jNsUD1WgDzHnZzIDq0+yuhSSx/xiZ3DzVyNPAtaaKXGuiHHTcwrp
 X/t4YFUhe39aViuUI9A6A+l+o/VVEYYMqFbzvnVcH2Id/TUNIaDdOmfohs86aQ0FrYI1
 22hDsX3e6R1V44nTnGyZ5K4EGSMl1dZXAha9TeDGG1Gz68HsPZc+xQLfccYRuS5m9pPi
 PcJg==
References: <98d8dfe4-a683-d6d7-229f-bce7accec556@hrt.email>
 <20170531120516.kry537c6al2fwuxl@ubuntu-xps13>
From: Ivan Golob <ig@hrt.email>
Message-ID: <5a82d7b7-7589-89c8-389b-32e63af6423f@hrt.email>
Date: Wed, 31 May 2017 14:19:09 +0200
MIME-Version: 1.0
In-Reply-To: <20170531120516.kry537c6al2fwuxl@ubuntu-xps13>
Content-Language: en-US
Subject: Re: [wireless-regdb] Regulatory customization
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Perfect!

Thanks, best regards.

    Ivan


Il 31/05/2017 14:05, Seth Forshee ha scritto:
> On Wed, May 31, 2017 at 10:30:01AM +0200, Ivan Golob wrote:
>> Hello to everybody,
>>
>> just a question about the "regulatory.bin" customization.
>>
>> I've recompiled the "regulatory.bin" and copied it on my system, together
>> with the new public key. It seems to work well, but I'm wondering if I have
>> to recompile also the "crda". As far as I understand, with the "crda"
>> recompilation, I can include the new public key in the binary, but I don't
>> think this is necessary, right? (I'm using Ubuntu 14.04).
> Correct. It's not necessary to rebuild crda as it will use a regdb
> signed with any of the keys in the crda pubkeys directory, which on
> Ubuntu is /lib/crda/pubkeys.
>
> Seth


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

