Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=k/5H4uoIfgVRXWF/sNK/g9HQDV0AvnszrRvAB6RBmeg=;
 b=M2W/NIRi7WdEpF
 WExf2Y7XJz07CkD3d+aJLsa9zzGDRBtZlqdJxLYfCu0VB4Hywm/L0pL41TOOhrBwyJKFPHNnb//52
 53plx+mdXTovJGRxltroaMFb4UB/ro6sw7F+zYxnbDA6hJ8M5ru9z5I+Zg9lxvCXDgnRMlbdyfeA1
 T8+iOBWzNxd98bi5QbW3Lt6TZBOXP/3x5Wu1ex9Sb+xWvQGqLLGor2rUV3jZ9ns6sfKcR4jAsB1qz
 f+99hPiB8dbx3iOb485SQMMfgsJgurKjEIHK3y1Hpa53Y7bxuN7tXLrFJC+KufSMmRpOWsfThiM75
 Fzg8s1TMgQf+MVr0DIgQ==;
Received: from mail-oi0-x235.google.com ([2607:f8b0:4003:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFgW4-00006x-L1
 for wireless-regdb@lists.infradead.org; Tue, 30 May 2017 12:44:54 +0000
Received: by mail-oi0-x235.google.com with SMTP id b204so109322724oii.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 30 May 2017 05:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hrt-email.20150623.gappssmtp.com; s=20150623;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RY7HKLBwNY55xxz6NY1xr4PqTZA5KCowMXxWE/SHcGw=;
 b=pJvcfLAluu+i2oj7HD0LJ+mYZofNfVHagf9O01jRDefqBsEOFMHpDyqSr7VixDJ67Y
 YkaSWDTi8+RvhmcGn/lk8R2dS6MEjn+WfjqjVifduKjZhmGIEKPo4gAaGZPn8DoVR9aE
 PM/SaDvtL6ACyVV+PnJrT9TnpLaWBT4XFrYHl9lupynPyShqubf02Njtrq/7b6OYevDa
 F1OwV9QTPOkv4v9bUOVCyCp2k+Lb0eOK1PWFscwf6AoD5QDeHEFU0/dfq10uJHiaV36N
 edW0oyjxe9SX/0e+9aiTmVDKSJbOst1GE59FEfMGS08xLJ85NfuEf0/f2iQvFDZGaXF6
 nofw==
MIME-Version: 1.0
In-Reply-To: <20170530122151.rms4qp6q4nmd6wwp@ubuntu-xps13>
References: <CAOjtFLk8yPzHP2zUhEB=nY636K1NRxT8z8oonv7K3ibSHZ-G9A@mail.gmail.com>
 <20170530122151.rms4qp6q4nmd6wwp@ubuntu-xps13>
From: Mauro Barbieri <mb@hrt.email>
Date: Tue, 30 May 2017 14:44:29 +0200
Message-ID: <CAOjtFLn5fbYOxmsBKRnyr+pVrPQCddeyiYP1JW--A8+J3AyDvw@mail.gmail.com>
Subject: Re: [wireless-regdb] Official vs latest releases
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
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

Many Thanks.

Mauro

2017-05-30 14:21 GMT+02:00 Seth Forshee <seth.forshee@canonical.com>:
> On Tue, May 30, 2017 at 11:49:27AM +0200, Mauro Barbieri wrote:
>> Hello everybody,
>>
>> Please excuse me for this newcomer question. I googled around without
>> finding the answer:
>>
>> I found the official wireless-regdb
>> (http://drvbp1.linux-foundation.org/~mcgrof/rel-html/wireless-regdb/)
>> and many updated releases
>> (https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git).
>> Do you know what “official” means ?
>
> This is the actual official location for wireless-regdb releases:
>
> https://www.kernel.org/pub/software/network/wireless-regdb/
>
> The other page is owned by Luis and seems to be quite out of date.
>
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
