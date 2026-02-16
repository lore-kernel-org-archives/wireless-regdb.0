Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E15ECE8382A
	for <wireless-regdb@archiver.kernel.org>; Mon, 16 Feb 2026 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JL6+bMAFx5p1J9ijRAaYlR23WtrYp5cfL/KNKPcI5SM=; b=fDPo4nAQKoBqgpO8JQIOJ2bgzD
	9GR+VvSxr+HXTO7PN8q4/P/aiAcA7CGCUxKGRQL/xhjDOwbI6Vg4D3MYLOGJlSEmjwCV0AaPvPlCq
	C5j9WBBuvXmvIRwVdgvwIQFBHh6BLCT0OEQPSHJUFHbSzGGHpX9G0AG6+DQIabczroepq9F6TwS3R
	SUQolnj8PKzGVspEFYsMNCqSeh7A0uxIAlGlszceyVGZS8+G0Ws08HPTIXnj3LpMtphu8JHU+SjLX
	bUZHArRUUwJCdQRMBGT4caseAl93baxiF00S0qplWIrPYm0Eijq+GKv6/Av2I0Q/RFyG8/KKm32iZ
	Dc/RBCig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4nF-00000007ENz-2MAz;
	Mon, 16 Feb 2026 20:02:05 +0000
Received: from maynard.decadent.org.uk ([65.21.191.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4nC-00000007ENN-0y0V
	for wireless-regdb@lists.infradead.org;
	Mon, 16 Feb 2026 20:02:04 +0000
Received: from [2a02:578:851f:1502:391e:c5f5:10e2:b9a3] (helo=deadeye)
	by maynard with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ben@decadent.org.uk>)
	id 1vs4nA-001HF4-0u;
	Mon, 16 Feb 2026 20:01:59 +0000
Received: from ben by deadeye with local (Exim 4.99.1)
	(envelope-from <ben@decadent.org.uk>)
	id 1vs4n8-00000003Q2e-2kMu;
	Mon, 16 Feb 2026 21:01:58 +0100
Date: Mon, 16 Feb 2026 21:01:58 +0100
From: Ben Hutchings <benh@debian.org>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Fix regulatory.bin signing with new M2Crypto
Message-ID: <aZN3thlmaiBxYVQQ@decadent.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5r5QcnSAucTjZbio"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 2a02:578:851f:1502:391e:c5f5:10e2:b9a3
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on maynard); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_120203_077569_B9AA135E 
X-CRM114-Status: UNSURE (   8.13  )
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


--5r5QcnSAucTjZbio
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

In M2Crypto version 0.45.1, the default hash algorithm for
M2Crypto.RSA.sign() changed from SHA-1 to SHA-256.  Since the
signature on regulatory.bin uses a SHA-1 hash, db2bin.py generates
invalid signatures for regulatory.bin if a recent version of M2Crypto
is installed.

I reported this incompatible change as
<https://todo.sr.ht/~mcepl/m2crypto/389>.

There is an obvious workaround, which is to add an explicit
algo=3D'sha1' parameter.  This works with old and new versions of
M2Crypto.

Signed-off-by: Ben Hutchings <benh@debian.org>
---
Re-sending this with the [PATCH] prefix.

Ben.

--- a/db2bin.py
+++ b/db2bin.py
@@ -131,13 +131,13 @@ if len(sys.argv) > 3:
     key =3D RSA.load_key(sys.argv[3])
     hash =3D hashlib.sha1()
     hash.update(output.getvalue())
-    sig =3D key.sign(hash.digest())
+    sig =3D key.sign(hash.digest(), algo=3D'sha1')
     # write it to file
     siglen.set(len(sig))
     # sign again
     hash =3D hashlib.sha1()
     hash.update(output.getvalue())
-    sig =3D key.sign(hash.digest())
+    sig =3D key.sign(hash.digest(), algo=3D'sha1')
=20
     output.write(sig)
 else:

--5r5QcnSAucTjZbio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCspvTSmr92z9o8157/I7JWGEQkFAmmTd7YACgkQ57/I7JWG
EQniPA//dMMMws8QwuObClbXfPCje2N15jnPK9yl7uX6gDzjhiXiBiy1sUUSFewv
hNBoPa5IRl7SkT/3X6xCmQJNKx0hxS4pekzPIn2Kzd1OrktSCQHtqV5qpnW7FG74
ACWULiu3bXT5Cmh5euItHSWO0154XytXKhON7YM8jkkZfzormDycOHlON50syGyF
/YCJv19w3feZ5TNXW5PwUtjDSh5DNCSSCmvVqxQgEUQ+uDLFftmibnCcRqMKFa+p
dPlyxAngH0vS5f3LZMrxwXzS9IXGXidlK6mfaa1NVVH6IHniyWFje5JokYiKexRA
U9s+Zeyxr+RFwi++so5L1JXe5moq72KLsuTBipqkATsC/qmYN89Sk3/A1CjxUgD5
yVArwWk+CtMd3u/01UZDC+OLLdbN2jQ0YHx19ErQ9WDxeDYAC2V3RUMAq1gnoIim
94IeV0mDFR3pBb5VWZ4i1m/wvtdjH8GZiKIFKTUyin0nT8xWEeGBoDGmc9GJOdc2
1LLX5gOGbXXc4nuW6SJK4ffqp8WqbzAL1hWalialc1P3taYgNi+ft6NL+zs8Drvz
Ie3NIwtCrRzL3X77QT2mCG+rpMaZWSnlyZgX+cQzA2FF4MHJn9X5QXhZnV6ZnB3t
hf4T4Z8AVRzg5+QkeF3LauxG5O9osX9XdUCbJ29Kf55SjSTgRqI=
=BLpy
-----END PGP SIGNATURE-----

--5r5QcnSAucTjZbio--

