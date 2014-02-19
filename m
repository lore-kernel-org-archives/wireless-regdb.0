Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG9cU-0006OL-Bk
 for wireless-regdb@lists.infradead.org; Wed, 19 Feb 2014 16:03:35 +0000
Received: by mail-pa0-f41.google.com with SMTP id fa1so575468pad.14 for
 <wireless-regdb@lists.infradead.org>; Wed, 19 Feb 2014 08:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=0HCWTX5jce3iE5NQJ0qRrdQbBgZQDGW/Ncv4GTXlkxo=;
 b=X2Tf2woPG9ddbsm8Rfs5J8kRFh4dLbH/oqcWrE6FbDZtdOnXubXjkaJzNs8TU0fxEI
 DE2Vm/S+MBFHYEpRQ/bXvEZg+19JoUTBNwlb6RH3azwv0uLXWUpymAbAzqdG0qAuk2HT
 AJE9Bq1+CVOuVyNUkDTLZgXuK86JFBCwiNJ9e6RLOCTwDTQIogX7SGLJwL46c8NEPHkM
 bMq+IbwozBfwYtqqCE1RngN1P9eDt25pMR/p14zx95xv3ggSiNqhBvUURtGtX5SmnWSA
 U3b5AuhPB/g7S9x2HcxgEmtzHxyx6Gef69M4WucZB59nSKLtJDu3VfMp0gYWBINGYB1H PA5Q==
Date: Wed, 19 Feb 2014 08:03:06 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140219160301.GH14296@garbanzo.do-not-panic.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-7-git-send-email-ilan.peer@intel.com>
 <20140219001458.GF14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A03338353E@HASMSX106.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A03338353E@HASMSX106.ger.corp.intel.com>
Subject: Re: [wireless-regdb] [PATCH v3 6/6] mac80211: Enable initiating
 radiation on indoor channels
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3430405243991520473=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: "Peer, Ilan" <ilan.peer@intel.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

--===============3430405243991520473==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Uwl7UQhJk99r8jnw"
Content-Disposition: inline


--Uwl7UQhJk99r8jnw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 19, 2014 at 03:28:29PM +0000, Peer, Ilan wrote:
> I'll abandon this change ...=20

Wait lets talk about this.

> > -----Original Message-----
> > From: Luis R. Rodriguez [mailto:mcgrof@gmail.com] On Behalf Of Luis R.
> > Rodriguez
> > Sent: Wednesday, February 19, 2014 02:15
> > To: Peer, Ilan
> > Cc: linux-wireless@vger.kernel.org; wireless-regdb@lists.infradead.org
> > Subject: Re: [PATCH v3 6/6] mac80211: Enable initiating radiation on in=
door
> > channels
> >=20
> > On Mon, Jan 27, 2014 at 12:21:58PM +0200, Ilan Peer wrote:
> > > Allow active scanning and frame injection on channels marked with
> > > IEEE80211_CHAN_NO_IR iff the channel is also marked with
> > > IEEE80211_CHAN_INDOOR_ONLY and the wireless core thinks that it
> > > operates in an indoor environment.
> > >
> > > Signed-off-by: Ilan Peer <ilan.peer@intel.com>
> >=20
> > I don't see why being indoor should allow to override the NO-IR flag. I=
 do see
> > however why being indoor should enable to IR if you are IR if you have =
the
> > indoor flag. Enabling to IR if you are indoor for all NO-IR channels is=
=2E.. pretty
> > permissive I do not see the correlation.
> >=20
>=20
> Make sense. I did not have such relaxations defined, just thought that
> similar relaxations could also be used in cases of scanning etc. but I
> guess this is not always true.=20

The original beacon hint mechanism is very expansive
to all beacons on non 5 GHz DFS channels and non 2.4 channel
12 or 13. If a vendor can possibly not like that beacon hint
implementation as its too permissive (and I don't think it is)
but they do want to trust beacon hints from APs in the case you
are describing then you can enable a new feature flag to
distinguish this. The beacon infrastructure code would then
ignore the regular beacon hints on devices that don't have the
old flag, but would trust this new form of beacon hint. If
a device supported the old all inclusive flag they'd trust
both. You'd have to update the kdocs for the old one, and
likely add a new routine similar to
regulatory_hint_found_beacon().

I'm not sure its worth it though, I'd rather push vendors to
consider first using the regular becaon hint mechanism and
trusting it. Maybe devices that want this new functionality
you are trusting should implicate revising trusting beacon
hint mechanism ?

  Luis

--Uwl7UQhJk99r8jnw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJTBNW1AAoJEKwtdpJg+MHGThYP/A0adj+DcGy3UovWorosLy7W
ipy0DwnzNPmNLvt2/2cIZSQ+aUbk9DynNJ3H/5EUCyE8X/eTcm9VG6D0uuF4xwW6
DI1iia8tMBqjkqWCY9U0nJXO4qearG5RimJQMQ1CDkA0TVkvV1jJ9rZPRBPhY1FS
9UOf1wY2xzvk2M6injFkIUFKOFUJFxNfrjXOi6bWL9qriF5P+ppi+2vtUAqkKVAU
anYo3Adidh/gO1NSq4PrHyNuyjf6bnEt+XjSHn7wzdmbVKU6ud5MqrGpdG1BnTZU
bi2iCTpiSn77Gvs6KF0atY2Z91mYrtpvB6ioEJVIlGdWAqdDl2HUbD2n+2BJOZfH
kybat8WHp09shJ4lJALemjY4iSt4c6rDrP+s1rvasP7TD1NMNPA00wa497wRhbSv
EPpSuTghM3bQHW1HdfX1e3rz7O6pY/OdOYa4p0iAihgf0kAtnHtJLXF+Y/z1e9dR
EdMmJtW4kGCa/tW61FVB1+/AaPfzmPxHD1FMbVyGupaa2yzs4GvP8Ys/sXVkNlTk
s6Ib7GfAZXBnXwj5Rl/3Viy6PpzHwF6rGtbYRGCXF9GT25Tocbl1ADcwOW/W6imY
eIpjOwShm9AvyJaSgZNZUWgp7rfxQRLMa9pbWyqSL1SEYDqCZSElVabTspEZoXpg
uFwj2XQ77RE8rfIfPrN1
=ss23
-----END PGP SIGNATURE-----

--Uwl7UQhJk99r8jnw--


--===============3430405243991520473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============3430405243991520473==--


