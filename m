Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7E9E8382F
	for <wireless-regdb@archiver.kernel.org>; Mon, 16 Feb 2026 20:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=6fybFCYYalG12JAPtMXr8duPeP2N9xbHSsA57UilzJM=; b=ZVwLkJh5szQ1oa
	TVXLTFWcp0TTT9EUNgLemtTHJUcIhoifLdgo68VzP5sx0KcTHQTha5dpJhXfYW3NqIaPQc20XxKS1
	goJMfk8tnjpKk5ZnFskGiG56z5aCI3q+mvksp+s5hNMjsGmeJ9anw//TAQ5O3SX7O2FAuQ00xss1f
	j+qwf/voZglz97yXLmbQcGjjXNTgHr5EST0cZFdbAYcDR4GJeYnkyWPeP/qp7O4uWRmS1bBgQcVOz
	RWD7hHMR3nz66JNrbi1RufIAwWo6Qji055BKAyLuXQjAW3bMoDxh4Vrx2D0WAQT6+631Ma9/arjjn
	pvb7qo0K3J8DPhqt80wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4om-00000007ETZ-3suI;
	Mon, 16 Feb 2026 20:03:41 +0000
Received: from maynard.decadent.org.uk ([65.21.191.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4oj-00000007ETC-427C
	for wireless-regdb@lists.infradead.org;
	Mon, 16 Feb 2026 20:03:39 +0000
Received: from [2a02:578:851f:1502:391e:c5f5:10e2:b9a3] (helo=deadeye)
	by maynard with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ben@decadent.org.uk>)
	id 1vs4oi-001HFy-2P;
	Mon, 16 Feb 2026 20:03:35 +0000
Received: from ben by deadeye with local (Exim 4.99.1)
	(envelope-from <ben@decadent.org.uk>)
	id 1vs4og-00000003Q4u-0o50;
	Mon, 16 Feb 2026 21:03:34 +0100
Date: Mon, 16 Feb 2026 21:03:34 +0100
From: Ben Hutchings <benh@debian.org>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Replace M2Crypto with cryptography package
Message-ID: <aZN4FltUUWKUh6rp@decadent.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+uwxLKIdrtAFiZHR"
Content-Disposition: inline
In-Reply-To: <aZN3thlmaiBxYVQQ@decadent.org.uk>
X-SA-Exim-Connect-IP: 2a02:578:851f:1502:391e:c5f5:10e2:b9a3
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on maynard); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_120338_026279_76F1CF8A 
X-CRM114-Status: UNSURE (   7.63  )
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


--+uwxLKIdrtAFiZHR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

M2Crypto is deprecated by its maintainers in favour of the
cryptography package.  Update db2bin.py to use that for signing
regulatory.bin.

Signed-off-by: Ben Hutchings <benh@debian.org>
---
This applies on top of the preceding fix for M2Crypto usage, but I can
squash them together if it's preferable to switch directly to
cryptography.

Ben.

--- a/db2bin.py
+++ b/db2bin.py
@@ -2,7 +2,6 @@
=20
 from io import BytesIO, open
 import struct
-import hashlib
 from dbparse import DBParser
 import sys
=20
@@ -125,19 +124,18 @@ if len(sys.argv) > 3:
     # Load RSA only now so people can use this script
     # without having those libraries installed to verify
     # their SQL changes
-    from M2Crypto import RSA
+    from cryptography.hazmat.primitives import hashes, serialization
+    from cryptography.hazmat.primitives.asymmetric import padding
=20
     # determine signature length
-    key =3D RSA.load_key(sys.argv[3])
-    hash =3D hashlib.sha1()
-    hash.update(output.getvalue())
-    sig =3D key.sign(hash.digest(), algo=3D'sha1')
+    with open(sys.argv[3], 'rb') as key_file:
+        key =3D serialization.load_pem_private_key(key_file.read(),
+                                                 password=3DNone)
+    sig =3D key.sign(output.getvalue(), padding.PKCS1v15(), hashes.SHA1())
     # write it to file
     siglen.set(len(sig))
     # sign again
-    hash =3D hashlib.sha1()
-    hash.update(output.getvalue())
-    sig =3D key.sign(hash.digest(), algo=3D'sha1')
+    sig =3D key.sign(output.getvalue(), padding.PKCS1v15(), hashes.SHA1())
=20
     output.write(sig)
 else:

--+uwxLKIdrtAFiZHR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCspvTSmr92z9o8157/I7JWGEQkFAmmTeBYACgkQ57/I7JWG
EQmwUBAAsQYVWUgDmqv3A71GUQEC4GfToWFarALWU/0yTAVYeymowHPG6L+qR+Xo
sagMGKQS2dX65eVlk2ICVe8QW+dbApBPI/QjgXPW7rdP1I8BmT90x46NyG7IeQQV
ua0BruwReSyvD4RqsxRFo2gZ51OYJ7hcIqvYV3YgZ9jMWok0zHEa+uWo2Um8LDdS
A0iIdXDXob/bzcHOVTYgb21mrVXJBzOzQv4bmoxy0uO7CGgj7gOfchZblktRKym6
N6IMMBfvGxSjWsJokCVW/KnjNDbzTfr90lKoeSLYsY+6eVbNf+iclBP8VIkjkipI
eF5XIoL1wA+bAKfE7S+qVMdX73To+PQJOk+JOPau6y0tikhUzY83QM/IvvipPYjC
NDWivoZKcWWUJBXCmm+x4k6E3sY6G9lHD1mBGsWOwLetK1CYdjrDd664lnN6Z2Io
IMJ1iMG0fpanI/gIuo/rTcr/h17Qa9Qn50Vw4/EaU8u25kCixK+J+fzrPXdefudQ
EXY/DKJAId0oa5jIS0QBCWy5PU+kDJK8cZuWP2KyWvvsZZXeUO3j5o8B/a67WEso
aucCvVkC9s7KzQq9CVJJsXiWEHOUhT97yOAejYwZEdeZQHv+9iGHe1PNRU8PyVgE
KPkbZRAlA52VSfovUS/7ixM7LAUODieDiDSFtlkXN80GPPkAxbQ=
=MGXt
-----END PGP SIGNATURE-----

--+uwxLKIdrtAFiZHR--

