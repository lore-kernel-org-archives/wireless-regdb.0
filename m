Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED47CF64A1
	for <wireless-regdb@archiver.kernel.org>; Mon, 30 Sep 2024 07:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VgDE8SmCj+W10/aQaZKbsUJroBA2Ahy5TLJrxJTN/hk=; b=ZqO5XwRNd7fRr0D4OwJJ8jqGVD
	IjlqH68SNj6n3uT4ZiSurbGKuzU9veKG8P0qelamMwU5YxxjA48L98aQBwv1RNL0EafCsIcQ66IeW
	O8JPP2R1PTEDfycuzC/rEV3jLo9ZXn57svtajk00PPJmD69oUqAWM1irbke977FcxjpAKGUkxoNMv
	Cy/+EhnZkPFnO4CHo23gzwkyE6nSB44XRnC2fXVBejG/7JO5x8b7x4RX5mTrXrZQvMoVxmZ+WwR3B
	julC3uQs48B2HXXa/NwH15MZQ/8p537Npuic9Psg/4s/4N/F6X4navgXKbn7/+4oxek1T/pXFJowg
	Xsn9U2ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svB4t-0000000GDOp-1uXo;
	Mon, 30 Sep 2024 07:44:19 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svB4p-0000000GDNl-2rns
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Sep 2024 07:44:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 91E05A41420;
	Mon, 30 Sep 2024 07:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C18CC4CECD;
	Mon, 30 Sep 2024 07:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727682254;
	bh=Jxs5S8FqqKtOinOcz6fXTUgLw2ZrQLwAaM/ETwjv4yM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ss3ne3A5rZPQTo9Xc1kiCYW6v4Ny0eClFFSh470nnhBuHh4mUueVTKNWAAIW3BYl7
	 WIe+y09/gUkyHF4Pg0rGwxaSXY5+uqn+hPGd6AINCjf9nGjsI5wUp3OBb3rvYKHaT5
	 X/GOR19Js16kRK35jDY/TqKY6hPNWOcmLXe2FT1j/X8deu1UOiaC9nRwbpwzwvAbKB
	 uHhUmeqPqReD54k2sqC0lpgOoGolFETpd7k4Rw04FKVrstuYudL7nsXCPjiIEaiQAu
	 URwQSuhWX4FrUNoIiZ3kbqS6s+9eroK1/8e/3EpdCS4YeyDibpqsZV7CnFcDHu2vSH
	 /uoM5xlJ1DBvw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 023CB5F843;
	Mon, 30 Sep 2024 15:44:10 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240902082304.52326-1-pkshih@gmail.com>
References: <20240902082304.52326-1-pkshih@gmail.com>
Subject: Re: [PATCH v2 1/4] wireless-regdb: Update regulatory info for
 Serbia (SR) for 2024
Message-Id: <172768225097.2546520.15568532170446522580.b4-ty@kernel.org>
Date: Mon, 30 Sep 2024 15:44:10 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_004415_819320_39F89ACC 
X-CRM114-Status: UNSURE (   6.11  )
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

On Mon, 02 Sep 2024 16:23:01 +0800, Ping-Ke Shih wrote:
> Serbia government released radio frequency range on February 5, 2024 [1].
> Based on Article 100, paragraph 5 of the Law on Electronic Communications
> and Article 17, paragraph 1 and Article 42, paragraph 1 of the Law on
> Government.
> 
>  * 2400 - 2483.5 MHz
>    - reference [1] page 114-115, section 2400 MHz - 2450 MHz, 8th row
>      * EN 302 328
>        - 20 dBm
>  * 5150 - 5350 MHz
>    - reference [1] page 120-121, section 5150 MHz - 5250 MHz, 8th row
>      reference [1] page 121,     section 5250 MHz - 5255 MHz, 8th row
>      reference [1] page 121,     section 5255 MHz - 5350 MHz, 8th row
>      * EN 301 893
>        - 23 dBM (Without TPC)
>        - 5250 - 5350 MHz, DFS
>  * 5470 - 5725 MHz
>    - reference [1] page 122,     section 5470 MHz - 5570 MHz, 8th row
>      reference [1] page 122,     section 5570 MHz - 5650 MHz, 6th row
>      reference [1] page 123,     section 5650 MHz - 5725 MHz, 8th row
>      * EN 301 893
>        - 27 dBm (Without TPC)
>        - 5470 - 5725 MHz, DFS
>  * 5925 - 6425 MHz
>    - reference [1] page 124,     section 5925 MHz - 6700 MHz, 6th row
>      * EN 303 687
>        - 23 dBm, LPI
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/4] wireless-regdb: Update regulatory info for Serbia (SR) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/388c80ccba39
[2/4] wireless-regdb: Update regulatory info for Kuwait (KW) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/83c175cec096
[3/4] wireless-regdb: Update regulatory info for Israel (IL) for 2021
      https://git.kernel.org/wens/wireless-regdb/c/3ba2c5306fd3
[4/4] wireless-regdb: Update regulatory info for Honduras (HN) for 2023
      https://git.kernel.org/wens/wireless-regdb/c/8760bc37e9d0

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


