Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A4460A2602
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 06:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ByklrJyJ;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HdqoMZbd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=794MtVvJUO0hVW/NFQMZ6F1ocZ9Tdo9x4c7WaFGvu8M=; b=ByklrJyJyrQ2jH
	PnHGJfaRxsJ0HvCuWMzkXCzU3ckO6PFQXAaVVazHjyXxQ4DDyoLHpJLHdjbF7gu1EIPyn/+jgzjXF
	lCtwr7tIwwq63dNm09CRO9oiQxUqSo3clJVEWkLPY5/RJ1Nj+1My+vanKjKZcJYIkzaYHap+CRrxp
	yl7y+vCKnM1mHH6jfocf49/N66gV/cb9XCwDgRzfXCUlM0yTrxTocmKQQ1hoq5H3upnFfGQ8I8TG1
	VnDgdsNrQQVp0FzpX04D4bKEmyLnAj4HgaB9UcWWOgzj08xa7rG+OcrI4BScSKC6tUgwWF/VCC67L
	3b4uqeUVgcuCLFAEQtYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkGF-00000005fUF-1Lxo;
	Tue, 24 Nov 2026 06:44:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkGE-00000005fTs-0pHr
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 06:44:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EB4F643649;
	Tue, 24 Nov 2026 06:44:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 988C81F000D8;
	Tue, 24 Nov 2026 06:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795502653;
	bh=794MtVvJUO0hVW/NFQMZ6F1ocZ9Tdo9x4c7WaFGvu8M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=HdqoMZbdLvYehqyZLbb8SnKkauuUCLAnuoTuRu2vqAEv/DeSlQszHXNN4StRuiLhx
	 E/6OQ4XHz9gB+Qd9jYeDs8C8nRd/gVKNGkogHFjoGgK5ijMtUGaVL1MFvHrpuV6M4a
	 KHRlaLhaz//1kmh8rJiTPH1wNAwLacFg33wuxQMDOterz7z5pTSwJJGQUC7h0J2tFx
	 mukHd5qQWqk/CW2d6x2YtcyPU40Bb2Rn1iP+1dVXUfxTqaG8XP+WPp43SvH6Nbh2uk
	 gsahAZzolS+FYDeNVludF+yczLIZ7RmQDQMoicEZJq54vm3BIn8Z06SKOa0ryIgoA8
	 XWEVkphTITKcw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id E007F5FB9D;
	Tue, 24 Nov 2026 14:44:10 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <2D65518A-EBD5-4E6C-B4D2-7819D488B374@rfareas.com>
References: <2D65518A-EBD5-4E6C-B4D2-7819D488B374@rfareas.com>
Subject: Re: [PATCH] wireless-regdb: Update 60 GHz rule for Ukraine (UA)
Message-Id: <179550265089.1335742.9902198486401698781.b4-ty@b4>
Date: Tue, 24 Nov 2026 14:44:10 +0800
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

On Mon, 23 Nov 2026 23:14:32 +0300, RFAREAS Support wrote:
> The UA entry allows 40 dBm in 57-66 GHz. The current list of radio
> equipment used under general authorisation in Ukraine, NKEK Resolution
> No. 361 of 3 July 2024, allows MGWS (WAS/RLAN) equipment in 57-66 GHz
> under item 78 with a maximum mean e.i.r.p. density of 13 dBm in any 1 MHz,
> a maximum e.i.r.p. of 20 dBm and indoor use only (ETSI EN 302 567).
> The amendments to the list adopted since then (Resolution No. 32 of
> 28 January 2026, current consolidated version of 18 March 2026) do not
> change this item.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update 60 GHz rule for Ukraine (UA)
      https://git.kernel.org/wens/wireless-regdb/c/d9370b5942db

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


