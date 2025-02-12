Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17B30C02198
	for <wireless-regdb@archiver.kernel.org>; Wed, 12 Feb 2025 09:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNx5qf5MEbiwtQa3rLiJhZz6YOFUrSjZ6MZ+b0xGtFI=; b=oqWOnHmowA4ze9+IfPP4Q5TSDG
	s4dTSf4GCzwsvalBP4u2xbBmmDTrXUSQc9lDlbmyEAewBi9edhH8Qx3QPLtUsbZw6P1yXHw+96Syw
	foPG64ddRpOBznYT63V8mWy90iXb7N76keXX5vJx+HdJ7m6nXgwoygtdu9Y+L7+MuaLQunIO5T+c0
	fJjASOLWSk2dADFYxK/YZyjYamyEtzVkDDnrPumG0CW42QmfFNn3g17wVXLtOYCz9JT0k54SCyyZo
	fMn1mxbUzikUkUHpcnQYY2TEghOlyizmhDI5xgomTmf8Fw7qJy4wBbI0ELspYxSI2bgHRDqHfF9cF
	C3nHa6rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8fd-00000006iJ0-31rR;
	Wed, 12 Feb 2025 09:04:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8Z3-00000006hD0-0QzP
	for wireless-regdb@lists.infradead.org;
	Wed, 12 Feb 2025 08:57:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DFF515C4D71;
	Wed, 12 Feb 2025 08:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09610C4CEE2;
	Wed, 12 Feb 2025 08:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739350668;
	bh=jBYHb/Q1xw/D9uFfYicb9NT8nlJ5HhIFcQOHpEfMn5A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Dpce4hbLF145avGuvbtUPEHwW6wUJRxFHgVfS7iIrN/8S1m/uNvLsMcRH12scfnw8
	 s7sxLwKWJaIMGTwkklTED6q3YnZTNJ63o0WKLCLtfJYbmb8ffvSoJb2thUq6T0cya5
	 PdjJnjuVuzzTCIU75EAEpEfUyLmFZUWZ73aAwdjMeMsZJSNXRN4oiXQAzg9K2IX0Xv
	 2rKyvXdty37IL9VV3OeXtzbMfWujXJtkNRGWypJg9V9oRQ4cOybj03cZI609cKOXAq
	 0SR5QdAKTcgtvOb7ZGhUOnFbzd3mpGnUsLnqYQG3I82wC12jbetuP79br3G2apfO7X
	 A51IHI9XzEOPQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id E92F25F725;
	Wed, 12 Feb 2025 16:57:44 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Avgustina DiPierro <tina@dipier.ro>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <EC8B2D35-4EE1-42B1-91D0-46F788EF6C61@dipier.ro>
References: <EC8B2D35-4EE1-42B1-91D0-46F788EF6C61@dipier.ro>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Armenia
 (AM) on 2.4 and 5 GHz
Message-Id: <173935066491.2471378.9238438834798247701.b4-ty@kernel.org>
Date: Wed, 12 Feb 2025 16:57:44 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_005749_198451_FA2499EB 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

On Mon, 09 Dec 2024 21:02:17 +0400, Avgustina DiPierro wrote:
> 1. For 2.4 GHz range, based on reworded subparagraph 9 from
>   https://www.psrc.am/contents/document/4749
> 
>   * 2400 - 2483.5
>     - 100 mW EIRP
> 
> 2. For 5 GHz range, based on amended subparagraph 10 from
>   https://www.psrc.am/contents/document/11375
>   which also supersedes the previous document
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory rules for Armenia (AM) on 2.4 and 5 GHz
      https://git.kernel.org/wens/wireless-regdb/c/bd70876463fe

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


