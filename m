Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=SNq/tzvsoXB+d2hcZIM/S0owVW7TtoBIKcxb6qCvl1E=;
 b=eYEps1aa5ZYADM
 /yKToYxncKY4i8xgG4fvVlhwmRp0guUtikX34/b7s/m3HWP/mZE7cmuOcyXtTZvHnMwEUhrcZIk9v
 ZW9NEZVcSi4anhBLScCOHlzd9sATqsw2YiD6HJS0DvMqTUbilzcE+GqFTwdfqIWBHPT1DmVIhcxzh
 qkghBV8ylUvFjx3d0xC90ufyn4/EzTPBi9T6vg+RH08wIwmx3IAjF1Ub4al+olAlg7vo8BP9y+4At
 2uFjiERC5HZ5qDdMX94TEncQHQ9aexdlELkPwj/3kQAYzskGV/PHZxOTzbKTvEmUZqpZXg4bH//o1
 4CdbNGhLd2neaMwZxzbg==;
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3WE-0004WI-98
 for wireless-regdb@lists.infradead.org; Mon, 27 Jan 2020 12:29:31 +0000
Received: by mail-io1-xd36.google.com with SMTP id m25so9725695ioo.8 for
 <wireless-regdb@lists.infradead.org>; Mon, 27 Jan 2020 04:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=4bbXWrCOiDmmxcPPYrRBxk8fQ528le+/5Oq199urbbI=;
 b=tvBEIBYfcNAeDn9JbGcID9r9lCHJJdVw/PtjqtR7Ht7/ZchpBzcETp63CrLcc3YeO4
 64vxWxPHas8MNvdG9k9n6pl7YNQmExWc/xDTwQ4Kf3TXxrjhjkfw8q/InXBuTIcLu9zI
 ZnNx2aGn8RQpCqfnetg+KwgMs2XjT+MY7//m74R20WW3MHndyPo40QrvdWQlZuS0e6eQ
 wZU2r/DbhdXjLtMXvWQ9GjSuCHIQq8rZ2FATF928C4i3FknTuvVjGDFb+fQDmAK1uFRa
 Orop+tcb5TuCDmZ+3LGaL/vab/6JIm5c55kdA9VS8GXotmZVKYCQhYmvSmSSQEjciWNb 0Qng==
MIME-Version: 1.0
References: <1567189484-27536-1-git-send-email-hanipouspilot@gmail.com>
 <20191029144815.GR30813@ubuntu-xps13> <20200127042500.GE3730@ubuntu-xps13>
In-Reply-To: <20200127042500.GE3730@ubuntu-xps13>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 27 Jan 2020 15:29:18 +0300
Message-ID: <CANoib0FRd5-rVgLJhgxuQk591uMSvG1ytxg87mWuKF6nbrnEdg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update regulatory
 rules for Kazakhstan (KZ)
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

> Hi Dmitry - it's been a while since I sent this last email. I wanted to
> check if you had any responses to my comments below, or if you intend to
> send a v3 patch.
>
> Thanks,
> Seth
>

Hi Seth

It looks like you found a lot more information about Kazakh regulations.
I have nothing to add and I agree with your comments. I had troubles
with my storage and I've lost the wireless-regdb tree.
So you can discard my patch or amend it as you like.

Regards,
Dmitry

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

