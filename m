Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72CABC47077
	for <wireless-regdb@archiver.kernel.org>; Mon, 15 Jan 2024 03:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CUyK4N5XKMqP3dIZwsnheOKE7LI10fvwpKjs4nbqP7w=; b=SVacyCYjQNp+3AkkyihdeCVyws
	AARAWuFa5hVTFzTwgfyvsXXZJeZLcS3hA9IX1TjE69906YpEvEn7/5SzAkMfNuninX15RJvQHL0It
	vRFz3TF+80fTNIZ6s3hIcGX3GqxFX1fYsItLuuxbaZwRGZqdcATYry6k2hJhBvZVsGK7g7lPwtREG
	rllwodRZMixUbxQ6EVb7trtvKttyONZ4tjHuYoztUQU26HyWoB0YZl8b8xgNxp9RI4aIRf4aWyEQp
	jwfmvSEm9diam8queGOTMNnm7LN57oWskMkJmFMKa/nKtKVqGe3uv9/P5822QAMpkJ8hJZFnQBWbN
	4sCpRYLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPDR8-007fxo-2s;
	Mon, 15 Jan 2024 03:14:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPDR5-007ftv-10
	for wireless-regdb@lists.infradead.org;
	Mon, 15 Jan 2024 03:14:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0974D60C2D;
	Mon, 15 Jan 2024 03:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 321EEC43390;
	Mon, 15 Jan 2024 03:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705288474;
	bh=6XKzR6JpKzRVxLCrT4WttGuLf3DaR7RKYdWUPZ3p29E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c+SiE0bOIZ61YUIPVID7IGhSjgB7/OzKdiY4JTGdkrEukqQBABVHn/6YcxJyCyTpl
	 jzDFxGBBNWbheOccbhBGZfNqrgECgVXgDFpWjc9XP07ie93MuPBj5aZ1nhQRYC9wSA
	 LV5qAmCJ+fvqvaVRVheJZkJ/GLs9roTRR/uugD0BCwWhn7sKuBBl0kgxWUWbq9qNEL
	 7ZSy7xhKYrnEJB/yGEFHDvp+3X4r7dwM0REdO6k/WaQNBqA2lhncByhm1MD4XZUDq4
	 8GtmbUEbQjXFsldGosy6RMTiqX0R1kF2+5lI+wbU4EpXeUZPHSVM2zK8QEBlQgQw1z
	 lTP0WShOrZdKQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 0D39F5FCA8;
	Mon, 15 Jan 2024 11:14:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Andrew Yong <me@ndoo.sg>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20240112040217.24356-1-me@ndoo.sg>
References: <20240112040217.24356-1-me@ndoo.sg>
Subject: Re: [PATCH] wireless-regdb: Update and disable 5470-5730MHz band
 according to TPC requirement for Singapore (SG)
Message-Id: <170528847205.770636.8573617454652565233.b4-ty@kernel.org>
Date: Mon, 15 Jan 2024 11:14:32 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240114_191451_390779_3D966866 
X-CRM114-Status: UNSURE (   4.74  )
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


On Fri, 12 Jan 2024 12:02:17 +0800, Andrew Yong wrote:
>   - Use original regulation Tx power of 1000mW with TPC for 5470-5730MHz band instead of -3dBm offset without TPC
>   - Comment out 5470 - 5730 band to disable it since TPC is not implemented
> 
> 

Applied, thanks!

[1/1] wireless-regdb: Update and disable 5470-5730MHz band according to TPC requirement for Singapore (SG)
      commit: d695bf21d1cdf02e64924f452c242f7588469609

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


