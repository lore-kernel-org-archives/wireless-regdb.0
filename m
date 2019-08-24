Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=EKPbZmQzWR6v1R+j6IBvgK5FyAin/vzoJNfeljyOh9M=;
 b=sgdlNETLOI5wkN
 dkv4+HfGUjnG8riTj1HtUYrgbaBMhWHJdxe0cIvauu888PMwkB+JwRPJQNTy2M/LjknjWwUtkFSfB
 eQ1iHk5RJLqSZlnkgES6q1IfsYlA+D4T/ahEOUtRAFEkyzI8PICM6rY6lcoY432SV2726SZs/6T7F
 l+mZYvTcVr+R0XC4hBpuPOnxWL+UrxQO4ZCckouWING006WOJLWZ89YoGQotkRN6w6K/Sd+jC4Myr
 rgUvAQ3Wow+4zBwvpRSLXeAhXdQJhRrqu4dThsbYnpdL5bGhjrtlCRQUbMayZrs5DQDuU0pkLBWNc
 HJ/yTCdv+HWp2vYpD8rA==;
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Rl9-0000HT-H4
 for wireless-regdb@lists.infradead.org; Sat, 24 Aug 2019 08:50:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id b10so16655867ioj.2 for
 <wireless-regdb@lists.infradead.org>; Sat, 24 Aug 2019 01:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=muJagJsfdHnHyt1SNcnTMB4/zCJ88Nk1+Jo9orlYcC0=;
 b=XBW4cNm0qnxhyEwFMkuxEl5vTH9NwzgG3y20cmccC8F4IgNszvhVZ9jG+gTmDwR2tu
 Lk5M4Fl2Bg4zG7i6kMiY2qlp4lA669sfCSAPoKOiTwR/w98hS3aMm42NOJwq23BEwxfA
 byAFwpb3lJ/mpsqxSiZnkLJ2Qr/LubHj9WAZjWWtNrhjnCwNgQ/IVaRQtGnZGkSsR1cb
 +RPbdQ11lqHCgOUvsJpyspaBZc+Oiu6JAKxyPU4XbTykLB92fYNGGln07+LFY7xAYyrJ
 /T0EhtTlVqzkblhUASlXRAe4RdiESpJcNGpjIth4hd5rJpBC03QderptnxdD3jnu5sLP lqIQ==
MIME-Version: 1.0
References: <1566636490-3438-1-git-send-email-hanipouspilot@gmail.com>
In-Reply-To: <1566636490-3438-1-git-send-email-hanipouspilot@gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 24 Aug 2019 11:50:43 +0300
Message-ID: <CANoib0F5YZ1i6cc2YDKLEovE29Jnzt2B1B-rJRWuQuDn+Gcbmw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v3] Russian entry is incorrect.
 According to the last regulations document of Feb 29, 2016,
 160 MHz channels and 802.11ad are allowed.
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org, linux-kernel <linux-kernel@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

> EIRP has been reduced by 4dBm because of TPC requirement.
This is a typo. It's actuall 3dBm for 5 GHz.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

