Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF9BC30653
	for <wireless-regdb@archiver.kernel.org>; Thu,  4 Jul 2024 07:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b7b8RZxI5TvFmd0kwOk6IN/fZNdMXrvd9T3JV+oF7aM=; b=Yv7wa+UihEll+e5OmvgjyjiBrI
	P2lyaxgOzYNIhDoqgHNLGkvqXQPg7YRAZwePR2Fhto79lJKqNaeo13BOn5tjSR6pff270IXbHnQ82
	CST7M4G3eE+kuHM7y2HykTcWDf4MFIEeMbC2GQCiXIXbeJwxrL7JYIXHWq2q3QD6LknWP67qVHPn2
	x/lSnH1+Pp8kRSB8iOFBc/x8Sr9jAwmcmPfyZcEjtU/v3Mq9Vbup3OS8CZTvKPr8Fjqma27Rwu2K4
	UzlksTsV6UZSgqah835zcthc7LyCI6yim2lbyGa2140pybsgXo8/qyOJhGiGautOxeg+CDhi9GDz/
	4aUP3qMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPH5S-0000000CTh2-20Nb;
	Thu, 04 Jul 2024 07:41:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPH5P-0000000CTgc-3iSt
	for wireless-regdb@lists.infradead.org;
	Thu, 04 Jul 2024 07:41:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E4AB662551
	for <wireless-regdb@lists.infradead.org>; Thu,  4 Jul 2024 07:40:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C567C3277B;
	Thu,  4 Jul 2024 07:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720078858;
	bh=P2X9eNg0zJhDkvS/0QSLrIv8VHwE96wJYW4/7sZgXtw=;
	h=Date:From:To:Cc:Subject:From;
	b=t5bBRKlwvSvdw00ufc9mNyP0HwCzQbzF6dHpPrqBMty4WX1SmGT0UvvuUBfxluqLK
	 5HdwIdPcLf17Mx77rAzAwhKMPeuCNioMPUMGAlbQPNUvEAkOpwnWZ4K/FqxwDOGoQV
	 S65dKZmg8BpYGQPD4nMmDXkB8bFExxehFKtMFBcCqs7hb3vhGY9Jxp6FaVxtSq+oi8
	 93JLaSHgTPVLP1gNXQcStIBAvZveTCtsxeUTzZV5Z6NkCTgjbPV8QysLWf4PIvbgvP
	 V9DXrYpM5NQlSwx8wBeBvxpUyx1Qwppd5HW6YDR2JneTWJP8fj/H2UUF8lenJAP+dA
	 sPAIAbKE+10Mg==
Received: by wens.tw (Postfix, from userid 1000)
	id 6D4915F882; Thu,  4 Jul 2024 15:40:56 +0800 (CST)
Date: Thu, 4 Jul 2024 15:40:56 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2024-07-04
Message-ID: <ZoZSCJeyLpAJhtVU@wens.tw>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dg4fhU5SQzvHajUY"
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_004100_027469_CBE08426 
X-CRM114-Status: UNSURE (   5.63  )
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


--dg4fhU5SQzvHajUY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

A new release of wireless-regdb (master-2024-07-04) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2024.07.04.tar.xz

The short log of changes since the master-2024-05-08 release is below.

--

Chen-Yu Tsai (1):
      wireless-regdb: update regulatory database based on preceding changes

Ping-Ke Shih (19):
      wireless-regdb: Update regulatory rules for Mongolia (MN) on 6GHz
      wireless-regdb: Update regulatory rules for Saudi Arabia (SA) on 6GHz
      wireless-regdb: Update regulatory rules for South Africa (ZA) on 6GHz
      wireless-regdb: Update regulatory info for Thailand (TH) on 6GHz
      wireless-regdb: Update regulatory info for Malaysia (MY) for 2022
      wireless-regdb: Update regulatory info for Morocco (MA) on 6GHz
      wireless-regdb: Update regulatory info for Chile (CL) on 6GHz
      wireless-regdb: Update regulatory info for Mexico (MX) on 6GHz
      wireless-regdb: Update regulatory info for Iceland (IS) on 6GHz
      wireless-regdb: Update regulatory info for Mauritius(MU) on 6GHz
      wireless-regdb: Update regulatory info for Argentina (AR) on 6GHz
      wireless-regdb: Update regulatory info for United Arab Emirates (AE) on 6GHz
      wireless-regdb: Update regulatory info for Colombia (CO) on 6GHz
      wireless-regdb: Update regulatory info for Costa Rica (CR) for 2021
      wireless-regdb: Update regulatory info for Dominican Republic (DO) on 6GHz
      wireless-regdb: Update regulatory info for Liechtenstein (LI) on 6GHz
      wireless-regdb: Update regulatory info for Jordan (JO) for 2022
      wireless-regdb: Update regulatory info for Kenya (KE) for 2022
      wireless-regdb: Update regulatory info for Macao (MO) for 2024


--dg4fhU5SQzvHajUY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAmaGUggACgkQOJpUIZwP
JDDUWQ/+Pw40TP5zFnePwyGJI1aoV/7KF02K86L1wAWLE7Kgzxw3QUya5aEnoLEe
akgw5cgFj5DkNpQVgjh9ur3dSlFD3X0TOiXCDh5pUGvS9iV7dGQKTJMQCjb7WQJa
x3Y4jE4o17oThrLH9oymbCQ9NUq0G18vHnY9kMSOoe7c1y2zgHlqrUsMay6xbkZQ
5QKZhd/+bRWqjCvyE1EwKO4yEQyya0ifCVvQoOHrA7YGq+Rclg4GVaKq5oR6jGP3
EX55sKK7PEL2rWU7t/6Ld7rp/l+u41crWgLiwz8SrXLtQROzGn9ier608msYmCGI
zmtEn4HKLrp9f1Pnm4gpIAEfBF4+VxCyO7u2szKKHF1aOogYJ0M+xRdxW9IYV87d
1cvmTONCtov/V7lWggpFtTmwcxOuajML46zjMe8fWnaFNFKZ+4aaHYEXMp6mosLv
F0C2jwhkOrpMpJ3K2jX+dTIA5/x/IHYBxgjUiI6xiKgjwPNgjbFWDqPRvcN5soCg
77NpU+V1YT/Ljc9hkIDMoVNJa8+680JUemMtJxeF2Anuv10FJV8CNsDc16w+wwHq
IsBE5LwdQbBnWoVOPGmCCbCzEbcztQsyUQsCiiietKRhjgLFecHWnv0bfoOT7l2L
4Lb6NdzZLFoGj0KvbBGxZ7rG2YAwJEfY5DBRQ0GgaLc+lbzdUfs=
=xYUY
-----END PGP SIGNATURE-----

--dg4fhU5SQzvHajUY--

