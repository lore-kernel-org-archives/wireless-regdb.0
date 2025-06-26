Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3355C77B7F
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 08:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f5CzuRLTmglH2PQUAZ5cqkF2YJAaRNsxHc4nGgNOxuo=; b=1j5vJQnPJYDTZAcAgaoq0pLQff
	To1aRY4LCrjFjH4w997Yw5t9/+iRA4lD4RT3KbglsKAwSOlbsMhv/q+Wew/jt4C2gtGE8cf8QH4Ez
	C1zKBM0E58Z1WQMblv7ar1wbOM26mNZLMajlK5Xu/Timzz1E8sEODpC5D0LiDBX1Zz59aPx3SsoBs
	opmAK8vIKF/+dO3N0z5unoJLKgNJcL2yRO6cZfEC/0cccF+8mUPCvZl4giBHtWvzJmpdrC3bxrPGi
	ERLNGPbam/Ws9ItHhaT6NHIfc4s8nxYoX7J2SQxgs/LIcYiuh6oAv/77yOEMUDLsB0LqkGeQBTKrk
	9jDBNuQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhej-0000000AtTM-2uWo;
	Thu, 26 Jun 2025 08:08:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhX5-0000000AsLD-15cO
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:00:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EDEAF434D7;
	Thu, 26 Jun 2025 08:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADCE8C4CEEE;
	Thu, 26 Jun 2025 08:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750924830;
	bh=GhNn1CxE/TVqSMWQ96wk0/Urn0iPGND4WEgwx6J4S4w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mYLFJCVchWOSmgVSAr9NtEFg+s+ePhmxu4VrGi9DzxsepqOTJTlndaaHtV+zHnUhS
	 1H9NkpYBzKvD2eACTvMeX15SxFUE3cBbn2IecL68ezZb7TOELLjgKXjzvGiOh6o1V8
	 +Q5rGXrpQ3tvlOVeBveF7mGtcoKmLH2E+qejVXN5apf+U/AHtiXZcR8DUGjVggW1Xk
	 Vm+R3EgqtJ79fAUKpAIufoe5qz+47P3tlrF3jlW7YzrgDZXVim4s1a3kPSBNGdHM8T
	 5QCzjQQElnxhzcI2T/dEE45g6VgV9KcMvqW9wWC8q32DCuOgYZzZe9ing2uTwfokDx
	 vodK79cQR5STw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 0E7D55FE35;
	Thu, 26 Jun 2025 16:00:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20250618054904.9107-1-pkshih@gmail.com>
References: <20250618054904.9107-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Egypt (EG)
 for 2024
Message-Id: <175092482805.2040065.11132581971624501350.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 16:00:28 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_010031_322414_86AA1C22 
X-CRM114-Status: UNSURE (   4.47  )
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

On Wed, 18 Jun 2025 13:49:04 +0800, Ping-Ke Shih wrote:
> National Telecommunications Regulatory Authority (NTRA) released Radio
> Spectrum Guidelines for Short-range Devices (SRD) on November 2024.
> 
> As Table 4 Mandatary requirements for Wideband Data Transmission Systems:
> Including Wireless LAN (Wi-Fi and Multiple GIGABIT wireless systems for
> Indoor applications only)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Egypt (EG) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/a8b5cda00800

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


