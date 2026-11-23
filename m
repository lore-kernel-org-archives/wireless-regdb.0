Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D29606A31A
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 08:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=falI1usB;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AqfIKGCN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=IdQvuSRc3Xg3pnZ1oIUi9v1PoWgz+Q/dImBt3QuWkYs=; b=falI1usB+6V/SP
	n6tdmcytKimUrCuV1fGcjZfORSS5O7nkq2aJwcjrgjGL02WXN+UsbC6CIgXILmtvX1prJ30yHXQrS
	RhEH/reR5OcYTAbtKbWx41oj6mb386lUp6WUM3/f7eq00XTew2VKKefiVWEnVqykhDQPPASL35LFv
	/UNer5J1z5r2p2ol6hIYKVP6L6jqNvL7O9MxlQh2YIwAVn1h25e3VTox7+czgQehEu9Q0+D1YIjR5
	wAOETILuYnmygqsQxHBM2YomGrmP2xqsgPLFJg/imTXQjh/kAFwRdS8BYopqHFn8WREQC8AXvOBmS
	iwmBSttFUpqmQqc0C4Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPnV-00000002bs9-0HCC;
	Mon, 23 Nov 2026 08:53:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPnU-00000002brk-0DhZ
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 08:53:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C0661413D3;
	Mon, 23 Nov 2026 08:53:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 336111F000C0;
	Mon, 23 Nov 2026 08:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795423991;
	bh=IdQvuSRc3Xg3pnZ1oIUi9v1PoWgz+Q/dImBt3QuWkYs=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=AqfIKGCNagohgfDjReejktPMwCr6B1SbxkGoi8/sautMg6SZ1SmWawtCdaesdCFdG
	 s7f0gEkX6JrStqhUGql+R5YXYhVm+gWwKWjJNUVBULxEvvJJq/dnqzTC1nmThdvuDG
	 m0iprMeVRTHs1dXKXe7P2rn5PmoKbWrzt5t84AwfvT/lJZajCZxwbQabQcjpTtOS2j
	 3XvY/+geKxF3hHpR4/+LgimVsCtHQZbNEPIN6ahUHYJOv/fEJGmbx2sh588b5huSzh
	 h0cGHvngNFFH3iiOfqIgANHs1DqbiWRe0isWEa+R/fRjfV+jjkSdaWM6mULFHktIta
	 Q1fQdrFRJkUrQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id E11E75FADF;
	Mon, 23 Nov 2026 16:53:08 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
 Ahmet Duran <ahmetdur10@gmail.com>
In-Reply-To: <20261030212108.24494-1-ahmetdur10@gmail.com>
References: <20261030212108.24494-1-ahmetdur10@gmail.com>
Subject: =?utf-8?q?Re=3A_=5BPATCH=5D_wireless-regdb=3A_Update_regulatory_?=
 =?utf-8?q?reference_link_for_T=C3=BCrkiye_=28TR=29?=
Message-Id: <179542398889.943792.16243736225845003569.b4-ty@b4>
Date: Mon, 23 Nov 2026 16:53:08 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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

On Sat, 31 Oct 2026 00:21:08 +0300, Ahmet Duran wrote:
> The previous reference link for the Turkish regulatory domain is dead.
> Update it to point to the current official regulation document provided
> by the Information and Communication Technologies Authority (BTK).
> 
> Also added a fallback search link to the BTK regulations page to ensure
> the document can easily be found if the direct URL changes in the future.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory reference link for Türkiye (TR)
      https://git.kernel.org/wens/wireless-regdb/c/53c64e32481c

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


