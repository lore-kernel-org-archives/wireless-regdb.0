Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
 List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
 Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=DFPe0cfzGXB+UB1KMMm+FVMGBYd6b6uZh88SOWg+z9k=;
 b=GZVZpDoHeOw0wNv+atqfJHlSy
 K8i7/CVXg2vqQrrwTMisaWr3SiLXEAWDrfcu4ncw3HJKxn+iFdbGqUINh8cKZs9Ts1VcUeAcbYHKt
 6eGvxDBBwMmJdmDItUiNezKxYMYdiyVOYGAch3pzd6mIiDFjIKBQSHZ5MHHiit+0ylio+r3PM1KpP
 h7J0UFLkrMNru2KBRuyML2ARtN3VtKGLALPYrWfOlmiKB+lUcIq07Y08oyxG3dYfZcHay7cJ/rmhv
 xyFlr/GJjz/0VPoue+HI7xpsK7D3AMW/ePOZ5EkIEshnRfkhdgRX4m5r5wcrZqrvTWs/8xVhvwDDd
 d5U6tnoCQ==;
Received: from mail-wr0-x232.google.com ([2a00:1450:400c:c0c::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dkmLG-0003Qf-1s
 for wireless-regdb@lists.infradead.org; Thu, 24 Aug 2017 07:14:16 +0000
Received: by mail-wr0-x232.google.com with SMTP id f8so7031309wrf.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 24 Aug 2017 00:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openmesh-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
 :references:mime-version;
 bh=lZXQLKJ2ib/oM9i9eh7YU0Yb2fohJwcecIju2+6ugUI=;
 b=XY+4T+cpZl9OgQNJegWXKp8fIPd9w0LMYBecsOorcTZLpA8aSV+fW06LaLH1mnFjmT
 52y3peUemf5FK21eMo5r4AyFHnIUhRyz51GUiTHfWgusRg6ev7FEf4xppcvbF7Ci8s8s
 3kFH+6tBPaRC58h3S/0J1ADC5OEN0plGK+jE3cYpiuyf67guMNIYvuEIf0q8SlzC7sDR
 U1FfD3RD5UmEokvihRbHMEM9PGQr/Sc6ln1xCkAFaD8+K4tWUsrzd/gT/nkGvMjzJHDG
 1cGR2dlXI90nTJDw/RdkO7sDDy+YTYMrr5ak9FPIt16zNA01pgAGnE11LJLEKZHrQzUm
 94Zw==
From: Sven Eckelmann <sven.eckelmann@openmesh.com>
Date: Thu, 24 Aug 2017 09:13:42 +0200
Message-ID: <1684208.h1AJVyQWH7@bentobox>
In-Reply-To: <20170823205240.ycyrszsvjugtosdi@ubuntu-xps13>
References: <20170807081950.13327-1-sven.eckelmann@openmesh.com>
 <20170823205240.ycyrszsvjugtosdi@ubuntu-xps13>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Singapore (SG)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4496001358747615761=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, simon.wunderlich@openmesh.com
List-ID: <wireless-regdb@lists.infradead.org>

--===============4496001358747615761==
Content-Type: multipart/signed; boundary="nextPart3285254.gLubm19p8a"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart3285254.gLubm19p8a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Mittwoch, 23. August 2017 15:52:40 CEST Seth Forshee wrote:
[...]
> > +# Source
> > +# https://www.imda.gov.sg/~/media/imda/files/regulation%20licensing%20=
and%20consultations/ict%20standards/telecommunication%20standards/radio-com=
ms/imdatssrd.pdf?la=3Den
> > +# page 12-14
> > +# The EIRP for 5250 =E2=80=93 5350 can be increased by 3dB if TPC is i=
mplemented.
[...]
> > +	# 5470 - 5725 is only allowed when TPC is implemented
> > +	# (5470 - 5725 @ 160), (30), DFS
>=20
> I'm not sure that the lack of a specific provision for operating without
> TPC in this range means that it cannot be used. As I understand it, TPC
> would only result in a reduction in EIRP of 3 dB, so as long as we use
> a power limit of half of the maximum allowed we will be safe.
>=20
> If this is incorrect I'd appreciate it if someone more knowledgable on
> the topic could chime in.

I would also be happy about feedback regarding this part. But my current=20
settings are based on the document [1] mentioned in this change.

Let us look at the range 5250 =E2=80=93 5350 on page 13. There are two entr=
ies for the=20
same frequency range.

 * 28:
   - up to 200 mW
   - requires TPC for 5250 =E2=80=93 5350 Mhz
 * 29:
   - up to 100 mW
   - requires *no* TPC for 5250 =E2=80=93 5350 Mhz

This is exactly the 3(.01029995...) dB difference which you've talked about=
=2E=20
Now to the frequency range 5470 - 5725 MHz on page 14.=20

 * 30:
   - up to 1000 mW
   - requires TPC for 5470 - 5725 MHz

There is no extra exception rule for non-TPC mode.

Now let us check what IEEE 802.11h-2003 [2] says about TPC.

* 5.4.4.1 TPC:
  - doesn't say anything about 3dB but mentions adaption based on different=
=20
    criteria
* 7.3.2.16 Power Capability element
  - nothing regarding 3 dB here (just allows 5 dB tolerance)
* 7.3.2.17 TPC Request element
  - only describes the element
  - nothing relevant regarding the usage
* 7.3.2.18 TPC Report element
  - only describes the element
  - nothing relevant regarding the usage
* 7.4.1.3 TPC Request frame format
  - only describes the element
  - nothing relevant regarding the usage
* 7.4.1.4 TPC Report frame format
  - only describes the element
  - nothing relevant regarding the usage
* 10.3.16 TPC request
  - nothing relevant regarding the limits
* 11.5 TPC procedures
  - refers to 11.5.4 for the power adaption
* 11.5.4 Adaptation of the transmit power
  - has some suggestions to the power reduction methods
  - doesn't go into details
  - nothing about a 3dB only reduction

Ok, where is the 3 dB then coming from? My guess is the mitigation=20
requirement. This should be 3 dB as *default* value (page 59). "11.5 TPC=20
procedures" says following:

"Potential methods to ensure regulations are met even if TPC is not employed
include using a transmit power that is below the legal maximum (including a=
ny=20
mitigation factor).".

It informs us also in "11.5.2 Specification of regulatory and local maximum=
=20
transmit power levels" that the mitigation factors are defined in each=20
regulatory domain:

"Any calculation of the local maximum transmit power for the channel shall=
=20
ensure the mitigation requirements for the channel in the current regulator=
y=20
domain can be satisfied. The conservative approach is to set the local maxi=
mum=20
transmit power level equal to the regulatory maximum transmit power level=20
minus the mitigation requirement. However, it may be possible to satisfy th=
e=20
mitigation requirement using a higher local maximum transmit power level. A=
=20
lower local maximum transmit power level may be used for other purposes (e.=
g.,=20
range control, reduction of interference)."

It is therefore now relevant to know how these these statements from 802.11=
h=20
and the statements from the the Singapore document have to be combined=20
correctly. My current change now assumes following strict interpretation:

 * Singapore provides a mitigation factor of 3 dB for 5250 =E2=80=93 5350 M=
hz (see=20
   table entry 28 + 29)
 * Singapore provides now mitigation factor for 5470 - 5725 MHz and require=
s=20
   TPC

I am currently unsure whether it is now valid to say that the default=20
mitigation factor would be 3 dB and thus there is an implicit table entry (=
let=20
us call it 30b) which would be:

 * 30b:
   - up to 500 mW
   - requires *no* TPC for 5470 - 5725 MHz

Countries like AU or regions like ETSI (ETSI EN 301 893) seem to have this=
=20
mitigation factor always specified in their rules. But Singapore is missing=
 it=20
for this specific frequency range.

Kind regards,
	Sven

[1] https://www.imda.gov.sg/~/media/imda/files/regulation%20licensing%20and=
%20consultations/ict%20standards/telecommunication%20standards/radio-comms/=
imdatssrd.pdf?la=3Den
[2] http://standards.ieee.org/getieee802/download/802.11h-2003.pdf
--nextPart3285254.gLubm19p8a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlmefKYACgkQXYcKB8Em
e0aBrxAAsu1qFWeIDEjJY2CO3FVk6pqrWhDiggstYp2CinTk853THSwqCbBHrsG7
fBoGnt9gKKuVWtYWZ/ymbecZ0n8UufOe064XVUzJOxbDKl7ywsyqK71PPB2hspnH
GiWQvPn0kim82Hg0VTYL3L5dfgvfirspp56ibEQnbmihuvhp8BX82QgZNe/NG8J0
0i30FDLSAyDDC2hRk7XB/z7ibn+sBe6Mls6OfxRMCWVCHCSPIGkRNfUNic98RKKt
R9tleDdXGkjRZ6juZ3u0AoRyOpqEr9xaoTBz7/TZrbgCTLL+/PdIUooEMlaL6ZJz
NLcorovcZZ1G9x5Y/6dUJAbTk3JPlLSqvHFGdBDbyHP/ndzUjK1GnfbTvcnkjWbM
p9W6CsbJwliT2etcycAY/bIicL/4Nn2sQkxoYq12pl1Yjptogo6MaErAZ+kcyNz+
yyPy1IBCbbLRFPdYBa3a7WdcXF5H7cdB1xx5XKC26BnzCmZtVVcq2zGbD3hVDnlt
CWcLVK30dHI411QiCFzK5s7vQdXwL9mJhOUN5Eqnyv7WcLlUJWcJNCdKbIo+miGI
OWMwr/jLgjGbgukrgM6exBERFD0e9HPBf8xAOpXs4PCEeoBSovt9fT7zSTrBSKs1
h66jcaWiXUy62MITi+UPK8gm1x6xrIuqG6K11Lo/3DXl7NQjDQk=
=iahn
-----END PGP SIGNATURE-----

--nextPart3285254.gLubm19p8a--



--===============4496001358747615761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============4496001358747615761==--



