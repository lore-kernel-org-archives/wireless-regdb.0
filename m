Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B969ECAC5B0
	for <wireless-regdb@archiver.kernel.org>; Tue,  7 Oct 2025 06:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hezo81zGbmWswnsJm8gtBPrucKTdP1J788bBTakys2Y=; b=3lhLnpn89mbg7jFR3aHz0mQqXR
	tipErf+X+6qoaKhl1ECxolTPXSoiz6jkTRlHdL3c2Dibt/ssOCFxuvItmxsi+gpqUofJ6MMTIg02B
	v7iRBGns3h5xzg7SdniiqTefdydYHSJBq3eRZ/Zr713r5iZLyk26MleoMrVa0v8ycGElT3kwER/I3
	JF0H+U1yZYX7CTIG+TiX8KFoeWWn4NG5/bDk5pRsISFRBmjDyna6WdGd9J22kWKhxyil7BnM4dzkD
	SVo9pQtbTW8KXU4ZOR1q0BjBhhnkvByeVh4CC3oTPVTtpM2yJ3AP7bAR4ilshx1tt/9Da8/RT6GZB
	z6opq82w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v61Jy-00000001NNw-12Zx;
	Tue, 07 Oct 2025 06:37:14 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v61Jv-00000001NNZ-0eSK
	for wireless-regdb@lists.infradead.org;
	Tue, 07 Oct 2025 06:37:12 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id D71D75FC3F; Tue, 07 Oct 2025 14:37:02 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>,
	Pavel Starosek <starosekpd@gmail.com>,
	Chen-Yu Tsai <wens@kernel.org>
Cc: wireless-regdb@lists.infradead.org,
	linux-wireless@vger.kernel.org
Subject: Re: [PATCH] wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
Date: Tue,  7 Oct 2025 14:36:59 +0800
Message-ID: <175981896885.2552342.3876391305784148797.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250930042948.427154-1-wens@kernel.org>
References: <20250930042948.427154-1-wens@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_233711_413916_107D42BE 
X-CRM114-Status: UNSURE (   8.03  )
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

On Tue, 30 Sep 2025 12:29:46 +0800, Chen-Yu Tsai wrote:
> By Order of the Minister of Digital Development No. 564/NK dated
> September 19, 2024 [1], an amendment was made to the assignment of
> frequency bands, opening up the lower part of the 6 GHz band (5,945 MHz
> to 6,425 MHz) was opened up to "SRD (wideband data transmission systems)
> WAS/RLAN Data transmission systems/radio local area networks".
> 
> The power is limited to 200 mW e.i.r.p. with a spectral density of 10
> mW/MHz. Only indoor use is permitted.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

The commit message was updated to mention lowering by 3 dBm in the 5250
to 5350 MHz range to cover TPC requirements.

[1/1] wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
      https://git.kernel.org/wens/wireless-regdb/c/39e5e045fdfc

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>

