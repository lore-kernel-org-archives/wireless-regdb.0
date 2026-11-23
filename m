Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED5D606A32D
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tQLwWTvk;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bP9uADon
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=oUNLJudl4VFe+YJkh8pmCdM4wjXdnnuxeEY2t3R11RU=; b=tQLwWTvknno2l7
	ccrnREPiurSz7kOX9Gf4HRZT6Lgnkx0AIjEYwqgXS1SQmpcM5jj+DAYbBCq1jeU132D+pRxF1xV6E
	2HZPfQEAkUluOWiPf5U/ISh9HjifzcAF9+OxhlDgYhxmkh9MJBBlNyZQhbw1W4GudtoaJWu8RPFJZ
	ccob+Ki2caBtO3E+dea79iclJ4Q4bzxfiYoT5UDmx+b7z/poeLIt9vD1JbFU3V63TKbyrWB/eaP+m
	ipaRXroLwZgtnU5d/u1inEsxj3QT9UKwXsr568gI3H05o/w6Z9DpqM36rgHHUFv/BE9tHoLoZZto8
	JLIwSFchtDyFKjOxiZ3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRRR-00000002zDq-18Nx;
	Mon, 23 Nov 2026 10:38:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRRP-00000002zCz-0e84
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:38:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 68B5D6113A;
	Mon, 23 Nov 2026 10:38:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 960361F000D2;
	Mon, 23 Nov 2026 10:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795430309;
	bh=oUNLJudl4VFe+YJkh8pmCdM4wjXdnnuxeEY2t3R11RU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=bP9uADonEU+sgpeMsaXqy/ysCfnRTsSWYrYNBtZTNft2+Yi61bqOSVL09Corjlh5h
	 WkOIlV7b+0cQRxvrJYVB4EuHtxL1HAd6St2eIlSStU7h43ebHzLzsc3FEpZTlm+P6W
	 1Zi9cE2wWL2PLA3Syf8IiZBr1RtNw2nmc7tCDrYuUCFOi3b4N0VurDGHZkAsgaMnpf
	 GWgdN+us4ucoaNd2b4LASXxSN2a4nlhvIILo/0DuRjeyaIk/MJM8IPWMz4+0KBa8Rg
	 e/+Qg3FvQE68cO2ujZ0uylBGfixNdQEAWVdWf/JXfsoRVl1zcgG76R26mj5/9ktUs3
	 rjjdJs8GyMRMg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 790945FE03;
	Mon, 23 Nov 2026 18:38:27 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <7C3E3534-43A6-4D85-BAA7-9BC337438EEB@rfareas.com>
References: <7C3E3534-43A6-4D85-BAA7-9BC337438EEB@rfareas.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Kazakhstan
 (KZ)
Message-Id: <179543030749.976281.501260389616117021.b4-ty@b4>
Date: Mon, 23 Nov 2026 18:38:27 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, 22 Nov 2026 21:12:21 +0300, RFAREAS Support wrote:
> The KZ entry cites the 2015 versions of the Rules for the assignment
> of frequency bands (Order No. 34 of 21 January 2015). Item 24 "WAS/RLAN"
> of Annex 1 to these Rules, the list of radio equipment that may be
> operated without a permit, was replaced by Order No. 564/NK of the
> Ministry of Digital Development, Innovation and Aerospace Industry of
> 19 September 2024 (registered with the Ministry of Justice under
> No. 35100 on 23 September 2024, in force ten days after its first
> official publication). The consolidated text of the Rules on the
> official legal portal adilet.zan.kz contains the same item.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Kazakhstan (KZ)
      https://git.kernel.org/wens/wireless-regdb/c/3cca5d20b17f

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


