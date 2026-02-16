Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2CC8E8382E
	for <wireless-regdb@archiver.kernel.org>; Mon, 16 Feb 2026 19:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DSN7PiLtx+ANcreT/HRfr1QMbigDkFx5l4kRCDWolDs=; b=Cufaa920ZzDzuqpxBKbVgU5mGD
	tHwxfkh/O10y09mZPnXQh1/X8rAZdQX9zZmV67lHhiFKbhp5WyGW+hB5z9K2VxdkMdUgoj5LOOCOw
	X8tEReEj/+lKW/0xrVELEh9EKQytPaypPq15/Q33DELbtri55eqyFTl0kV278jJHxot9mbtvPbRmt
	AFC/vGehAiwKMlTKLuKD4z5GARXEG/I4aqAX8spgogLONJJxuExQRzkqP7CTLBEBwVamlAOb8/1+D
	c30n/tPVSePXa9UgZX8U3lUWZLuCdnu5HjoJmZTMAI0cz+xLeLcHeJxAPGKCHJxb7IYII3wqcaY3I
	pQPzZ3KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4kC-00000007Dsm-34wP;
	Mon, 16 Feb 2026 19:58:56 +0000
Received: from maynard.decadent.org.uk ([65.21.191.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4kA-00000007DsM-0K0O
	for wireless-regdb@lists.infradead.org;
	Mon, 16 Feb 2026 19:58:55 +0000
Received: from [2a02:578:851f:1502:391e:c5f5:10e2:b9a3] (helo=deadeye)
	by maynard with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ben@decadent.org.uk>)
	id 1vs4k5-001HC7-2d;
	Mon, 16 Feb 2026 19:58:48 +0000
Received: from ben by deadeye with local (Exim 4.99.1)
	(envelope-from <ben@decadent.org.uk>)
	id 1vs4k3-00000003Q0C-20nf;
	Mon, 16 Feb 2026 20:58:47 +0100
Date: Mon, 16 Feb 2026 20:58:47 +0100
From: Ben Hutchings <benh@debian.org>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: wireless-regdb: Fix regulatory.bin signing with new M2Crypto
Message-ID: <aZN29_ghakDPwhFG@decadent.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uNzBFFrzIRlQrca1"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 2a02:578:851f:1502:391e:c5f5:10e2:b9a3
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on maynard); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_115854_138178_D2BA1290 
X-CRM114-Status: UNSURE (   7.77  )
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


--uNzBFFrzIRlQrca1
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

--uNzBFFrzIRlQrca1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCspvTSmr92z9o8157/I7JWGEQkFAmmTdvIACgkQ57/I7JWG
EQkZyA/9FkM2E1/bNCioIRzrNJn2krbNJADmYPYVC/VOVMUgaksQr9YTBmx8amMf
fsZlIP3vLH5OTNylhy4DowK4jgsoJrH8lexnE6qfjJ6PjfKKhmZpXn0tnb1JAcD2
owEDoFy5zaLhbsF+1zNXaxAgh288ZDo8OQbcpAr/KelPltvu0WcwVlT5QmM8PNT0
iFBb8OVbsZxVnQdMG6yax6q0OnzyrNDeZJvXnWJQwv0WfLHahO4Yhv29d1IfVZJ/
prWOQFjFZSi9k7exOYK5So35jlw0xKAsTE5Je4j6DD6kWNLfsXXDD5eelMWSF0T9
e7cFE3+oenS6YrMoxCTrbwSkIUaDBspGH8DE6jpQ5YgpsUgX2t2xuBpwBrMK1GKa
NokpapAHa91Lj8t4ZyqeXagVQlbIeSNgZNOC6NCvP3hJnPm/9fh6C1WD6WlUa7Ag
XtVh23sQUpbFxpD57R1vSRGoGN35OseW4c5L2i9dB9O9Gn90bCmGNWhx02G9C/QI
JE4lHrRidAAY+NVHn21wCymr+ucCyW/Q9WRTrAd+GzVgusGCJQfeyfg0vbDSHJQ1
Urq+yLBa82FAiElmf/aMPKru6lUfYrW2BT/rn3LfeTjQQZk+iFfGb3torxiPOGMY
HWimOkEmqUcKvIBsqPv8X5mUFrJeNwI0dMFBSFQqFH1gsqqXA9c=
=+UIr
-----END PGP SIGNATURE-----

--uNzBFFrzIRlQrca1--

