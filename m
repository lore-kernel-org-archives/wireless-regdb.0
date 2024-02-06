Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4932C4828D
	for <wireless-regdb@archiver.kernel.org>; Tue,  6 Feb 2024 11:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yBCsgwdzomymvd3uB6DYUfgN1bWrcCMAZ76Bg/r2gPE=; b=roWRYQ5mk3iGfCPbTNO8h1aWIl
	gdr/kfEUQODYfMXqrzATqSEooieQqwrIvwF4KglTaGwhGBK3H/2uI3u1zJLh1wSqYSPjA94UPRJSw
	xK4nbhVPeUk3kCjZoejNjD7YEHInzYcKTJamWjMREX6/K+6n8LlDLqBj9gH6CybqDOGFeZ64N67A2
	Yzl/f5sc31JYFbWAeAAo8NU6Fl8erTEVxIL0kHwTxR+cMAEML53NH/HuSHMWaDG4eZwwwrIg+v1Ey
	CWr6HufXVNLeUkpsDWLuNR6AIzFDJHE1tfvlJJLrFE4ReWUqFiHMeKv9aqGIIZ8csZsVAFzQwD5qL
	rx22Bv/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXJvV-00000007PPd-1zdk;
	Tue, 06 Feb 2024 11:47:45 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXJvS-00000007PNu-0UbW
	for wireless-regdb@lists.infradead.org;
	Tue, 06 Feb 2024 11:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=yBCsgwdzomymvd3uB6DYUfgN1bWrcCMAZ76Bg/r2gPE=;
	t=1707220059; x=1708429659; b=oTLAXGqLvww7CotWjfYRzmUAXBevlYas5RqVnVuNAfaVaQK
	WUOJHIM8eN6QWhIHA4tsDiI1rRCvmlPSLut7UZ+F/gS5po36VS6SyzfDy6VrVpUOiavTheqaOVPDE
	7gE+wJI7/i0nXEzi+j85QoLZ4MqLg6qkqrxIkjmlNR+H8DY0DoT7ZvXeR/2aHkrhv6yaWEDxd0xFG
	2wiVKRsRrQs9Sv7FGPiItnkNbuLAvNEkZUgwIysuy3oJwTh5kc6lQsmS7eeg83sI5AZRfka2hDEsb
	6epYzlnZ27dYJGDDhxGtyzvgzrymJji7dSIodDwHgFDT1MnyM6Ag4ITszPCPmHfQ==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1rXJvM-0000000EgLI-3nq3;
	Tue, 06 Feb 2024 12:47:37 +0100
Message-ID: <455bafff0d609eb182ba30a5fbf319888e0e961d.camel@sipsolutions.net>
Subject: Re: wireless-regdb key change broke crda tests after 37dcea0e6e5
From: Johannes Berg <johannes@sipsolutions.net>
To: Sergei Trofimovich <slyich@gmail.com>, linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, Chen-Yu Tsai <wens@kernel.org>, Seth
	Forshee <sforshee@kernel.org>
Date: Tue, 06 Feb 2024 12:47:35 +0100
In-Reply-To: <ZcIXGjzrZrXPCBcp@nz.home>
References: <ZcIXGjzrZrXPCBcp@nz.home>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_034742_472701_36DF1066 
X-CRM114-Status: UNSURE (   6.15  )
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

Hi,

> "wireless-regdb: Update keys and maintainer information".
>=20
> Both `git` `master` version of `crda` and `wireless-regdb` still fail
> `crda`'s `make verify`.
>=20
> Should `crda` key the key update as well?

Maybe?

But perhaps the real question is if you should still be shipping crda?
It was last needed for kernel 4.15, and even the newest stable kernel
based on or before it (4.14) is now EOL ...

After that, we had the regdb loaded like a firmware file including the
signatures, so the whole crda isn't needed any more.

johannes

