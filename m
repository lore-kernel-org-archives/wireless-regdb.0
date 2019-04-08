Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=QAFZUJKlOpfSEHu31Me8HGHqq6bASKZZpUoc7dNo6Yw=;
 b=afvNbROtsCJ6bU
 b77Qha2qDZBmnLdDb60Fw6mKJFCx+aQABZa7cLqJQdZD5uqsSe8ENqZp8+74QrGms26h5+V70Ukbz
 j798RFrZI78+hkJ6msnRWPaN793JtSuQug+Z6OTkFM33/0fOwMkDpljhk0l0tC329d3WzhNlfL7Np
 BWNPGX3Txo4LHpXERExxq2oJl7aY3WRS+NAsFMnI0axi34Gfbk6CKGq7yXIgPQeA7sOTUWgQhcaQ6
 Rh8USGCSeraH1sfH/8cBk08XndEJKCzbExCSdKwdHTkCGVZV6NI5JX9E4UdfZgYWp9NtE//t7aaYv
 jQe1ysKV/GqtmJQWpqng==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDThR-0005GN-IP
 for wireless-regdb@lists.infradead.org; Mon, 08 Apr 2019 12:48:35 +0000
Received: from mail-it1-f198.google.com ([209.85.166.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hDThQ-0000TQ-44
 for wireless-regdb@lists.infradead.org; Mon, 08 Apr 2019 12:48:32 +0000
Received: by mail-it1-f198.google.com with SMTP id v11so10296301itb.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Apr 2019 05:48:32 -0700 (PDT)
Date: Mon, 8 Apr 2019 07:48:29 -0500
From: "seth.forshee" <seth.forshee@canonical.com>
Message-ID: <20190408124829.GD15126@ubuntu-xps13>
References: <2019040118074276659215@jaguarwave.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2019040118074276659215@jaguarwave.com>
Subject: Re: [wireless-regdb] wireless-regdb: Please update regulatory
 rules for Japan (JP) on 60GHz
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
To: "junping.xu@jaguarwave.com" <junping.xu@jaguarwave.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Apr 01, 2019 at 06:07:44PM +0800, junping.xu@jaguarwave.com wrote:
> Hi Forsheee,
>       The 60GHz band defined for Japan was between 59-66GHz, but is has been Updated to support 57-66Ghz about 2 years ago。
> However, the latest wireless-regdb still containning the original regulatory information  as below. Please help to check the infomation 
> and update the regulatory.bin.
> 
> db.txt:
> ......
> country JP: DFS-JP
> (2402 - 2482 @ 40), (20)
> (2474 - 2494 @ 20), (20), NO-OFDM
> (4910 - 4990 @ 40), (23)
> (5030 - 5090 @ 40), (23)
> (5170 - 5250 @ 80), (20), AUTO-BW
> (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> (5490 - 5710 @ 160), (23), DFS
> # 60 GHz band channels 2-4 at 10mW,
> # ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf

The only change which is required to change:

> (59000 - 66000 @ 2160), (10 mW)

to:

 (57000 - 66000 @ 2160), (10 mW)

Is that right? Can you provide a link to the documentation which
supports this change? The current link above this rule appears to be
broken.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
