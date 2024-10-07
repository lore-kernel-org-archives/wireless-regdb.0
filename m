Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68B39CFB43C
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Oct 2024 03:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tPRZhZECx2kEChkBNNEDwI7lAfoIOjbOyKv+tb114YY=; b=FDdZ+wsWwX0GAnqivmhewqDgOo
	IkvSUTcOlkx0dtp/TQK7Ow57iXSPuGnv1H4Df6yIDtgQJu0EaDwVDNRNjw4ZZieoHavDLTrl4/0SA
	qnnsgatdi/oVFTL+pBBdTXicUGwD5zBniO+Dy1O3sLSlUipoFX9ncJylT9ZeCJl3xj3gKn9n7EoSu
	ELBLpLcxztwhQG3d6bVnfOROyftNIc/YSpCOJfiRw0yQ/QSQl7+2iy5owBYw0C6dPLKwVyhOIIqPB
	1sjWtGJ2+au6fr+RxU3Ljcf7fQftMpnxOcHydoyjyp92fK0EJ7vNWL0BKVvzIL9nCY2BEomtLkzd9
	uRwm9iMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxeZe-000000019p6-2QGs;
	Mon, 07 Oct 2024 03:38:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxeZb-000000019od-1fKz
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Oct 2024 03:38:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 80DE45C562F
	for <wireless-regdb@lists.infradead.org>; Mon,  7 Oct 2024 03:38:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CA2AC4CEC6;
	Mon,  7 Oct 2024 03:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728272294;
	bh=t/ZuAZDvw8PeuV3Jy/ZNsWnPhod3ylZpUO6KHDk+E0c=;
	h=Date:From:To:Cc:Subject:From;
	b=A9hBeSZBRWPf6KMUP6xoGdFPm+uW84Rb4RvTZOvOzdmulmNnWXJs/Iw9JYKCOwn4e
	 OGTD5D+FLrjpbrqtLoJ2258Ak+x77niumrYFVnomI8CIGFjcmMG1PoG/XtmovHxPqv
	 SFpw/PlAAcdrUjh5arV/moS88vGomMR+M0pUaiyfg6SqiOg/nPvswUc//ZpoBc6D7V
	 9U3dv8vdVQ2RDJ2a19kR+Mx5QEBBDcjcQ8l8yuEyATsRA5pCod++BcqNqQdUAkUftu
	 Hg3J6aQUWr1n268RSOhDsRs9mYTREReUHZThMsIlVh19cAIDmWACl/JkteTMMtWM+M
	 vu+GHaQ5GivBQ==
Received: by wens.tw (Postfix, from userid 1000)
	id 69EAE5FA0C; Mon,  7 Oct 2024 11:38:11 +0800 (CST)
Date: Mon, 7 Oct 2024 11:38:11 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2024-10-07
Message-ID: <ZwNXo23LR-zCMSYw@wens.tw>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8Gab4obQgOyeVzc2"
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_203815_545308_024161B1 
X-CRM114-Status: UNSURE (   6.11  )
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


--8Gab4obQgOyeVzc2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A new release of wireless-regdb (master-2024-10-07) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2=
024.10.07.tar.xz

The short log of changes since the master-2024-07-04 release is below.

--

Chen-Yu Tsai (1):
      wireless-regdb: update regulatory database based on preceding changes

Gacel Perfinian (1):
      wireless-regdb: Update regulatory info for Philippines (PH) on 6GHz

Jiaxun Yang (3):
      wireless-regdb: Correct regulatory rules for China (CN)
      wireless-regdb: Update .gitignore
      wireless-regdb: Add .b4-config

Ping-Ke Shih (17):
      wireless-regdb: Update regulatory info for Qatar (QA) on 6GHz
      wireless-regdb: Update regulatory info for New Zealand (NZ) for 2022
      wireless-regdb: Update regulatory info for Peru (PE) on 6GHz
      wireless-regdb: Update regulatory info for El Salvador (SV) on 6GHz
      wireless-regdb: Update regulatory info for Togo (TG) for 2022
      wireless-regdb: Add regulatory info for Namibia (NA) for 2023
      wireless-regdb: Update regulatory info for Bahrain (BH) for 2024
      wireless-regdb: Update regulatory info for Guatemala (GT) for 2020
      wireless-regdb: Update regulatory info for Serbia (SR) for 2024
      wireless-regdb: Update regulatory info for Kuwait (KW) for 2022
      wireless-regdb: Update regulatory info for Israel (IL) for 2021
      wireless-regdb: Update regulatory info for Honduras (HN) for 2023
      wireless-regdb: Correct regulatory rules of 6GHz frequency for T=FCrk=
iye (TR)
      Revert "wireless-regdb: Update regulatory info for Serbia (SR) for 20=
24"
      wireless-regdb: Update regulatory info for Serbia (RS) for 2024
      wireless-regdb: Update regulatory info for Pakistan (PK) for 2024
      wireless-regdb: Update regulatory info for Tanzania (TZ) for 2024


--8Gab4obQgOyeVzc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAmcDV6MACgkQOJpUIZwP
JDACAg//Uqnu/+8Q6UyT5DN81U0L3BVz3b/Epccq8ii3D0VwuShGch97Kdy4lT1s
qKZs4h5uuDrD4aG4AjBb1PgEJ5Btx9X1oZCzul8sscYW8UWEk5sYTebHpSCgULE6
gYeW7/LTtnq15vrkqE0DnEWGA9QNOcboxeIUzy19nUV++keaSJuQLCuAc9Z1LWyC
C4VItmLB31XusAXySevV4srRov4eFpNsPfVh5984UFDi8WvLdmeF0lPw4TwGXzM/
4XikRaa098PPtUo/txhaJTkkpv0FnypXe4SHMhvkqZ9A2UWRt0uAeGWcF3xd71oL
tgRTW/aw7CIRCtpGtI4iH066HGG+Pmz+676T0bOxpxMt9+u/t1Jdp7IhZqBp8kIk
QYDM0sOPXFaDPuE3bupBRXxfo8663ZlhEHpE9bRUtAycI2L9EGqQJAne3bhWv0De
+RUmXOGZ+nC1Z+FRv4UpWyMCAHe76t5n1IAJL3YELTDMPDpyXRTzqHRDvtLp3VOO
HjyZo9JRa1lGLZLblyi7TKzHuWtnRPDcGfeuHB8MWkw20L+cYdkGDJ36KfYW1Z+3
3VTWshu6z5XTqNxfWXdisq6FDt+YXjio4cDo1XHiD4yiuTA0vzJSVJcqZufeO1+L
G4jbpOinjfwnDEy0Kxzf41GsEWBxziEYWAQf19tZ2fmEco6sDr4=
=ShB4
-----END PGP SIGNATURE-----

--8Gab4obQgOyeVzc2--

