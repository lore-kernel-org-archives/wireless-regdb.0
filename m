Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29E59C8303C
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 07:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pK3c0/hSFvcqFzvlDyyFGUlQ/p9+0TcOqxOKOHPtCVs=; b=xN11aMb0LkvQ/7uechSChJkwYq
	60e3NpLInTrg6B3nGrFa1MzlNhi8AYFR9qn3xQAgCUZo4eBxwOOiw5qEY5jkEeAGcFjIeECczCOBV
	grSaILLa8k+4yzmgsbEKD50ztzf6TIHy8r60xBSWLMFOU4AhtVUmU2o2cPhViNxV/rfVXMzX9LCC7
	DpJagSoD1M5mOKpO8f44TVMqEUEWueLLMVPIbe0JOtXCvrSp2Kzqy1s+4kUhHjNbCgf5sis4I5B+f
	20adQTMH7RTggFLjvECcf4+UonrjzLK/afXCjjDqAk/0AWJgpTCxHKbWzY94qeHA7hJVVQd5KMSN1
	tHZBNMRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ2s7-00000004apH-0FQd;
	Tue, 08 Jul 2025 07:36:11 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ2qR-00000004aaL-1eyk
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 07:34:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 97F63A531C3;
	Tue,  8 Jul 2025 07:34:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26D2AC4CEED;
	Tue,  8 Jul 2025 07:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751960066;
	bh=8rANQBPBT41eM0qDK/tPvHTzfo1o0EeQtduLK/SHhC8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LpTtvHqNYGH1nm6cR7cfGamIRqagULzLgBQYu7xN8uAcPe1EGiswnfiDxTDrrhQR5
	 x2My9mL9zTe1YTkgtHtXBOVBCQkMo2c0SDYKTtpv7I5kNGXutlY5moqp4jDRwGF74I
	 TLLqLlIiSchuE2QIk/6Uq2evhD48J6ZI5ASbNn5EXuL2oFjwyq+CkcHzM3Q2KiBQ79
	 O6t6TLzqj4ATaYK+c+YTylBTl8AyE73DffN3ybKGa1zo1d1NipR0JBIcNKirszj+TQ
	 4f0Jwc0zOoWDNYpDvTzjG5qgLqJd8N1hFCZ6FcCpnwZ/bwWFpi0+IBQh4tEBaSGYWE
	 R1Vb3cubY5uuQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 55E5D5FA91;
	Tue,  8 Jul 2025 15:34:23 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20250708015005.6470-1-pkshih@gmail.com>
References: <20250708015005.6470-1-pkshih@gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
Message-Id: <175196006331.3185674.8904603752210086354.b4-ty@kernel.org>
Date: Tue, 08 Jul 2025 15:34:23 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_003427_497975_3E3C2ACC 
X-CRM114-Status: UNSURE (   4.95  )
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

On Tue, 08 Jul 2025 09:50:05 +0800, Ping-Ke Shih wrote:
> The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> countries including
>  - Albania (AL)
>  - Andorra (AD)
>  - Austria (AT)
>  - Belgium (BE)
>  - Georgia (GE)
>  - Iceland (IS)
>  - Liechtenstein (LI)
>  - Macedonia, The Former Yugoslav Republic of (MK)
>  - Moldova, Republic of (MD)
>  - Monaco (MC)
>  - Montenegro (ME)
>  - Norway (NO)
>  - Switzerland (CH)
>  - Türky (TR)
>  - Ukraine (UA)
> Add 6 GHz frequency entry if not being added yet.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for CEPT countries for 6GHz listed by WiFi Alliance
      https://git.kernel.org/wens/wireless-regdb/c/5a8ced5ad313

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


