Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01CF0D68BDF
	for <wireless-regdb@archiver.kernel.org>; Sat, 16 Nov 2024 08:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbC9+cPkzKXQXPvFBZFEQLPR92kVzrNQW3gd9HegkaU=; b=zLZnRcPBjfUxmHQ90+fleUCGXo
	NwZdbSDKSZTl+uJJhMKFDAf3Z3eHXImLm4W0lePvbZvCPj4ySQI/Uiz9WC0WJ/6bNtcI8gfeHKv9F
	RP5VGOCBpPD3avhuKjLUQOpUmC57LcE040j3LLi7H6lhioIbzdK8Z3x+DqZvKsOUX/wphOU+jxUSL
	t6PKQg+CE1TNbTk1FFRe5riiUu8cReKPLM04lcp1ZpWwYYgH0AV0ogHzLF+FAjgM4bYqpJEEx5S/t
	8lxlUUbR7836sxlq1vbMsrnHMRGrCpMd0+/L3DyHYbtSvCKCHUVI+hJ+iQBXj29Q+wjIMj90nXcCg
	PQURHqLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCEKS-00000005FHL-2I0x;
	Sat, 16 Nov 2024 08:38:52 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCEKQ-00000005FGx-0LEY
	for wireless-regdb@lists.infradead.org;
	Sat, 16 Nov 2024 08:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=nbC9+cPkzKXQXPvFBZFEQLPR92kVzrNQW3gd9HegkaU=;
	t=1731746329; x=1732955929; b=jCxa6jyx3WM6NtXDqZeaJp9j0BBRgY3LwdZkhjgkGeX/Rwm
	A9tsK1CQFEt2C+aSYqNa5bcrBOfMpkIXcaKS6b74BjynVgkl4AD6lhfrjsWEELWLiZy/TnOWi3hFd
	rCwvbaOlggo9OUkHNfRJHwCvNjVqoOHTrJoNg5EScmaOQOFzVTISQmxZIYk6IXY0msNDdqyp3pBzD
	OqYB7WqNoDSq1WZP9ZFzcdxP+jutzIUv/68dcKMvRXZ4ghlvDEXqvUdaJWzSy3XoRFg2zvhS32npH
	xihI4L5ZUog3elBz4jIjTyKJgqYwQG+2zrhtA18bmkfEwh6NaopIsZTBpJP+b6MQ==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98)
	(envelope-from <johannes@sipsolutions.net>)
	id 1tCEKN-00000006Jt2-11z7;
	Sat, 16 Nov 2024 09:38:47 +0100
Message-ID: <d783a6d6a429feec6763077126e76445b6f186e2.camel@sipsolutions.net>
Subject: Re: [PATCH] wireless-regdb: assert and correct maximum bandwidth
 within frequency difference
From: Johannes Berg <johannes@sipsolutions.net>
To: Ping-Ke Shih <pkshih@gmail.com>, wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	combuster@gmail.com
Date: Sat, 16 Nov 2024 09:38:46 +0100
In-Reply-To: <ca8e16a2dbc9c38e5bf2f3e426a2132393b381be.camel@sipsolutions.net>
References: <20241116082417.8720-1-pkshih@gmail.com>
	 <ca8e16a2dbc9c38e5bf2f3e426a2132393b381be.camel@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241116_003850_117581_9163D20A 
X-CRM114-Status: UNSURE (   7.61  )
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

On Sat, 2024-11-16 at 09:33 +0100, Johannes Berg wrote:
> On Sat, 2024-11-16 at 16:24 +0800, Ping-Ke Shih wrote:
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >=20
> > Since kernel will reject max bandwidth being larger than freq_diff in
> > is_valid_reg_rule(), as well reject it ahead.
>=20
> Not sure that's generally true, if you have AUTO-BW I think it should be
> OK?
>=20

Sorry, no, I guess AUTO-BW just lets it expand the bandwidth beyond the
listed, if there are adjacent ranges. Been ages since I looked at this.

Anyway this probably doesn't fix the user's problem, it just makes it
rejected when compiling already ;-)

johannes

