Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A56C021A4
	for <wireless-regdb@archiver.kernel.org>; Thu, 13 Feb 2025 09:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I6JrKcSUb6WDczJV8ag67aIUSUqStX+xeLQDh2eurjI=; b=mg4CuWp7qlOrIPk4Hj2uxpBYM+
	l1u/BCVZ0GY3Y+q2FfVP11PbEVP7/f4CrQz+Ag6eKutDbBrj5nfb6fGbz9FXHBci1DzdtRdRafnEK
	EE1XYXfGNvFJHMUnBDt+BCHX5dE4AbBviXqj4JRuRPMjotEB39qEB+61K+kEVLMXRWD3sjXxkbByP
	HBGA45GWfPK47zx6KVwe568IVG1sD4K3gmG0I+IwdkhP3ycKNV/QTB7dufYaUWk+qkgNOU5k6e2a6
	nTkHk7eXAtnceQ6cIXuApUqvqpcgnTkOgqS/FKQ4LRNjxc2spTsNMPcBiPzrESbqNqupuNhXLPwZM
	HYjeUmYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiVdQ-0000000AUYo-49N2;
	Thu, 13 Feb 2025 09:35:52 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiVbD-0000000ATzN-3dFS
	for wireless-regdb@lists.infradead.org;
	Thu, 13 Feb 2025 09:33:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4DAA8A41F7B;
	Thu, 13 Feb 2025 09:31:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F912C4CEE2;
	Thu, 13 Feb 2025 09:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739439213;
	bh=lTlb+V8ErFDBNECiQ8dYQrHNPQVFcjjaKQK3OXzWBJc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aKKxVzeMqCnJYPPDiL5fVGUs2VRQ0q/98Wmzx4WEu/hiFvDF2oqLANIv2xUlO3KJJ
	 /G2i/BkmPJ21TZoKaUKvTWihPul3b/knxVD7oX267jR4R+l8wbWtpFbZe4ZdT4N1kK
	 iNTgb4z6q6RoXm6m4OB8Lh4Wm1gx5X4exev0bzrd1+X+U7zYzt/pWvLBRvqu0ufN+O
	 nVhOLGL+N6bDYzx/tdD+sX/zJfhpkX3fF7vPlfQcZ29v8cTPzf7lrbbY9vuo+V1olD
	 Bug8E296+Dyw0UyuGw8KIEqlNYK4ndyPHEZ66Ztj52zlamXtxYm7Xw1FAFmTCMq+Wf
	 sHRnGvwKuluNg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 112105F9B4;
	Thu, 13 Feb 2025 17:33:30 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20250213011827.4528-1-pkshih@gmail.com>
References: <20250213011827.4528-1-pkshih@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Cayman
 Islands (KY) for 2024
Message-Id: <173943921003.2910806.8495759400350357844.b4-ty@kernel.org>
Date: Thu, 13 Feb 2025 17:33:30 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_013335_971191_408E619E 
X-CRM114-Status: UNSURE (   4.54  )
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

On Thu, 13 Feb 2025 09:18:27 +0800, Ping-Ke Shih wrote:
> Utility Regulation and Competition Office, Cayman Islands, released
> Operating Parameters for Wireless Data Transmission (including WiFi)
> Services On 18th November 2024 [1].
> 
> Both FCC and EU reference are permitted. Adopt FCC reference.
> 
> * 2400 - 2483.5 MHz
>   - Part 15.247
>     * 1 Watt
>       For systems using digital modulation in the 902 - 928 MHz,
>       2400-2483.5 MHz, and 5725 - 5850 MHz bands: 1 Watt.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Cayman Islands (KY) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/39b47ea61848

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


