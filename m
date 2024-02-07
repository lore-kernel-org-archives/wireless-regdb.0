Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD589C4828D
	for <wireless-regdb@archiver.kernel.org>; Wed,  7 Feb 2024 07:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YtqAbPVWmPXLGPgC1Qk/vzSJnpj9T9IFhd8HgU72vjc=; b=09zQFvpakqqV8HdPIonENQABBk
	hTgsl7ZpceLyIRWHvbZLmNjhSIgoPEsFehQ58cL1y435i1cC44fKXapEyL0WEBmEw8BqReIUkQNCu
	jfcn76W7j+WV3lM3eN6UHkKPhdjY59tXAXrD0cWWqs801Xp6OjfNry3gQSjD1C1oTW64Xhh7ATnw2
	8IgdPKHirXRASvtKEbFLD1jPwVn4+r5be1ccV3Ri6dyLTXQGSTreX8zfibhpRe5+Aj3MkKkNFozwn
	CdXXkQB3G33U9Xo01lz4wyhyz5ouCPxqNtAt7PWpQcF1FU2SjFVbMmBtFQYL9suwMCPCvkV7tqSeS
	fi1cDj6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXcpO-00000009zCW-1ko8;
	Wed, 07 Feb 2024 07:58:42 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXcpK-00000009zBS-3WRh
	for wireless-regdb@lists.infradead.org;
	Wed, 07 Feb 2024 07:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=YtqAbPVWmPXLGPgC1Qk/vzSJnpj9T9IFhd8HgU72vjc=;
	t=1707292717; x=1708502317; b=M/XBhGy53vOXS2K1IXCamHGrcM5oiL155UZSDTcEnfXXBM2
	o+PD61r52/vmm0WCvQ2uhgoNtTQSB0P45kcK+7pgmjgZlQVNGTRcZdl1ZfOvpyd9HRic9ysqyjaFE
	lY9VAPHl6rYqNzZTMZx0u2VOyUj6LK52IcyyEXW19ZFHElgkW/5RY1tbTLpnn/z1932TwSWewELLd
	9KTE9KSHjmxsHGCUIwdA4MirSk599JmwbDrXNMoszNuwkywz19uYfCwwAEHTlWEs1cc9uxMqV+Y/4
	FhqMXO5mRil7PTK/mSK+QYF/+2ZJeMh/UiO8azbGdBwn0Balu/dfuHuwNVZzg5Fg==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1rXcpH-0000000Fnus-0KYA;
	Wed, 07 Feb 2024 08:58:35 +0100
Message-ID: <240506b19c6671cfce2587f4c1152359066146c7.camel@sipsolutions.net>
Subject: Re: wireless-regdb key change broke crda tests after 37dcea0e6e5
From: Johannes Berg <johannes@sipsolutions.net>
To: Sergei Trofimovich <slyich@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	Chen-Yu Tsai <wens@kernel.org>, Seth Forshee <sforshee@kernel.org>
Date: Wed, 07 Feb 2024 08:58:34 +0100
In-Reply-To: <20240206222757.238a24f8@nz.home>
References: <ZcIXGjzrZrXPCBcp@nz.home>
	 <455bafff0d609eb182ba30a5fbf319888e0e961d.camel@sipsolutions.net>
	 <20240206222757.238a24f8@nz.home>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_235839_106416_138E9C40 
X-CRM114-Status: UNSURE (   7.55  )
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

On Tue, 2024-02-06 at 22:27 +0000, Sergei Trofimovich wrote:
>=20
> Great point! `nixpkgs` uses `crda` only as a `hostapd` depend and
> looking at modern `hostapd` it does not use it at all. I'll spend some
> time removing it downstream. Thank you!

Note that hostapd never directly depended on crda, it just needs/wants
it to have the correct regulatory information in the kernel (crda puts
it there) after switching the country (hostapd can do that if possible)
and then hostapd retrieves the information.

But in any case, the whole step with crda is no longer needed if you
have the regulatory file (and possibly signature) in place, the firmware
will load them as firmware files.

johannes

