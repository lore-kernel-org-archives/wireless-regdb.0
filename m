Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA6ADC87FCB
	for <wireless-regdb@archiver.kernel.org>; Tue, 12 Aug 2025 06:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O1O9rZk/gvYbOPKum8ikA+lkd5WOi+0jyN19shLPVJI=; b=T3RHhjjJ7T/8+jKxwXtxjRcfIE
	WBiIsBzWhB6B7tVBNVCwGPMZWWCyR26ko9nuKaW46oNoS3boziZxsrzuOwYU0bM7CfVC/rhnCRS4L
	qRLy2PQsBi9F3GjUFphfl3TnA1+Wj3mYBmuK03TMxGkDmAJBtFnG+ivhg6nh1b5MnRC5TJe6R3Q8O
	SL7hCGdlf4JDa3am5ncl9JLl+tjIGzuDDaQSjWtO4T9VhO2bwzTFaUnE6Ko2ef418fpA+9ChbGUB9
	DJTzBVVIcnmG4/lb0fhTZgoj4+IyEENI5RR+Oi4zhlzxgv4dGzojnDXyt6aNn8cU9vjCaVe6R/UDu
	vWTSm0Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulitr-0000000A4Va-44KY;
	Tue, 12 Aug 2025 06:54:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulitk-0000000A4V5-0UVw
	for wireless-regdb@lists.infradead.org;
	Tue, 12 Aug 2025 06:54:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2B89560203;
	Tue, 12 Aug 2025 06:54:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B616FC4CEF0;
	Tue, 12 Aug 2025 06:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754981654;
	bh=sYn4unF3y3ZRcHusS+/p+Um8rP0JGBzA88BqHzHtyZQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RUfz6Lt3BYPFwnS2yoxFTYbDvqsSLbMBFqYCOUutJ9eoFOUr/X+dXw9yofjgtP+LI
	 fmTCl+zo021VGQmlvxhutWHMBKa6PmzJ49FmHj+S6/imOYYMFPmCM/lQXRb++61dC5
	 Dl02HbUSdbkxZK77M66rFYZb5KyUYjOAPA/mSf394DpNaDjJGhrixyVg3Sp3gkU/J2
	 6XGbwOmuyI7UON+v994jaI40KDVQD481xaP9BDK6vyvihyaU/lCe7wQ77z0/oB1aLL
	 2Jr3D29sbIyJ7VFLPpcl9OhBd8j22fafJb1QdRcAChGKUwygTD7+LnnacY2YimQaAs
	 aBckYRlb0Vo7A==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 202C25FAC5;
	Tue, 12 Aug 2025 14:54:12 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20250718030810.17213-1-pkshih@gmail.com>
References: <20250718030810.17213-1-pkshih@gmail.com>
Subject: Re: [PATCH 1/2] wireless-regdb: update regulatory rules for
 Botswana (BW) for 2022
Message-Id: <175498165208.1954687.8856625467332452057.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 14:54:12 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
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

On Fri, 18 Jul 2025 11:08:09 +0800, Ping-Ke Shih wrote:
> Guidelines On The Use Of Short-Range Devices (SRDs) In Botswana released
> on February 2022 [1]. The pages 20-21 describe:
> 
> * 2400 - 2483.5 MHz
>   - 100 mW e.i.r.p.
>   - EN 300 328
> * 5150 - 5350 MHz
>   - 200 mW mean e.i.r.p
>   - EN 301 893
>     * DFS: 5250 - 5350 MHz
>     * for devices without TPC, the limit is lowered 3 dBm
>       (reduce 5250 - 5350 MHz to 20 dBm)
> * 5470 - 5725 MHz
>   - 250 mW e.i.r.p
>   - EN 301 893
>     * DFS: 5470 - 5725 MHz
>     * for devices without TPC, the limit is lowered 3 dBm
>       - Not required for devices that operate at a maximum mean e.i.r.p. of
>         27 dBm when operating in 5470 MHz to 5725 MHz
>         (keep 250 mW for 5470 MHz to 5725 MHz)
> * 5725 - 5875 MHz
>   - BFWA is limited to 5725 - 5850 MHz
>   - PTP/PTMP: max mean e.i.r.p = 4 W
>   - Mesh/AP-MP: max mean e.i.r.p = 2 W
>   - EN 302 502
>     * DFS: 5725 - 5850 MHz
>     * The FWA device shall have the capability to reduce the operating mean
>       EIRP level to a level not exceeding 24 dBm for ChS = 20 MHz
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/2] wireless-regdb: update regulatory rules for Botswana (BW) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/e51d5681b3c2
[2/2] wireless-regdb: update regulatory rules for Sint Marteen (SX) for 2018
      https://git.kernel.org/wens/wireless-regdb/c/5afc6329e5c1

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


