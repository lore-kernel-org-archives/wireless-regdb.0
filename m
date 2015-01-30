Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qa0-x22f.google.com ([2607:f8b0:400d:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHIld-0008EP-Bz
 for wireless-regdb@lists.infradead.org; Fri, 30 Jan 2015 21:06:18 +0000
Received: by mail-qa0-f47.google.com with SMTP id n8so21836317qaq.6 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Jan 2015 13:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-type:content-transfer-encoding;
 bh=ryYKRCTBbaAOzE27DQOfSKZ9qSWFvPLzGxNPzE11A6Q=;
 b=VLZN2cEyhEglWVp607w2MXpTYNPGFWmhpePn0E0mvYlQqhoPrRVpRtl2iu4aVxIZcA
 v5Ku7XZst3UEbdmTQqBLVIserxzE80Zw6knOiywMakPyi4FbeZI3onwCvsq4Ymg9Zg5m
 RUd1tZAK+OMfMckQdCVYdE2ZD9nqjy56XhmgPdkiZ50wcXx6ZREQP4JowlIkiuDZyB8u
 3RFEdoh0Z9vo15amoRSlYKyfqeKXADNWAqdTO0GgBIK+HT4UDG2bE5IWPcVyvxU725ky
 4P6HOKGkmuTjHDSeHZThTzzXadLe+NuMjrquhVNmpz0SPQ9m1xP4+3tz27Ju5obKiGgs ClWg==
Received: from [192.168.1.10] (pool-72-95-142-204.pitbpa.fios.verizon.net.
 [72.95.142.204])
 by mx.google.com with ESMTPSA id v65sm11140681qgd.20.2015.01.30.13.05.54
 for <wireless-regdb@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Jan 2015 13:05:54 -0800 (PST)
Message-ID: <54CBF23A.70503@gmail.com>
Date: Fri, 30 Jan 2015 16:06:02 -0500
From: Rick Farina <sidhayn@gmail.com>
MIME-Version: 1.0
References: 
	 <CAB=NE6UM-=ARNqwyxk0a_qve+9Ndk1znsm+FjfXq+xenCkTvCQ@mail.gmail.com>
In-Reply-To: <CAB=NE6UM-=ARNqwyxk0a_qve+9Ndk1znsm+FjfXq+xenCkTvCQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [ANN] crda-3.18 released
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Not sure if I messed up somewhere, but I can't build this release:

make -j5 -l5 PREFIX=3D/usr SBINDIR=3D$(PREFIX)/sbin/
UDEV_RULE_DIR=3D/lib/udev/rules.d REG_BIN=3D/usr/lib/crda/regulatory.bin
USE_OPENSSL=3D1 CC=3Dx86_64-pc-linux-gnu-gcc V=3D1 all_noverify
./utils/key2pub.py --ssl pubkeys/linville.key.pub.pem
pubkeys/sforshee.key.pub.pem keys-ssl.c
x86_64-pc-linux-gnu-gcc -Os -mtune=3Dnocona -pipe -frecord-gcc-switches
-march=3Dnative -O2 -fpic -std=3Dgnu99 -Wall -Werror -pedantic -Wall -g
-DUSE_OPENSSL -DPUBKEY_DIR=3D\"/etc/wireless-regdb/pubkeys\"
`x86_64-pc-linux-gnu-pkg-config --cflags openssl` -DCONFIG_LIBNL30
`x86_64-pc-linux-gnu-pkg-config --cflags libnl-3.0`  -o libreg.so
-shared -Wl,-soname,libreg.so regdb.h reglib.h reglib.c keys-ssl.c
keys-ssl.c:2:1: error: unknown type name =91BN_ULONG=92
 static BN_ULONG e_0[1] =3D {
 ^
keys-ssl.c:7:1: error: unknown type name =91BN_ULONG=92
 static BN_ULONG n_0[32] =3D {
 ^
keys-ssl.c:8:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x63a2705416a0d8e1, 0xdc9fca11c8ba757b,
  ^
keys-ssl.c:8:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:9:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xb9c06510cbcb35e3, 0x39e3dfebba941433,
  ^
keys-ssl.c:9:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:10:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x7bbae38a6c1fce9d, 0x205a5a73fefabba7,
  ^
keys-ssl.c:10:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:11:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x53ea3e5a97839a2e, 0xfec8f5b661dc0170,
  ^
keys-ssl.c:11:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:12:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xefe311d8d29a1004, 0x8c6a92d0a5156bb8,
  ^
keys-ssl.c:12:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:13:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x9067cc767a6eb5cc, 0xd103580b0bd5b1ff,
  ^
keys-ssl.c:13:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:14:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x4a563e848f3a2daf, 0xacd7cadb46b0943e,
  ^
keys-ssl.c:14:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:15:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x5fabb688ebd1e198, 0x7e70c1d35916f173,
  ^
keys-ssl.c:15:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:16:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xaaa8acc85d6ca84e, 0x1685c157e20fd4dc,
  ^
keys-ssl.c:16:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:17:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xf9e9c9c7ad933f64, 0xbe6272edc5f59824,
  ^
keys-ssl.c:17:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:18:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x585d9a7d53447bd1, 0x011a5b3f5b3bc30d,
  ^
keys-ssl.c:18:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:19:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xf312b966ffbbf0e9, 0x2203fb37482c131b,
  ^
keys-ssl.c:19:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:20:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x3e7c157d0dc38eab, 0xb04de1d6b39fcc8d,
  ^
keys-ssl.c:20:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:21:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x4d9f013707fc0d84, 0xb075a241e13b5ac5,
  ^
keys-ssl.c:21:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:22:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x0a9a9d488e56e153, 0xf2cff393f97054eb,
  ^
keys-ssl.c:22:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:23:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x2a2ead68376024f2, 0xd657997188d35dce,
  ^
keys-ssl.c:23:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:27:1: error: unknown type name =91BN_ULONG=92
 static BN_ULONG e_1[1] =3D {
 ^
keys-ssl.c:32:1: error: unknown type name =91BN_ULONG=92
 static BN_ULONG n_1[32] =3D {
 ^
keys-ssl.c:33:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xa066f4dac4ff951d, 0xe6e0d246d5e1c45f,
  ^
keys-ssl.c:33:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:34:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xe7fb461684e3c7a1, 0x11151b7af6e26899,
  ^
keys-ssl.c:34:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:35:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x6c3f93fbc5ee7852, 0x96790b2bd0d8dec8,
  ^
keys-ssl.c:35:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:36:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xb1722bf4a129207c, 0x3673e797044137b1,
  ^
keys-ssl.c:36:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:37:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x183277072912661e, 0xd37e005c9a5ed820,
  ^
keys-ssl.c:37:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:38:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x655b7f257568a1ea, 0xe731f136a29c63c6,
  ^
keys-ssl.c:38:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:39:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x3036d253eeecac1e, 0x85ef7a7fa5cb80c7,
  ^
keys-ssl.c:39:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:40:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x2ad91b7345ebba27, 0x715756f6ccd3df7d,
  ^
keys-ssl.c:40:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:41:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x28900fac36fa6823, 0xf1026fe9469b935f,
  ^
keys-ssl.c:41:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:42:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x98b8d15621f0531f, 0x180b2895b22dea88,
  ^
keys-ssl.c:42:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:43:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x8ad9fe76a9fd602d, 0x510cd14519da1044,
  ^
keys-ssl.c:43:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:44:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x0b09f9681184fbca, 0x578b96161cfd24d5,
  ^
keys-ssl.c:44:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:45:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x3b1b0817146b61c4, 0x205bd497323d718b,
  ^
keys-ssl.c:45:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:46:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x2d7e66f41eb31270, 0x389f7c6a52c2032a,
  ^
keys-ssl.c:46:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:47:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0x7c68dd6f3fd9d759, 0xac7ea58371257e90,
  ^
keys-ssl.c:47:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:48:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
  0xf239d7662c413815, 0xb540e39c28843903,
  ^
keys-ssl.c:48:2: error: overflow in implicit constant conversion
[-Werror=3Doverflow]
keys-ssl.c:53:19: error: field =91e=92 has incomplete type
  struct bignum_st e, n;
                   ^
keys-ssl.c:53:22: error: field =91n=92 has incomplete type
  struct bignum_st e, n;
                      ^
keys-ssl.c:64:2: error: field name not in record or union initializer
  KEYS(e_0, n_0),
  ^
keys-ssl.c:64:2: error: (near initialization for =91keys[0].e=92)
keys-ssl.c:64:2: error: field name not in record or union initializer
keys-ssl.c:64:2: error: (near initialization for =91keys[0].e=92)
keys-ssl.c:64:2: error: field name not in record or union initializer
keys-ssl.c:64:2: error: (near initialization for =91keys[0].n=92)
keys-ssl.c:64:2: error: field name not in record or union initializer
keys-ssl.c:64:2: error: (near initialization for =91keys[0].n=92)
keys-ssl.c:65:2: error: field name not in record or union initializer
  KEYS(e_1, n_1),
  ^
keys-ssl.c:65:2: error: (near initialization for =91keys[1].e=92)
keys-ssl.c:65:2: error: field name not in record or union initializer
keys-ssl.c:65:2: error: (near initialization for =91keys[1].e=92)
keys-ssl.c:65:2: error: field name not in record or union initializer
keys-ssl.c:65:2: error: (near initialization for =91keys[1].n=92)
keys-ssl.c:65:2: error: field name not in record or union initializer
keys-ssl.c:65:2: error: (near initialization for =91keys[1].n=92)
keys-ssl.c:63:22: error: =91keys=92 defined but not used
[-Werror=3Dunused-variable]
 static struct pubkey keys[] =3D {
                      ^
cc1: all warnings being treated as errors
Makefile:118: recipe for target 'libreg.so' failed
make: *** [libreg.so] Error 1


Thanks,
Zero

On 01/30/2015 02:26 PM, Luis R. Rodriguez wrote:
> A new release of CRDA has been released, this might be the last since
> we have some ideas of how to just shift this functionality directly
> into the kernel and in the future may not need any userspace tool
> other than to help debug stuff perhaps. The major thing here is
> trusting Seth's new key as he is now the maintainer of the
> wireless-regdb. Other than this it also add AUTO-BW rule support,
> parse/print of CAC on db2rd, and fixes a compile error. This release
> goes signed with my new PGP key.
>=20
> Thanks to all who have contributed. There release page for CRDA:
>=20
> http://drvbp1.linux-foundation.org/~mcgrof/rel-html/crda/
>=20
> The v3.18 release:
>=20
> http://kernel.org/pub/software/network/crda/crda-3.18.tar.xz
>=20
> The wireless-regdb release page:
>=20
> http://drvbp1.linux-foundation.org/~mcgrof/rel-html/wireless-regdb/
>=20
> As announced by Seth, the new wireless-regdb is:
>=20
> http://kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2015=
.01.30.tar.xz
>=20
> The shortlog of this CRDA v3.18 release:
>=20
> mcgrof@garbanzo ~/devel/crda (git::master)$ git shortlog v3.13..v3.18
> Janusz Dziedzic (4):
>       crda: sync with latest nl80211.h
>       crda: add AUTO-BW rule flag support
>       crda: simplify text parsing for country/rules
>       crda: db2rd, parse/print CAC time
>=20
> John W. Linville (1):
>       crda: Add DESTDIR support in install-libreg* rules in Makefile
>=20
> Krishna Chaitanya (1):
>       crda: Fix the linking order to avoid compilation error
>=20
> Luis R. Rodriguez (1):
>       crda: document contribution process using the DCO
>=20
> Seth Forshee (1):
>       crda: Trust regulatory.bin from Seth Forshee
>=20
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb
>=20

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

