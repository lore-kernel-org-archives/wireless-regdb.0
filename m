Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC16CD4851
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 May 2026 07:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UFsGis4kbhAjmG5GfeVZirsthTDM3c98UXKGh2aKAXU=; b=ltTevb2cjmm+YJVsRrhC56gkbp
	EN1zmjAicYRih2x3AmKfoc8CDOsb7Xx/5UG8fKCBQRSbFYIuLG69C52U5vfyWRV4vTrOIJ3HIsSVT
	7jTtg86+Y8jz//+qRXYcYmqBWUcujOfMOSTBftFdKSYd3n1nETmi8huDfRlUBJsh38aJ8WiXSFtMV
	fehFj9T4DIC4IJZjfgTJviyt3Gfx7xDVLcjtxxAFGMXqgTRXIyivpVUaIFWuyrhoNwUwGNyg1LfN5
	nq6FnFNb+MxdcAqr1An2pRSvRuJ0BLwqYqmsSIYojuK8MuOCZesEa9KPHXURR56fNESjxnkQxqcnd
	ORs3D8qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEj0-00000000SwN-3fTW;
	Tue, 19 May 2026 07:18:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEix-00000000SvA-3k3N
	for wireless-regdb@lists.infradead.org;
	Tue, 19 May 2026 07:18:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 77C9E44157;
	Tue, 19 May 2026 07:18:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DBEAC2BCB3;
	Tue, 19 May 2026 07:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779175123;
	bh=v1dAr/RmtJKN065HerC6F9gjL1ESbddIV2QMbJ/qAQg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZrxMR7Qo14tT6I4OfLfPmilsWKl5C3CyT2z1hwPXt3PG9ZRBib77XgnRCxygQSsyu
	 58n4RcmXy571kJjEF3BWbdt73A/Jno0HSoFos6ekAOHlQ6eOnYBKhxqFfcURm9kP2x
	 hkKRX96hGwV4m84AUG2SymjyTpsZEyRQyAy+Jk1YvHgk18q2X9kMoxZCkDsVoYDzUX
	 S8ddkUJYNf8Hj1LygFfcmeDuK9uXnEu1kMc4ebmatuuJl8uyfaw+RiCQT7/C3E1npe
	 8QVsJD0G564mLWWoDwsUN015Gz2LWaVvA4Exs4xLcPweED9SR7qRb2nkCXCObTV7B2
	 VJSF/lJCxYoPw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 78FA65FE52;
	Tue, 19 May 2026 15:18:41 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Mohamed Aashif <maashif011@gmail.com>
Cc: wireless-regdb@lists.infradead.org, pkshih@gmail.com
In-Reply-To: <20260518074743.179402-1-maashif011@gmail.com>
References: <CAHrRpu=-ngPpe2MsmWz0gQq1VVxbr9L0+jUos3o62wPUY-wXqQ@mail.gmail.com>
 <20260518074743.179402-1-maashif011@gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory rules for Sri
 Lanka (LK)
Message-Id: <177917512149.547955.1025630128470868369.b4-ty@kernel.org>
Date: Tue, 19 May 2026 15:18:41 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_001843_958982_579CEC98 
X-CRM114-Status: UNSURE (   5.35  )
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

On Mon, 18 May 2026 13:17:43 +0530, Mohamed Aashif wrote:
> Update Sri Lanka regulatory domain based on the RTTE Type Approval
> Rules 2020 from the Telecommunications Regulatory Commission of
> Sri Lanka (TRC).
> 
> Source: https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-English.pdf
> 
> Key changes:
> - Change DFS region from FCC to ETSI (document references ETSI
>   standards EN 300 328 and EN 301 893 as the applicable radio
>   interface standards)
> - 2.4 GHz: expand to 2400-2483.5 MHz at 23 dBm
> - 5150-5250 MHz: 23 dBm
> - 5250-5350 MHz: 20 dBm with DFS (no TPC, 3 dB reduction per EN 301 893)
> - 5470-5725 MHz: 27 dBm with DFS (no TPC, per EN 301 893)
> - 5725-5875 MHz: 24 dBm with DFS (per ETSI EN 302 502)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
      https://git.kernel.org/wens/wireless-regdb/c/63d0d6b6aa47

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


