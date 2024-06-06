Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D4AC27C55
	for <wireless-regdb@archiver.kernel.org>; Thu,  6 Jun 2024 14:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iMKNvpG46NbVfu5KTKT/UqnRgR4KRUfGMYhWdwkFFf4=; b=fcpgQccKpw0ApLWlyzNXBeor1V
	jprniUNWLx6DI73YtBjEwSparFxg3O1VyfMw6qKNJZt9EGuSWWu0wDog6pDI16YarSbElR1bn2i9I
	3g5GkxFHWfzcQnue6vxkEQ+DE7Uk0/J1LTaVL2WgyG9X2rMeva6F0c1bSZpXAxmbfzPJIybS5OVea
	FqQZzUIhVkSFq2M4EL/ohHn61eSSs508mC33aN/l/yQHz5cmybulT+pdsyn1cyf0hLxqTgMA8k9yd
	SpQdeVQKl/hA9+RHHCZOwMQxrxgflIU/DMGAYb9j5jRP3CcXwtJyT5gyWG6vmwd0rhITfZUs0Ifu6
	qkjz3QpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFERE-0000000A8oA-0W2k;
	Thu, 06 Jun 2024 14:50:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFER9-0000000A8lA-3jvG
	for wireless-regdb@lists.infradead.org;
	Thu, 06 Jun 2024 14:49:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F08DB61D5E;
	Thu,  6 Jun 2024 14:49:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86708C2BD10;
	Thu,  6 Jun 2024 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717685393;
	bh=KyWSqCy4y4RAmggOkMol/rJUPGZ7GGG0ZXiF6oovYR8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=heNGA8U5jJ6uhJsp81YfDgADGow0uoDRDK4t1QyunDx2s5U1yBvRRL8KZsMMt9jat
	 T40SO+TneWiSCqhgEiR0RhrTFAvQiMeuC5lSdEGv/HYt9c3VYwMWNPlsgGxOfhdOLW
	 1yv56LyueR4EOWM7ldcz4fiNmz702XWk6cElgCrEY0FJD+RwDhCJdeiORvFRKSWRFv
	 T7kDN3nZND1giCGgsdPDzHlTsvbw8hI4/cjSdRbPmRraatfvOZdf/Dx/SslHHEtXZg
	 bK3bPOehZw7hId+rqaXPcpNMmdpH6TbEXyNCapt82hKB97OIy71lKXS7D12wMT6/Xd
	 oeuegQitoRLCA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 87B7B5F8B0;
	Thu,  6 Jun 2024 22:49:50 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240603060558.98791-1-pkshih@realtek.com>
References: <20240603060558.98791-1-pkshih@realtek.com>
Subject: Re: [PATCH 1/4] wireless-regdb: Update regulatory info for
 Malaysia (MY) on 6GHz
Message-Id: <171768539053.810063.5040807853852576172.b4-ty@kernel.org>
Date: Thu, 06 Jun 2024 22:49:50 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_074956_058553_BB3EB3B7 
X-CRM114-Status: UNSURE (   4.94  )
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

On Mon, 03 Jun 2024 14:05:55 +0800, Ping-Ke Shih wrote:
> Malaysia Communications and Multimedia Commission announced CLASS
> ASSIGNMENT NO. 1 OF 2022, which page 11 describes frequency bands
> 5925-6425 MHz are used with conditions of 25 mW EIRP for indoor and outdoor
> use and 200 mW EIRP for indoor use only.
> 
> [1] https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signed_19012022.pdf
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/4] wireless-regdb: Update regulatory info for Malaysia (MY) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/ddbf3192cbc0
[2/4] wireless-regdb: Update regulatory info for Morocco (MA) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/472f62de66a7
[3/4] wireless-regdb: Update regulatory info for Chile (CL) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/2b2e1f829e84
[4/4] wireless-regdb: Update regulatory info for Mexico (MX) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/30b964dd5d3f

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


