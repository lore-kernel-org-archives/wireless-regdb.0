Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF50C83F1A
	for <wireless-regdb@archiver.kernel.org>; Thu, 10 Jul 2025 04:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JqzJeeqOmBgIb66gwdj3u93gtRe9huYp/kdDFTi/K/s=; b=YHKw3GvF/PNAyxsUa3JZrxZPwm
	Hsx0eZESOzAmSNM6K6ajnwdIHvtygB6Lcc3JBSwD+1olOKbix4i6GSF/RKQpR4wiqx2BOhzsvQw5q
	xP3QYuaLI+IosnQP9TKtBO7Gpigno9frb+8ltXKsvjlgw3ERn32nm16KA9LePfl0y/x++q2IX4g5/
	fLREmLxiUFxKNtZHJuB2USnTmDSZVDUx8PRfrWx6vYZM4zeRjMwUku0faA1gREni3Pr+Ttf3O1yJM
	MpqGA/fsGjYSGPM0hVdhhcKwTRLEx9fv1hIXnzItR/OFUcJ7mWxLY1JBonF54OrW+p+KcUKkBr39o
	jJKVRh7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZitm-0000000AfNI-3DOc;
	Thu, 10 Jul 2025 04:28:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZitl-0000000AfN0-2otf
	for wireless-regdb@lists.infradead.org;
	Thu, 10 Jul 2025 04:28:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 989266144E
	for <wireless-regdb@lists.infradead.org>; Thu, 10 Jul 2025 04:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3109EC4CEE3;
	Thu, 10 Jul 2025 04:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752121720;
	bh=ZsaUnOyYFhyMD3db3mLl5l9dFCIMZhZptm61KDEnSh4=;
	h=Date:From:To:Cc:Subject:From;
	b=fgPWifM9LItlDM3wQ7BEKEYA9bDssbaAsersw3sSKJZ5mBJva6gl7STJVj4ey7jzr
	 OA66OojbzM4Qu1Y7JsAp3RvIW8iQU9E3XTmzADPCh5JimJp8wXUETaDY2LP2IX8/fo
	 otpiU+HGtq24Dxp9gloYHbxnUkuiC3U3IGqlKqjvuDxwlKgXsm9b691gAPVDEgDsCP
	 mKA/CIRadednj3f6uySlJhDmRQCGBzYKOmMDKRtmMEzByAgqaFWONRwCcBGY6Otw17
	 yu8jvCgn9/7T2rkSFL4TcrIwTDa++mvZoqMPkjI703VIvToCMjGZyYQH2dW1BPEXJC
	 kT7qegbkDDsTw==
Received: by wens.tw (Postfix, from userid 1000)
	id 18F3C5F87F; Thu, 10 Jul 2025 12:28:37 +0800 (CST)
Date: Thu, 10 Jul 2025 12:28:36 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2025-07-10
Message-ID: <aG9BdH1fxJBk-5ka@wens.tw>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w+jTzmT9zPeuLXzS"
Content-Disposition: inline
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


--w+jTzmT9zPeuLXzS
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A new release of wireless-regdb (master-2025-07-10) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2=
025.07.10.tar.xz

The short log of changes since the master-2025-02-20 release is below.

--

Chen-Yu Tsai (1):
      wireless-regdb: update regulatory database based on preceding changes

Duy Hoang (1):
      wireless-regdb: Update regulatory info for Vietnam (VN) for 2025

Emily (1):
      wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band for GB

Marcos Alano (1):
      wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz

Ping-Ke Shih (5):
      wireless-regdb: Update regulatory info for Indonesia (ID) for 2025
      wireless-regdb: Update regulatory info for Egypt (EG) for 2024
      wireless-regdb: update regulatory rules for Paraguay (PY) on 6 GHz fo=
r 2025
      wireless-regdb: Update regulatory info for CEPT countries for 6GHz li=
sted by WiFi Alliance
      wireless-regdb: update regulatory rules for Bosnia and Herzegovina (B=
A) for 6 GHz

Taavi Eom=E4e (1):
      wireless-regdb: Update regulatory info for Estonia (EE) for 2024


--w+jTzmT9zPeuLXzS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAmhvQXIACgkQOJpUIZwP
JDAK+w//e7nnUlMACU7fZEB7VoNwmCveXuXzb3LscC5RqtZ5h+3qo+YgkNyUW4qV
2uNOljo6EDbHnhqVfI60YwoQL/xKhPj1OfXExtYmPoO+7ZTkTPlWayTA1uLd7IX6
HM09WWNb7vQU4EIv55sVw1M8a5/WbC6iF07Xb1Z/BjDW0n/hVSinatUT8WMeZWNg
DcyyhcMdXVY6Az4Zrpq641/Vb8RP2fruHEz2HXMcDGnUWJjp6doDVopQW0TA8dpp
0IaX64d7a2RWBK8NwGW+5oN65mCx1eF22sz/Oy1z/6+eq+M1+Vscf6xgJoowPYtv
V4v6EUVx20nQdItkH+tlEg+NXslz4Nhh4UPgYCEcksq7txBtQtN6U8J/a5rF8imS
RM55TjFNVVx+XOUFdqRvic3RgmIknwmzaKy576yeFlJitISGU77D39j83wu4VCLA
zmSscdLKK945E4okwgdO6das3BZw9YbNmcecdztoVMw40gFVITeyWvNVKZgSTMar
CPfiPSYnkknNahliOllb/5PG2F/tFS89CM0ZGbvnidrH4FxB/+zfoXfF60Q1FeOr
RWdK8whF+9J1uQvTSQdrV0CHWd/RxNnIu5xR1/OmcVOJ1hFfBBG5Y19wkw3sj3Ze
VYh8sEtbz5fMYuGhU6TaIl7pWX6sGjUZjK8MaEGuKwbe0OwUJ6I=
=8zUb
-----END PGP SIGNATURE-----

--w+jTzmT9zPeuLXzS--

