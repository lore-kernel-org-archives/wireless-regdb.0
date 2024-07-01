Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89E8BC30653
	for <wireless-regdb@archiver.kernel.org>; Mon,  1 Jul 2024 09:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z8HrWeav/hxSmGZQ+dPYYN1IgsHgCGKGGOptpuhPTCU=; b=up/+I1Lg42mzmWZ393eELxVixH
	rF2WQwpY2JV8Edyt8dJNQR2nraD3wJZih8+U+APzPvX32DzKtidFhN1SK4cfwCafA63ZXHEE+xkwh
	c9Ckh1K+v2riAus5wAxzh9yMPVsDH+HOec1dCJniYvUxCC39GubTly+NEg3lM2wV6wY1In6+lzg4/
	A00xsVNpPK4SeebtdKJMxW5LyxzKV/JvOxOBgr3UzHaSQAvaF9rOLBpmnr5q1IfQ0p1EPyuF3lDxl
	2WxpWYlUi06zWyzfYjPXNblox9aQiFZRBuNgyEsq4Hc+1M4qFCKY0YGPCW267mEJd43b3KKLC8Es3
	nEROxQrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODBD-00000002QCL-46jS;
	Mon, 01 Jul 2024 09:18:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODBB-00000002QBv-0mcR
	for wireless-regdb@lists.infradead.org;
	Mon, 01 Jul 2024 09:18:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 66B2061181;
	Mon,  1 Jul 2024 09:18:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEC1DC116B1;
	Mon,  1 Jul 2024 09:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719825512;
	bh=eLrNP786r1nyDwVMD5zW1RtilLFeZn9DWE2Ef08E84s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kJYlOueiqzJxdsJRrpGesaqV0SmP54o8oa567VMflPAeaxyBVphaLDA+q9N6k4Tum
	 NIktYhFjNY4jLjwx6YppoyPJG9hJ9ofRTRYY2wX/Gu8G5xicIqDBT8MU7HelWIKuSn
	 oZmUUbtkcn/v+Etf5YDK959LkmLWEdN9xHvAOfiEEmgWRo/lhboVeo5PygADVORiPj
	 nzCAoaUKRmUY3/ULTTSD1t75utnKeh04GmasOCUxXEyCxoCg5D8DnpRmdadv0HVIrf
	 vw4YVk0bR0IiPKszW3CCjAliyRXOL9/prF78c+S++h7F6p/9ifGfcdTWF9wkOvAPCJ
	 9PTm5RuHezsTg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 00E9B5FA01;
	Mon,  1 Jul 2024 17:18:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240624025623.6021-1-pkshih@realtek.com>
References: <20240624025623.6021-1-pkshih@realtek.com>
Subject: Re: (subset) [PATCH v2 1/4] wireless-regdb: Update regulatory info
 for Liechtenstein (LI) on 6GHz
Message-Id: <171982550898.1221830.493885225232689365.b4-ty@kernel.org>
Date: Mon, 01 Jul 2024 17:18:28 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_021833_323331_583C1B84 
X-CRM114-Status: UNSURE (   5.12  )
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

On Mon, 24 Jun 2024 10:56:20 +0800, Ping-Ke Shih wrote:
> CEPT ECC/DEC/(20)01 of 20 November 2020 on the harmonised use of the
> frequency band 5945-6425 MHz for Wireless Access Systems including Radio
> Local Area Networks (WAS/RLAN), which [1] defines
> 
>  - LOW POWER INDOOR (LPI) DEVICES
>    * Restricted to indoor use only
>    * Maximum mean e.i.r.p. 23 dBm
>    * Maximum mean e.i.r.p. density 10 dBm/MHz
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/4] wireless-regdb: Update regulatory info for Liechtenstein (LI) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/f8ef7da3d44c

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


