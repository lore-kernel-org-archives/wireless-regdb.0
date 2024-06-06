Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD2D5C27C5F
	for <wireless-regdb@archiver.kernel.org>; Thu,  6 Jun 2024 14:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yohAEL+OdYTGnAas1PUR5UQqYteNSCGv5FVHTvpp23Y=; b=QBfowoTPGtaQJBs828AGdvrEwi
	ovlCcubBHVycgb7BG9nicuYKpz1zehjWFHVtRP179HWcdOZaUF+Q/HnlZkCttQ45xu5yhre9GnS/w
	9Ly82UB52SeTOPneUUiQAu2GhUlL8KWSLzT5RI2DVIQ3+wZ8FItkokFwP+RTaqs6TlZQl5nQ73nu5
	INXllVGHPQ4XEYNvs+9DIi5/Ewxk0xc2Hz4RczW9ggXi2MLiGDaz2CmLqke1VaQhAAp5xgkGtgdJc
	TXNGRszqmYIkNphHV8+yhzz4yiVljPp7UAjIjsjay4RH7gk16prm/O2i4D5X1rbtHqRX8QvLAbmT3
	Ka66C0yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEX8-0000000AAH2-3aIq;
	Thu, 06 Jun 2024 14:56:06 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEX6-0000000AAGL-21CA
	for wireless-regdb@lists.infradead.org;
	Thu, 06 Jun 2024 14:56:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 69E7BCE1B9B;
	Thu,  6 Jun 2024 14:56:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88091C2BD10;
	Thu,  6 Jun 2024 14:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717685761;
	bh=BJvw1GXBb75PGCCdgtHgmV04LTSJ7apMr2NBvvD9rpE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JIZx+eSMLuh8W9sEZX6wWZEwX3XEHQEDaagANYczQH3Q4mmfh+pUiyAlf1NXYwzbj
	 idKHoeLEghNSbG7VLF0b7x6Bk9N92HoRN+/x3G8v1laWEoGCQUWcUJw6W1mVF/kWRZ
	 RumMAve6yyVc0V9+BkWLSPE7Gd74Hp7Lrmyl2F/V6BHZdWv1BZf16ABWCWk4iktFFo
	 22SxaESW7Cfb248hQCTd8lpP4OqyuznEx5DyDxbd2jL/RSwYWichTryOmw44Uy1L+J
	 OMCSiRR0MYfMq+5jd/kSLv1/LzC6JHPfOdF69GMxxEGDtkm3VSlS9xQAri8BXzxklr
	 E+Edmiwgqfe5g==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 792305F8B0;
	Thu,  6 Jun 2024 22:55:59 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240605074209.8713-1-pkshih@realtek.com>
References: <20240605074209.8713-1-pkshih@realtek.com>
Subject: Re: [PATCH v3 1/4] wireless-regdb: Update regulatory info for
 Malaysia (MY) for 2022
Message-Id: <171768575947.810795.11893893795963994787.b4-ty@kernel.org>
Date: Thu, 06 Jun 2024 22:55:59 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_075604_730157_3CBD404C 
X-CRM114-Status: UNSURE (   4.97  )
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

On Wed, 05 Jun 2024 15:42:06 +0800, Ping-Ke Shih wrote:
> Malaysia Communications and Multimedia Commission announced CLASS
> ASSIGNMENT NO. 1 OF 2022, which page 11 describes frequency bands
> 5925-6425 MHz are used with conditions of 25 mW EIRP for indoor and outdoor
> use and 200 mW EIRP for indoor use only. Add frequency range of
> 5925-6425 MHz and update limits of existing entries accordingly.
> 
> [1] https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signed_19012022.pdf
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/4] wireless-regdb: Update regulatory info for Malaysia (MY) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/f901fa959af9
[2/4] wireless-regdb: Update regulatory info for Morocco (MA) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/d72d28865b44
[3/4] wireless-regdb: Update regulatory info for Chile (CL) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/414face1b010
[4/4] wireless-regdb: Update regulatory info for Mexico (MX) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/1156a08e9106

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


