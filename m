Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA874CD6E49
	for <wireless-regdb@archiver.kernel.org>; Sat, 30 May 2026 15:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IHt8WfPSjmtJ2S0sN85x1AXyUupNjyKLbTDlbAC8Btw=; b=RNxwmLjGPi9eSCLh2fA6jng3Fu
	mesbTJUxGhzw78/4XW7GjppCLQwnixacyaqJYZFLYicVYxr2h6A+4mhXotiTiwky9i0KkxLIPYpvS
	YqxO0z/6KsHgD2YNJI4Ugk54DsbIDnDU1V0vSHnQA9Z25y64VXyDxTP7A/QP5dvzqUdFYkVNxD9qW
	uHR/lRX4iVZQ+id4Ym2ynuqIAU4JEHJWeP7XLNKJUxRr03VV7c4IZhZZRB33/ytHmaUyKSHftembM
	yLClej/22bD6R0koZnb6oSfA3spuF5tVOdWXtfdFPAUBrvKck7n9lngrKwUzjjSSVsXLvr2PD/QWk
	vA0FR9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTLxW-00000008tgJ-1E1i;
	Sat, 30 May 2026 15:50:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTLxV-00000008tgB-2EK0
	for wireless-regdb@lists.infradead.org;
	Sat, 30 May 2026 15:50:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6BF6F600CB
	for <wireless-regdb@lists.infradead.org>; Sat, 30 May 2026 15:50:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9F341F00893;
	Sat, 30 May 2026 15:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780156244;
	bh=IHt8WfPSjmtJ2S0sN85x1AXyUupNjyKLbTDlbAC8Btw=;
	h=Date:From:To:Subject;
	b=MMr8yceGUtDak7w0ES4FaMK+JxyuB12d+JAuEG7zNwTJJ66oLlv7QPysqb7Y2oa8O
	 O9SrX92CuPM7lsDoTm0TnoZEqgV/QN69e9uVFaQ1xfzSrJajazpJ1L6oFj1ievgim/
	 zjYTXXJCJOX7dYnWSkUSIXNrv32kVCWTb5xl60ZvgtKLulKiomanRnDg+XURA4rcDL
	 a2Yk7U8rj6HbkUFiiyTwKyrsnT9kELfSwhQ8bMpkDTftOZYutYCNfTzAktpZ0HHzJf
	 D2mDvyMFFlfQF/76YNrUIJVEBjjiMTCdn4WH7piqIZDT5ZQgv5szJc2hXaJ+FGYmu7
	 Xg9g5Ka+LCirw==
Received: by wens.tw (Postfix, from userid 1000)
	id 1BB705FBF7; Sat, 30 May 2026 23:50:41 +0800 (CST)
Date: Sat, 30 May 2026 23:50:41 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2026-05-30
Message-ID: <ahsHUWTgbt1OeDRw@wens.tw>
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

A new release of wireless-regdb (master-2026-05-30) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2026.05.30.tar.xz

The short log of changes since the master-2026-03-18 release is below.

--

Chen-Yu Tsai (1):
      wireless-regdb: update regulatory database based on preceding changes

Hafiz Zafran (1):
      wireless-regdb: Update regulatory info for Brunei Darussalam (BN) for 2022

K900 (1):
      wireless-regdb: allow 320MHz channel width for Russia

Louis Kotze (5):
      wireless-regdb: Update 6 GHz rules for Hong Kong (HK)
      wireless-regdb: Update 5/6 GHz power rules for Russia (RU)
      wireless-regdb: Fix 60 GHz power unit for Ukraine (UA)
      wireless-regdb: Update 6 GHz rules for South Africa (ZA)
      wireless-regdb: Update 6 GHz rules for South Korea (KR)

Mohamed Aashif (1):
      wireless-regdb: Update regulatory rules for Sri Lanka (LK)

Ping-Ke Shih (1):
      wireless-regdb: Add regulatory info for CEPT countries FO, GI, IM, SM and VA listed by WiFi Alliance

