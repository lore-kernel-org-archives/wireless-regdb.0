Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26CD7E83EE9
	for <wireless-regdb@archiver.kernel.org>; Wed,  4 Feb 2026 08:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r5Db1GKC3YkLaa83CuEgkM2ITa8IrLFjPaaZtyxWabg=; b=nYbQuQSTq9i4QUxi26K/oraIiG
	k6H5v2BhnOevLIf77trIj7nwudApDE5iLYbXIHp04FsI3JwV1G1FvXIgoNCHkI+Df7VBkt5UCAvOJ
	a2qBGdfE+MJln2UbkIWaInuAEN+b+a8ZIFynfNHwBcrdgiLX6jKu5eXyt2Cfh/74jwHQrN2a6VmFd
	rmkJJFzFZcfyVs5uZ/rfvYXq2Kde/Uh8yV0WsYLQLOr/wF3pHO41FVTCDqluhZCox7afPi3n7M2qy
	c4SZrlLVJpmQsCn2MKiwRpAM3gars5drXaEikyaNOMpW+dEKCQ5Yp5cj2DVFpovRZM7p6zvokkEVs
	aSltPPkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnXo2-000000084sF-1uhq;
	Wed, 04 Feb 2026 08:00:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnXo1-000000084s8-0pEu
	for wireless-regdb@lists.infradead.org;
	Wed, 04 Feb 2026 08:00:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 31259600C4
	for <wireless-regdb@lists.infradead.org>; Wed,  4 Feb 2026 08:00:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDC64C19422;
	Wed,  4 Feb 2026 08:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770192007;
	bh=vTiQTdd9vDrV9zXzcEUrf2+RxihH/o9Y2WUHdTQeDIU=;
	h=Date:From:To:Subject:From;
	b=OKjcJ3qT9mOy9FlicxRUZ5yfGUU5cpYk4lfFXHCmy/qSBxJoTnOJvett7ZpRESYFc
	 ibkPXiCbklu1yFDtdlzMzx/IkSxGXJEEXzpr42/72PbTb0J+kE8UXjIIQI/z8Qt9vX
	 wRo/8uVmyVskNGPbWnrgD1gKjsS5RcrFIVfEyJqVsOYGMKrFbJiCrcmEHUpqXiK1j3
	 vfGT1BV9b7WafMSgy1FQOznSvYbpiRH8Hc9bU/iXdznI2AVrJGtvvQz1nhPnaRZCis
	 eFW82tFTy/cNkP7r1jOfJamqget4jmtxAhUUOw73QEaKQw1PjFLgIwoZGaLEf1lHlr
	 xR0J+u/rNTJfQ==
Received: by wens.tw (Postfix, from userid 1000)
	id 70E885FD85; Wed, 04 Feb 2026 16:00:05 +0800 (CST)
Date: Wed, 4 Feb 2026 16:00:05 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2026-02-04
Message-ID: <aYL8hbqyYUSaF9vn@wens.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

A new release of wireless-regdb (master-2025-10-07) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2025.10.07.tar.xz

The short log of changes since the master-2025-07-10 release is below.

--

Andrew Yong (3):
      wireless-regdb: Update broken link in regulatory.bin(5) manpage
      wireless-regdb: Update regulatory info for Malaysia (MY) for 2024
      wireless-regdb: Update regulatory info for Malaysia (MY) for 2025

Chen-Yu Tsai (2):
      wireless-regdb: Update regulatory info for Canada (CA) for 2025
      wireless-regdb: update regulatory database based on preceding changes

Ping-Ke Shih (1):
      wireless-regdb: Update regulatory info for Tunisia (TN) on 6GHz for 2025

Richard Huynh (1):
      wireless-regdb: Update regulatory info for Australia (AU) for 2025

