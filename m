Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AA88D358CC
	for <wireless-regdb@archiver.kernel.org>; Thu, 29 Jan 2026 07:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zVsLvGPlbGKSS4MjCO4OiiLmmnCq7vdOAzuA8/IVSKU=; b=3GmJPqfbivd30leXOhsJSTKy/1
	+KdC+w8kkyrjzglhn0qRVonhwdEEa2VFauk+IOjgk1OfKitzlW3SSAmDHebNJDPlxin+X3iJ3BF/C
	PXpedTUUlZoM3hQL2/6S8sZIRqcWE647aWzQ8Ry38z6PXVqLfwITjsf/OdGvGdVi53/MQfjAQVVYl
	oLHZN/sruisjzT4LFtflywHhJ/+bDZ09uhNA1uW50danSHswTSRFO9saOxzU8W/g8ZbS2QhQzSI5n
	1Gz6sq7X0yihEgLx1TRhYUuolUY1Rplr+xsScKWdBd3rg/pwUA5UIqmFQun9mTU9A9uVKKA6liB00
	SCBILydw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlMPM-0000000HO92-46Xk;
	Thu, 29 Jan 2026 07:25:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlMPL-0000000HO8t-2ggs
	for wireless-regdb@lists.infradead.org;
	Thu, 29 Jan 2026 07:25:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 774226001A;
	Thu, 29 Jan 2026 07:25:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1437DC4CEF7;
	Thu, 29 Jan 2026 07:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769671538;
	bh=/7AyFwPcIAznIeh0LFvhNaddbtZu8s5ncJX4Z/UOVis=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KGp7+LO1HqlZsa1npC4QCV5hWu48T+5nwk2aNlfrwpaJOYL+4wXS5czktut6mgSQ5
	 sUBs1dHGKhzZl3eOZ6kF2TYyOGwC1MmifLhnnHlzsUKAdQXjldaGgPxx83sMz2CE+D
	 1sQFGVgGxTu2osoG8MKaHmD+/6UULmmGhAxwjfA9WFF401VPlosyzgsnBO+7dMvZbh
	 lPove/wl8Y/l0knP1v8cWwtWBGg+QJXkq5SYXuSqYSYMvThXtq/o6N9UjQ4/6BHkOv
	 0kaXnvmhi34mAu+b+/s2q3p1YcnKkqXIUNbXNNc+xChWdsxstPH/qW5RuJifne+ug7
	 s70kepLVPIGhQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id A5AAF5FBBD;
	Thu, 29 Jan 2026 15:25:35 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20260128091634.28983-1-pkshih@gmail.com>
References: <20260128091634.28983-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Tunisia
 (TN) on 6GHz for 2025
Message-Id: <176967153565.1254038.8584678463430792930.b4-ty@kernel.org>
Date: Thu, 29 Jan 2026 15:25:35 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
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

On Wed, 28 Jan 2026 17:16:34 +0800, Ping-Ke Shih wrote:
> By decree no. 2024-641 of December 11, 2024 [1], which applies to
> frequency band 5925-6425 MHz, with power limits 200 mW, for use inside
> buildings, in compliance with EN 303 687.
> 
> [1] https://www.anf.tn/sites/default/files/2025-01/Arr%C3%AAt%C3%A92024_4611.pdf
> 
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Tunisia (TN) on 6GHz for 2025
      https://git.kernel.org/wens/wireless-regdb/c/5cefe5536421

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


