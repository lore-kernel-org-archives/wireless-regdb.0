Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EB5606A69A
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 06:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jSQAMB2/;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=GDFB/mb/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=aE+bxrote5btcE+FjYe5ChvArIhBlqI+iByV1vlnMS0=; b=jSQAMB2/JaM/th
	ohvz5bTkLT6q2S6bD7ij2/GPYpkOzbgiPfbVfOHPH0dYS2km8T1r6bU9JoeJ9mhLOPREBwr0gPUnf
	RLpAnz+SBQyetganIiNG3kxb7pRYRy4rZI4UkdaGOMRYMXJ6xu0VXJCcVfvhOoyblqreT3ea7Dh+X
	QTv0PLLoT6sA6Vq5qwOahjl9OS9lhdvE+D2LcB1j7tgxiFE4KFPoPSaCLn0quopD7MA4/LM9o2bhF
	nxCCSnxJ4hM68F/L8HkaiXvQHK1AkwV4W50RqyeFeqDszt9X486ye98j8zk0LWWBw6VsCDG8DrLEz
	lW586pMeJVQBl5bzRvoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkGF-00000005fUK-1ae2;
	Tue, 24 Nov 2026 06:44:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkGE-00000005fTt-0zrW
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 06:44:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EB51F4396C;
	Tue, 24 Nov 2026 06:44:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99A051F0089E;
	Tue, 24 Nov 2026 06:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795502653;
	bh=aE+bxrote5btcE+FjYe5ChvArIhBlqI+iByV1vlnMS0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=GDFB/mb/QiFtQhrVT2l3+LaSCP9tGW3ZNishgmH37nJXBmNTouTE5FtXdm19Wisfy
	 RMX3VKGgS4i9u1NADTitr0S/NTeB/DgwOhnISATRAMx8UszE5cPUxG159a5FJRRZa7
	 AIfF5Kl5WRODXdndnvlWGebq5lzHOGF6VV9JHr7QDh9gtQTfpLXUJyhPenekrNEHWG
	 hUrcTBKpJHd6fwobIolnlzpoQH9FIrvi8MZ/ntwcs8+WD0aBR2BzRNjbzyrDRY0ig9
	 f0xmsFV20W0VRrM1ekWYUdDPajT3TEpln6KWd4exOfK+MRyN/C9OgDaeNr1dnv/eBe
	 VG6R26tYJyiFA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 04C4F5FD99;
	Tue, 24 Nov 2026 14:44:11 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <C1FB55C5-D453-4358-856A-54D0097561C8@rfareas.com>
References: <C1FB55C5-D453-4358-856A-54D0097561C8@rfareas.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Georgia
 (GE)
Message-Id: <179550265101.1335742.8480642077239151432.b4-ty@b4>
Date: Tue, 24 Nov 2026 14:44:11 +0800
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

On Mon, 23 Nov 2026 23:04:00 +0300, RFAREAS Support wrote:
> The GE entry has no source for the 2.4 and 5 GHz rules and does not
> allow 5470-5725 MHz, which is permitted for licence-exempt use in
> Georgia.
> 
> Licence-exempt WAS/RLAN is set out in Table 3 of Annex 1 to the
> National Radio Frequency Spectrum Allocation Plan (GNCC Resolution
> No. 6 of 30 June 2006), as amended by GNCC Resolution No. 9 of
> 25 July 2024, published on the official legislative portal matsne.gov.ge.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Georgia (GE)
      https://git.kernel.org/wens/wireless-regdb/c/a6ed240979d1

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


