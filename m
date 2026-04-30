Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C38BFF887E
	for <wireless-regdb@archiver.kernel.org>; Thu, 30 Apr 2026 02:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xMN44qSIlG0oT9L6QpQ6Z50/HqNYBNzAmg2PShphcF0=; b=33t5/2Ir6ASqVN8jzO63jdP7iZ
	oOPxvJZcups8xBza14NfW5kOVnRKTVpkdz1HERJb+ZUoNd+65i5mFJPNTWa1wHFGFS1ihM8XXegBg
	i4AWE3xWbGq26SyXl/nM2k9t3y9U1pwpqnl7FkV9T3d4pfO2vA0hTwMqAmuKnccYhwzBI61fAKqvq
	bEKG3FSsUo1MO3y1GJgxHzEb/A7x2Ged65Lijfp0J8DbpZx1mLcoqrHhJpKHkgzmLrfhcr047ela8
	j/oVRdj57K2dMO2EQjne0Ox384+2ELF6Ol+Rg1VhS65NaITn6ZFNV7zsyiFzc3yMeXvQp5GiZniVI
	kurUpcnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIGh4-00000004PWk-1lGK;
	Thu, 30 Apr 2026 01:59:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIGh1-00000004PW5-3bOP
	for wireless-regdb@lists.infradead.org;
	Thu, 30 Apr 2026 01:59:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DD29C44136;
	Thu, 30 Apr 2026 01:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A25D4C2BCC4;
	Thu, 30 Apr 2026 01:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777514394;
	bh=5y55/pM13vOQPHfubp312nplvZGOBFdjp1fS4mBLcnw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Bng5loduA7LpVocZSXiy8YGlwzZ+hHphLJkpO0EoTTrPq5QPK4SamHNjw5JypnKgM
	 /csMpVl+17yXcydcNnesxf0r+1cGgXgIpDOiwD14R7HAAxdsmgeAcOhBsWnAj3keGa
	 OkQgCa4fOpAWi2OEjDozD9a7iFhBrZyKdgFyn0uj0zQwOk1xuCuxffxqG1bsqdfTze
	 VRd7Gtg8orQNUHG+snNxwGkG/GQ5PHpwdMWwnDty8/zNcsN+ZjtSyDLW2hw3PRXe8n
	 zyUTjI3Qd0315kk6gBSrzFcLM8SAftEvYlelb4Ozs9zavu4l5/n8mcUko/cT4s0G1M
	 ZWePq/T1NOR6g==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 425495FBD6;
	Thu, 30 Apr 2026 09:59:52 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, Louis Kotze <loukot@gmail.com>
Cc: pkshih@realtek.com
In-Reply-To: <20260428090116.536275-1-loukot@gmail.com>
References: <20260428090116.536275-1-loukot@gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update 6 GHz rules for South Korea
 (KR)
Message-Id: <177751439221.3356117.4257242372325715892.b4-ty@kernel.org>
Date: Thu, 30 Apr 2026 09:59:52 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_185955_918303_F455B756 
X-CRM114-Status: UNSURE (   4.59  )
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

On Tue, 28 Apr 2026 11:01:16 +0200, Louis Kotze wrote:
> MSIT Notification No. 2026-10 (10 February 2026), the technical
> standards for wireless equipment that may be opened without
> notification, amended the 6 GHz indoor rules for Korea.
> 
> Indoor (clause 2.나) PSD limits, including antenna absolute gain
> (EIRP-PSD):
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update 6 GHz rules for South Korea (KR)
      https://git.kernel.org/wens/wireless-regdb/c/0ddea2075d24

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


