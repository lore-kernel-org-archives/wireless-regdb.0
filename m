Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
 List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date
 :From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=3AjS7N1r/hE0v7htc4fWGMTI9CEJ71vZ9zS8AgIH1r4=;
 b=SHBzjn5V2nGJyW
 99e1XYRuEZxQphmWvclv39mayNsQjaD4GOAQHqRq6aYWaDewAbIPDgHP5t4mkJnHqfvDB42uLecyo
 Q0kiBJGTZQmH6dAyajDNCMXh5kEAMRzCq6UuHth3tWaP3nEapePQbdcK7w2HMQ/bhfLZuizgdqHBY
 1T/kRsLh7Cwp8e/L20amLREo/HeesiZ1PhmQQMtSHuvfYqq3Rw17GxeKbmH0zF2ZvnECH7KgsugWj
 Rm7mSCUSzhPIxvMuQFACyO/6p2kPps8hJERtCtBA42zduCPq4iADBsIVoBHrVzmPOntu22fzMdqsv
 HsSqdOAVHzDR1h/i9wkA==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnEy-000c9O-2V
	for wireless-regdb@lists.infradead.org;
	Thu, 14 Dec 2023 15:03:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org
 [100.75.92.58]) by ams.source.kernel.org (Postfix) with ESMTP id
 E29C5B822DD for <wireless-regdb@lists.infradead.org>; Thu, 14 Dec 2023
 15:03:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43F0EC433C7 for
 <wireless-regdb@lists.infradead.org>; Thu, 14 Dec 2023 15:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702566180;
	bh=rJ9PwSVgMEg6zUUHMP/J0L6sMxNgHznuGqkJhb/nCdU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=KmmmMAdjbvXXschXVfjRcDjZyhm3tAN0W+pb0fcLBT8dqoPOj8UIE5j9X2s1MhwDD
	 /X6cHRXaXbrhccTuF1o1N8uPdB3dMcPIa65idf4QbXYUMS9jRMALDf6e4zXMu3UX4J
	 l3FPw4m+9LUSt1yH0i+aafJT00yAoZMd/7iXUYrpcCH+k01wTSnG6ZWAoinFXv1t/z
	 U8nlyYR4Ia0euwwGFSrg80Mcgp4vG5jsC6rBwb1onUm0csz4XCDEKNxEGnyDqz8+gC
	 fpKL95Hw4lTESN+DBUTvchEhQtpVQBI5T/0ayqjWbtNLJ3dUyGAxDsNpDMnSH4LFW7
	 LDqBjd0Kk8h6g==
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-1d069b1d127so49341125ad.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 14 Dec 2023 07:03:00 -0800 (PST)
MIME-Version: 1.0
References: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
	 <a0480e18-7b67-4e16-983e-c8f888c97261@16depo.xyz>
In-Reply-To: <a0480e18-7b67-4e16-983e-c8f888c97261@16depo.xyz>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 15 Dec 2023 00:02:50 +0900
Message-ID: <CAGb2v65V==YE=NLYyE=2ApN04jPeuFFc9d6bfTaQYBUsXoFWsQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory info for Armenia
 (AM)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Kirill Matvienko <me@16depo.xyz>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Dec 14, 2023 at 7:04 PM Kirill Matvienko <me@16depo.xyz> wrote:
>
> Source:https://www.arlis.am/DocumentView.aspx?DocID=181829

This only justifies the power limit change. What about the
maximum bandwidth?


ChenYu

> Signed-off-by: Kirill Matvienko <me@16depo.xyz>
>
> ---
>   db.txt | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index fdc2c13..0708039 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -80,8 +80,8 @@ country AL: DFS-ETSI
>
>   country AM: DFS-ETSI
>       (2402 - 2482 @ 40), (20)
> -    (5170 - 5250 @ 20), (18)
> -    (5250 - 5330 @ 20), (18), DFS
> +    (5150 - 5350 @ 80), (100mW)
> +    (5470 - 5875 @ 80), (100mW), NO-OUTDOOR,DFS
>
>   country AN: DFS-ETSI
>       (2402 - 2482 @ 40), (20)
> --
> 2.34.1
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
