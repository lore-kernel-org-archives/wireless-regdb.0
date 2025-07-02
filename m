Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD8E9C83013
	for <wireless-regdb@archiver.kernel.org>; Wed,  2 Jul 2025 04:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NhF4ysCM5Hmqd5IDxKR65kb//P8p7gg/zYpWITpYES0=; b=AsLQzLK0cPEh/8RPotRRTZGLQb
	icMnakTmWSulJYlm8OrnerOnmXk8pCl0devSEVFotvD6Fiqk2zxega+U4pQ5zBaVHltrLAnAD6Uav
	ZlHvEUpoEfgRTQOBtyGtHf0o3GoWWwxxDfcEtfHKNNqb3lL8+wzFS7LIOjcVdf17iwERaOEdjwUv2
	TR4stxMcGZwQmro93xk+W55QwdS7PHPM3G0+7uoGntnz1pl9T92Nohu1ILA8qCuKncZtJwO5AKFkZ
	I4UPFQ73FQ3+41+LXBYns7DsBGw7qDebb5jGaZ+e/V/aE0M1yZJhIJAP5iwL7ohHgjZcOSqOsH+68
	ph4GuiJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWpT5-00000007DSO-1Lji;
	Wed, 02 Jul 2025 04:53:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWpT4-00000007DS0-35xW
	for wireless-regdb@lists.infradead.org;
	Wed, 02 Jul 2025 04:53:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0B02C6000A;
	Wed,  2 Jul 2025 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F11DC4CEEE;
	Wed,  2 Jul 2025 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751431988;
	bh=U0MmV9GD7Pjqnyd9ukW4/UdBnpirT6pIr0xOABSdnME=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=u3kcTlKgD3tl0iHObjuff8/hQx5mG/7/gDzY+mXBkBgwyg6SA5mmasrllcB5LruBy
	 bfRSFKOmDQvfI6Ta89vKv/TSBC1f3kOettz7KuMyhCN42nOOmZIbKJBODq6+GIF/cP
	 2ZBciUVEw3aTBkOp11nkeXjbZGGiSrGZK33VYLLP7OW4Axl2ilbKaVVWVG9iTF9XFM
	 TcKRPbJF1jIrNyUhBpulC9dtmRz05woL1J7oZzkoFjKqZuEpW2y5tmmNvoiZKmsRDt
	 tXt00jCaJibm/F0sLDtLQEDcxOXh7TSjxqHwV/XxXN0VxZXaXBk+l2BpEJ37qaBvwT
	 PgvP9aWh6v57A==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id C2E7D5FC08;
	Wed,  2 Jul 2025 12:53:05 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Duy Hoang <duy@etylix.me>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <12521651747386138@mail-sendbernar-production-main-36.klg.yp-c.yandex.net>
References: <12521651747386138@mail-sendbernar-production-main-36.klg.yp-c.yandex.net>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Vietnam
 (VN) for 2025
Message-Id: <175143198579.473566.3806316258566400343.b4-ty@kernel.org>
Date: Wed, 02 Jul 2025 12:53:05 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
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

On Fri, 16 May 2025 16:02:18 +0700, Duy Hoang wrote:
> According to [1] and [2]:
> - Update frequency range to match with Circular
> - Update units from dBm to mW to match values listed in Circular
> - Add AUTO-BW flags to allow the use of 160 MHz based on other rules
> - Update to allow use of 6 GHz band
> 
> Detail:
> * 2400 - 2483.5 MHz
>   - 200 mW (23 dBm)
> * 5150 - 5250 MHz
>   - 200 mW (23 dBm)
>   - Indoor only
> * 5250 - 5350 MHz
>   - 100 mW (20 dBm)
>   - DFS/TPC
> * 5470 - 5725 MHz
>   - 500 mW (27 dBm)
>   - DFS/TPC
> * 5725 - 5850 MHz
>   - 1000 mW (30 dBm)
> * 5925 - 6425 MHz
>   - LPI
>     * 200 mW (23 dBm)
>     * Indoor only
>   - VLP
>     * 25 mW (14 dBm)
>     * Indoor and outdoor
> * 57000 - 66000 MHz
>   - 10000 mW
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Vietnam (VN) for 2025
      https://git.kernel.org/wens/wireless-regdb/c/4411b3985baa

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


