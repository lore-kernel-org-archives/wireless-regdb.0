Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 146DFE77181
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 04:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qg+oKend5RL1fENOD6YYfBg7QFeJtkkB4J+61kN8DFY=; b=MtHzCP+sOtGT937ketdZE7pseC
	g77hfzpsWgVGp3wvLCxDktZJWW5Y1FfCT93121yjRmJQPOQ2n5PWZlzgvEfEVjPNaZoqFJ1A5D8jU
	9TcWnDqlofulna+IOJiOm/8kSEyutMLFWsnQibSGpFavbdszICf02B+67ijqdadth0o1iW5dWja22
	d5r/KleQjBsfPspL/zFEy25sT+K/UL+K71eIeEp+10FlUExny/b3eRobigrYXQO1lcpuZ0JJnsj3D
	iM9oezk5ReqjlXrzasP1CKXLUxl6TcSWodVswb6SSXjoY4pPKNKCd1kzULQTZ/vGq2+AXqkwpeg3j
	sjngLmFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVVZ-00000006QQV-3FAR;
	Mon, 09 Dec 2024 04:36:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVV5-00000006QMI-2AOG
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 04:36:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 70D9F5C1119;
	Mon,  9 Dec 2024 04:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FBF1C4CEE1;
	Mon,  9 Dec 2024 04:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733718962;
	bh=CCYgGonU4JXnMK1tYRCbIHv7YN7XHoHlsx84CpiUUqo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VLe48+fdh8RJhpkUxHoHnBuFUhUmvviVhh390/XIQjOWTS0zygHkn1N9ArUzQyzQr
	 taB7VZHKxaCplSwk1JaAg2fMA3I/+JRieOonDer5tuUYqXimSgvWW2BGX5Usu64gDe
	 8MPPIQjblp9BVQLzm3tx0+5VP0DGHkae49l8EcEEccJglEQYlJA3ePpuppCMIEiU/J
	 Ro0+za9WIcdaGv8+w9r1kwyqLcm6s3rO9II3Tzb4ahatzUIhAtcOKASmR6d+zsH4S9
	 wrzOkNgnzD+l+rTw1XPtvhWw/SViUQBRSmjEI/ZVU/PFJ75Ob52j3CikNguznse2xa
	 eTkcf5SEkreNw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id A1F3C5FF03;
	Mon,  9 Dec 2024 12:35:59 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20241127093208.4693-1-pkshih@gmail.com>
References: <20241127093208.4693-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Azerbaijan
 (AZ) on 6GHz for 2024
Message-Id: <173371895965.3369899.11075083135519466066.b4-ty@kernel.org>
Date: Mon, 09 Dec 2024 12:35:59 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_203603_611456_D48FC305 
X-CRM114-Status: UNSURE (   6.36  )
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

On Wed, 27 Nov 2024 17:32:08 +0800, Ping-Ke Shih wrote:
> The ICTA established under the Ministry of Digital Development and
> Transport of the Republic of Azerbaijan announced in June-September,
> the State Commission for Radio Frequencies responded positively to 17
> applications.
> 
> At the meeting of the State Commission, taking into account the
> Decision No. (20) 01 of the Electronic Communications Committee of the
> Pan-European Conference of Postal and Telecommunications Administrations
> (ECC Decision (20) 01) and international experience, the "Conditions for
> the use of the 5945-6425 MHz radio frequency band for Wireless Access
> Systems (WAS), including Radio Local Area Networks (RLAN)" were approved.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Azerbaijan (AZ) on 6GHz for 2024
      https://git.kernel.org/wens/wireless-regdb/c/b19ab0b82968

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


