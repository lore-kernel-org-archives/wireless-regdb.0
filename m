Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG9Te-000620-3i
 for wireless-regdb@lists.infradead.org; Wed, 19 Feb 2014 15:54:27 +0000
Received: by mail-pd0-f181.google.com with SMTP id y10so535130pdj.40 for
 <wireless-regdb@lists.infradead.org>; Wed, 19 Feb 2014 07:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=NSk7lnfm4+ZHRDKZv2n5GkiOlMrMeBRi9dV2JCTqBWI=;
 b=aS0cWKyC3JUyVzzeOMYPPfZHfGGOVkjp4mW/6S8ixyplcGl5wY3IYNX8keZlEMPq7C
 8Y2ALHxmd65ubdc3BKUpjVtDw/1EZhzGnNRRI9UCu8TaQWRaSHTH/yDvdU0H+E5V7uth
 bqqJYqXTk1AOVaewH/y82EMWGjQhbEe3MQfl6GaPp9To/xI1hmFswNC8RMKSXYEsy8f8
 4HjjW26wvnQ1YdN50CJBmai3RR9TQio9aBcNSUKwkALbhs+TCxj+K9vIBhKXNQaF736P
 8lZaDNE//AJo4oxFfql8PfVSnoyxB3wQfUW6PNBLbQk2ugbTq6/mOfTvzUUhxgt0MC0C tWog==
Date: Wed, 19 Feb 2014 07:47:51 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140219154747.GG14296@garbanzo.do-not-panic.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-4-git-send-email-ilan.peer@intel.com>
 <20140218233852.GC14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A0333823B5@HASMSX106.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A0333823B5@HASMSX106.ger.corp.intel.com>
Subject: Re: [wireless-regdb] [PATCH v3 3/6] cfg80211: Enable GO operation
 on additional channels
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0219779312469955661=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: "Peer, Ilan" <ilan.peer@intel.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

--===============0219779312469955661==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="llIrKcgUOe3dCx0c"
Content-Disposition: inline


--llIrKcgUOe3dCx0c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 19, 2014 at 02:52:13PM +0000, Peer, Ilan wrote:
> > Ilan, also extend the above with language similar to the one I provided=
 on the
> > cellular base station hints if you ended up adding a device feature cap=
ability.
> >=20
>=20
> You mean specify that this option is enabled, drivers can still use
> the device specific flags to disable this?

Yeap! In particular its important to make it clear that
enabling this option isn't enough to get enable this feature,
this option will only be usable on device drivers that have
support for this feature.

> > > +
> > > +		if (!other_chan)
> > > +			continue;
> > > +
> > > +		if (chan =3D=3D other_chan)
> > > +			return true;
> >=20
> > This seems to me to indicate that we have allowed here daisy chaining /=
 trust
> > on another GO who also trusted its AP. That is, we are leaving it up to=
 the
> > kernel for the above few lines of code to check if the STA was associat=
ed to
> > an AP that had DFS support. How do we know the AP the STA was associated
> > to was not another GO that ran through this permissive check? Is the FCC
> > happy with that?
> >=20
>=20
> This verification should be done by user space, i.e., if the station
> is a legacy client associated to a GO, then wpa_supplicant should not
> allow the GO_CONCURRENT relaxation. In addition, a GO instantiated on
> channel based on this relaxation should not allow connection from
> legacy clients ... again this should be enforced by user space. System
> wise this should adhere to the FCC expectations and prevent daisy
> chaining.

Wow this is a hugely important piece of information, please toss it into
the documentation both kconfig and wiki (once accepted upstream). As for
references to userspace you can mention supplicant (wpa_supplicant).

> > Also to be clear, you check for IEEE80211_CHAN_GO_CONCURRENT only on
> > the caller's channel, not the STA's device, is that OK ? Lets
> > consider the case case of two different types of interfaces on the
> > same system. I am aware of at least one 802.11 AP company selling
> > devices with one 802.11 vendor as the AP and another as the STA. I
> > don't consider this rare anymore now, as such please think about
> > this case as well.
>=20
> The property is of the channel so this should suffice. Overall, I
> think that the FCC definition rules are centered on the UNII bands, so
> the rules mandated for a given channel in a specific channel should
> also hold to other channels in the same UNII band. Ultimately, I would
> expect all channels in the same UNII band to share the same settings.

OK.

> The iteration in this case is over all the interfaces of the same
> registered device

This feature seems limited then. Can this be extended to relay on the
information from any other registered device? I suspect folks may soon
enter bug reports for this otherwise. That carefulness here seems to
be an implementation preference, but is it a hard requirement? If not
then please considering revising all registered devices.

  Luis

--llIrKcgUOe3dCx0c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJTBNIjAAoJEKwtdpJg+MHGIi8P/1uAMXehEGIoD+BxJZCnX88o
xvB9MOm5fjViHyoLqDDoGd2XeGuj2/1Mp1RTagjGRNdKR63+fzPRsjxc2H/r7Ium
QwcZO2Es1yHRGKmaLDUD9QzW3syrGPbCoG+El2ASbRy4nwaxClwZfk4AShMCmZir
We9xD6DBIefXKsP6Dk3HsNarTUYk3eBSSl9clm4fe/9PwE0Ya/XF85cdFpJV9Q3N
B/JOEhWkIxlozvE+vjVxZIJu7aVoIz9Y0biCqNaQ+EjsDbYoGpcr60pUcVEUoTji
kOEjVTq6TLvz6lHY2QvF1efvriHFbRo0ooCBxwZCv4SIU5GoP0GE8Hbe9b6gYaNZ
vWjCHpq2afwaTGeCRV2ok6D9Uq/V2QjciEcAT5e8A/nPeZlWbzVYQ6plDki3cSh2
xCoTLh/GUnU7SfSa+40mmq5QkeZhwGe9mFdAOe91lKryrHsXQEG2vU4FVPhSSOB1
ESO5xwj3gpbsc/h4dVyUxZXwnrRlyXxclhL6L7DeS1xa0sMjgeuxgOW8sVwRck7X
7LP0DBh9rUEvMjXcCWn9r13FJiWzB0uNW6r76I129y4aDeBDtJAeKqIXMlQsOLZ6
Y9YC6pYAaSvcwwNR+aV6e80NdfObXmFdpEdgob5YMOELE8mH2tVl/m3c8E5ZELCq
o+jcxVZ+3/iUICs/90+d
=FE3R
-----END PGP SIGNATURE-----

--llIrKcgUOe3dCx0c--


--===============0219779312469955661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============0219779312469955661==--


