Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A20606A321
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 07:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bF3Bk+k6;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=nt3AwwQU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=LTD0HEqligpNJdm5AHVoKBK0ntmv1MWw8QQxRHSKNLo=; b=bF3Bk+k6CZ8LNm
	YL5zRrQPwtKeHzaxgdN9KGCXJd/iJOi9055x1RyYiH3Byk7S8hTv5Kk1NHqlLN1vHG6efdB/Q/nfX
	Yz1hAo/CoUW4ChmBOic3cs8osuNLGSdSqBHRaQ2i/2FX34DbWHTR2fSdH6fIauvyuzuw/7EbM3KwM
	utuoA7bSbdQdt/Zc+tq3CfaWRUiiGSzdHyLDdELJJzWUozimjWqhwUdEd1AwUg+LbXYHg1XPccG6k
	JVKysRNXIsAoM3IYapt62x7drQQaOnpC4zIzvvOzK8ea2uwQP6QDb/oQgyE6QKCiLEFvZGp28qVo2
	Ic1g3zoYeqxHYuXFakrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVl8u-00000005n1e-3oxz;
	Tue, 24 Nov 2026 07:40:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVl8r-00000005n0A-0Nji
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 07:40:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 28BC561D3E;
	Tue, 24 Nov 2026 07:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B65561F000C6;
	Tue, 24 Nov 2026 07:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795506039;
	bh=LTD0HEqligpNJdm5AHVoKBK0ntmv1MWw8QQxRHSKNLo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=nt3AwwQUEzZoV4wTpMDVeTTNyKT2a2mjxzkfCudXNPRQl6eTIFutLNIPeNXlVjfkH
	 Jbx0KCTo2547cP2f9Hc2HuguA0g3yGX5iVJ35mP6udzbQbGMKTd8LHM/RsWcYsfYkf
	 216PhUMjuf0Q+DWcGm7EtwG9/040vbxfE4xXR76yepU7pWSA8p1Wa+JVnUefS3ki/Z
	 nmmdWyApdH5rIfkErfkx6XC6RckdbGouwESKRCtbdvgN9QAR/7TFeaDOz2586ln/aB
	 ffwOWwmrIvzqiKTip26fGc33jiswhbh+ih/DRXHbssjpgNNkRPFIuXWBJRDti9ghKx
	 Rps/gIQZycknA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 82F9A5FD99;
	Tue, 24 Nov 2026 15:40:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <EC40FABC-4701-499A-A1D4-0BD6AB88FDF2@rfareas.com>
References: <EC40FABC-4701-499A-A1D4-0BD6AB88FDF2@rfareas.com>
Subject: Re: [PATCH] wireless-regdb: Allow 5725-5875 MHz short range
 devices for Georgia (GE)
Message-Id: <179550601853.1353826.5832206608526755293.b4-ty@b4>
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

On Tue, 24 Nov 2026 10:12:42 +0300, RFAREAS Support wrote:
> Table 1 of Annex 1 to the National Radio Frequency Spectrum Allocation
> Plan (interface requirements for non-specific short range devices), as
> amended by GNCC Resolution No. 9 of 25 July 2024, allows 5725-5875 MHz
> at 25 mW e.i.r.p. under EN 300 440, with no duty cycle or other
> condition.
> 
> Add it as for the other CEPT countries, and correct the comment, which
> only mentioned Table 3 for this range.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Allow 5725-5875 MHz short range devices for Georgia (GE)
      https://git.kernel.org/wens/wireless-regdb/c/412d41068c46

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


