Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A56E5E7717D
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R1K11sehN9ESls4ZlWbZqgDHNU5WgUyUdcZkKXscI3A=; b=dzd+7xHB+tDaBacvhN8A/K2+uU
	GUDK2lR290toIK27/IrPl3wIUNxIDsystiyMsyjDDidvcomFIiJQcm/P5XcjDBAi8kNj0jYi6Vlyw
	i8NVlo1mXf7aLQdlTu4gzlr9AQbDzrOZTT/vNc7pGokxE5z5lUoSSIkVQFyzMs9m88LsLDU117ymz
	WDLuDwAY2x10vhQ+aDaUWgBQ7Yst3zFa4qQXc/BnE+x04aaLIfWbMYYnxZYzEFVCWqzgIvCnYh9Tf
	2Kas56gD3MPRCdWA3SWoVA3tHdScYEnon88RCowpnw8RdSqfOnHpQwHCBv5YDJoR1tSOxisKu9Pq6
	/HU1BbtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVVZ-00000006QQ8-16zh;
	Mon, 09 Dec 2024 04:36:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVV5-00000006QMD-0qI9
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 04:36:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 20FB35C557B;
	Mon,  9 Dec 2024 04:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DB36C4CEDD;
	Mon,  9 Dec 2024 04:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733718962;
	bh=83tUZJ6NHvdQri7jF0me9UhRmeINh6Os4y1s0HOlHP0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YkqVNOGv9hWjy8aY+iyOxTReT1wCQsPNIzql50Um8JdP35bB1JuTeKxjEOFWVOGqJ
	 63zj/C8/MY0TwLIzEZoFRxYd+jWm+4OwKQOxljhBwcGgAh07zWazKwoLanb5FjHU4N
	 E+6ObAbUWSUXqUDWFijtWoMXUzakuHCS1d9GtNcWKa2Yds4uYPjE14llQ7QAEb9Oqm
	 cN/2d1iOP69SE/tIsqY49z54b5xTOZ2yXp3VasLYGmPUbTG701z42ASS7wWFpR+fJo
	 DLrz0KbkkqrtlBnIMtgaw0v+KjS31V3p0A7FtfGYgHg+g/Rh5/i4WkRLx6fjFnXQiW
	 uCCnYU4tgnoIQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 82B325F870;
	Mon,  9 Dec 2024 12:35:59 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 combuster@gmail.com
In-Reply-To: <20241118011503.4694-1-pkshih@gmail.com>
References: <20241118011503.4694-1-pkshih@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: assert and correct maximum
 bandwidth within frequency difference
Message-Id: <173371895950.3369899.17402064216179762683.b4-ty@kernel.org>
Date: Mon, 09 Dec 2024 12:35:59 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_203603_282094_FCF2CDEA 
X-CRM114-Status: UNSURE (   4.05  )
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

On Mon, 18 Nov 2024 09:15:03 +0800, Ping-Ke Shih wrote:
> Since kernel will reject max bandwidth being larger than freq_diff in
> is_valid_reg_rule(), as well reject it ahead.
> 
> 

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: assert and correct maximum bandwidth within frequency difference
      https://git.kernel.org/wens/wireless-regdb/c/b43aeb518a07

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


