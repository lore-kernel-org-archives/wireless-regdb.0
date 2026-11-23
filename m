Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33EF606A31E
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 09:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=y/eTGMj/;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ACQDO2Dm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Jy9jkms2VGlQSZZ7VbsWk0QGJkOBzdwisB1mlxDk1u8=; b=y/eTGMj/Xzd0VY
	fH7UEQDtre/RC8nDg6KkxHLvnq6Nw0J3pUUPo4b/ZMRosjUTbHfqhIrmCGIiUEWwnKxmFmFGV8RTT
	MZtlc315ffFrGandINY2m+FGI8bCbZHnABKlptN4ExIfWTDUD+nu1Pt1kUzQH3aYvxrD6pSkac8By
	amVwoZdrxgD3zDmf7ibGbOOw25oHysU29FH+u5ejuJ2LsVFeWW2XOkTiYf+0LLUI76BC/KK3ggnEL
	m80UZNZcinzfmvWaaJOO6YAo49uaPj10yupgVxLWYCe+GB8d89tNp2A8jcezoP7QNzxWLsau880Op
	BdML7mJml7hx8XPW051Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQE9-00000002gkh-0Q8d;
	Mon, 23 Nov 2026 09:20:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQDv-00000002ggq-2gUs
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 09:20:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C84540609;
	Mon, 23 Nov 2026 09:20:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FEC21F000CA;
	Mon, 23 Nov 2026 09:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795425630;
	bh=Jy9jkms2VGlQSZZ7VbsWk0QGJkOBzdwisB1mlxDk1u8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ACQDO2DmpkDpQXUe3UzPy1Ha4xMkZMS5IS9mGjX4RWTeD3kUZSnVvSrqkAI+LI7a/
	 1k8Lje6Gmp5IfdBHdGbHyKMS7wQhgVqTj1M19V2mPZNZDgIfTroA5V5QWX5X6uuRKP
	 GkIvXX8yhCu3M5ab3L6k/PLbzU2Bq36ikEx3h6dRtMy3yOdTqIRE+PQ74GT8UsDKqQ
	 YwqpRVLY2WzaVT5PHldi3NlRCTy6yxexgCDP1aAPu4ufjkbr+jMMl5m6naUI6mdAOH
	 MYuBulsR/fjBC3nx7zYq5h/Hrg7JX30WEQaBxkWtAW2WdonEcKSSt/IiHZTszoiqw1
	 MJWw+K9uV7dOg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 435725FADF;
	Mon, 23 Nov 2026 17:20:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Vitalii Zagorovskii <support@lizardsystems.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
In-Reply-To: <20261022163910.1292-1-support@lizardsystems.com>
References: <20261022163910.1292-1-support@lizardsystems.com>
Subject: Re: [RFC PATCH] wireless-regdb: Apply the FR rules to French
 Polynesia (PF) and Wallis and Futuna (WF)
Message-Id: <179542562825.953421.14959438860261477512.b4-ty@b4>
Date: Mon, 23 Nov 2026 17:20:28 +0800
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

On Thu, 22 Oct 2026 21:39:10 +0500, Vitalii Zagorovskii wrote:
> PF and WF carry the same block, which matches neither FR nor TNRBF
> Annex 7: 2402-2482, 5170-5250, 5250-5330 and 5490-5710 MHz, with no
> 5725-5875 MHz, 6 GHz or 60 GHz rule. I could not trace those values to
> the TNRBF or to a local decision.
> 
> Annex 7 of the TNRBF (consolidated edition of 26 May 2026) says that the
> use of its bands by short-range devices is subject, in Region 3, to
> decisions of the TTOM assignee, and that in the absence of such
> decisions the conditions in its tables apply:
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Apply the FR rules to French Polynesia (PF) and Wallis and Futuna (WF)
      https://git.kernel.org/wens/wireless-regdb/c/9c89660a9c80

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


