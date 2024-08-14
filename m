Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3418C52D7D
	for <wireless-regdb@archiver.kernel.org>; Wed, 14 Aug 2024 04:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QI6m0I8kbYGeJGKWQHPEKSqw06EwwNoTiwfSFuLmDrY=; b=gvXNS6vkbft4GbqJn4QlIh9Vwr
	fI3RJmHXpeSypfxL/xJBf2Rs/Nj01Nnq/jRJ+HtceatMUfv1KeJKs27nTkZ/gaVUGGIzCcHOhgMeZ
	BvfgrFsSktGbuxVaAeudsUFv5vayPsNVzvjSu0NvHH0l98k4UbuAZBXCICoqvaB+91myX5E22bEO7
	IVA+XYGACi7k+xin/rqtIdN8pxu9ZZGd1wsRqCUhFkqhtBGPAnpRG2Eo8MmIEAHZRytMGfeR9w79W
	cpvDlQjzsx8dZcbdEMcoZkJGI7sDrczU+ZSoSlGQTMpAtyzF8qnmfHDTJJQS+F3zcazhtj4Dqzg8J
	kAnmvTbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5Mo-00000005fZj-1uGp;
	Wed, 14 Aug 2024 04:12:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5Ml-00000005fZJ-2sgt
	for wireless-regdb@lists.infradead.org;
	Wed, 14 Aug 2024 04:12:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C7669611D2;
	Wed, 14 Aug 2024 04:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4491BC32786;
	Wed, 14 Aug 2024 04:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723608726;
	bh=HkKwIoHlO5q5N5v9NshMb5gWmUGTcPxTXNFH0izbM88=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=annuNz0pL5GiQX2eyFsbp/fCXyzBcARPtZQrsoFayVO1jY0gyGEuKCWd71l7qXUPO
	 5toZqQNbN9TWEBSE6FO9IMIWNvkjH8JN45A9Ga/1QFp06CDiOkOOBQxTANKhqKlaX1
	 4ziiQT1NHsTWRMeFXQhp8FO1mObK7LSkRFOROu8E4CuOJAeVPBDlWGTbjAXFv7myuE
	 z4D8IwNNcuptCNneiQ32s7KUpe7U+oFG0Cg56rdKVVxEzJHOdb4k80xk5dELfZB9hc
	 8CjQs1Xt1UL7ffw4sW8Otw0nCJLXjtzJAtiGc7/TudjRPKWwSDlLSO7inxx54VkLwc
	 nK+TedOVPRlKg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 66AB15FCA8;
	Wed, 14 Aug 2024 12:12:02 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: wireless-regdb@lists.infradead.org, leslie_sen <leslie_sen@163.com>
In-Reply-To: <20240813-correct_cn-v1-1-91275dc00d9d@flygoat.com>
References: <20240813-correct_cn-v1-1-91275dc00d9d@flygoat.com>
Subject: Re: [PATCH RESEND] wireless-regdb: Correct regulatory rules for
 China (CN)
Message-Id: <172360872239.1746842.1519520270672145622.b4-ty@kernel.org>
Date: Wed, 14 Aug 2024 12:12:02 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_211207_810927_0E74A493 
X-CRM114-Status: UNSURE (   4.70  )
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

On Tue, 13 Aug 2024 20:43:59 +0100, Jiaxun Yang wrote:
> As per "工业和信息化部关于加强和规范2400MHz、5100MHz和5800MHz频段无线电
> 管理有关事宜的通知" ("工信部无〔2021〕129号"), only 5250 MHz - 5350 MHz
> band is required to have DFS / TPC.
> 
> This is slightly conflicting with is attachment "2400MHz、5100MHz 和
> 5800MHz 频段无线电发射设备射频技术要求", which stated that all devices
> working at 5100 MHz band should implement DFS/TPC.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Correct regulatory rules for China (CN)
      https://git.kernel.org/wens/wireless-regdb/c/3b347617c12a

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


