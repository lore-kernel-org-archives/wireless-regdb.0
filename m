Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E2FECCFA13
	for <wireless-regdb@archiver.kernel.org>; Thu, 30 Apr 2026 02:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3WnJ4KOvQCSQEJXmZ0x1Sm2obo+C+PtRoK5He5zvmjE=; b=qqYTuv6zfEk3EhsJox+DML/Ucy
	MSokpo283f4lthXy2pqgRVBbaHRQahesaJP3HvaP04jlzntGTO/n5Z5SRTQ3ITdSf8AIjaQq+xV6p
	nwxQr5PKH1WcrYtp/WzdqYYiyZc9UGsd7onAsqVpZniw3jS2PE/YUmMXJTRh/RsR3720OShh9YMdC
	S3CjJpuCy8+sNyCjalkZAlYmMrah6a58Up4UmzPGewIF9TiKMO7ubH6L/SYF2gpsdYeNZnWgmobdj
	4zov7h6EAvUmqhHjgN1+0rl02NrLjRCge5eeacJa4O3HAe45lqImi0XamjvGZF1JslOqljBUdf9m9
	701FyUlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIGh4-00000004PWp-38Z7;
	Thu, 30 Apr 2026 01:59:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIGh1-00000004PW4-3S6x
	for wireless-regdb@lists.infradead.org;
	Thu, 30 Apr 2026 01:59:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DD26D43E28;
	Thu, 30 Apr 2026 01:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A033AC19425;
	Thu, 30 Apr 2026 01:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777514394;
	bh=GAQF+VIuKNR7JFPN8esnh64K6j2MDtSOsmVGCTMotfI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GtQ0IYcG6DC1a79TaS/ffvwpAPBaOIN2Nf2pICYbhAdlw6QtAC4PFA1vFHuzeN1nJ
	 66phJp5WQ+qCqgp9mVJMBCdOq9A530ml+rhx3cFfWqNlsZ4fo1whDwIa2y2vzUqBbC
	 VT5yvjW516nPoNqzy7A3RZm93wzEyzavQPafqaSNsiJQz+THBICIGQn4X2jSQt7RYD
	 AG96z8rQQQeLlqJQvtXvA6IaYQhZeyuLuu37QPO2uHJ4pI7LCqnMDc2OK+V7eS3Bpi
	 A6LOYxNFUs5k3hf2vIN3LTeP7ytM4qx5eC3EEL9OZT8zCqtNpekxYAiixPYxGk8gL3
	 wHUh1d1STJbkA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 4D9A15FE36;
	Thu, 30 Apr 2026 09:59:52 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: K900 <me@0upti.me>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 Louis Kotze <loukot@gmail.com>
In-Reply-To: <20260428093058.3672383-1-me@0upti.me>
References: <20260428093058.3672383-1-me@0upti.me>
Subject: Re: [PATCH v2] wireless-regdb: allow 320MHz channel width for
 Russia
Message-Id: <177751439231.3356117.7542785326182742344.b4-ty@kernel.org>
Date: Thu, 30 Apr 2026 09:59:52 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_185955_889549_EF97064F 
X-CRM114-Status: UNSURE (   5.04  )
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

On Tue, 28 Apr 2026 12:30:53 +0300, K900 wrote:
> The entry was added before 11be (and thus 320MHz) was a thing,
> and there is no actual legal restriction on channel width, so
> update it to allow 320MHz channels.
> 
> 

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: allow 320MHz channel width for Russia
      https://git.kernel.org/wens/wireless-regdb/c/62d72c287e99

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


