Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0063C0219E
	for <wireless-regdb@archiver.kernel.org>; Wed, 12 Feb 2025 09:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+AWP5N2XIugKbOhpDKDsyEhuWv/27XGFo/qT0xqJCRo=; b=zT0MsUuePaPVrOc37mapYzPM1U
	6417JFA0MAOrD64fJYMuw5BLH4FyEQY0tiEVHfWmlw9MMsrETcluevqIbxbo7TEOFN2lthVrrKG/c
	tWatebj116Yt99TlfyMAQcVq6+1k8b3OioCHGGQEh1Pgrhn4CzSOQfc9VIdNfXLhI7iOmKiMrkhIb
	+2/SZLVST9kbU9+f7bX/UC797v6PmxwJO0mPLyqUl5kXWxPlZqoT/PH6p8wrCiW0OcU1U35rylgXK
	Ss3E6CrDZ2RKOvHtcMXY4dDkn7KwEex7X/CW+7nhgQeh622F607URe2ZoHzYPFeiU0elKSww/xHrk
	expHlDBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8fd-00000006iIf-1HfJ;
	Wed, 12 Feb 2025 09:04:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8Z2-00000006hCy-3l3Y
	for wireless-regdb@lists.infradead.org;
	Wed, 12 Feb 2025 08:57:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BD8C55C463E;
	Wed, 12 Feb 2025 08:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF331C4CEDF;
	Wed, 12 Feb 2025 08:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739350668;
	bh=AVqaqDgKTBD9UCgA5nDwYKhma1UIFvgSO+jt9SHCNsI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=cucnSEtCrn4bQMRCOzy6PRgEl4x1MupJwdAHyG6G6y6u/+mNm3aX0bFbhYQj2QVDp
	 WHGqW80jR5JT0p4cB9eBaxgFZJ0K2mgN7llgZ2c0q0FZkgcal21HK4ae3dvaIpeSqY
	 OCHgBvaqW6Ssf9cS2OxQfu6u+wWS70/+nPv+BZMOaNe2xvF03HXF6TM0Uee18nnAEi
	 vqBtCJHzAjBlPkf8IL9ItDHXfwuHrgkxFl8ECUsBzXTUZMPSorUsEh1V7HxJPzSyRf
	 iyBvGbQ5D8CwuCzF1SIbG70gaRJZlRoRU60d1D84kfiC6grf3Wd0GiNY8mqm5NI0ds
	 Nk+SIEvD231VQ==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id EFA255FB64;
	Wed, 12 Feb 2025 16:57:44 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, 
 =?utf-8?q?Robert_J=C3=B6rdens?= <rj@quartiq.de>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20250125011210.56371-1-rj@quartiq.de>
References: <20250125011210.56371-1-rj@quartiq.de>
Subject: Re: [PATCH] wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band
 in ETSI/CEPT
Message-Id: <173935066497.2471378.13516689980592599167.b4-ty@kernel.org>
Date: Wed, 12 Feb 2025 16:57:44 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_005748_987404_C507C72D 
X-CRM114-Status: UNSURE (   5.85  )
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

On Sat, 25 Jan 2025 02:12:10 +0100, Robert Jördens wrote:
> This increases the allowed bandwidth from 160 to 320 MHz for the
> 5945-6425 MHz band to support 802.11be (Wi-Fi 7) EHT-320 for the
> ETSI/CEPT harmonized countries (EU + CH/LI/NO and TR).
> 
> Previously the bandwidth limit was set to 160 MHz to match 802.11ax
> (including the 6 GHz extension called Wi-Fi 6e). This limit is not
> supported by the current regulatory documents and should be relaxed to
> 320 MHz.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band in ETSI/CEPT
      https://git.kernel.org/wens/wireless-regdb/c/6c7cbccaee12

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


