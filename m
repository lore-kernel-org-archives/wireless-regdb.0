Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7F9EC4707B
	for <wireless-regdb@archiver.kernel.org>; Mon, 15 Jan 2024 03:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iw5vm8/lhelxG2wKKE9HIlNZ7fO95Bc7qx2tbgkoXkA=; b=BqZj8HuWfr/djfE3Ercsl32zQV
	pT/w1aYv9U2sXheljBscy1cjZkFWeu9wR5hxhM5c+FnwD8WfcimrnSG5DuV3jPfq7vpRemAJrej5h
	UZZMsvlXVc/517uhDhVqk4yOaVLGyuwPP3YEYj4VJQE4/ccrmr11HQ3qXLt49zZ1Qf/hE9UVWFjYZ
	e34+ZHTog1xHHm+AZaklPwmQvJUcrrDwej80vNg96vq83Ql7nNS8oT+nDOCtLr7eRivw+HXa+MwUf
	RsqytV9pplALpYJh+SoHI+Js0W4angWxMMvJVGmmjg+o41qEyJKhjiwaP5i9PzEfv0fA0H0c4OQcb
	WAQlkOCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPDR8-007fxT-1W;
	Mon, 15 Jan 2024 03:14:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPDR5-007ftw-0u
	for wireless-regdb@lists.infradead.org;
	Mon, 15 Jan 2024 03:14:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C9C1860C2A;
	Mon, 15 Jan 2024 03:14:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27E6EC433C7;
	Mon, 15 Jan 2024 03:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705288474;
	bh=2ig79RDAIR350Gcr2/dh8FnclyFbe2ixCqAqgiVLLSk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NbreavbSsQwiQp84Vcwa58rtFmIRNdHhEB95CP2hcMQ1UPwDnFhE0hXDYil9qYPpG
	 tHSiqUQ6+hw47mPNCAL+/wit3eZZNxUcrJRCPMNV6LouBF+EQzqh2HG2Os+KLUeDwj
	 HytMrK4+JQJv1i58LgzdhYaFutm/mPd3mNFSvJIsb4rp+CUseMNtqXUHX0EEMlRKZ9
	 84enJ8o+9MtRBNGv46CuMV4Rmt47cW6X4FMwSUeOWzlPHraqt7b7A6L2N8jLqovOtf
	 i8diUQhJpDrVspXelWzRzZ6rOlujt9dS+nQWB+xf4JylAf4DWH83/DoQ/1ccpnunRM
	 tIoeUbdDXhTQA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 02AE75F7BF;
	Mon, 15 Jan 2024 11:14:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Andrew Yong <me@ndoo.sg>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20240112034311.23677-3-me@ndoo.sg>
References: <20240112034311.23677-2-me@ndoo.sg>
 <20240112034311.23677-3-me@ndoo.sg>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory rules for
 Singapore (SG) for September 2023
Message-Id: <170528847198.770636.10523925169343032062.b4-ty@kernel.org>
Date: Mon, 15 Jan 2024 11:14:31 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240114_191451_390785_2B9241E7 
X-CRM114-Status: UNSURE (   4.99  )
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


On Fri, 12 Jan 2024 11:40:44 +0800, Andrew Yong wrote:
>  - Update regulatory rules for September 2023 IMDA TS SRD [1]:
>    - Enable 5945 - 6425 MHz (Wi-Fi 6E) band per legislation
>  - Switch units from dBm to mW to match values listed in legislation
>  - Extend (5470 - 5725 @ 160) band to adjacent 5730 MHz to enable Ch 144 similar to US & TW regdomain
> 
> [1] https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-consultations/ict-standards/telecommunication-standards/radio-comms/imdatssrd.pdf
> 
> [...]

Applied, thanks!

[1/1] wireless-regdb: Update regulatory rules for Singapore (SG) for September 2023
      commit: bd69898e6f400bee1bf7863f2c65341eb7c746a6

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


