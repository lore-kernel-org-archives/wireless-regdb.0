Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D74606A31F
	for <wireless-regdb@archiver.kernel.org>; Tue, 27 Oct 2026 10:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qp6/T5Zi;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=mB/sKI+C
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=1l4k9+Kt62tGtjW1zLlNxrOSLYSV+PreaSFmwiC/Pqc=; b=qp6/T5ZiOK3F0R
	6rdQl8b+Ti3YHSsIVuSXB/zcTTjkByTTy111PqFugCmhBmGjhSaCN+dj2OaED+PGHotpQWYwG4q6f
	erE48dkaav3CiAkbgWurfJXKF2voh6PKI4QRF6kXRHd438JW3NcXBhO7OeBfmPBG10Dc0QDgZKst3
	o1R4+dIZoXFFaqTf6UQs0KBiAx2MC7zrXzNgeIE9RaTPZzuC3p9xIm/B0XjbdcWEIdAG7yEPMmdVD
	M06nlyYejfBu2roKqEtK4QOjWo4EBHbAF3CJ/f/sEnUyd1Ti9sDQyCkhG5ODp0RWtoAgFLoj8z0Zv
	eXYPTIKO7rqWU1tpczhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLdyb-00000004Eu9-459q;
	Tue, 27 Oct 2026 10:00:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLdya-00000004Eu2-3t6b
	for wireless-regdb@lists.infradead.org;
	Tue, 27 Oct 2026 10:00:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 15C746020C;
	Tue, 27 Oct 2026 10:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2ADA1F031E3;
	Tue, 27 Oct 2026 10:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793095215;
	bh=1l4k9+Kt62tGtjW1zLlNxrOSLYSV+PreaSFmwiC/Pqc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=mB/sKI+CNyt+O5eJ195w65aWdXKDxl0GbrPdV8oATr3JmrDizwrCa+r6AHx8Od9yq
	 gW8+R3+LxWgVXM/9QFzjV3JzItqiKSHqhjU+aKTqU9Uvsn4i4fEeSro8ALbDQ14Dtz
	 ChtEAM7AHXaojCIFD7PpHcBWCqcNjGNZ0Xgd4gKOUM3zWhrTYiu4DgpLdf5zwNq5ix
	 oFojIuvUq7NhTwOqOw7es6CZ4PGAd7ttQCHYVE14zfZn3IdVaJ1h3hEf4XoRGerNXl
	 tsi0iAXlWB3MEIrcoHGDp+rMdNb0u00xTa/6BvywoaKX6r7IXXaONsY1xRJZKGNKb3
	 nIYzt5twxl+gg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 212235FCD7;
	Tue, 27 Oct 2026 18:00:13 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, 
 Mohammed Abdullah Ali Al-Obaidi <mnew_iraq@yahoo.com>
Cc: linux-wireless@vger.kernel.org
In-Reply-To: <20261025125400.799-1-mnew_iraq@yahoo.com>
References: <20261025125400.799-1-mnew_iraq@yahoo.com>
Subject: Re: [PATCH v3] wireless-regdb: add regulatory rules for Iraq (IQ)
Message-Id: <179309521311.1724500.1361909024866117572.b4-ty@b4>
Date: Tue, 27 Oct 2026 18:00:13 +0800
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
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, 25 Oct 2026 15:54:00 +0300, Mohammed Abdullah Ali Al-Obaidi wrote:
> Add a regulatory entry for Iraq (ISO 3166-1 alpha-2: IQ).
> 
> Iraq is currently absent from the database, so devices set to
> country=IQ fall back to the world domain (00). The Iraqi
> Communications and Media Commission (CMC) has published a numerical
> national regulation covering Wi-Fi.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: add regulatory rules for Iraq (IQ)
      https://git.kernel.org/wens/wireless-regdb/c/40095bd16e53

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


