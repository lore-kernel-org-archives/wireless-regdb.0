Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B427AC25B78
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 May 2024 14:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wys9pytsO4JnMd+Snj1N9BZ5csVZhan1a1kH8a6+zLo=; b=MsuDrhIlgxJLfQzBeaAkKrFXUn
	SK9lVBwVMymw/gH2L//g+plSFHdg2PMH/QWNmGtuuo8soKTT0/6zNPczE3lYwMO3y9gK62RFg4kbw
	6VgGDp3IEyK5NEVCQ0MD+Fz7hUgADSpNLl7yKARtGEhb5qqrin+BgPNKaA35+kC00wxbfE5QlsJ2u
	VcLtQ0LMR9SIiFTKZVj6ANSWFm9346fYWAphV7imvxL5aCCQVN/9oOx8VuxlPQJ821gxfQdGD6qb4
	o70BcoIoKCjgtZP9tkvyvPvWKkmmVbbblBonD6Vn4Ul90Jmb00vaW/ON0drAA9KqMAVGIbmhvpyQy
	DXSz5+ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxeJ-00000000z0f-0zbi;
	Tue, 28 May 2024 14:17:59 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxeG-00000000yzj-16m9
	for wireless-regdb@lists.infradead.org;
	Tue, 28 May 2024 14:17:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4782FCE131E;
	Tue, 28 May 2024 14:17:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 503A9C3277B;
	Tue, 28 May 2024 14:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716905870;
	bh=qiGTasfTtQoFyYOa6BZUrQ9nsnyUCXKNBvTcXCaF7zU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SgHF2I4zAgLB9pePA/MsdGdjtA7A1NPCbZx6lfFShHrwRUuxRGiq0fA9T97NGAiFz
	 5h2UXKLM9XxvET7908LVgke5j52UkdTCkoYF5upNWmVaVSFWCgQbOHk7d+5+432Mh9
	 m6ekssAP98dXWQy+zuDHRoDvosVqULV5r3LajedSh38hkL4YH+oUXSgenLsM4r8iA8
	 B5LXkqPaMWbJBWjEPXIb2tTFVL47H+UUVDo+c7sAgGtM1R18uf3VajL9RWNOQvUJx3
	 lgMgNJbYt7wSRqrGAJqhrJJVaVaJ6hw4ezD7S6Jkhw47AEJ12/X2TbkELNmc14NFqL
	 8yeC7l/xGDOkQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id A93855FA42;
	Tue, 28 May 2024 22:17:47 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240522062835.69628-1-pkshih@realtek.com>
References: <20240522062835.69628-1-pkshih@realtek.com>
Subject: Re: (subset) [PATCH 1/4] wireless-regdb: Update regulatory rules
 for Mongolia (MN) on 6GHz
Message-Id: <171690586767.641246.5269610632344527661.b4-ty@kernel.org>
Date: Tue, 28 May 2024 22:17:47 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_071756_673774_A764E78E 
X-CRM114-Status: UNSURE (   5.08  )
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

On Wed, 22 May 2024 14:28:32 +0800, Ping-Ke Shih wrote:
> Communications Regulatory Commission- CRC released Amendment to Resolution
> No. 37 of 2020 [1] on 2022.01.31, which supports freqency range
> 5925-6425 MHz, output power limitation is 100mW, Indoor and and outdoor
> will be used.
> 
> [1] Amendment to Resolution No. 37 of 2020
>     https://www.crc.gov.mn/storage/PDF/2022/2022-togtool1.pdf
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/4] wireless-regdb: Update regulatory rules for Mongolia (MN) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/2a768c42cebf
[2/4] wireless-regdb: Update regulatory rules for Saudi Arabia (SA) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/04875d9b62c3
[3/4] wireless-regdb: Update regulatory rules for South Africa (ZA) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/b7bced837f6a

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


