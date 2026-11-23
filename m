Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540CB606A31E
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=L90HPp5M;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oz/l00JG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=X8IJJMHUTDpjknUZvu438mfHH0D2MrFt7jxIxN8kIFA=; b=L90HPp5MMNtdk5
	Hxbpjyv/Vcmnch3mVArx9vg4kgsHouhTyH3VSKBZoG91c1W5LAKD57/0P5k+UFasSOPSSNCf5/EGI
	wEWwq2evCX+3Bp/4QNzArOI5I3LtKvMQkbgmwSZx/lnLr6l+aJZvCZNh+F5bcxVtNQXYiCI+U/05B
	vUAsSi4XmmO5XAApVtVsXszh+iq70ltwfMJx46auyyKVFe33LGu4sUe0OCuqmtYM2MGI+5euwwAXS
	8qRl660yHG4o1a6/xKjxcLk4o3/PyNRy3QZYPFdARqe67zKskZXJkgKS5DkatncpAdObHEEU3d6E6
	gIP+uWmioL0apUjSmnBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRRR-00000002zDl-0kpD;
	Mon, 23 Nov 2026 10:38:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRRP-00000002zD0-0eHK
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:38:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6EC19613FB;
	Mon, 23 Nov 2026 10:38:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96A601F000D3;
	Mon, 23 Nov 2026 10:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795430309;
	bh=X8IJJMHUTDpjknUZvu438mfHH0D2MrFt7jxIxN8kIFA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=oz/l00JGwaysTrNgoybulVPPLowtDIVKEvFt2jnp+z8nDtvxF95ok29cP6fEAojEX
	 RVgqWWohdFd+1a8id9ITdht2V1EDrvpALXOfkOj+auoQfARoB+/wQCmhwuZa1Td7JN
	 YMDpdm5jzb2PRVzKwujP1OkSKg10n/KrOd7uWAt039HFC7iLahAnrvTR14g8WFrFEm
	 v/10xBr5/sReAgzzz8hneukqFHQY5FA2ZVfljy4X7rBswVaP/vaSrD9hAPXVHFaSm9
	 NgAqppq8oqsGdsSl+/t6hsOJPL0vYfWMRcg9TT03LSINXnxMPHuAD7rEy+rn2eVOXe
	 ZzMJn+SnFUuBw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 922F35FF3F;
	Mon, 23 Nov 2026 18:38:27 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <2855A6B0-E021-41E9-8062-93FC37CE0F00@rfareas.com>
References: <2855A6B0-E021-41E9-8062-93FC37CE0F00@rfareas.com>
Subject: Re: [PATCH v2 1/2] wireless-regdb: Update regulatory info for
 Kazakhstan (KZ)
Message-Id: <179543030759.976281.8642865055174093269.b4-ty@b4>
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

On Mon, 23 Nov 2026 13:17:46 +0300, RFAREAS Support wrote:
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

[1/2] wireless-regdb: Update regulatory info for Kazakhstan (KZ)
      https://git.kernel.org/wens/wireless-regdb/c/3cca5d20b17f

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


