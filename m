Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29677C25B7C
	for <wireless-regdb@archiver.kernel.org>; Wed, 29 May 2024 07:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+OqRpEHEO1O109yeNXl7CTEhj0N8N3yyoa17Y4FO4Rc=; b=qINwUhzDI+BRKhqQk+2+o9cWEe
	KWjvsSjjWe6y61vB3i30YfkQuSeWOioMMzTdamfzTySRN3unw4FqX1oHKJy/rYBIDAkSu39wk++2+
	QCj/da9BgncKYTWg2F+0aY264AeN4LcdSWUrWPF9aGv6JChgpNkYlixFrJJ1/O8RkNQV5YN5zr1Th
	LvoMM03/kxP3s3cM357BLAsMzgeV0dSfMliWTyMszJSDHg5xBcKtWq0h4B2egaCQfgiC1FIqxV5z2
	dJKTqDmLsq4LBeYwe2Lvwg+0v3QTJXLrap4Yi4R2TrW4Q4zYXMvqC5bgqZIjwxT4R5xrXz6+y2O4k
	D9Tpijsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCDlB-000000039KX-3X3J;
	Wed, 29 May 2024 07:30:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCDl8-000000039JC-26iy
	for wireless-regdb@lists.infradead.org;
	Wed, 29 May 2024 07:30:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8942862480;
	Wed, 29 May 2024 07:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CF81C2BD10;
	Wed, 29 May 2024 07:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716967805;
	bh=IAjaLFz8NZ8Kow4Y8YMATUCCZxo2UnIPpmwwKLpj4Sc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=njLvxNvDOueuIlGlum91BQuDoMlaet9pVLIUa2Zu13jHGrQsVKQUaIm4jZndi88Qv
	 PRKNs+48oyvpepIveXMlVzZpIeGyfsNQGIp1EO+78X2Q7WNinvedyiRGoSU/03dKPf
	 kU6nkK5VSi6aEvQHK3WhL5ur2CcU3IRW/JSxWBoDMQ35BGBiuhN5WyG/ff1lms7pOa
	 MGUys50wdaDqiO79mIsWf99bZFX3YrSwUoEdDBa5zHx1RVvdbwpLCsgOIq6M5mcXT8
	 q93JNo/DQh9S7rxEkc0Ley2P2qYq7+lHtiEEAKVWoKKM3/FOv2ajt1Jdz8PqxQK5AY
	 OWGbtTr9ZgxnQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id B1D4D5F882;
	Wed, 29 May 2024 15:30:02 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240529034418.4608-1-pkshih@realtek.com>
References: <20240529034418.4608-1-pkshih@realtek.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory info for Thailand
 (TH) on 6GHz
Message-Id: <171696780270.689395.587585181052217471.b4-ty@kernel.org>
Date: Wed, 29 May 2024 15:30:02 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_003006_663398_7C3D0CEE 
X-CRM114-Status: UNSURE (   4.78  )
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

On Wed, 29 May 2024 11:44:18 +0800, Ping-Ke Shih wrote:
> The Broadcasting Commission Television business and the National
> Telecommunications Commission announced Technical standards for
> telecommunications equipment and equipment for radiocommunication equipment
> that uses the frequency 5.925 - 6.425 GHz [2], which section 2.1 describes
> e.i.r.p. (Equivalent Isotropically Radiated Power) is 250mW and 25mW for
> indoor and indoor/outdoor respectively.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Thailand (TH) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/7bc861544044

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


