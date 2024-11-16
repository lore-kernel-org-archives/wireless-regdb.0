Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6EE1D68BEE
	for <wireless-regdb@archiver.kernel.org>; Sat, 16 Nov 2024 13:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ALgkoi9RcsRjDVsEeYKTYijptA6CODeZfsNXrOco70=; b=wqKA4j5SAaJnZbiZRnT4BD71Rc
	NtEiCDxJYzrSstfHXVp7o/GA0pLkhKgOkHqUjc7h9ZO+N/F9NOHf/XBfv6LQO99HmMD/H/P9B2UFH
	TisFmyKl9cFyXmUGs6fSgOxamd/3CMgJvUlpzI3vzZrll7U/Ltneqbz9ALSpEHXFTH9yjvB+5OYZe
	yXnJUyt2a1jD+CDENC1wsd1kK2UCi45kmx9xoI5Akp1KLWL7cmfMKlkBIgA0ZIq9jAfHLaFs2W0Oh
	Icz5E2eRaYYE1ug6ALARhZ4Wg6MLU9LTu472FQ0GGcXh9d1fIt6CgAgWABJIK7oT69nlYuFdAXifw
	+x3t2YoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCIuv-00000005eke-3who;
	Sat, 16 Nov 2024 13:32:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCIut-00000005ek2-21dG
	for wireless-regdb@lists.infradead.org;
	Sat, 16 Nov 2024 13:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=8ALgkoi9RcsRjDVsEeYKTYijptA6CODeZfsNXrOco70=;
	t=1731763964; x=1732973564; b=xHYFGgTo8GhZ/bz0prqOphqAsgiCmVQFON2k0zC+E6pgvyP
	Coi7NGbUgS6VYmR5UOmWH2NzwmR6CNYAiW3Fs0vkWKKZlYedhtyf0K0AcT9S3RxymrO81FCAwjTTt
	eWI9MMBvWtAeBa+BUJ2XqF0DhT+4OlOwRpMU2cG4M7wxyAXuoYK2+OMW+ggDnzZpNnmw7Zik7OYHH
	Wmpi8hsocnJJt4hx5BHlgu7s3Yofb5kwNTE0M5oxBtK3G1YKa976MnZGSOVQKRbvNMfitrNKV0u64
	c2p0DLyOSVDfh7Oi8eLDNFjKAI9+DUT4yrJaKiwtja5Zg/RNdAJt3Px3651sTYNw==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98)
	(envelope-from <johannes@sipsolutions.net>)
	id 1tCIun-00000006OV0-0dg1;
	Sat, 16 Nov 2024 14:32:41 +0100
Message-ID: <dc669d8b27bd3073070b4121388d6487d5e111db.camel@sipsolutions.net>
Subject: Re: [PATCH] wireless-regdb: assert and correct maximum bandwidth
 within frequency difference
From: Johannes Berg <johannes@sipsolutions.net>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: wens@kernel.org, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org, combuster@gmail.com
Date: Sat, 16 Nov 2024 14:32:40 +0100
In-Reply-To: <CAHrRpukU-6MOoDsX+HRQ1XbdvoDMpUDuR4s=J-_9ODm3jreU9g@mail.gmail.com>
References: <20241116082417.8720-1-pkshih@gmail.com>
	 <ca8e16a2dbc9c38e5bf2f3e426a2132393b381be.camel@sipsolutions.net>
	 <d783a6d6a429feec6763077126e76445b6f186e2.camel@sipsolutions.net>
	 <CAHrRpukU-6MOoDsX+HRQ1XbdvoDMpUDuR4s=J-_9ODm3jreU9g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241116_053247_538834_77486AFF 
X-CRM114-Status: UNSURE (   6.84  )
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

On Sat, 2024-11-16 at 16:58 +0800, Ping-Ke Shih wrote:
>=20
> > Anyway this probably doesn't fix the user's problem, it just makes it
> > rejected when compiling already ;-)
>=20
> Honestly these mistakes were made by me. I should fix them.
> Since rtw89 still use wireless-regdb, I will keep updating the
> regulatory especially lack of 6GHz frequencies.
>=20

It's nice that 6 GHz is reaching more users :)

Sorry about my earlier comment, I somehow managed to misread the patch.
Of course this fixes it, and I see they already tested :)

johannes

