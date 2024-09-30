Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6390CCF649E
	for <wireless-regdb@archiver.kernel.org>; Mon, 30 Sep 2024 07:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qo74m4uQpt/RbarcG0VCBY7icGKOHASnlmDJv5SUDk8=; b=C0xeqignwljjsdO4sIPweIq2pI
	s4XcbxWH1jzR7tmDk70lay8mxuP8JqNiMLeGBwX9NvK+RHm4VeSUZc9bnxMXmB1J2OLw6i2Wt4kDu
	tEO+HbUoNZ5W9l9lVsupbcbOApBlGSeHH71cbnSPfbLfdqqmOlSo5B/7CylwAFyuxxGFE+wHGxYPp
	NklclfvOzLkX/GwXXtWd1/Ap44pgjnE3PQFu8ATiB0L5iPoZXa/WDfpZiYgYP7OEuq6diinBicERp
	K0yFyRLhBwT1K6zQqnp8Nexz2yfjF+FL/revxaVvbY9nTCcPuGdpUOraWqggtu9lvIEXN5GkFBWbv
	q6FWnXwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svB4t-0000000GDOc-0CTa;
	Mon, 30 Sep 2024 07:44:19 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svB4p-0000000GDNm-2rf1
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Sep 2024 07:44:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 91DC5A41414;
	Mon, 30 Sep 2024 07:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EDC8C4CECE;
	Mon, 30 Sep 2024 07:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727682254;
	bh=xxf1l2hHGhTyY+vHC4GmV3hYmZKbKsC5HjLSzoG8TE0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qfpoUuqWWsM0Tm3s1YH6kYDULeb62XLFZALZVrk44whcEL83IPNcWGzx1iyA+1bmF
	 2VDuy0BIzOTOa6Brz0f7rKkAXEGwgKO2/iDKh4VsQI0aVmNXiiOte2x2YmlYPxJsWW
	 iWwBLheYqMnu0zmjwPvQeYCfr7SBlVAOfLew7h2wxm/ac0qBekEysgMCMKpXNk+Zxq
	 wIVAe1NluDaivmTg9FoOZqTBouxJfgPOxZVt5dJKp4rk36WgYyNI0No74fkKre8LEj
	 Ucz0RbOHZQ022WfwZK0W78ZCakKbAqMQ4jGmGUCr4/5ujZrwXsF9L89Ox02lkD0TYe
	 jQrniyKLMcvsw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 0C9205FC24;
	Mon, 30 Sep 2024 15:44:11 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240911054848.22003-1-pkshih@gmail.com>
References: <20240911054848.22003-1-pkshih@gmail.com>
Subject: =?utf-8?q?Re=3A_=5BPATCH=5D_wireless-regdb=3A_Correct_regulatory?=
 =?utf-8?q?_rules_of_6GHz_frequency_for_T=C3=BCrkiye_=28TR=29?=
Message-Id: <172768225104.2546520.12278685247351915767.b4-ty@kernel.org>
Date: Mon, 30 Sep 2024 15:44:11 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_004415_807329_5D2EBF19 
X-CRM114-Status: UNSURE (   4.12  )
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

On Wed, 11 Sep 2024 13:48:48 +0800, Ping-Ke Shih wrote:
> As 7b of Table 3 on [1], frequency range is 5945-6425 MHz.
> 
> [1] https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
> 
> 

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Correct regulatory rules of 6GHz frequency for Türkiye (TR)
      https://git.kernel.org/wens/wireless-regdb/c/8e3d27cc7d6f

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


