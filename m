Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B621ECCD1BF
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Oct 2025 06:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CqVatZq4Nzx4Fg0GBpH0KZahnvod2yjxc7Ty+HfMLWo=; b=hm+fpdfzBMaTFEAbT1/0G/Y6cH
	1MS52N3uouTxweXFsvo8Ia034YKCVsH02UCVBb1xoJbQPneiRipNPIzFN2zvr8/Ogk5Vh1l9Hizir
	udjbCeDL6i7T5khr6qDC5VnpW6ywoHRXNS0NO6EW5Mnv46NvEZvp5Kd7fxF21E91taiIcu/vXyOsN
	jKHarwzIgGrLa0Aj98WqSuxDqKDrd92AmdJaqCysTS2CFt8ARelhHa3nAhKUlRfHgKFzCKBppZb1C
	VS2zsFfj0wo90Z3xpmAln3pY4+nm1K8vpygNdYUbDK9SbMvbv6dCMsTn2e/YnyVRnHLt+t6HOqdzR
	ftrczDHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDdHf-0000000FMIZ-05mj;
	Tue, 28 Oct 2025 06:34:19 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDdHc-0000000FMHm-0mG0
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Oct 2025 06:34:17 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id 231605FCB3; Tue, 28 Oct 2025 14:34:05 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org,
	Andrew Yong <me@ndoo.sg>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	wireless-regdb@lists.infradead.org
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Malaysia (MY) for 2024
Date: Tue, 28 Oct 2025 14:34:03 +0800
Message-ID: <176163321686.1019491.3964867291138608750.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251028062841.49216-2-me@ndoo.sg>
References: <20251028062841.49216-1-me@ndoo.sg> <20251028062841.49216-2-me@ndoo.sg>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_233416_380852_74C7922E 
X-CRM114-Status: UNSURE (   6.35  )
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

On Tue, 28 Oct 2025 14:28:41 +0800, Andrew Yong wrote:
> Malaysia Communications and Multimedia Commission announced CLASS ASSIGNMENT NO. 1 OF 2024[1].
> 
> With reference to class assignments on page 10, and Power Spectral Density (PSD) limits on page 20, update the following rules:
> 
> 2400-2500 MHz: Align previous 2402-2482 MHz rule to class assignment
> 5150-5250 MHz:
>   1. Align previous 5170-5250 MHz rule to class assignment
>   2. Mark as NO-OUTDOOR
> 5250-5350 MHz:
>   1. Align previous 5250-5330 MHz rule to class assignment
>   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calculated at 20 MHz channel width
>   3. Mark as NO-OUTDOOR
> 5470-5650 MHz:
>   1. Align previous 5490-5650 MHz rule to class assignment
>   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calculated at 20 MHz channel width
> 5725-5875 MHz: Align previous 5735-5835 MHz rule to class assignment
> 5925-6425 MHz: Increase EIRP from 200 mW to 250 mW (remains within PSD limit of 12.5 mW/MHz)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Malaysia (MY) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/9e8c67fa3e9f

Note that I wrapped the two long comments related to PSD.

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>

