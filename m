Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC11FF886F
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 06:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WfC9kWPN+GIIAsRrA4Ai/y9immvobYZwZWnCAP81bXA=; b=m3NnQMeh4XdRPKYLRsquRxKJMg
	iAWsZ0JyR2QZti1+SfeRqTFmru9wWwwPSCDyi/I3fWNIrrQlPgI4cx5JqU4dUTiJbphuJ5MuFjzS5
	xPtTcdAe4g10iPnbj2pjlyEDK77Ai7m9g5bX4RA4uIgsXQq5KaVEdZGCNHF6CrSbo52asXHp6VDf9
	B9dj2iUmdtDyLYArBhU95/BertVHgR5lOmE4ZTQRD18cDOvw3gvHUH/OeLZx6JLUe8YwZaYHRRaqj
	EusoG37UieJrWiFFWpu9wRo7IHyw5xlCeIPwBmHRTqLOhRjX/G4sZqw2FnjhAaiyqWb+tjYb8goHI
	54JBrk6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbtp-00000000dBv-2By6;
	Tue, 28 Apr 2026 06:26:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbtn-00000000dAx-3drg
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 06:26:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 343C460141;
	Tue, 28 Apr 2026 06:26:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2B7BC2BCAF;
	Tue, 28 Apr 2026 06:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357582;
	bh=/LwKJn/nTaYu1RRxCFZ8W13efpH4Xh/+vpgtO+JKBoY=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=pkwz7yt/iglQWzP83kzEIAmI/RiInqGIA/M5CY8p7A53Xox+2F0he+/MpgUiYaYtW
	 NbSXD7B44Y2vzQ8Vfl6C4N6AgKakSPOUU5ToRObKkUA5nT2Df//jPDmPU1oIPnZI1o
	 yqaB6AoUdVXc6QnOHewYduwl6pfabBeMFRUrFPP5v/j+R0rP4y3/dRrBlRbsc51IyO
	 oEWgD/Ahih+rzJUtv4LYr5qqxO9KXYB9/2yOoPv7nVJpgCSqfYxjZldgvwKyjcJ2Xr
	 AV73O49BMa6+HdsoeHIUkyDhDnZnaFKH18QUDSsUvoRchjI3HBkeC0y6FlFLLvYYQF
	 sSgT1eY4BL/2A==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 412FB60277;
	Tue, 28 Apr 2026 14:26:20 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, Louis Kotze <loukot@gmail.com>
In-Reply-To: <20260411222155.299441-1-loukot@gmail.com>
References: <20260411222155.299441-1-loukot@gmail.com>
Subject: Re: (subset) [PATCH 0/5] wireless-regdb: Fix incorrect entries
 found during comprehensive audit
Message-Id: <177735758026.2827650.14995048157071788585.b4-ty@kernel.org>
Date: Tue, 28 Apr 2026 14:26:20 +0800
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

On Sun, 12 Apr 2026 00:21:50 +0200, Louis Kotze wrote:
> Following the South Africa (ZA) 6 GHz LPI fix submitted earlier, I
> audited all 182 countries in wireless-regdb across all WiFi bands
> (2.4 GHz, 5 GHz, 6 GHz, and 60 GHz), cross-referencing against
> official regulatory documents.
> 
> This series fixes six incorrect entries found during the audit:
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[5/5] wireless-regdb: Fix 60 GHz power unit for Ukraine (UA)
      https://git.kernel.org/wens/wireless-regdb/c/d0781152c334

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


