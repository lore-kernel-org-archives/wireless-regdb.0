Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=WECaIswR/s3Ov6vUZBlkLB8FTK4vCuo/fdp0W3/Ptns=;
 b=wlCWIoCFK2Lm7G
 EVeAmXIyTW9jKNJl1B3GcgKZKNFRIlj8YP3rBlU/t3dhDpYs6aluGHuBZRyyr+Dfch1V9/CMKMiC2
 askloPFpEVSlW0tOyO5hJYuUvlxJ7QFfalNBSgAlLrzTBLpjlA93zjfGHnynOzI05QFd+41hQ6Qw3
 V3AcOBG7ZdBOFdRJ5GvjeMgnOj4sJKm5v5Tra7Ci+Hr5VrYxd0f13nH8OPkndrhFB8oLwZWtQr/uP
 81vgQOV2wbBh9oVeOo13iEdHcDwjqaiGIGH1hAmUPtj4Z9m3gMB7ZP4NIl+Tx4bax1Amae3iM8UH4
 j4ldPC8fu6SOrYo7p2Hw==;
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1FoR-00FnWe-Jj
 for wireless-regdb@lists.infradead.org; Wed, 07 Jul 2021 22:14:37 +0000
Received: by mail-yb1-xb29.google.com with SMTP id p22so5619481yba.7 for
 <wireless-regdb@lists.infradead.org>; Wed, 07 Jul 2021 15:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anyfinetworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0dstLF0nLYuu9tSyBP654xEpbDwns+hZ+DYxIp2k/gk=;
 b=rOmSpCCbVcZ+A6pfGRPkItJoay7exaP4n/xgsJ7vUbERUu9buuiFncEV2sIb/AZzAC
 fcQzW9aUvs06kXNXQl+7QfxoGZ0dUvjQ83aZDo+rHl4yqBloR0XEkmCVwxKrg/mW59Rt
 me9WglmCpwT5aaetcRuWaXSAhveEyA9fvxHt7BctySoVpOwQognHbIbPNV9N0X3GJaWI
 d7bKdesw5lCpJ+UA15mJvxhJStJxrOgOnNFZgdhttghC6kAoy7MMvY71TZkidPFqwaHa
 N/ZYp5fke0sqzV17XYg4BIgaKsDZIW+XLgq8+0IArDZphmZaXAy95rWNhnhyK8D4yhfk
 wNbA==
MIME-Version: 1.0
References: <CAM1=_QQg6tpuctTwT2XVrz24aJ3Ei0SJzk-4tgd6dHvcrDtdPQ@mail.gmail.com>
 <YL9pQL+JV8CVDdaH@ubuntu-x1>
 <CAM1=_QQ-QG+mCLRxuY26S17zMb-gVEQNf0gWs13LxGYFk4mMYQ@mail.gmail.com>
 <YOSFgurmZ/hHtteb@ubuntu-x1>
In-Reply-To: <YOSFgurmZ/hHtteb@ubuntu-x1>
From: Johan Almbladh <johan.almbladh@anyfinetworks.com>
Date: Thu, 8 Jul 2021 00:14:20 +0200
Message-ID: <CAM1=_QSWxy-TxB-JsFFLDU7OoWJnv4qgV=hNfh3R-kxJ47uRcw@mail.gmail.com>
Subject: Re: [wireless-regdb] Different indoor and and outdoor constraints
 for the same band
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

No worries! I've been busy with other stuff as well.

> > I have been looking into this a bit. From what I can see in the
> > regulatory support code in the Linux kernel, the outdoor environment
> > mode could be handled by the same mechanism as indoor mode uses today.
> > I can put together a patch set for review on the linux-wireless list.
>
> There's a more fundamental problem to solve though. To my recollection
> the kernel does not support duplicate rules for a given channel with
> differing constraints.

> If they cannot handle duplicate rules for the same channel, there may be
> some way to take advantage of the implementation to make sure they end
> up using the rule we want them to use. I'm not sure without
> refamiliarizing myself with the code.

Hmm, I understand. Thanks for the input. I will take a look and see
what we can do.

I have two concerns with the existing implementation in the Linux
kernel that I would like to address while doing this.

1) I think it would be best to not assume any specific structure among
the regulatory rules. The indoor bands and restrictions are not
necessarily a super set (or sub set) of the outdoor restrictions.
Regulated frequency bands should also be allowed to overlap,
completely or partially. Since regulatory bodies may (and do) specify
frequency bands like this in any order and with any restrictions, the
implementation should not make any assumptions about the rues.

2) If a rule in the data base has a flag that the kernel does not
understand, that rule should be ignored. In this particular case it
would have been fine if the kernel did not understand the NO-INDOOR
flag, but it should then have ignored the rule instead of using the
rule and just ignoring the flag.

Hopefully I will have some time next week to work on this.

> CRDA only suports the older db format, and we can just limit that
> database to having one of the rules for a given range, which we could
> specify to be the rule without NO-INDOOR.

Sounds good!

Johan

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

