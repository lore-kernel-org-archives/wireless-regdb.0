Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9768C4345F
	for <wireless-regdb@archiver.kernel.org>; Fri, 26 Apr 2024 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1uJKHMLGyTcH7AlG+Ul6cKES0fHJTf48UEKK2SnZNOo=; b=Dns/+Z5OTJPd6XT1AVsBUU54mR
	uZu7KHWwMd0lp75fDm9iH1Ownst7u9Qsl7kIHwYyjqQlsX2uIBgKWPtbPZNIqzandAcRgESiCvdz8
	Ap3Zx2tR9uQbGId3LjQBrXabbAE5sUhG3iJCYX3f8p0ldDZgrQf7v+pvBISGqNpzfFvBPmQvM397X
	vllhjd5PtKkZujChjP9NweLjmcf4fcGW6czHOqz6XcVlMsjj2Wm825HBS3EuJD1IQqzCC/g0g/8n1
	MgZ2Zf8Agxp3VPUsxTo2epUqwOvJKyiSRKzfh71izQWADDOxuANTlRo9yxPmeIHVb/kU3v9aQOzzQ
	t+n9VVOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0Fv0-0000000BSA6-22Wc;
	Fri, 26 Apr 2024 07:22:50 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0Fux-0000000BS70-2JjT;
	Fri, 26 Apr 2024 07:22:48 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id 4AED05FC9B; Fri, 26 Apr 2024 15:22:36 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Deren Wu <deren.wu@mediatek.com>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	wireless-regdb@lists.infradead.org,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-mediatek <linux-mediatek@lists.infradead.org>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Taiwan (TW) on 6GHz
Date: Fri, 26 Apr 2024 15:22:34 +0800
Message-Id: <171411612267.210938.10854070994934082438.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <8f7c6ecd8e2cd15d277435719bf993217d40f12d.1714038069.git.deren.wu@mediatek.com>
References: <8f7c6ecd8e2cd15d277435719bf993217d40f12d.1714038069.git.deren.wu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_002247_847250_05502467 
X-CRM114-Status: UNSURE (   7.30  )
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


On Thu, 25 Apr 2024 17:43:13 +0800, Deren Wu wrote:
> The Ministry of Transportation and Communications in Taiwan has updated
> its frequency allocation rules [1], now including the 5945 ~ 6425 MHz
> range for Low Power Indoor (LPI) and Very Low Power (VLP) devices. As
> only one power rule can be applied to a specific frequency range, we
> choose the LPI devices with a power limit of 23 dBm. There is no Dynamic
> Frequency Selection (DFS) requirement.
> 
> [...]

Applied, thanks!

[1/1] wireless-regdb: Update regulatory rules for Taiwan (TW) on 6GHz
      commit: 87941e40f422dc3deaa7f1e4019a1b226d1f11f7

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>

