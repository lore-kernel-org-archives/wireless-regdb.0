Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19ADCC4828D
	for <wireless-regdb@archiver.kernel.org>; Wed,  7 Feb 2024 09:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vFcTWhGIh+fBs9c5Dk/S/smjHpUrl+Mx+Fv/zVJJBt0=; b=BSDU8p4/jIG9BsIyQq4YlKxlYB
	yImPUPflbHMG49fUal89FNGHy7RsB95t/6y7p1uFfVBFCrlqmQMHBSYyW3l1zaED2Dz87qjlLDaML
	/V/nOed7xPSbe8aw4m/83P6ARJv50dZO20nq9ivR+FCdpn/NplBEHYJi4kBkxCTiF7l6n9d5Wkt1n
	IwuQD3kMdA3DBnf2DTfXkpqpmfNb2Fpczq2colhQVazvAE2zNEOXHVL/mdrjUno2ULnhbNxf8QGC3
	ZAH1n5JiUw0TamCeRk2t+GpiJ769tTC+NJeTCyf2e1rzBoShKh5xNNF+Pr1D4WZS1ve9m33qJ7Xfx
	COrJzPVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXe8y-0000000AAfk-2vQ4;
	Wed, 07 Feb 2024 09:23:00 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXe8v-0000000AAdo-0xH0
	for wireless-regdb@lists.infradead.org;
	Wed, 07 Feb 2024 09:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=vFcTWhGIh+fBs9c5Dk/S/smjHpUrl+Mx+Fv/zVJJBt0=;
	t=1707297774; x=1708507374; b=ni5XLxOtFwrkjtDGd2AGT8I7qlCP7svokGT8sBMBu2WHu7E
	OYGqJjC4TpiZmd4IUhJK9Tyukc+A1CqkhX0m3yZ50UZ4YFiGbL+CG9lR3UxwJwojcoVEQ/N4omLhs
	wybZFRiYr9UxSthRnkS43LRGW19tpe6rJ8pejzop/YrJhC/IuRhi3Jean1NR1BeVf9oJvKfHQiwDD
	xNtiIe5hshsEo8UKwsYTq3EoxTThOrbcpFNj4I7iaBNnRUpSdVJCRHN7wFlMy7nODg1qZl4ovycFs
	kKy+yGPn/2qH1TPb3q2B4Tb6CzTtdP11QiOCQbErylrlcwJ8KDh12Mqe+Jk9T5ag==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1rXe8q-0000000Fptg-26K6;
	Wed, 07 Feb 2024 10:22:52 +0100
Message-ID: <ad425d92a0e3e8c7952d9528f23ed2eb7f34a1e1.camel@sipsolutions.net>
Subject: Re: wireless-regdb key change broke crda tests after 37dcea0e6e5
From: Johannes Berg <johannes@sipsolutions.net>
To: Kalle Valo <kvalo@kernel.org>
Cc: Sergei Trofimovich <slyich@gmail.com>, linux-wireless@vger.kernel.org, 
 wireless-regdb@lists.infradead.org, Chen-Yu Tsai <wens@kernel.org>, Seth
 Forshee <sforshee@kernel.org>
Date: Wed, 07 Feb 2024 10:22:51 +0100
In-Reply-To: <87v870hbsg.fsf@kernel.org>
References: <ZcIXGjzrZrXPCBcp@nz.home>
	 <455bafff0d609eb182ba30a5fbf319888e0e961d.camel@sipsolutions.net>
	 <20240206222757.238a24f8@nz.home>
	 <240506b19c6671cfce2587f4c1152359066146c7.camel@sipsolutions.net>
	 <87v870hbsg.fsf@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_012257_300374_ED053681 
X-CRM114-Status: GOOD (  14.77  )
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

On Wed, 2024-02-07 at 11:19 +0200, Kalle Valo wrote:
> Johannes Berg <johannes@sipsolutions.net> writes:
>=20
> > On Tue, 2024-02-06 at 22:27 +0000, Sergei Trofimovich wrote:
> > >=20
> > > Great point! `nixpkgs` uses `crda` only as a `hostapd` depend and
> > > looking at modern `hostapd` it does not use it at all. I'll spend som=
e
> > > time removing it downstream. Thank you!
> >=20
> > Note that hostapd never directly depended on crda, it just needs/wants
> > it to have the correct regulatory information in the kernel (crda puts
> > it there) after switching the country (hostapd can do that if possible)
> > and then hostapd retrieves the information.
> >=20
> > But in any case, the whole step with crda is no longer needed if you
> > have the regulatory file (and possibly signature) in place, the firmwar=
e
> > will load them as firmware files.
>=20
> I assume you mean: the kernel will load them as firmware files.
>=20
Haha, indeed, sorry.

johannes

