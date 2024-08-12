Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94005C3DA7F
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 08:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q9uQUSxGvIz9W3ZN/pOd+zk2JrHt9KSVCUOl+DGmi4A=; b=mRReyfU7j3d8oOadeGn9QNxH9y
	FKFucXToJloUh/7PnXoQ8pkFi1jovmksoRPu0SQxnBFsIKh6syHJEsqnEOzYJblol12tFOl5vip1/
	p6ECMUyy5Xn8pkwhA2PR8pav8lQNViBfzBJrPiJqYzwsQ0g17+1+rcTl8YNNOWjTTAnyQXfF/We8y
	5C7/qqDJxU9DZEr1+1gLySjP4D1kYrGBptpJbOKdvk7rlV4D4cbKVbdT9fX6ix9dqM01YSHU/N4D3
	ZWzxudCA3jQyPAksOPnCeHEH+p/viRPihg5oxxREo8+JIAP10IxKRIMRgGJ9nnopeWwD3Ccwv3+hd
	R6xVy4HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdQ4Q-0000000HEQ2-3yrt;
	Mon, 12 Aug 2024 08:06:26 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdQ40-0000000HEJx-32Ym
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 08:06:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5E865CE0BA9;
	Mon, 12 Aug 2024 08:05:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D212C32782;
	Mon, 12 Aug 2024 08:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723449957;
	bh=YHsPwLz3iU7dY9Jpz3PW/EyfAJvVEnMGT+yMlteKF/A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sUTTW5fG2sJ/mT54lnG/derKYtZVxcJHYqytPSYBf9xe9OBCVHmSCy3XI+HU+T8Ay
	 1huC6oFA03ss+wnqfhneD9xstNFF+tG0keZX8bNgkqk/sQ1LVPTZglDmiH4P8wKMlu
	 XLnTOI2ygdbn6VWFqMjgB9iExjePYbMVDYmeDTr/op+cxPqB0EPLAlbmQFE9AG65Wf
	 CNA3f1Z8j97ahK8gh3bW6TUcb7Ia6j4IkYmfVqVdc5u6RjoRvy94pzBGHTKj7Vzylq
	 t19/bvxE6cIdRT6cK1VlmkJUcFHwY0KbT9IfhgCBEYg7htktAtf91nYo8YPBaaPVz8
	 WtfUI0B+DC75Q==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 693495F9C1;
	Mon, 12 Aug 2024 16:05:55 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240806014109.5258-1-pkshih@gmail.com>
References: <20240806014109.5258-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Bahrain
 (BH) for 2024
Message-Id: <172344995540.1735423.17760115087090773263.b4-ty@kernel.org>
Date: Mon, 12 Aug 2024 16:05:55 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_010600_976056_A5014C87 
X-CRM114-Status: UNSURE (   5.82  )
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

On Tue, 06 Aug 2024 09:41:09 +0800, Ping-Ke Shih wrote:
> The Telecommunications Regulatory Authority of Bahrain (TRA) announces that
> Internet users in the Kingdom will soon be able to benefit from faster and
> more efficient Wi-Fi 6 technologies, allowing them to enjoy the full
> capabilities of both fibre and 5G. This is in line with the Kingdom's
> adoption of radio spectrum ranges 5470 - 5725 MHz and 5925 - 6425 MHz
> for Wi-Fi 6 and Wi-Fi 6E applications [1].
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Bahrain (BH) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/158f10565163

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


