Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 433F9C3DA4A
	for <wireless-regdb@archiver.kernel.org>; Wed, 14 Aug 2024 04:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LUvk9jOtjbk8M8q0Lqz1UEWukrkSIAtgutzt5Y7kRPw=; b=Dd+rlB7oCcQrM8ptWR6TN0vfkm
	R2n77oQ/D/4FGYxA6n60/22wB/fONnEb0LqqNRwP5J3ZYw0yXly4DJ223MFwwzlas/fdtlUE2qJEh
	/kYQifUQXd3Q3Nc5on4YzGz+n9ronRfCLUFg6VYzJ72z30yVrf0wQEBiaVMWGN4lF/Bdz7LJOsKlN
	LdeThLiFIJV1ZPwt7QZ7Ix74i2NqpmZLwjFCmsySQhHO/mRYmnzCA9Cg55UL1utVRTtkVZ1Yf2rgf
	I5ZM7OM5mXspUY6t6S3TKJ6OV/B8+gvFFBGKYmcLVdqLrbZPgwcjeKzAmbkob1qTO4YAd/zaQOirA
	xx3STYGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5Rd-00000005fyw-2dBK;
	Wed, 14 Aug 2024 04:17:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5RZ-00000005fyL-3O8g
	for wireless-regdb@lists.infradead.org;
	Wed, 14 Aug 2024 04:17:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C2199CE1800;
	Wed, 14 Aug 2024 04:17:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1692C32786;
	Wed, 14 Aug 2024 04:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723609023;
	bh=P66EC/EOWgTS3MmgKmRne8BgZ5jFbuBCFQ1xi7keYQk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ikOgzmM7M+GwqXsBFTaSWUCI8dyJh7on+m31Uqme2/hci1Jhay3sNxrAYOLVwUEzN
	 gQd6cGTgC1owfWZggAbxq4uWCrFlmtMbXsxFXgz4lhA9rEyKl/b24xeC1LaZzVPzSM
	 bKNy9nIkLko7Uf1aHMN2vmwgb6r/WBW1j+94fB9FIJqWABhNK1TI8xh7INulcjjDhl
	 8bl3scrldbGU2t2oX/y5oFIEJNZ3disyfGi0u5x6TGh5sKyW3CzXjVZ/jVBAJ4+Pvo
	 u2k/bKUrV+V7wfBR8NFjEHQUbSTNdOu5DorEfbI6uLNTuNriD8mu5ht/LwXy1MdW5w
	 YqLWJ0f28VZ9g==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id E507B5FCA8;
	Wed, 14 Aug 2024 12:16:57 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <20240813-workflow-v2-0-6d8039283d45@flygoat.com>
References: <20240813-workflow-v2-0-6d8039283d45@flygoat.com>
Subject: Re: [PATCH v2 0/2] wireless-regdb: Workflow updates
Message-Id: <172360901791.1747049.9173998849926904492.b4-ty@kernel.org>
Date: Wed, 14 Aug 2024 12:16:57 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_211706_055056_424559B7 
X-CRM114-Status: UNSURE (   5.38  )
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

On Tue, 13 Aug 2024 20:39:38 +0100, Jiaxun Yang wrote:
> This series updated some workflow components to streamline
> wireless-regdb contributor experiences.
> 
> Please review.
> 
> Thanks
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/2] wireless-regdb: Update .gitignore
      https://git.kernel.org/wens/wireless-regdb/c/3afe17272b35
[2/2] wireless-regdb: Add .b4-config
      https://git.kernel.org/wens/wireless-regdb/c/bf55ed481432

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


