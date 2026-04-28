Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D183CFF885D
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 07:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4hVbpcCDSG3JUTm5h5WlTpuXyTeYqeAffiinLnSbklU=; b=eX4BFno346JwJq3bysp53leqAP
	VQjdwQy0SF5+TSNKsWbz5ffq4w3X24bhVWjEbgWXB4vhbQ9eDvmYPIyR27cOiuVYbdwsxwwBcKqBs
	jiwJ/ywDknkVMmdBsCD8BcQVwPNiZ8TPKpNKAzySNLBRKM0d3TknGQJ+SbO2b7lC3b7DMPGNpvUem
	W1kGtVm9A/k86eEU3YE506Egt+Ozxxqa9XWEKf2VCsrJpVSC+zvjrT0Mf1cPDyI1uM+Xi+pwB17td
	ZFDhAmFb7wbSzo9Tt9hCwGC1S6Fwo0H3X7HC4IQ/WbDyDuYcw8zDm2UwnbtDvxNZH8ySAFDkf+Vqe
	Gt0tGvNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHcz5-00000000mrY-24ZC;
	Tue, 28 Apr 2026 07:35:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHcz2-00000000mrF-3r1v
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 07:35:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 84F9C444DF;
	Tue, 28 Apr 2026 07:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BBA0C2BCAF;
	Tue, 28 Apr 2026 07:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777361749;
	bh=uhOm/mdNqBTJZ5lKuMy0jTewOfvUBhpxd/GbIjzl2sw=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=c7HK5xhTxcAVTaYxE03xbZa/UvNwbnG4F+k8W/8Bdj6vV/Nt3vHdeE5c4oM/jIN49
	 Cml+x0HyzeZoZdHioKmVc29+oi5k9UkcG/ehfoPvXMKdSbwASLj74tPfDlJ6CQcV9m
	 +BtjvEX4k6VtsFYyTXFgy3/GRwtnVdSi5NPFANlPigUzWfqVSWPePomBQwBLybYkMz
	 CEIk9pd1gNCOBdwhfOfEs5xVFcA+c77whLxEo28c+mS8h7EGpGMkJaKOJyvEw2ZLk3
	 9TNReKXuVEW63atYm0IhNhRtLJLkBUBB9lfCmY0j81v6Q9psKVkOEwBpWRIRC0YH13
	 uylLqXPxrj/Ww==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 40D015FBF9;
	Tue, 28 Apr 2026 15:35:47 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, Louis Kotze <loukot@gmail.com>
In-Reply-To: <20260428072844.482991-1-loukot@gmail.com>
References: <20260428072844.482991-1-loukot@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update 6 GHz rules for South Africa
 (ZA)
Message-Id: <177736174724.2842858.3708397278523348987.b4-ty@kernel.org>
Date: Tue, 28 Apr 2026 15:35:47 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_003552_986756_9BE6BFB2 
X-CRM114-Status: UNSURE (   4.84  )
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

On Tue, 28 Apr 2026 09:28:44 +0200, Louis Kotze wrote:
> ICASA Notice 1822 of 2023 (23 May 2023) amended Annexure B of the
> Radio Frequency Spectrum Regulations, 2015, to allow licence-exempt
> use of 5925-6425 MHz for WAS/RLAN.
> 
> The notice references ETSI EN 303 687 and defines two device
> categories:
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update 6 GHz rules for South Africa (ZA)
      https://git.kernel.org/wens/wireless-regdb/c/0bfb3d418a27

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


