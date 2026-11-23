Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AFE606A31F
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LSuZ0C/h;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=flakoFA+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=RAnEO8/Qdhkb1cmdMFzU3CHoAJo95PrugKm4CPHlkHY=; b=LSuZ0C/hMKvszl
	kCq7iTL4IZGmlfvqY6XKu4fIPdfPjqyk9fST3a5Zkk+xSF7rM955qP8CFBJGU3LhK/R1oI6KNpjuN
	eNGjMHHqjSsLrCzyATf0ThA4ABEQXp/nXhyDgf4U5Ary/3le1B46ve7cb4eu4kwTw1Knn9oTZrA/x
	KWAaSsIZ+27n4ZhhT/U8BlGJYj1i86+8Nbdh5Dc/JcEHBeSZdQDRdLqVtR5WT0uen/igJr0lgwc9U
	YNeJLB4LY20SAN7fqiAP7uiU3Mxm1gKFXPV6FUgI7rbqvbfsPh8LLrkK/VEE22TBYDPjHTbFs7m7d
	rHdLpmfvR3x/8n+Lbgzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRRP-00000002zDW-3wGn;
	Mon, 23 Nov 2026 10:38:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRRO-00000002zCo-3Dti
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:38:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 372A243683;
	Mon, 23 Nov 2026 10:38:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D48F1F000D1;
	Mon, 23 Nov 2026 10:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795430309;
	bh=RAnEO8/Qdhkb1cmdMFzU3CHoAJo95PrugKm4CPHlkHY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=flakoFA+bU7yWX/F/IOCGMS7LruQd4puGwMDHj2KejOyhltzXHW3lMKavGxA++zL6
	 dW3q315fSC/3Lqf8Wo8GbnrevIokLM8HxftgddfhEG6Vz58nK3rKHluM2q71ZSWLGo
	 R/IvJ2ocITqUf+YtuNEjuOmxiqCIk23AQdDRMPHJxv2vNqunjIf1U7zdQ1eQhSZC53
	 2ulsRZXczB57XFtfcCjfH1jUwuXLFZfrBuoRvi+Rn+Lgu55nub1OdqwFXV6asm1y4H
	 Uix3L4ooyw/Dj9W1Y+w1AV80eSIvN+/ZdlBDx0cKrBjwmAwy8dxVpXCJcJ8ZznDs7H
	 dudEtyTY8WSWA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 88B965FED9;
	Mon, 23 Nov 2026 18:38:27 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <78DCED16-8799-423B-BC5D-91690821B766@rfareas.com>
References: <78DCED16-8799-423B-BC5D-91690821B766@rfareas.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Belarus
 (BY)
Message-Id: <179543030755.976281.3457870716585281409.b4-ty@b4>
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

On Mon, 23 Nov 2026 13:24:12 +0300, RFAREAS Support wrote:
> The BY entry has no source and allows 5490-5710 MHz at 27 dBm, which
> is not permitted for licence-exempt use in Belarus.
> 
> Licence-exempt Wi-Fi is set out in Resolution No. 9 of the Ministry
> of Communications and Informatization of 1 July 2013, the list of radio
> equipment operated without a frequency assignment permit. Items 7 and 8
> were replaced by Resolution No. 13 of 29 August 2016; Resolution No. 1
> of 10 January 2018 changed "output power" in item 7 to "e.i.r.p.".
> All three acts are published on the National Legal Internet Portal
> pravo.by.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Belarus (BY)
      https://git.kernel.org/wens/wireless-regdb/c/5ead4f45c79a

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


