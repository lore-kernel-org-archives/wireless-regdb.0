Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64711606A335
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 07:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rX/YrKpY;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bE6Ga1S9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=e4+sGCCv9a1UDa7tbuCu/ptweMZKBIyQH0q7JFAxVsw=; b=rX/YrKpYwFn1Iw
	LpcR7UTfx4uHalgyRTmMVZqpua7Xm2x4R0uqdPigPaFYYYDN+TYDywi5DLKATUEpn8WI1ny8xakPk
	eEFJwR1QHmxIW5a12l2Rthdcvc7Ll95QzHInAxZ40CXNQuzaDl+qhj64P64UNZWRpm7z8j1Svg7TQ
	AGs1wruhsqB6G/Tu/VDvwH8QqYxCPpTAiSnJXiwIg5Eu1JDo/EZNst4XT4qEsvm37gRmUirCm3Ifu
	rxrzVRnUp1J5ObNLnVXUPRNK2nGcVhfF7IPcR0vGld/bgloEmYOc9CrbwR0IOB/ZIQ2MQovSNCwQc
	Miurs0e8IVw99+pldDHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVl8m-00000005mys-2i81;
	Tue, 24 Nov 2026 07:40:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVl8l-00000005mya-0KdW
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 07:40:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A76443D58;
	Tue, 24 Nov 2026 07:40:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B70801F000E0;
	Tue, 24 Nov 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795506034;
	bh=e4+sGCCv9a1UDa7tbuCu/ptweMZKBIyQH0q7JFAxVsw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=bE6Ga1S92LdT8Vt6LSkWG5m6cSbZUBm8k+Djoo6JpC41jEPBM8K/Kxb8JBriQAk3H
	 6bAF2ccSoWAEaIrht7uKGZmmp+EWbx2Fccvw220EqPj9mtlLhLv/CCG0xVe25UdBP0
	 ZzwoDMRMteskYLHU06D1zk46YYGPnLHYWmztvB00oOhwHM3uylIbdnvZKpCutP4k4O
	 8biA4SeDssfwUv1O55sToMNoaTsUFtjEAYdmizQDgylTCYR63zn1Xwip9B4Tciwp5T
	 zMaywjlBb+Vg4M5hDyp5MLdKn8XOd0UGl3H4wbdYo6E01B/oZUN4Bct1Ak8yl0WKkp
	 8AYKtq2J8IHvA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 7342D5FD11;
	Tue, 24 Nov 2026 15:40:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <119360F5-6878-4218-AB28-D56C4E76C999@rfareas.com>
References: <119360F5-6878-4218-AB28-D56C4E76C999@rfareas.com>
Subject: Re: [PATCH] wireless-regdb: Allow outdoor use of 2.4 GHz for
 Ukraine (UA)
Message-Id: <179550601844.1353826.1904895525883818530.b4-ty@b4>
Date: Tue, 24 Nov 2026 15:40:18 +0800
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

On Tue, 24 Nov 2026 10:21:40 +0300, RFAREAS Support wrote:
> The UA entry marks 2400-2483.5 MHz NO-OUTDOOR. In the current list of
> radio equipment used under general authorisation (NKEK Resolution
> No. 361 of 3 July 2024), item 53 allows Wi-Fi access points in
> 2400-2483.5 MHz at 100 mW e.i.r.p. "inside and outside premises", with
> the antenna at most 6 m above ground, and item 52 (RLAN terminal
> equipment, 100 mW e.i.r.p., 10 mW/MHz) has no indoor-only condition.
> Resolution No. 32 of 28 January 2026 does not change these items.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Allow outdoor use of 2.4 GHz for Ukraine (UA)
      https://git.kernel.org/wens/wireless-regdb/c/96a1346fbfef

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


