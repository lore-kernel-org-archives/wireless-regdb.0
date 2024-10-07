Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE2BCFB440
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Oct 2024 03:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S280MapT2PkM0Qzt/QEZEe/14KnD+DGEr2gCDeVfhUg=; b=EjTgb5Um1c5iSy3MKYUvzpszoS
	XubqJO2XnFCBofqAY1PfWcVPvKkGsWrlsHfhSl1edFHUOuDTYnVcLZ+YdQDx0eOKeetX6FTRshwV4
	nk1sWW+3e7eFiAFvARlkn11sps8S527GvyVSIc3gwVMA3H3p+ljOF579yl6hwM818aT+Fauq+aRi7
	kxJfaz/13iIZT71mhCUPhTT/0ex4N97q+n0wMoGtGO3ams2DZWoCgi8Dc6KcTiMd6DvXiDW84015i
	98NWw7PpMeMBUUjge8xJHHw2tj6yz+JdQ01lKP71ejlmHIQc/ImhiuzZtAdQ2A0fcTUAYi22mOGMQ
	XqHQuUEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxePd-000000019Fz-3eUP;
	Mon, 07 Oct 2024 03:27:57 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxePZ-000000019Ef-3Q2s
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Oct 2024 03:27:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E1B93A41514;
	Mon,  7 Oct 2024 03:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F17F4C4CEC6;
	Mon,  7 Oct 2024 03:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728271672;
	bh=qVO1g+cGILr+migH4IAk5G+/RneP2PQyhnhSxr4chpM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sXfqT3phJ/lSvX4eE8KF0lQSRmtal01Iyd99fzD5tlNzJ0385NrVPbp7ks/VTBE9N
	 X4m9v7aOmJq/X4GZmOjt9+jW+sCsKB2bDZ1e+BInTaGa6rIQ2YbRQRcF4J1EXz8G5X
	 vTImk28QArSuH61nHlYl6saCKIC0r26qoEOfJOGb/DQFUegBzbBy4P3oyFLbgm1ogz
	 8WgTB5QtfXQohbNjsoYEShfEWscZyssZ5xz6bSIVmIlprxjTQbzYmlOfzzFV3TlnhQ
	 O97ULICrTt0BII+ThT3jC1h2cEG3VnwJi5VvPmJTeueXstG7/s/LmWVwf3m85D8a9B
	 uQrgKpcKVGFCw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 4EE7F5FA88;
	Mon,  7 Oct 2024 11:27:49 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20241001093049.37515-1-pkshih@gmail.com>
References: <20241001093049.37515-1-pkshih@gmail.com>
Subject: Re: [PATCH 1/2] Revert "wireless-regdb: Update regulatory info for
 Serbia (SR) for 2024"
Message-Id: <172827166928.1242641.13961845240628425833.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 11:27:49 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_202753_959593_4CF8BA25 
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

On Tue, 01 Oct 2024 17:30:48 +0800, Ping-Ke Shih wrote:
> The country alpha2 of Serbia is RS instead SR, so revert it.
> 
> This reverts commit 388c80ccba39d4ff4957a5d153c461aaac53e22e.
> 
> 

Applied to master in wens/wireless-regdb.git, thanks!

[1/2] Revert "wireless-regdb: Update regulatory info for Serbia (SR) for 2024"
      https://git.kernel.org/wens/wireless-regdb/c/dbfae475bf85
[2/2] wireless-regdb: Update regulatory info for Serbia (RS) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/b44edb2eaf3a

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


