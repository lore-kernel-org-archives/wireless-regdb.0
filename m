Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 070F4C83F10
	for <wireless-regdb@archiver.kernel.org>; Thu, 10 Jul 2025 03:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=StebM8DcmraG1uxLx19MY18vMCqMRSCjadNXvr17br0=; b=o3DAdP7ymxs1UAQD4BK8Mm3ZhW
	FfBykpPwfmzrSBo50DhWyq9MfqImKYdIEszUc2jrtkEERMsf5qdZVexZbAHiSFb4sRHfjO9ckWjY2
	GPpCiRe93gg9sS6IyCiuns4Bsm21LnrfC78iAgUgWKCWfob5vIo9bA9fFYpuPo6G9+pFNzmdE6M52
	UlzGED2qR32NqNQXrmd580jLwlzVvf41d+mMQ2cKHV9dfdfM8+3hojnfDI8zNzVG8FAMvNossMW61
	m7TBUUomUedIWttTHdhD9/5kCno0b0da6/T6ZG6kGX9d/7Y642eIS0d2Oh17nhuHSNK2/GXweQuZd
	ckJePJ7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZhi5-0000000AZHh-2z1L;
	Thu, 10 Jul 2025 03:12:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZhi3-0000000AZHZ-2YEs
	for wireless-regdb@lists.infradead.org;
	Thu, 10 Jul 2025 03:12:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A48CE61139;
	Thu, 10 Jul 2025 03:12:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D7C3C4CEEF;
	Thu, 10 Jul 2025 03:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752117150;
	bh=x9gEGEGbGMlzpDA9o371WL8DLUnKrs62R/dX/MKJvP4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NDZE3ylVhQdNq2CcVoaffQJyY0ZjKe/rKKpko1x7pjQroDngAQWsZ01c3zCNOdaxI
	 6nQeVn5HedffcfbGnb6cWBEZaWl+Dxc26+ICpn5saX9BvTIK5y3Zp8S5mgAthGk3OP
	 aS8hcN7i5C+rXbRYfvsnyvHOYvqHno1S/PYxfJchCSjMcUBU3hjRgtUdC9Aa9RSTId
	 JJEkTo2wU2qQovq7yJ55feo8lwCX6aNjZ5rTqt3BF+yUa8CKz9g0Eo3ytOCB65Ymk/
	 gytBECKx+PDFNE0x4mCKa0+XEXiSi+3tuUm/6Ksvc+CVdHZGHPl7zmcG6g6bBf8OAO
	 TYwAi7iBZu5XQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 4D2765F843;
	Thu, 10 Jul 2025 11:12:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20250708113544.3557-1-pkshih@gmail.com>
References: <20250708113544.3557-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bosnia and
 Herzegovina (BA) for 6 GHz
Message-Id: <175211714623.3967082.14941797088374296053.b4-ty@kernel.org>
Date: Thu, 10 Jul 2025 11:12:26 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
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

On Tue, 08 Jul 2025 19:35:44 +0800, Ping-Ke Shih wrote:
> For CEPT countries, ECC/DEC/(20)01 [1][2] decision enters into force
> on 8 November 2024; preferred date for implementation of this Decision
> shall be 8 May 2025. Update regulatory rule for Bosnia and Herzegovina
> accordingly.
> 
>  * LPI devices
>    - 5945-6425 MHz
>    - Restricted to indoor use only
>    - Maximum mean e.i.r.p.: 23 dBm
>    - Maximum mean e.i.r.p. density: 10 dBm/MHz
>  * VLP devices
>    - 5945-6425 MHz
>    - Indoors and outdoors
>    - Maximum mean e.i.r.p.: 14 dBm
>    - Maximum mean e.i.r.p. density: 1 dBm/MHz
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: update regulatory rules for Bosnia and Herzegovina (BA) for 6 GHz
      https://git.kernel.org/wens/wireless-regdb/c/5fd8ee30bb6c

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


