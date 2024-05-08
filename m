Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B5EC25B4F
	for <wireless-regdb@archiver.kernel.org>; Wed,  8 May 2024 03:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ALQZNr/totJZhKsOhifov6JLoD7v59//XCalCj7kRnk=; b=Igh1OA/wOsJfzF59fV9uHk76rn
	y1RZxOZcI98bVJQQimuRXRXXWkg8G+sq84MxQrHUDCHfgPE2oMIgH925xrCU3VvOh1bA5bDbvkuss
	q7HgxOIT/pNyihmslkkLPcqhwwld02/9Io3aUvHWoE0V59oWKmnSpGZxuKOybwclpvViHzDIJbjR7
	YWy1o2GnqthP7NVlVYJTam4Y7BZLTAXfLjo0hdDfX6A6mBZc6B/bYxZ8A47M5kZsD1f5TZu8KmJ4V
	1kvfbtwj/BsQmzqJxbOgrpRu7Y5eBJS3J4n6i2DXiQx56wk7AytJ4k/bZCl+cqK5xOsCx2TMt+2cO
	E6W9pCfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4XZf-0000000Dq64-3vMf;
	Wed, 08 May 2024 03:02:31 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4XZb-0000000Dq3S-2l0S
	for wireless-regdb@lists.infradead.org;
	Wed, 08 May 2024 03:02:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E7929CE118B
	for <wireless-regdb@lists.infradead.org>; Wed,  8 May 2024 03:02:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F0E7C2BBFC;
	Wed,  8 May 2024 03:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715137344;
	bh=90oJydsi78W8YIejrIj/zbsBZsNZoeGC4uJZLq4O3Uc=;
	h=Date:From:To:Cc:Subject:From;
	b=udqOH7L7nh3uOT+qRVL3GJ9fsEQSLnQz6H6dvvYbzifWDoMPzvpIv45a1yh9Lxqdi
	 ddOiedhOZwU4BQWUMAr3dZJczzOtzFOMdqWoQAeyZKQp0rg7cja7dULbZLk3tzDquj
	 PYPA4AzLwez5sYDZDB3H/IT0Vxa36QGixLZFUdzfVvyvefb7tqGxanEMnq7QZjN5ju
	 AkrVGMqPNhrx7LmoO5FQWhZMM2ePe2PhtPu6BYdup9foY9q85s+hx35NFUcwhIuXEv
	 murIBfhwzpXrQz0UIHL0InCwU/bbxq6EFgUiv6p5QhA2ZzA3GYlvzyiJWl4/T78+lT
	 knENrvEYUQt1g==
Received: by wens.tw (Postfix, from userid 1000)
	id 136CB5F9F2; Wed,  8 May 2024 11:02:21 +0800 (CST)
Date: Wed, 8 May 2024 11:02:21 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2024-05-08
Message-ID: <ZjrrPdr1WBCEd1oI@wens.tw>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/PxTT5WPElcuA/tU"
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_200227_904730_9C781AE7 
X-CRM114-Status: UNSURE (   5.98  )
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


--/PxTT5WPElcuA/tU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

A new release of wireless-regdb (master-2024-05-08) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2024.05.08.tar.xz

The short log of changes since the master-2024-01-23 release is below.

--

Andrew Yong (1):
      Revert "wireless-regdb: Update and disable 5470-5730MHz band according to TPC requirement for Singapore (SG)"

Chen-Yu Tsai (1):
      wireless-regdb: update regulatory database based on preceding changes

Deren Wu (1):
      wireless-regdb: Update regulatory rules for Taiwan (TW) on 6GHz


--/PxTT5WPElcuA/tU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAmY66zwACgkQOJpUIZwP
JDAvDQ//f6Uhz3m6tv4poNGgnQSYb1ed9y/p5lVV6uwHKz7WoLrgqQue+CO3FZxM
AxEzaPszFLZZTWQNRhC8HW1oqkWC9mw0Z+XXRTkgzDArFZa+TmNpd9aGKSuYt5C1
Grxn0JRnsxGQQrc7OwRL6MI6XYmffi8HMWzJFazIU9MDNXSfdLc7tAE+agYyIHfi
BmEDjWvDzI70wegoMVUqS/0cBRr+czAPEexFQzxPKfdQXtOHj5i5/6DXy3t561EG
5J8ucjs4PZnTS7/+Nrhl83nyOEvR8JgHI2Xd9Y7DZGLTOtKfxwDQR+5COa9yfJTi
gich2ALiZ1Kr4ABJjN1mhjxNrPwy/H69ZWuXX8yrpH1giTXJgJAMbbMYyUMbHDis
a9+Et35UOO7uVs0rOh25U4hArnn63ij9g6Ke62LCgKANMmy/ljRdneNT3Ga5F3oe
IVO/00NUc2pO159S4SEEcnD4/yETgRoDEyu2CT7RKH+DQWzHRKBHruDOwIOCCU4L
7mg1jp0gA2Oe8z7v2rFfYU7qrePU9bvR6Xgf9BbngDcv4INQU+anBzjaUFVENqTJ
m//XZMJ9/lTQToeKJqwSYFFURLVlLHsS0S00y81IesjTYis70bWEjnCmdUGN6Na0
MTm7VrcNEOidHEbdzO+WJZhB9xuAME9fleCF6ot8NJwrkT1HFAs=
=p0VT
-----END PGP SIGNATURE-----

--/PxTT5WPElcuA/tU--

