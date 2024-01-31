Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3444DC47258
	for <wireless-regdb@archiver.kernel.org>; Wed, 31 Jan 2024 08:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u4xEK/zUqk2TAv4mPpYIINMyJ96A+evbdZYLBST6nAk=; b=WZe6j7n7Hhw5Kn54pEfWxI3BmY
	5LDIotmuU32bMEiA64ph0n+BNQBAMGza7TlaXjYofsDqdwZYh0E/vS6zmw9T+xIpfx3f8w0g5o98A
	VKBjk39O7w+YeQ/ZNrjBTL887JhRisnFptyMqkG0yGtQJ8vaIN0yHoPxZOA8URiaBpmz2VmZ07S01
	scsnhlGVK5prj4u092tyEGPorFyTdBNB57/POElEiyYtCnk4Mqy4wiaHL1AHrkrMwJVoyNSX+Q9R9
	a1SYOLjrNmJPQrL/G4ABooT7XA4+nVcYM8X1kSKhmKwlacp0xAzjRVS1I3MqNNWrK4sJkfZMJf3Pa
	XpkJJHzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5mU-000000022zY-1ExN;
	Wed, 31 Jan 2024 08:17:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5mS-000000022yt-3689
	for wireless-regdb@bombadil.infradead.org;
	Wed, 31 Jan 2024 08:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=u4xEK/zUqk2TAv4mPpYIINMyJ96A+evbdZYLBST6nAk=; b=Fm+v0/iFtNeD1G1tIJHqFrQDUn
	/mNhN9IG2bAN9mDd9k7w1ckX8yHCQOJihtzLTzVaMVPwZaQLC1AXkjZ98O8pJx6BUI96L7Tnzj71w
	1BYUi5NlKVEKTGnjvVx9h69MJMGqkEy8e4BlzPWoYaQBtqA1qbrM6ozBBbJiDstbnNK6YIBOpwPCO
	r99seVk+7MW8A6UJU1n5a6/AYvW2yeDKTigTNUZVaxhT8ac3Cr2CXNrYuHC8yl/JTe65m//p5zxy2
	GfQHpsx+Dcdrnpbbcuacr1gZN4SXki+J6tAmCLJ5XBtvKSkNassEkU6hH0FJF7NcwLnH9k0jCPVQR
	njSFPcIQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5mP-00000008oWa-1Tzp
	for wireless-regdb@lists.infradead.org;
	Wed, 31 Jan 2024 08:17:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2C6A061359
	for <wireless-regdb@lists.infradead.org>; Wed, 31 Jan 2024 08:17:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFDB8C43390;
	Wed, 31 Jan 2024 08:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706689024;
	bh=OzitZ4w5MRiDU+CtZ6xvojyOdJEIVvovbM+ND+ZDIzM=;
	h=Date:From:To:Cc:Subject:From;
	b=dpVlxGdiQEXSYuEiI0omUaTNEru5V8OpK8JwOM6BHqlYxZAIzoiO2U+i4WdYaaUZU
	 2zrhzW0sbeFEoBh5HwQaiORBKP9C75ehYv9P3o+vkWnIlv7my8oX/CRkiJbCOkoNAx
	 whoXUHiIDGDc0QHzSJE34xZVof35alqesbe5eGTMq3O7ET7IKzkppB1G3Ty1ssMZqj
	 saz8xu79dKqbGfUyNa16tNMZvuCu19wn+wwANYYR/swpJ7K8Ci02azhFZJtYLPwQra
	 6LzeAw4vP0cgVppp3kYL5LcK5GtI3Bj8eOrX0Ud7OJfV9r/A3PzVAFzlP4X3i6bL+M
	 DSxInrfC28G4g==
Received: by wens.tw (Postfix, from userid 1000)
	id 6D7175FA78; Wed, 31 Jan 2024 16:17:02 +0800 (CST)
Date: Wed, 31 Jan 2024 16:17:02 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2024-01-23
Message-ID: <ZboB_mw_abHH2sJj@wens.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_081709_630439_A946B293 
X-CRM114-Status: UNSURE (   4.73  )
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

A new release of wireless-regdb (master-2024-01-23) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2024.01.23.tar.xz

The short log of changes since the master-2023-09-01 release is below.

Appologies for the late announcement. There were some permission issues
preventing the tarball from being uploaded.

--

Andrew Yong (2):
      wireless-regdb: Update regulatory rules for Singapore (SG) for September 2023
      wireless-regdb: Update and disable 5470-5730MHz band according to TPC requirement for Singapore (SG)

Brian Norris (1):
      wireless-regdb: Makefile: Reproducible signatures

CaffeeLake (1):
      wireless-regdb: Update regulatory rules for Japan (JP) for December 2023

Chen-Yu Tsai (2):
      wireless-regdb: Update keys and maintainer information
      wireless-regdb: update regulatory database based on preceding changes

Jiaxun Yang (1):
      wireless-regdb: Update regulatory rules for China (CN)


