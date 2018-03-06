Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=0ukOrSejefyF4f2V8RrI8IZ2chg9SjEVY+semxDcdRc=;
 b=KjhqT3vD8W3XQA
 x/DJuKR7PSauay0WygRr5LDJtxp7NQUNm8sABUjfhDeqUvS/xFT+Rkhgjp+thftlY8D/KKVQmhe8i
 ArW/Q1RRoqmURYcSKn0JUEhOvly0SrCYH7r96u4hf0MuhDoBNmjNjWQ7FMZKDz+c7NFQ+VMDdYVV4
 U28iJ9TbYMZ+gfVMaHiLlrz3NFHKiV9QqVwgZ5zJGHaHOSNzA5QWqmf2U9XIxeetgsKCT2zTj01nO
 4sd7M8bOceQ0ykcOOvDdhNCnjbU4GgAsB8jisnpsY0XyXedZhJPUg9ckit7vcoROC1bCFy7i/fJnt
 jbpVBrHJy+RoMjcxTJfw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1et8bM-0006Z4-Tc
 for wireless-regdb@lists.infradead.org; Tue, 06 Mar 2018 09:09:42 +0000
Received: from mail-wr0-f199.google.com ([209.85.128.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1et8b8-0006CC-Mg
 for wireless-regdb@lists.infradead.org; Tue, 06 Mar 2018 09:09:26 +0000
Received: by mail-wr0-f199.google.com with SMTP id j3so12548720wrb.18 for
 <wireless-regdb@lists.infradead.org>; Tue, 06 Mar 2018 01:09:26 -0800 (PST)
Date: Tue, 6 Mar 2018 10:09:23 +0100
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180306090923.GH6547@ubuntu-xps13>
References: 
	 <CADGYwvBNy4T4m5+i1km4cUPJd69NfxswqkHtUD=cOt3JrNXxgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADGYwvBNy4T4m5+i1km4cUPJd69NfxswqkHtUD=cOt3JrNXxgA@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: add Short Range Devices (SRD)
 for Qatar
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
To: Faisal Abu Rayhan <faisal.wiryasantika@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Dec 29, 2017 at 12:10:36PM +0300, Faisal Abu Rayhan wrote:
> Hello,
> 
> 
> Add Short Range Devices (SRD) for Qatar (QA).
> 
> 
> Current Configuration:
> 
> country QA: DFS-JP
> 
>                 (2402 - 2482 @ 40), (20)
> 
>                 (5735 - 5835 @ 80), (30)
> 
> 
> Revised Configuration:
> 
> country QA: DFS-JP
> 
>                 (2402 - 2482 @ 40), (20)
> 
>                (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> 
>                 (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
> 
>                 (5470 - 5725 @ 160), (500 mW), DFS
> 
>                 (5735 - 5835 @ 80), (30)
> 
> 
> Reference:
> 
> http://www.motc.gov.qa/sites/default/files/qatar_national_frequency_allocation_table_qnfat_0.pdf
> - page 64.

Sorry for the very slow response, this slipped through the cracks
somehow. Where did you get the power limits for these rules?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

