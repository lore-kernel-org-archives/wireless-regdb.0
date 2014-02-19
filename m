Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFui6-0005i2-Tc
 for wireless-regdb@lists.infradead.org; Wed, 19 Feb 2014 00:08:23 +0000
Received: by mail-pa0-f50.google.com with SMTP id kp14so17541504pab.9 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2014 16:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=KIhpL2fvqcXarzujkf/BfTxqugzIx/vlNHUx0S2jafk=;
 b=xQHY/r8CTNVIrpKE7UX4ISpiM0v79Pami8GGiAAyv90Y7G1tnZy+swYUhaZxiL5AIy
 VVuLlGeXZQ737BqU9EyaM7wLRV8H1+kKVc/oVQcMjAVqmSB+gQ/zPe8fO8DmUKJagVDl
 5IEOdFBes6fFp19JTGL2hR5IIbJpvkTAeffMeOcgfBxAGV2u//LhHcPJabyYYzrxs78M
 jLO00NUhP27SyvlN4yWzfPRTfpodjWbIbDqUFPKH/BHyg6Q+/J6KZ36ImGs+fRoo22wu
 79F85D9mQSmRO3T4mIy0ni1sPBlAvNHc7fQZho2Lf6unaO2ej/ZxH0Dh4R/jPDz+yyuk OAiw==
Date: Tue, 18 Feb 2014 16:07:56 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140219000753.GD14296@garbanzo.do-not-panic.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-5-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
In-Reply-To: <1390818118-27261-5-git-send-email-ilan.peer@intel.com>
Subject: Re: [wireless-regdb] [PATCH v3 4/6] cfg80211: Add an option to
 hint indoor operation
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1659731541337156665=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Ilan Peer <ilan.peer@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

--===============1659731541337156665==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Fig2xvG2VGoz8o/s"
Content-Disposition: inline


--Fig2xvG2VGoz8o/s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 27, 2014 at 12:21:56PM +0200, Ilan Peer wrote:
> @@ -1450,6 +1465,11 @@ __reg_process_hint_user(struct regulatory_request =
*user_request)
>  {
>  	struct regulatory_request *lr =3D get_last_request();
> =20
> +	if (reg_request_indoor(user_request)) {
> +		reg_is_indoor =3D true;
> +		return REG_REQ_ALREADY_SET;

Please use another return value here and document it. This would
enable other type of userspace hints and would not make this an
obscure thing.

> @@ -2014,6 +2047,8 @@ static void restore_regulatory_settings(bool reset_=
user)
> =20
>  	ASSERT_RTNL();
> =20
> +	reg_is_indoor =3D false;

:D

> +
>  	reset_regdomains(true, &world_regdom);
>  	restore_alpha2(alpha2, reset_user);
> =20
> @@ -2515,6 +2550,19 @@ int cfg80211_get_unii(int freq)
>  	return -EINVAL;
>  }
> =20
> +bool regulatory_ir_allowed(struct wiphy *wiphy, struct ieee80211_channel=
 *chan)
> +{
> +	if (config_enabled(CONFIG_CFG80211_REG_RELAX_NO_IR) &&
> +	    !(wiphy->regulatory_flags & REGULATORY_DISABLE_RELAX_NO_IR) &&

Don't you want to make the flag REGULATORY_DISABLE_RELAX_NO_IR positive,
that is REGULATORY_ENABLE_RELAX_NO_IR as otherwise you'd require
everyone to disable it by default. I think we want to *disable* it by
default it and let drivers set it explicitly to declare support.


> +	    reg_is_indoor && (chan->flags & IEEE80211_CHAN_INDOOR_ONLY))
> +		return true;
> +
> +	if (chan->flags & IEEE80211_CHAN_NO_IR)
> +		return false;
> +	return true;
> +}
> +EXPORT_SYMBOL(regulatory_ir_allowed);

Please use EXPORT_SYMBOL_GPL() moving forward for regulatory core stuff.
Proprietary drivers can kiss my hairy ass.

  Luis

--Fig2xvG2VGoz8o/s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJTA/XZAAoJEKwtdpJg+MHGFpAP/iQv59WiEZZINUwb4+0e32uE
JhIqYaCcwLMNOxD+EeO2GWiBEm8rEGrR8dlXGQGL/VjoIK5jiznHkVjO5D5kXmzI
XiwJZSAlAICWppOBmyXLu6adodfJrOoEmaKDSJj0m2cZTI9enHYOfZCI8gF6ZWOD
wzkI3p4erp8XDx5vsiA06gscOp7jycgI3r5MAqftK6sKqB6w/dn3W0w4Ppf8Ycoi
TdeOGtyrsKdTkIWNQI/dUFyc5AzBAG8x6ZLm7bLAAzVbrrSUu9MXOgrHmpcihqde
6bJcHDK4Omk0a/0QU/r886VheUaJrjuIaY6ECT2+V6OAywe73nIgffQEt7lkqE0l
cQ02CPuYI1E5XgHDWFiiR2msRUuyY7rinkM+tLZhLgzQc2KD6/Y71AcAqpxBV7wK
oMZJWMN/1CprpJweUv9AvmnXfBKzk9Xp2QLlRmtSfQupDQgtVw2CnJ/q/pvT+lL8
DnUnjoahJkxMBWxNxHXPqYLPM6BOS/qlLNeCmZUzWq7ymvT8JdQA4erg3WOIUHH1
kyV+XbgUIgNjupE3NRAEoeAd19HcdEkGNV7KCNjJ+JVvm7J42OKFXEMmvhC4gLv9
ZYXLL99Xa9n7wtD5RFTldulz15q1LNSmViBDPCoJqjejGzTp6NeOJwdeW5QYfm6G
qoc2HD/6keu/D3aImLBF
=WuDT
-----END PGP SIGNATURE-----

--Fig2xvG2VGoz8o/s--


--===============1659731541337156665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============1659731541337156665==--


