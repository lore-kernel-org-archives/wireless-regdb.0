Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9953FC4828F
	for <wireless-regdb@archiver.kernel.org>; Wed,  7 Feb 2024 09:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Aia0zyCwZQButExCFHVmFuJMtV21zHtyCpPNnmp+38k=; b=sNv1oW5adpCOeleevphxy/1JEr
	8JbdsI2BJE51+OCw/BhRg+oZMplXGW5dSUdhqiadtqx8olIiHrBK12PDT+TcFUSynNH/MQf20Kxk6
	gHDKTC4jIzWXDFQ1rHoUj7osrCsAC2J7sVIIC8Y7BGCa4wmdSiscCRV9vYg3/VsurLi7tJ6XHU/Ca
	Cd1YVWauG80fweafZy5KT+UcYrH5MDVbOix1mQAhNXMq6Hfd7EvNwT5Imx5/nVVUWQNYUf1F2lmMO
	jZmsX2b3CNXeyTdq3/WdTeoaytlJEgC9X+CL9d+fbJ6Kj8liERnMKogSh5PqakErek4WdFiieG6Zz
	fp3lutGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXe5P-0000000A9uZ-007z;
	Wed, 07 Feb 2024 09:19:19 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXe5M-0000000A9tP-3epT
	for wireless-regdb@lists.infradead.org;
	Wed, 07 Feb 2024 09:19:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4250FCE12B4;
	Wed,  7 Feb 2024 09:19:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41D01C433F1;
	Wed,  7 Feb 2024 09:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707297554;
	bh=Cut9LWt+2/3OWLPgtzP6Xr9K4J1ks5L1UhObNIN4+jE=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=eluqGIJmvQG518cOLj7cST5d5xP7d++ptwXSodAwyb6N5S1Fqo0e+TWrw0MAnNYWA
	 DwF4wobrlYq6ZXJw3AAifipCpnhT04TU7f8vgZCaoZfKIJ4M6hiMbrqoHfmiMpOKiZ
	 GaozoyzZT6N37PnSyfBZd6Co3v9j3oHRe922zqayfHrUwrnSbSVCi+JGegJKBsfyww
	 zcfTxkkW+Cel9/iV5iUQQLQyTenGxgtoXibMNi0kaqxFpulxRZAeyWZLkKmimqu6uH
	 EnF0HOET7dNz35nsqb1h0rXMWL1IdywwejbqUDtD4YQTbAk6aum5/cXrqicZa5eaj1
	 Hm9H/KIW7vrPQ==
From: Kalle Valo <kvalo@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Sergei Trofimovich <slyich@gmail.com>,  linux-wireless@vger.kernel.org,
  wireless-regdb@lists.infradead.org,  Chen-Yu Tsai <wens@kernel.org>,
  Seth Forshee <sforshee@kernel.org>
Subject: Re: wireless-regdb key change broke crda tests after 37dcea0e6e5
References: <ZcIXGjzrZrXPCBcp@nz.home>
	<455bafff0d609eb182ba30a5fbf319888e0e961d.camel@sipsolutions.net>
	<20240206222757.238a24f8@nz.home>
	<240506b19c6671cfce2587f4c1152359066146c7.camel@sipsolutions.net>
Date: Wed, 07 Feb 2024 11:19:11 +0200
In-Reply-To: <240506b19c6671cfce2587f4c1152359066146c7.camel@sipsolutions.net>
	(Johannes Berg's message of "Wed, 07 Feb 2024 08:58:34 +0100")
Message-ID: <87v870hbsg.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_011917_103854_B9DCBDE0 
X-CRM114-Status: GOOD (  12.22  )
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

Johannes Berg <johannes@sipsolutions.net> writes:

> On Tue, 2024-02-06 at 22:27 +0000, Sergei Trofimovich wrote:
>> 
>> Great point! `nixpkgs` uses `crda` only as a `hostapd` depend and
>> looking at modern `hostapd` it does not use it at all. I'll spend some
>> time removing it downstream. Thank you!
>
> Note that hostapd never directly depended on crda, it just needs/wants
> it to have the correct regulatory information in the kernel (crda puts
> it there) after switching the country (hostapd can do that if possible)
> and then hostapd retrieves the information.
>
> But in any case, the whole step with crda is no longer needed if you
> have the regulatory file (and possibly signature) in place, the firmware
> will load them as firmware files.

I assume you mean: the kernel will load them as firmware files.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

