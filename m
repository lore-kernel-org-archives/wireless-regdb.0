Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE69CCD184
	for <wireless-regdb@archiver.kernel.org>; Tue,  7 Oct 2025 07:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wFrz8acKU4wofj4EfFDU7s5V9OM0TBB5MxYR5HCR8GY=; b=H6K8PO8N9RmT4+4MGffBhlEpGM
	SpfiaLUz30ak9mLS+bkw8qkJwPRLjS6MoSoYhob9R5CyIRpR7BsSJh58Gan4ID6WCE2lRGqakMkHj
	8QTzuhyBqYXZfAcFkOKXOMW6M9iAIHjZ18vuMuakBHyo0ZTQvBKrYG777P2BXj+JFYUD0ttn4IRQz
	QI3Mu7f9tRJgNI3/7scgM5lOOIPV4kjgcdOujjtJgrJFtK3S6xBuEC2IixuZ8uskv3fyiGOcxrOHd
	/857apw3on+yWV33ipp8mDofxYHiZzCpI35D0ficPGG/6hGhxmGtfo+l9TCHCu1G226xW0E2YakbF
	txKLpgmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v61zg-00000001RMC-1zvM;
	Tue, 07 Oct 2025 07:20:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v61ze-00000001RLp-24b5
	for wireless-regdb@lists.infradead.org;
	Tue, 07 Oct 2025 07:20:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CEDA848200
	for <wireless-regdb@lists.infradead.org>; Tue,  7 Oct 2025 07:20:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93799C113D0;
	Tue,  7 Oct 2025 07:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759821616;
	bh=ANg0JlzvM8aqpGXDQUgx61IIZukUkjaqnEBViP3JT3s=;
	h=Date:From:To:Subject:From;
	b=K4wHZ37WRQ6+QPRd4wKllLdoQK+uiU0csBjZB1UT/MIgbdQ4nYVSyaWV7zmRfD8oE
	 d1LpCRMVT2wIUMuQgSf5ru3PPwUkkG13GidRnzsTLeLtfarHTsRdYStHdGg7Hj5CGL
	 vSJ1qU6v5hRm7H7zjxelEDTmRznkO9t0yJ4fNDFRWjq50E1M5Q5yu6m/m9HNSWXOZV
	 T+DeN0Ynz7OyM1tivH/CF3ugLsvAMhiRxQXKvyStSHai+6RDvpWWgZViomRGP9OoRw
	 w0Nd2YIkMPufofPk9zgN+FzH4s01OvnlVCPvzTE3lGMTersqZdjPLKcOCmEkkzuIwG
	 K+Gwn/hGkR53g==
Received: by wens.tw (Postfix, from userid 1000)
	id 3AB095F755; Tue, 07 Oct 2025 15:20:14 +0800 (CST)
Date: Tue, 7 Oct 2025 15:20:14 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2025-10-07
Message-ID: <aOS_LlZy1h4CqkBl@wens.tw>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cwttxwilbA3n93td"
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_002018_553014_F5524242 
X-CRM114-Status: UNSURE (   5.67  )
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


--cwttxwilbA3n93td
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

A new release of wireless-regdb (master-2025-10-07) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2025.10.07.tar.xz

The short log of changes since the master-2025-07-10 release is below.

--

Chen-Yu Tsai (2):
      wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
      wireless-regdb: update regulatory database based on preceding changes

Ping-Ke Shih (3):
      wireless-regdb: update regulatory rules for Botswana (BW) for 2022
      wireless-regdb: update regulatory rules for Sint Marteen (SX) for 2018
      wireless-regdb: Update regulatory info including bandwidth for Costa Rica (CR) for 2023


--cwttxwilbA3n93td
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAmjkvysACgkQOJpUIZwP
JDB+FA/9GT8D1vgALZJ8did8nSnmhJh8EfkuyFIxspX52ZpKyYJxa80mVzMb61pA
UPW3GEZvL7tEUAAHTlzlNiG9WQwyg4W3mgXyZUCLG5FUbkL9t+uWiuGekoom62kF
YdKWblkBlsKTo/Q7z+ITagr11xdlCO5zwcxO60r+v0+AATCMbbszwJI+cPq2Zbbz
asF5gJQhpkQSv3wgCb0qeD+aDbqhsnFXrAAav34ItaNC6LlaorGb8JnQSf5sZGZG
cobwxUe54cXQLJOsemMaMGGagYVPKD6nRGzUtpXxUYYKfMmLjzzCiXTrR3mXzCTv
ihCSqJDEXVkbSzZ3yWyPpzFprhIVV4xNxkYgirtaDSzcUd0lMIXhNQuHubS5btiK
a6UjtTjgCJkHwPUmiiRb8vvZXD/qwDqgH3+az10i745QtN3bBnve+BG6g7E0IjjM
Tt/bJb9q/UgzpL3peFxo/e17/G2ISBDxo63SE/NWVL40VO8FI7auxhGYuPj8XaBy
xkATEPiWVipUoiFubHaMz/b3Al9+uVy3AquJKrmvxUiPDMvXnzvPflfrE5xp8psV
3S010wrzeRVbxFg153L49vY248f+ApHkXOYYk1MMBrgb4DTwDQXWb9EibqiLqCT0
t4k1nw/u0rvPwMubzleSdkFTBp56oA7E4saJLPZn9OoEANp1nFY=
=eKmU
-----END PGP SIGNATURE-----

--cwttxwilbA3n93td--

