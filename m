Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13F7BC0219E
	for <wireless-regdb@archiver.kernel.org>; Wed, 12 Feb 2025 09:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yUNb837ojwWArldLiDeghMbiI7AINKk9Bc49QKtd16s=; b=fW5Xx+nZWgrTJ4BnYXaHjMnVL6
	pS59YHGdrXoyBqpJsl+7fS+G932QLV8zzxkPtJeN+GRgkFKDUHBQR/cpaPVpmZKm3bCLpiHs4znCh
	cIrI3foPGQm2h8gl6ikwF/w4n5M4EZ0UveW6O0JPosf30B5H0kI2qLIZaNnEzM8fAL0ieu9xe3kGe
	EMSFwwZZmoC/TuUuROAXPhfHNAEUU5czPMqtKy1ii2VfD26ps/xyjWsk6iuUl2p1YwlrfOkovq5Wc
	eVKY8OYOrxh7DzXa7FfED/naxx8CnQIgnO9PYeZiaxlDc9dxsN28CLPX/aAvFbynPowY+0MbPq6f9
	39jOqO8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8lp-00000006jcd-1wPG;
	Wed, 12 Feb 2025 09:11:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8lm-00000006jcL-2SjL
	for wireless-regdb@lists.infradead.org;
	Wed, 12 Feb 2025 09:10:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 73384A40220;
	Wed, 12 Feb 2025 09:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 635CBC4CEDF;
	Wed, 12 Feb 2025 09:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739351457;
	bh=mx9RIlCZgzJ7uz/BeSuOXWrUXbBpNI8HQtY+HIUHhMU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BZbAF63RFxKRcZlS6kP5HcuiOvJ8Qk15ohuX8qcbGiR3jAu4FgACIGs54VY3035LS
	 lz7a8UaWuyquoglU5YhzPVIAs4jI44nIIgpSNWxHxQ1oziEQ8QYaHxeionQHTHYDxD
	 wyRepqr5crJqeDZjsbiwiTlmzA1Cjyln5ixCzqr8QJ2vaxzwADOwIVzcbLKKUct44o
	 L5mHCHti1ANtUreS42qmmo0KB5fdaO+7h5eEw4RO6nahtTEwtrHVuxHCMX9eaooRuV
	 h15zZpCkVnkFUEXl6DWSRyuSfz3BogoaNN/EM7mPAX/Y0hCNcMxkcLruu9KrCm2qMV
	 Wb+ohUVhGVkKQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 78CA35FA14;
	Wed, 12 Feb 2025 17:10:54 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, 
 Jakob Riepler <jakob.riepler@paranoidlabs.org>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20250129112554.27296-2-jakob.riepler@paranoidlabs.org>
References: <20250129112554.27296-2-jakob.riepler@paranoidlabs.org>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Austria
 (AT)
Message-Id: <173935145447.2475945.11593216402469454481.b4-ty@kernel.org>
Date: Wed, 12 Feb 2025 17:10:54 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_011058_696195_144A5FED 
X-CRM114-Status: UNSURE (   3.75  )
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

On Wed, 29 Jan 2025 12:25:55 +0100, Jakob Riepler wrote:
> According to the Austrian "Frequenznutzungsverordnung" Attachement 2
> page 404
> (https://www.ris.bka.gv.at/Dokumente/Bundesnormen/NOR40251378/II_61_2023_Anlage_2.pdf),
> Austria extended the usable range according to the EU SRD Band 75a (Implementing
> decision 2019/1345, current consolidated version:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A02006D0771%2801%29-20220210&qid=1738145465756)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory rules for Austria (AT)
      https://git.kernel.org/wens/wireless-regdb/c/f9f6b306a830

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


