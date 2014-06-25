Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzqRf-0002b4-Mi
 for wireless-regdb@lists.infradead.org; Wed, 25 Jun 2014 16:53:17 +0000
Received: by mail-pb0-f45.google.com with SMTP id rr13so1936124pbb.18 for
 <wireless-regdb@lists.infradead.org>; Wed, 25 Jun 2014 09:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=JFj3Wd6n23DKsI92ckWuyZgOaaK952W8Em8mwRgbH3M=;
 b=O2kgrpbidS3WpmKLipDIYRP2HXMWCH1w5FAkKLTe7eBsIGj38xHzPO3Ttdz/ah96Kf
 GGPLaqlZqsl+pSzJ+vRKp0NV2xZQfMIBxpp8yi9hil8CAYkZLZjsmvlbbWXujvvF36kG
 596BNYvBF2AC3DpEUm6itGvwcFvOLBJjdrMfcBi4urgxTZaAcyJznEQrsSnaRvxwYgZk
 txHRSMZOmdQ9GpCG6bw8PV86T+Q7vvKe4a0KxlNhAN9ids9wLr0Kr7FsN+mAPwwM7YIH
 HPTNwxt9x+nuHWcFDw3zJS+ogHJ9QCTkWWu5Psr1U/Jh1slDwzdXclSc+7ZGCrWA3yCZ 8ssw==
Date: Wed, 25 Jun 2014 09:52:47 -0700
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140625165247.GK1390@garbanzo.do-not-panic.com>
References: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
 <20140623191504.GD1390@garbanzo.do-not-panic.com>
 <53A89011.1010806@candelatech.com>
 <87pphy7ta5.fsf@kamboji.qca.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <87pphy7ta5.fsf@kamboji.qca.qualcomm.com>
Subject: Re: [wireless-regdb] [RFC] wireless: improve dfs-region
	intersection.
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1821637697677330155=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Kalle Valo <kvalo@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org, Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org, Adrian Chadd <adrian@freebsd.org>
List-ID: <wireless-regdb@lists.infradead.org>

--===============1821637697677330155==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 24, 2014 at 08:47:46AM +0300, Kalle Valo wrote:
> Ben Greear <greearb@candelatech.com> writes:
>=20
> > As for being confusing, the current code is nasty and it is very hard
> > to have any idea why things do or do not work, especially if you do not
> > have ability to add printk all over the place to figure out what the
> > code is actually doing.
>=20
> Heh, this is exatly what I do when I debug regulatory issues :)

CFG80211_REG_DEBUG isn't too chatty already?

> > I think some more effort should go into printing out a lot more
> > information about the regulator domain decisions, through printk
> > or related call if nothing better is found...
>=20
> IMHO the regulatory code is the most fragile part of Linux wireless
> stack=20

Changing anything on regulatory can have an impact on many things but
lets be clear of the difference on the nature of quality over impact due
to the nature of what the code does and its impact. I invite you to
compare the code quality on the existing regulatory infrastructure from
what was in place on the atheros driver HAL for regulatory control. Now
*that* was incomprensible and somehow we managed to evolve to something
central and shared on Linux.

Code needs to evolve though and I do agree we need to evolve things
to a more mature foundation. More details on that regards below.

> and needs a rewrite. It needs to be simple and easy to understand.

There is actually quite a bit of documentation:

http://wireless.kernel.org/en/developers/Regulatory
http://wireless.kernel.org/en/developers/Regulatory/processing_rules
http://wireless.kernel.org/en/developers/Regulatory/CRDA
http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb

I'm not familiar with smaller pieces of code on the kernel with as much
documentation as this. The code actually also includes quite a bit of
kdoc and comments. Small code changes however can have an impact though
and as technologies advances we have more complex corner cases and
the state machine of regulatory keeps evolving as such a more evolved
infrastructure is indeed needed to help us cope and ensure we don't
have regressions as we evolve the code.

What we need is a full blown regulatory simulator. That would enable
us to stage things in userapce and provide an easy test suite for
changes, and also do easy test automation. I started work on this a
while ago and got somewhat far to at least call it a good start. It
should enable anyone wishing to work on a rewrite to have a good
base template. The last piece I worked on was making a regulatory
library extracted from CRDA and its why CRDA now has reglib. The
next piece would be making usage of reglib on regsim and then a full
effort on the rewrite can undergo.

The regulatory simulator:

https://github.com/mcgrof/regsim

I found at least one fix which I ended up porting upstream (a042994dd377d)
but since "regulatory rewrite" has always been on the lower end of prioriti=
es
I never got to finish this work. The basics are there though and having reg=
lib
on CRDA available should also help with a new evolution on regulatory.

Note that the regsim does include the algorithm proposed by Johannes a
while ago as well (check git log), and in fact based on conversations
with Johannes it seems to there was some confusion over the exact
strategy for that, so my recommendation is to verify this with Johannes
(this might be a good candidate technical discussion at the workshop
being discussed elsewhere).

Lastly, we should check with FreeBSD to see if they really care on
sharing, its why we went through the trouble and relicensed all the
regulatory code to ISC. Last I checked with Adrian sharing was a nice
thought but I don't think it was going to happen, if that's the case
the only other reason to use ISC was to help enable regulatory code
to be used on firmware as well. If that's not something really tangible
we should just end the ISC practice on regulatory and embrace GPLv2
as we do with other kernel code.

Happy to help anyone wishing to undertake this :) Any volunteers?

  Luis

--2fHTh5uZTiUOsy+g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJTqv5fAAoJEKwtdpJg+MHGQAkP/0odUHBASBeV9fHsIkITq84W
7J3dKiFaNIWgj8FwdL+0aqDFQqojvhlyV5ncmzp9lfxAG56/ruXHO/ZgV99jqnmm
ajPpbe9r7dwShQebunjbf25NyuWwyeBYFYM13Y387VUWFWg9jqnW2iSXxjp78pG9
bR9y/CMf7vT+iQWwvOOzieB3trRCXF8n0DCkdtN1C49WDeSk8yeMeIrtcqIBbVNQ
cp1Q1GgRTyBR+XsLBJB+OA8M1rXlwjN+GoD/vXhbc/Ys8bN86n+vkTv/IpsLDWsW
UQsM1xIA8k7EGn7qNcXpQ5dq5InTl9vKB2TiyJiKuu9Y9YW2bQTWh7PmZxpZYGPq
3Gw6ijWpZbq6CKRvqy3FFIZJ66u3lY8e0lHuBVpo9B8r3GIyLcAp/KD/Lb5Qs3E4
RNOGxstUhgyR8vukPEINXd6o9aWwgMj3wdN0ZqdIsrf2PyquxGrKZhRcIY12Whsr
G3cESGxBuyHUSDdpndpBPt/c/5HzgFaArBfX/HVLrZHaYWDLGMZggQt50/ZY8dFG
rb2lgEAxoJPXA9Sj62erByJct2/vqPejOS4s1YUjlk1rEylfoG3zNst+Ih941/Fk
JdJc4hxnFatsWLjCvpSII8D4jtK7PWmUJHJT7Zdngz/aE8dISN0rNdLERGk81QLz
2u7StaeOfAOi40P+KvWg
=zRCS
-----END PGP SIGNATURE-----

--2fHTh5uZTiUOsy+g--


--===============1821637697677330155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============1821637697677330155==--


