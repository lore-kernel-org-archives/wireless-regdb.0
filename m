Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EAD8CCA470
	for <wireless-regdb@archiver.kernel.org>; Thu,  9 Oct 2025 06:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iIm3gvGPVkBp2NkHI2YouXrb0sCefsw4WSZ9YpMblQ4=; b=qjPJ/5QoPm702wkSlHa375JzrR
	/H2mnMzr1FJnly9ZfNL6LNwZwe0/vMKWPazgwCImj23JPCutnJ/xSoT9B9LiP8KlU/f615xC0WNGz
	C6MadrtqXEZAd4U1GHmXp/qV7YbivVA2zFrNjNuq9lHMuTqpQVf/7PXDtPM29zn3WtVkyeZ2s4Z/T
	EU3lUugVPJn71qV3xjSOOPsYBbeCINJdR6hrvAqWp2+1BukXvBd4PZNIYeyAJIgdoOiwtHyU70zWZ
	YXsy4JG3Hx6RplmNNvGZzqvUTCaztjr7islewMe960gRUpYkvuDz0FzYWK1wUx7z0U3jhFHOWJakP
	vRcxkSYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6kLe-00000005I8a-36op;
	Thu, 09 Oct 2025 06:41:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6kLb-00000005I7x-3iDQ
	for wireless-regdb@lists.infradead.org;
	Thu, 09 Oct 2025 06:41:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 36E8043DF9;
	Thu,  9 Oct 2025 06:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1D2FC4CEF9;
	Thu,  9 Oct 2025 06:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759992115;
	bh=VjSj1Jr+SsT//LVbQP7nMBmN14oJpVgPCAz/81xcof0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Kha4SIp2ZKeJi3l+qsawBgZQ/eiDLNghybLRGZJcZweXM4TqDqeRA1w49UF1zFJBt
	 YEKiqTpONfnPDZuSE5PVEQ2Ivv4WSJ5gAUN89QTwuczprW5myN4RPDggUjZk3B7eB4
	 epGjNrXTJIunfcHKhVgosqzdQwRjs0QX9HIHOVeBHx03tefklb8jI1+I3j+t6nVT03
	 rEjbqKz984nmER8+oyD4yVIBH2sC3UysXQFAs/tS67/oyUzhxf7avjncGtHUFErAYC
	 +igpQ/BsTg/Ayg8KKfPoiJ/zZo550aswHv5mtPfheDlEIOkNH5HmU3SLs6Y1vDc2dx
	 00Xba7SbuxZtw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 33A415FAC2;
	Thu, 09 Oct 2025 14:41:52 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Richard Huynh <voxlympha@gmail.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20251008112104.8558-1-voxlympha@gmail.com>
References: <20251008112104.8558-1-voxlympha@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for
 Australia (AU) for 2025
Message-Id: <175999211217.3194772.10317350496194840605.b4-ty@kernel.org>
Date: Thu, 09 Oct 2025 14:41:52 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_234155_944681_50DE07EE 
X-CRM114-Status: UNSURE (   8.33  )
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

On Wed, 08 Oct 2025 22:21:04 +1100, Richard Huynh wrote:
> As of October 1 2025, a new class licence is in effect[1]
> Update the link and references in the comments to it
> 
> Also align the 915-928mhz block with the document
> 
> Additionally for the lower part of 6Ghz spectrum:
> - Allow for EHT-320 as it complies with PSD limits
> - Expand the upper range up to 6585 as permitted in new licence
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Australia (AU) for 2025
      https://git.kernel.org/wens/wireless-regdb/c/75bedc589589

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


