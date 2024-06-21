Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4880C27C4F
	for <wireless-regdb@archiver.kernel.org>; Fri, 21 Jun 2024 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IjmWpH47cTGMEY9L3ZABfatUdlVeSNIUed5x6Mna+J0=; b=fCicbprG9NMcjmygOjmPiCcZog
	EY06G/EE6x0naITV5yLhQzFN5UI+4YLBaZOPFtxfICN3/hs+yCImLtRekdg5WGknH8w1QuB8cL/aE
	x2CVHwLeoWTixvtVjHmleHzBwLy0hghukrOvBVAISsEPR66JBbHdjJWCE/8Y7FcChNZp9E8zBI+vL
	1xvQmMi33omiDaZCW5Mv+3Fg1TN4LCFnawoQ5dnb/9VjG2ib08BRls8WIbBoBlw6baULerhC/CXd5
	KfVKi1vXAAzBZzo9DJhG0toDNhpM8deLiTGpi9I/Qc4e9U0zY4cNIkg8Oh41X1YWlQWSIhem8j5VJ
	MX1IWiaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZlM-00000008Mog-07hw;
	Fri, 21 Jun 2024 08:36:52 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZlJ-00000008Mmc-3VeM
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jun 2024 08:36:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0737DCE228A;
	Fri, 21 Jun 2024 08:36:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A65DC2BBFC;
	Fri, 21 Jun 2024 08:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718959006;
	bh=2g3e5q2wgc/Fb4K34fTPXTCmZ9H0dU3ILM5fFmsdhas=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VxYgU7TJekGgAOLEyU2XrpW6TZWbWfcDbv+X1D44Z6WyM1ru9bIrI3yzCTYS65m9+
	 fHV9AGIsysv2O9ZCRmSUq1GH6NZhZCqkWFNeEj3DhJileO0ONrErv3t8kOnGbqWuix
	 HcZ630tHF4+4y6JlPvY7Y/wQhV235ne2QjfqJj2hjTRKnG8wWs2TsiOwMVWGDrxiE8
	 Fl4OEMs9AndEtmQJIZXd69PYpguoVvMIL/tgsKHD25yuFFREVieCmar9uJGrMwXoQX
	 JYGT75w4bw9PV6ywVlOPD9hYbNA4ej22S11vwFAG139XFCkJ3zs1P6PzfDzS1fWCWP
	 xYpF6R8aEp/8Q==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 77BD15F852;
	Fri, 21 Jun 2024 16:36:43 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240621080348.55504-1-pkshih@realtek.com>
References: <20240621080348.55504-1-pkshih@realtek.com>
Subject: Re: [PATCH v2 1/5] wireless-regdb: Update regulatory info for
 Argentina (AR) on 6GHz
Message-Id: <171895900346.921008.11652894274798120471.b4-ty@kernel.org>
Date: Fri, 21 Jun 2024 16:36:43 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_013650_093413_828CEF16 
X-CRM114-Status: UNSURE (   5.55  )
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

On Fri, 21 Jun 2024 16:03:44 +0800, Ping-Ke Shih wrote:
> NATIONAL COMMUNICATIONS ENTITY issued Technical Characteristics WiFI6
> Equipment on 05/22/2023 by Appendix 1 of [1], which 1) an access point or
> subordinate device may operate in the 5925-7125 MHz band with a Power
> Maximum Radiated Isotropic Equivalent (EIRP) of 30 dBm and a maximum
> EIRP spectral density of 5 dBm in a bandwidth of 1 MHz; 2) A client device
> may operate in the 5925-7125 MHz band with an Isotropic Radiated Power
> equivalent (EIRP) of 24 dBm and a maximum EIRP spectral density of -1 dBm
> over a width of 1 MHz band.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/5] wireless-regdb: Update regulatory info for Argentina (AR) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/7e37778d99d0
[2/5] wireless-regdb: Update regulatory info for United Arab Emirates (AE) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/56f3a433fa0c
[3/5] wireless-regdb: Update regulatory info for Colombia (CO) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/3cb8b91d242e
[4/5] wireless-regdb: Update regulatory info for Costa Rica (CR) for 2021
      https://git.kernel.org/wens/wireless-regdb/c/3682ce5d086d
[5/5] wireless-regdb: Update regulatory info for Dominican Republic (DO) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/dd4ffe775dbc

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


