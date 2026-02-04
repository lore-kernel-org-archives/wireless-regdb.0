Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49D80E83EED
	for <wireless-regdb@archiver.kernel.org>; Wed,  4 Feb 2026 08:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zLenAfCsCGLlhmHlNPHCSXBf+sL0Q1rB3C8t/l55x/I=; b=GwGxwmTAEGLHKgfk0Mb0KD/rlm
	Z7C+Ow09rW+i/0NOsfG551TnY/tqw9Oq16OrcYOHCFS4JCOeyCAvkbTe0FpN9FGM3YRJ8rbAASX0v
	dxUFXxl5wQMgZJoh6I1/UzhIXUjn+vdXNXenokGNS/8STdRklXxfvqx3iphiYS0Xu0g7dntL0Vsmv
	N4CarE11bt2DS1680xG/6OGfvWY7xj3BCiK+0ivbQPuZYqPGIicMnVrclxhoja5jR6U5wuEjVTJpA
	7K/S56/z394uIMa7deH5nUSKJLgrY4ftugKq3YHH8wTE50YExPe/+ssHigXc6UW3GiIegTO7WL741
	7+Wo6d7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnY0q-000000085mZ-0qHN;
	Wed, 04 Feb 2026 08:13:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnY0o-000000085m1-0XKt
	for wireless-regdb@lists.infradead.org;
	Wed, 04 Feb 2026 08:13:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5707D40E1F
	for <wireless-regdb@lists.infradead.org>; Wed,  4 Feb 2026 08:13:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 169EBC4CEF7;
	Wed,  4 Feb 2026 08:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770192801;
	bh=IZOarF8CokO3Ex+jOx9HTEBKwfpWKUVfKkWgNHPto8w=;
	h=Date:From:To:Subject:From;
	b=KXqLtwZPHx4aUw11ygDi2OjFAa3PdOVE85t2JB4FwXPr5MXRUneT3m9qVusYX0gzb
	 Sg1ewX9g6QT2nZN4+BviI9SyZGVCJsc4cjDwfFOQ5ztWx1PZ+36Rbt0BhWF7dLGAk4
	 /2Op6/yIwvmieenK8nzJTknyDgG6AxUKQFJ7hhTVpQ54fEYwwQFky7saB/I+edaU1K
	 nDo28QITLiCC95T0mQXzIF24YfAyyCdBt+W/lfLulSnUL5Jw6cpJ9UgEEvQgkjEeg3
	 x3OFH8SEbkvC2eg1LvopT7zXrCKkCy3AUdmPcIqp5rhcvyj869CxPDiSkS14W7NY4M
	 pmO/lPO1kPVQw==
Received: by wens.tw (Postfix, from userid 1000)
	id E36155FD85; Wed, 04 Feb 2026 16:13:18 +0800 (CST)
Date: Wed, 4 Feb 2026 16:13:18 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2026-02-04
Message-ID: <aYL_nqHUidmUCDOe@wens.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_001322_186971_E538FC11 
X-CRM114-Status: UNSURE (   3.77  )
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

A new release of wireless-regdb (master-2026-02-04) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2026.02.04.tar.xz

The short log of changes since the master-2025-10-07 release is below.

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

