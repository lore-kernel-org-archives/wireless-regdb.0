Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6DB2C83038
	for <wireless-regdb@archiver.kernel.org>; Wed,  2 Jul 2025 04:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B8mD0QFnuCDF6H6QklmCfJsOfILtaxrFl8N/V+ptpUs=; b=Q+IwHixJ2XCcxO88tGv7q3a/zd
	+7pf0t55A7s2EiKrqTzFJrLFnpA5dJRLO3BcJVOxZKouehlpPm20zS4NatQc8yf1XTaTG6lTL33kw
	YJOVQVYkrTnSoOZwxvNtq+w0x8140d5nRkB29WVZRee4/2WZy0kA0UZgOMqwr5xG9d2XXgM7vebZi
	lVwJgbesO+6RlEjpDXOMUfWnkdEzyKxsKMOU+4VtfbTs+FCbMGKaxD7ZwmkIner4/DlNZVi/yVaJQ
	TVqNcxJLzhvIWGP8t0X62xjQcVEmuHDebnZAjZJVibBgkIesFqZAfcLSQlc2+WTz/GvaTcHhf4pbl
	yLa0tR7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWpT6-00000007DSl-2tOM;
	Wed, 02 Jul 2025 04:53:12 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWpT4-00000007DRy-00us
	for wireless-regdb@lists.infradead.org;
	Wed, 02 Jul 2025 04:53:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 103F5A50E8C;
	Wed,  2 Jul 2025 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9187CC4CEF1;
	Wed,  2 Jul 2025 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751431988;
	bh=K+a7v7XFsKVYnxpGrqsaLyzKHzYX23MbQzgYUjbYv6U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NXfnouIVp4Lpy6ve4ljApPt0JLXpDVVYT9Duhd1++LO3wKMtZRdTkLoZR9b9Tf2y0
	 PpLw7gF1RhzZpBdqUuspBwBfhm4XJ9dmOYrJ/yBWsqmttZVNHNLiGBap2A6dVMHiLg
	 U5OF/HcAG/gBmTROfwc+96soziOHvcv158HMEW08Ku2X3GpESFQ/GdQplOVpgNjjUN
	 nWzL8gyOOlqv1yGWa+TRBw5QDRw4TpH1CLcMBivfs+hUcD6vo05RrA8rXQlmK/jzVR
	 0C602vLpgIa2QUez84DMKzv+SWH9FAuh2kSqo8URdJZx7jIa2rlXLENprrWJ8YNP0i
	 dN2XaK0CyE13w==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id B741B5F71D;
	Wed,  2 Jul 2025 12:53:05 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Marcos Alano <marcoshalano@gmail.com>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20250626102326.3815520-1-marcoshalano@gmail.com>
References: <20250602121434.3011282-1-marcoshalano@gmail.com>
 <20250626102326.3815520-1-marcoshalano@gmail.com>
Subject: Re: [PATCH v4] wireless-regdb: Update regulatory rules for Brazil
 (BR) on 6GHz
Message-Id: <175143198568.473566.2185176281152831539.b4-ty@kernel.org>
Date: Wed, 02 Jul 2025 12:53:05 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_215310_114058_9CD6716E 
X-CRM114-Status: UNSURE (   5.73  )
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

On Thu, 26 Jun 2025 07:23:26 -0300, Marcos Alano wrote:
> Change rules for 6GHz on Brazil removing `NO-IR` since it's
> not mentioned in the normative.
> 
> Change the comment to point to the newer normative.
> 
> 

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/7628ce291d74

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


