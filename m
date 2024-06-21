Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 740E7C27C4F
	for <wireless-regdb@archiver.kernel.org>; Fri, 21 Jun 2024 08:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=81ZcTV6hehWIUg6i3MC/Kfii1zXJsI/xpzxmvO+qNC4=; b=KDk99yvKMObUkSRcuu4wE97BqB
	2opFaeMIA85DX9RbwDlmSGdycTH7aIXouXZsCfoSTrh6QcO9EE7GpV0Wiy2DgQ4Cv2p1Hq6885Rmy
	lOexg4kYAj0ya5HehA92SKsriK82rh4f5C3EGaPDuIO5UlUk87xem29JqSGD6m9ByoTFcBw+n10b8
	iWkW7WuMOEuXw8U/v7mEk01wAhmB/bRu2xmqimubJt1DLUSNO/WJKy8EPYTx7IqKRZmeWXlI2Zjw/
	WUeNq9K00zBr8ZhA/qBT/HdyCuACwKwtBcdJQBK3advBGGcpc1Kg8MV9PBiyWf46Cv+cuwLMIvhGu
	A1XcWdGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZXv-00000008K37-3rA2;
	Fri, 21 Jun 2024 08:22:59 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZXt-00000008K1d-0PBg
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jun 2024 08:22:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 72310CE228A;
	Fri, 21 Jun 2024 08:22:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99E45C2BBFC;
	Fri, 21 Jun 2024 08:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718958174;
	bh=dCgkEwIj0Dxo+X7oHepSbWBlSMWuRCLj0Ypw6Ajwa+4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QZZItTa4e2zTcAsVJNMPcAJVBJlPEBX9cvGW18wYOvcWM/jUAS0DQXzqyyXeQRC+z
	 WqUobLTrIma7B5MykLDFAjxn5vC73SEbW63bc25CKYLT0n8qwG1AWEgfMTRq8WkP1T
	 sPl7BcLZMLgGCWwCU2Lvf2Vjbk6S7fgpmx7NEI/K9vyQZoAJkbDR3IWEAZj+992u4f
	 8sN1wsMZhPoDDF0o4pCqHsC1vISEX0KywMmHcI9mBuzIzfggxx/JZKX2OXxMO9VR6y
	 OMpH+3pgmQf3erO+BVEdM0bX7Ik5EH1NCkTIfVKcTHBONr8s8H0l2rwSBme+HZk9MY
	 2exqw2H/oilJA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id E5E8A5F852;
	Fri, 21 Jun 2024 16:22:51 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240621052205.28925-1-pkshih@realtek.com>
References: <20240621052205.28925-1-pkshih@realtek.com>
Subject: Re: (subset) [PATCH 1/6] wireless-regdb: Update regulatory info
 for Iceland (IS) on 6GHz
Message-Id: <171895817191.919704.16861228006783105122.b4-ty@kernel.org>
Date: Fri, 21 Jun 2024 16:22:51 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_012257_345466_3DB4AED2 
X-CRM114-Status: UNSURE (   4.91  )
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

On Fri, 21 Jun 2024 13:22:00 +0800, Ping-Ke Shih wrote:
> CEPT ECC/DEC/(20)01 of 20 November 2020 on the harmonised use of the
> frequency band 5945-6425 MHz for Wireless Access Systems including Radio
> Local Area Networks (WAS/RLAN), which [2] defines
> 
>  - LOW POWER INDOOR (LPI) DEVICES
>    * Restricted to indoor use only
>    * Maximum mean e.i.r.p. 23 dBm
>    * Maximum mean e.i.r.p. density 10 dBm/MHz
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/6] wireless-regdb: Update regulatory info for Iceland (IS) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/cc6cf7cec1f7
[6/6] wireless-regdb: Update regulatory info for Mauritius(MU) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/ce03cc096bb1

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


