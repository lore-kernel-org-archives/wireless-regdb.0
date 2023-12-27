Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6852AC46CD2
	for <wireless-regdb@archiver.kernel.org>; Wed, 27 Dec 2023 03:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=88tQOoVjqvYW+f2+Vf+KjFkp4v2ZAQoTD9RJim2MTCM=; b=gJV1lUmwfwfo6teWcWxqZNptWC
	W2VN6UZTwvMfhZYavJxRCrQ3MBVQZWvIcJeGPKbVa2Z0ZGZfxuUNdcM/bp12hE5alii7A6xmB21q0
	jK8rkcQUcwc7465lNO5/S0dLo7iFrX5juuc/GqvaGLncJxMskuqpGpRmP4cKdSOTeKYnYtY6r2oA0
	/vyd4m617k3wMGJWlDbLEhnaLwUGWGvIrInKdyporA91NLCYm1r735REF6wVz9V98swr89VxKuhd4
	2ps0zjgTkNr5gXgn/+veVhMXxeAEkT+AvdSz4V4TCQtpr/Dul3U9Yr4FiU3pDDFug0Zps4ZkXTY9D
	SaXox1aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIKfx-00DuKk-2i;
	Wed, 27 Dec 2023 03:33:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIKft-00DuKH-0O
	for wireless-regdb@lists.infradead.org;
	Wed, 27 Dec 2023 03:33:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 2455EB80C9A;
	Wed, 27 Dec 2023 03:33:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 943AFC433C8;
	Wed, 27 Dec 2023 03:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703648013;
	bh=KwTNs2I5Gc7G3gRH1bQlkYzl7DzwzHQlsgG8bEBH5O4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DO5Fdo2ZyhUjTbgh6ZmlFKV5M505k23KCAUt+Gsel495HV5bZQbAoL4z5hJuOdWco
	 wqhAMnd+87h/SqupRQ//lbAN71L0AVEQWFvnnmPVdgeI2+kWtGcwzgtaP1xOeLXdoG
	 LhM59Bm1KHNt0DmtTilOjvsd05UYjz3cnMuU6B0lIsB6H8e6YS1CJujpTCJnDr3L1B
	 OBFh9jgsKpvMIW52x0UdwcmYDx8io8zFBh+JDylD8gSn7LI/JAgRUowrBP97iDcChf
	 NC+peDGN7w2MiNqPsvry6UkUjZ4ZARKENavy/XrIGe4mBumb+aw50EO35nHjbgiPcl
	 SXiEQm0PvlT3w==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 6957A5F8F9;
	Wed, 27 Dec 2023 11:33:31 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, CaffeeLake <pascalcoffeelake@gmail.com>
Cc: wireless-regdb@lists.infradead.org, 
 CaffeeLake <PascalCoffeeLake@gmail.com>
In-Reply-To: <20231223130852.44711-1-PascalCoffeeLake@gmail.com>
References: <20231223130852.44711-1-PascalCoffeeLake@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Japan (JP)
 for December 2023
Message-Id: <170364801140.3396033.12249221541805414020.b4-ty@kernel.org>
Date: Wed, 27 Dec 2023 11:33:31 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_193341_377778_C70BF21D 
X-CRM114-Status: UNSURE (   3.98  )
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


On Sat, 23 Dec 2023 22:08:52 +0900, CaffeeLake wrote:
> Support 320MHz bandwidth for JP region.
> 
> The Ministry of Internal Affairs and Communications has approved 320MHz bandwidth with 11be in Japan.
> 
> Source: https://www.soumu.go.jp/main_content/000919158.pdf
> 
> 
> [...]

Applied, thanks!

[1/1] wireless-regdb: Update regulatory rules for Japan (JP) for December 2023
      commit: 149c709aa510fa3fb6e98d8f30f9698ff19c26d9

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


