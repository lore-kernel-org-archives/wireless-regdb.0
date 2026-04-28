Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EEEEFF8870
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 06:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7VVTsq8XWbQn5ghdawu26RWWV7ag2NtGHpGMosee4nk=; b=2p9/3+zM+gQuGEws93UqILM72A
	qRH52zoTJT+K0KApLxHxJG+zIvwoZiJf6JQYPA+D9ZLU2Xm3pn0AcnfmTeOpS+OD6AKtU7Hjl5RjE
	YBpQhpkJ8/tDbRnwBRi7YLF1CMNsXPLLiGr7QyUuTjI94xiC/Td3nkqnOM8uzt3aPmcba9m4me7Rz
	Rphak2cys1bsRDS03VC7hwjXrblhQX/3MFIUiRkVgPt24MfPNV40rlDsUfpF8dok5u/uqr1pMe1u7
	HAitcI0/QWU2NiuLKRMOdjGVrOlVrHlFMYKmsoN5N4T2ZUiSop8tpsFot4o1n9WvUMgiOSQq/PNWC
	82UpFyyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbtp-00000000dCB-3Fn9;
	Tue, 28 Apr 2026 06:26:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbtn-00000000dBO-3gHf
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 06:26:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5500760142;
	Tue, 28 Apr 2026 06:26:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD58BC2BCB5;
	Tue, 28 Apr 2026 06:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357583;
	bh=bj4RxzOYv3JJji4t2ARFFPQltsZfvpRBSgdTtiCYzeE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=oD3SzAiAeVCM3EVAYXXHTUwVsCvHkp9xOs4TmTnF3OWVGFUH43sb7GVkImwoy/5WT
	 VILpRHzLbnPFTSlvbGqfTdmzaltDUniuJcofk5eWZT8OnOjBZK+gZx2AznG9VABIHY
	 uBPod5EQE1BOG+sSgs6O7L3jVY2NoTYKDuRNpZEAoAdKNQtigrf4Qo7VmG9Yo2VRKp
	 Zkp5dtXL09BBjugZ2lN92c9YSYOPQiqrQ9NoGweXbjNW43HR9X/K40OljZnH2v6nv3
	 WtmEk6da1Pc5XSUx+rUDYK+IHjmNHBa5W9m1eNevXdOW2Bu4am4LKlDJonghejXbyz
	 n35FSm1NiBA9A==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 3032660156;
	Tue, 28 Apr 2026 14:26:20 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, Louis Kotze <loukot@gmail.com>
Cc: vkosikhin@gmail.com
In-Reply-To: <20260418201717.2152301-1-loukot@gmail.com>
References: <20260418201717.2152301-1-loukot@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update 5/6 GHz power rules for
 Russia (RU)
Message-Id: <177735758005.2827650.15130775145028466506.b4-ty@kernel.org>
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

On Sat, 18 Apr 2026 22:17:17 +0200, Louis Kotze wrote:
> The 5650-5850 and 5925-6425 MHz entries use 100 mW EIRP. The SCRF
> spectrum allocation (Annex 2 of SCRF 07-20-03-001) permits 200 mW
> EIRP, indoor, with LBT. The LBT requirement is satisfied by the
> standard IEEE 802.11 CCA mechanism in the MAC layer.
> 
> Leave 5150-5350 MHz at 100 mW. The SCRF spectrum allocation permits
> 200 mW here too, but the per-standard equipment certification rules
> cap 802.11n (Order 124) and 802.11ax (Order 321) at 100 mW. Per
> maintainer guidance, regdb should encode the most restrictive
> applicable limit.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update 5/6 GHz power rules for Russia (RU)
      https://git.kernel.org/wens/wireless-regdb/c/6873bfeb2ae6

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


