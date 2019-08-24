Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=m6H9WydvEYbHyzcZ6Kt9Es+/Ls+WeSPvGWfY9LUubr4=;
 b=JbLTgGKg5GH30h
 NtWisVE/hRMEIAYGzXaaLU6qdoU2mxZIWIAT4RElfvQrNEmkizPvkCjCgUHUaEhAlCFcgz13YT5Mr
 W9TZ/wPltlVGY5sbMrrdN/09wFHow9zxLK7yYprL3BNOetv2yTaH9aKqCbw9lKCorrM+NJKm9W/Ge
 dhmNXpgWbN2KWoTfyJo7ri2MB27za9Rdpyzs7crVnD1VCp5BkyLph3pTl0PaLgeeQ2aUdTq9nug3i
 0ZaOcvLE3NHsASOdiOVoPyvNtsLUrQrkFV51rupF4OenidUrH+cfWCFKZ3nx0zWIMagr6z+KnwQKm
 05Nm2yqT9hHBN9wqw8nQ==;
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1OSe-0007yn-Nj
 for wireless-regdb@lists.infradead.org; Sat, 24 Aug 2019 05:19:37 +0000
Received: by mail-io1-xd42.google.com with SMTP id j5so24999547ioj.8 for
 <wireless-regdb@lists.infradead.org>; Fri, 23 Aug 2019 22:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=xffSZoeEsT6W79B2O8n1Y95CCP4jcyur3pRaEjhRstw=;
 b=FmyyS4t1+TBtnyNxSyf3IhP4NRofT7zUH9V0e5KiE/GyUEWSF0lO+HShE3XUZOkhL9
 +JVbZDZGVL+7KxN4sTPr9oimhlY2Rzf9QcTRSePIpr2V30J+g3hf+r2z0AxDOCtNfAQc
 VAjPGujNDJNCwqc27aGvVViExcfAvc4atTecphTq8stNFj0C/KgwVZECAYypJePNwF5O
 0BtqOrW2VcgAtdWOGENzcBD+fEKlbKf3PBcvvwf2zr33ktzakgWNf5S0jZ2s/5P0ZSde
 8gljCQcWtUVDCbgeACvlFIJnnmZVG7GrUXwV2WyGUgnB8ztmkn66ijm3FT6TAZKZVBlz BnjQ==
MIME-Version: 1.0
References: <1564427246-25592-1-git-send-email-hanipouspilot@gmail.com>
 <20190823190019.GZ3071@ubuntu-xps13>
 <CANoib0F5U7suFoHdKYuqQvjB+XN5bkqzNtBd6RkUi_Rnt7_OrA@mail.gmail.com>
 <20190823192143.GA3071@ubuntu-xps13>
In-Reply-To: <20190823192143.GA3071@ubuntu-xps13>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 24 Aug 2019 08:19:25 +0300
Message-ID: <CANoib0H_NdF7oJv6rno4xVNx9xRcykvh6DrEWo6K45m8NMuDaA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update regulatory
 rules for Russia (RU) on 5GHz
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

> It's not specifically 20 dBm, it's halving the power limit (i.e.
> reducing it by 3 dBm).

I suggest to leave it on 23dBm. It is low enough especially for 5650 - 5850.
I am sure that a lot of Linux devices are certified that have this limit.

The TPC mentioned in the reg doc doesn't explain what it means.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

