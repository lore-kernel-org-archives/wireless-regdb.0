Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D22C02198
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Feb 2025 07:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zbq+iFyGrqY1DGMya38wMUj5eUk2k7cBqw92Q1rUOgk=; b=y95J5XJosPNXPe0Pwqx4AudDbv
	wGQ8ZXgKM2qSCAKFrd38vQdc7X1aVcB+WeDGMnlgxWB8TKBDWBJy9RIFo8wc4Hov+z4SUPmhBf0Vd
	NG8w0kvL0ihsRwkJ7rYgEnK2rsnXPl48QfnNf52HX2cRZpNA1xgwvtX7Sakvv4huuwxB8nnNlsa51
	UJsLERktyL6I7ks2ccmdGiaC5/KKb5QgTavLm87QHJ6dCstLID85vj7jy9LVXKfq3WA/GilQESnWC
	xGsvzPINqXzIFIa9nKd2sf/E91gX57Z9/iG2WOOkDLU9BegSS85an7U79It0kyS4jc3T/1uF6mmMr
	SzmXxI5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkIDb-000000076Ea-33dw;
	Tue, 18 Feb 2025 07:40:35 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkIDZ-000000076Dz-3YCM
	for wireless-regdb@lists.infradead.org;
	Tue, 18 Feb 2025 07:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=Zbq+iFyGrqY1DGMya38wMUj5eUk2k7cBqw92Q1rUOgk=;
	t=1739864433; x=1741074033; b=VUKTR73luY0BWVSFWIlGusg0CrIHsOGu6Ef/S2G33C0dJ1Q
	FJ8y3aRf6ps75udKS6CDRZdcrsfxToW8JHqogJIGIn424bvWS9EC5sj5cB44V6ngQb0bD+gJUbKxh
	ysVOUpg4yhUgm3Y1GZHODC8bijnmhdbyf9KfLQ4+p4Vze9i10uoZI7drN+JZKJ7jrDVEVS5jTUdaA
	JvDZen4eqfcJy3f3qBPhRR9Es3K/whbcmgJRKj7/+6Zw7/q6wCBjViLBuDndlwuZa0F8TkWBSeDj2
	KsLv+tgkOOVWawR0Qxdl2jGLPbOLVK7Cf4oSfKW95a237qyn+dsbcqTPbz8ryoAw==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98)
	(envelope-from <johannes@sipsolutions.net>)
	id 1tkIDS-00000001Gs7-3jtM;
	Tue, 18 Feb 2025 08:40:27 +0100
Message-ID: <5e433cd8d070682cb6ed31de3a2dd337e6f48b50.camel@sipsolutions.net>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Iran (IR)
 on both 2.4 and 5Ghz for 2019
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org, Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	mobin@mobintestserver.ir
Date: Tue, 18 Feb 2025 08:40:23 +0100
In-Reply-To: <CAGb2v66Qev8nQvt54dKDC+Q+rJ5m6+erWO2L4_vSMVqrTe_DRQ@mail.gmail.com>
References: <20250218025957.13818-1-pkshih@gmail.com>
	 <CAGb2v66Qev8nQvt54dKDC+Q+rJ5m6+erWO2L4_vSMVqrTe_DRQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_234034_161816_5A79388C 
X-CRM114-Status: GOOD (  12.21  )
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

On Tue, 2025-02-18 at 13:29 +0800, Chen-Yu Tsai wrote:
> There are NO-INDOOR and NO-OUTDOOR flags for the database. The kernel
> doesn't have a matching IEEE80211_CHAN_OUTDOOR_ONLY flag though.
> Maybe that should be added?
>=20
> Johannes, what do you think?

Good question. I guess we could have it, though I'm not sure we'd have
any mechanics to actually _use_ such a thing right now? Something, say
hostapd (?) would have to promise it's actually outdoors?

More information doesn't hurt and I don't mind adding it at all, but I
do think we'd probably not be able to use it at this time.

Or we could add it to the db.txt file but ignore it in parsing now and
skip the band for the binary for now?

The thing is I don't think we have a good way to say "older kernel skips
this range" - or perhaps we set the NO_IR flag so older kernel cannot
use it but then allow OUTDOOR_ONLY to override that given some
conditions?

johannes

