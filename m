Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC57CD4F5B
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 May 2026 07:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SZesYhqvqmzJxWOzEE1Zb1WVEaCTDMYjUUDcwktvwSE=; b=2vkCISMzbJrX4aXInRBRbkmaIJ
	+Ts2b4b3wLORz9jVTj8+pPxqv2n4Xd2yoEtLea8lslKCQacrf6MrUmSP9MK1sZkRhZvLzJRcfZyT5
	hFCOpvpqpmIAaLUVRhdSYLxQDPqqEaUy2iKJcDldj2vlm6dC90tj3c7jdfSvnm6XHlQz6HyWwl4T1
	4iIamWcLDobpVTpwhuiPlW6j0YavDYf720e2HJhJXewZ4i3hvxrynWKQenpJFhl/AGv61a9APZbqN
	6oQmLC5wnOs2zfnTNaDCU4WSEuc1U6B8+aOKjltDTa3YTUqi82brXh8U3awRmcE2FUFvVTicvtx7j
	cxfuN1lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEj0-00000000SwR-3tdm;
	Tue, 19 May 2026 07:18:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEix-00000000SvD-3rUN
	for wireless-regdb@lists.infradead.org;
	Tue, 19 May 2026 07:18:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A2C8E44388;
	Tue, 19 May 2026 07:18:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64910C2BCC9;
	Tue, 19 May 2026 07:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779175123;
	bh=0WLCfl1LEn537cT14Wwkq10gRDSFNgmgI1auUY4hKhg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OXTfrbQbCx07yPXY3xua73yqPpCKjgZxnWmiwl3EG/aObNlKUkZfjcaK/yyvMDHnu
	 jKozc/Wcm7mO6FIuku2WdQnn6gQ7Jps+iMmZAawF+djp3o7TZBG8jkgG1pnOLKnGwG
	 T0DPb8MF7ynQMWuUsvQD7DY3b6iIlID1XYIS5IasWAOABoQ+E+ugJ0WUgLowgdfxLv
	 XVkU79tZfOgO6CO3ciQ0CuRy1GAwC/6zPDxzjXcVLbqcnLvMV9kMkMhlGoVfKMtEfw
	 4EPcmp690e860rouJJdW/D/7fLHfnkA3lcTg/+UivIyS7xSLf97zSgy8gNpyTlsS7y
	 AkdziO+HpiGog==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 6883C5FCA0;
	Tue, 19 May 2026 15:18:41 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, hfzz7@duck.com
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <17568FCB-64AC-4CF8-9766-51FEE44EF7B8.1@smtp-inbound1.duck.com>
References: <20260501153303.8521-1-hfzz7@duck.com>
 <17568FCB-64AC-4CF8-9766-51FEE44EF7B8.1@smtp-inbound1.duck.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Brunei
 Darussalam (BN) for 2022
Message-Id: <177917512140.547955.5730399417374750867.b4-ty@kernel.org>
Date: Tue, 19 May 2026 15:18:41 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_001843_992827_1954F819 
X-CRM114-Status: UNSURE (   5.33  )
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

On Fri, 01 May 2026 13:25:08 -0400, hfzz7@duck.com wrote:
> In 2022, Authority for Info-communications Technology Industry of Brunei
> Darussalam (AITI) updated The Brunei Darussalam Radio Spectrum Plan. [1]
> 
> * 2400-2483.5 MHz
> 	- 200 mW
> 
> * 5150-5350 MHz
> 	- 1000 mW
> 	(For 5250-5.350 MHz, DFS and TPC are required)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Brunei Darussalam (BN) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/0c24afb228db

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


