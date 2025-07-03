Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3CEC83F04
	for <wireless-regdb@archiver.kernel.org>; Thu,  3 Jul 2025 17:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ibqr+k4gBzTYaKehoB40tQG5J2SNKH3STOXQs1Ohcsw=; b=hbMDXKN39mUfjibjhbkwgKezWm
	+UguRVwWqsfik0AOzVzJ3slcn2nBLPsRP+Tind1Pasc57ySfPY6gAJcnu7ED4ugmJOFvXz09bJGjl
	AdKyI4q4tVWwPOExC6I5CutUp/p9YwmXNQ1J5gGU1cubM+4pmod8xAB1uIfgfGkajpzUbgeGg0SoE
	GvTp/exKBvG4hjQ0aR8Zjgx35FRkUzicWrpYOhieVMTgpdj8l/58olrZOBrD87XbASu5tUSZYz1lF
	jREQXXbSbOrxkO9qTKg6zeDTz78kIQbPUwWxquyELMUeSLmuzBOpt9qWTLwXyWKJpbqyuCPF2WK6z
	c3owQZTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXNVq-0000000C6EY-0oJb;
	Thu, 03 Jul 2025 17:14:18 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXL6N-0000000BhTD-0pVa
	for wireless-regdb@lists.infradead.org;
	Thu, 03 Jul 2025 14:39:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2384DA538AB;
	Thu,  3 Jul 2025 14:39:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1C10C4CEE3;
	Thu,  3 Jul 2025 14:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751553589;
	bh=rqvzcOGtggHK1HdqCLGJDxgHLdc+gHMLK7oTthIT6G4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LqhKE1Ezc7rDWASL+peDD6y4moi+ogM1FhIA60MeMvKsqsLzmKTQzNerLswmMYuwZ
	 m71OrgJFClJx3Ihv0DP71dSKnqU0AcwdvIWEpmN7ulM2t/hd4GKR7n8SRv5hcDJSum
	 DMz9LRrHJLQvSi2IKeZaB57jGUp6yPXbr2EN/eZOyFMUb1Sn7yDH/i6KzU7BUG/FYi
	 IJOxlUZb4U6sSY3TJd+k6wPJJAgspp4yM2fw7dUc52BMXABYmGXb9aqvrUbdt4BJcq
	 yvjgtLoofKbGVknthkIoA74NFicTJntTPxD8OjraU7yx9IXkhzpm9pzbPKF+SCOvNP
	 JfsMgjGotTlLw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 249725FB0F;
	Thu,  3 Jul 2025 22:39:46 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: =?utf-8?q?Taavi_Eom=C3=A4e?= <taaviw@aegrel.ee>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, 
 linux-wireless <linux-wireless@vger.kernel.org>
In-Reply-To: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
References: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Estonia
 (EE) for 2024
Message-Id: <175155358607.1087851.15293340917846249231.b4-ty@kernel.org>
Date: Thu, 03 Jul 2025 22:39:46 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_073951_313489_4C9DD161 
X-CRM114-Status: UNSURE (   4.90  )
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

On Mon, 24 Mar 2025 01:55:05 +0200, Taavi Eomäe wrote:
> Allow S1G operation based on currently applicable usage rules specified
> in annex 6 of "Raadiosageduste kasutamise tingimused ja tehnilised nõuded
> sagedusloast vabastatud raadioseadmetele"
> 
> Enable AUTO-BW for all 5GHz bands as no bandwidth limit is specified for
> these bands.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Estonia (EE) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/490f136d0b42

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


