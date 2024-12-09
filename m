Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 205FAE77180
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RGTbPpPKxiG28wut0JYCnGJxLvWoCZrcFEratuaMXDE=; b=NvvwigC1wtmNdmfQq6tXtnxun9
	L6fJj+NR05SUlDAJDXkPtX/pByWnLjDovaLzhJSgkskkbhnnBcGt0HkZGlKH+khDZHZMAXMcu/mAa
	3kkYXH6vFCRtESVoFk1qGbYGASHU6XBqaS9haOTm8ASnqWJiwO7ZKZPdjZ8AY0Mswco//tb8l/2Ee
	hv/ZEUte1QFFZChdMrfi/8PPE5FDzmN/qDCb/zeRlvhxRYeak/VcdAz4K1dRxHptQTiW9TqjROrrB
	9K812OxjKHHONtTCT9Yrw6gwia6UuT4gfihgS1IAGVHC/AGyqA1G2O8cM9HGQVIGOefa99sdxKpbn
	R3D/QVQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVVY-00000006QPy-3bNk;
	Mon, 09 Dec 2024 04:36:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVV5-00000006QME-0q4m
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 04:36:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 20F975C5574;
	Mon,  9 Dec 2024 04:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E8AEC4CEE0;
	Mon,  9 Dec 2024 04:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733718962;
	bh=SrFuC2cACAF9b4v9Yx/EtOo47eh8ATqR+yQQGwdO6wc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Pwbtnceuqm4YMJxKKWizBUvwIB07cHMFoi5T6VGWTnGnj8DeWZStVmFl4dkYTP0tx
	 qYAjjIbPMezu15Y3zI/qthcce1zE8g1jh1PrxCZts3ZPeLQkNWMYogmbJVTilJlgPK
	 vamGbcgYEsLe+iPm2AtGmWh77KGkVVl0Vs8u41iEYY0mLj0SfCe0cnr/Uatt0cjnE2
	 q3vFZ5xzMUcAZ3VXvvqKYS9PJ48IWybg3mKvFlRkuOqWjX7nIhKFdpThc1heevrWMy
	 VS9iFwE4JUMqp4Uy3NcaBN+a43bSi6YHSTikvyEUNXSpxKPW2wDDNyG8FeVQQ0CUV5
	 2wc4Tafi3p2BQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 933FA5FD3D;
	Mon,  9 Dec 2024 12:35:59 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20241116082516.8819-1-pkshih@gmail.com>
References: <20241116082516.8819-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Syria (SY)
 for 2020
Message-Id: <173371895959.3369899.2451835461936606249.b4-ty@kernel.org>
Date: Mon, 09 Dec 2024 12:35:59 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_203603_284283_112093C7 
X-CRM114-Status: UNSURE (   5.15  )
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

On Sat, 16 Nov 2024 16:25:16 +0800, Ping-Ke Shih wrote:
> Syrian Arab Republic, Telecommunications and Post Regulatory Authority
> released regulations for Short range devices approved by Board of
> Commissioners Resolution No. 18 dated 3/14/2020 [2] via page [1].
> 
> In page 8, section WIDEBAND DATA TRANSMISSION SYSTEMS defines
> 
> * 2400-2483.5 MHz
>   - 100 mW EIRP
>   - Indoor only
>   - EN 300 328
> * 5150-5250 MHz
>   - 200 mW EIRP
>   - Indoor only
>   - EN 301 893
> * 5250-5350 MHz
>   - 200 mW EIRP
>   - Indoor only
>   - EN 301 893
>     * DFS
> * 5470-5725 MHz
>   - 200 mW EIRP
>   - Indoor
>   - EN 301 893
>     * DFS
> * 5725-5875 MHz
>   - 200 mW EIRP
>   - Indoor only
>   - EN 302 502 (In [2], EN 301 893 should be a typo)
>     * DFS: 5725 - 5850
> * 57-66 GHz
>   - 40 dBm EIRP
>   - Indoor only
>   - EN 302 567
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Syria (SY) for 2020
      https://git.kernel.org/wens/wireless-regdb/c/68588bffdc5c

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


