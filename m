Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x22b.google.com ([2607:f8b0:400e:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFtUf-00039V-2C
 for wireless-regdb@lists.infradead.org; Tue, 18 Feb 2014 22:50:26 +0000
Received: by mail-pa0-f43.google.com with SMTP id rd3so17352824pab.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2014 14:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=iJdNWXnUbUjpoxjfZQksJKyOgYaa9FblOYaKo17cw8Q=;
 b=JrlpI6vAaL4kyVTvzOkX9LO3ksf6tmqiRI43+kT92UxZOXG3lsyfIStiEClpv8PmnH
 AdBhNNigiuz9/JS2OAlRecQuU1b1HeNfjLllVfDRv9rEc/mJweSMAfc7D+3gWmJt3P3K
 T9wcUKHgfi/ZLL/rt0XA8bxBSLWgpVbzw7PuzxXbUyAd6qzJodgn6L9PYQlEDE1N+JvM
 rvz1pBz3O/xFMzbmVoZxET/ATCTVhEEGUkC2dsA6DHzChBRQ+x+vzvGt+6eZrjWe1ojq
 cnA/9hk7r2k6CWjoHeW0A0JZnhRUKEgNJa9eIC8EzNKnoFhzp/yIKOYHqOZrn+xzaood g8+w==
Date: Tue, 18 Feb 2014 14:49:56 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140218224950.GA14296@garbanzo.do-not-panic.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-2-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
In-Reply-To: <1390818118-27261-2-git-send-email-ilan.peer@intel.com>
Subject: Re: [wireless-regdb] [PATCH v3 1/6] cfg80211: Add indoor only and
 GO concurrent channel attributes
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5167604980107248001=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Ilan Peer <ilan.peer@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, David Spinadel <david.spinadel@intel.com>
List-ID: <wireless-regdb@lists.infradead.org>

--===============5167604980107248001==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 27, 2014 at 12:21:53PM +0200, Ilan Peer wrote:
> diff --git a/include/net/cfg80211.h b/include/net/cfg80211.h
> index b1f84b0..dbc5490 100644
> --- a/include/net/cfg80211.h
> +++ b/include/net/cfg80211.h
> @@ -109,6 +109,27 @@ enum ieee80211_band {
>   *	channel as the control or any of the secondary channels.
>   *	This may be due to the driver or due to regulatory bandwidth
>   *	restrictions.
> + * @IEEE80211_CHAN_INDOOR_ONLY: Only indoor use is permitted on this channel.
> + *	A channel marked with IEEE80211_CHAN_INDOOR_ONLY can only be used when
> + *	there is a clear assessment that the device is operating in an indoor
> + *	surroundings, i.e., it is connected to AC power (and not through
> + *	portable DC inverters)

Curious, what are the plans to avoid the situation of portable DC
inverters from being used in this case ? Stating that is in
the documentation alludes that this is possible in userspace.

Is it?

> or is under the control of a master that is
> + *	acting as an AP and is connected to AC power.
> + * @IEEE80211_CHAN_GO_CONCURRENT: GO operation is allowed on this channel if
> + *	it's connected concurrently to a BSS on the same channel on 2.4 or
> + *	to a channel in the same UNII band on 5.2.

What do you mean "on 5.2" ? Maybe just "the 5 GHz band" would be better
if this is not UNII specific. If the rule applies to a UNII band then
mentioning the band name nomenclature would make it clearer, ie, UNII-1,
or UNII-2. If this flag could later be used by other 5 GHz UNII bands then
making it in the documentation UNII band agnostic and just using 5 GHz
would suffice, while your handler in code adjusts as regulations change.

> + *	Instantiating a GO on a channel marked with IEEE80211_CHAN_GO_CONCURRENT
> + *	can be done when there is a clear assessment that the device is
> + *	operating under the guidance of an authorized master, i.e., setting up a
> + *	GO while the device is also connected to an AP with DFS and radar
> + *	detection on the UNII band (however, this example does not imply that
> + *	all channels marked with IEEE80211_CHAN_RADAR must also be marked with
> + *	IEEE80211_CHAN_GO_CONCURRENT and vise versa).

Your mentioning of DFS here makes things a bit confusing. We should be
distinguishing between the case of a device beign associated to on a BSS
where the AP is on a DFS channel, and the case where the AP is not on
a DFS channel. Are you saying that if IEEE80211_CHAN_GO_CONCURRENT is
enabled on a channel that also has IEEE80211_CHAN_RADAR that the device
can start GO on the same channel if it *doesn't support DFS itself* if
its associated to a real AP, which presumably supports DFS? If so
consider then a third GO which would associate to the secondary GO,
we now have a link of 3 devices and an inherent delay can be created
letting a master device do things. How do we avoid latency issues
in communication in this type of setup?

If IEEE80211_CHAN_GO_CONCURRENT is meant only for channels that do not
have IEEE80211_CHAN_RADAR that makes it simpler but I think you were
trying to clarify that daisy chaning trust on the root AP is valid.

Please clarify both use cases on the documentation.

> diff --git a/include/uapi/linux/nl80211.h b/include/uapi/linux/nl80211.h
> index 91054fd..06440ac 100644
> --- a/include/uapi/linux/nl80211.h
> +++ b/include/uapi/linux/nl80211.h
> @@ -2304,6 +2304,11 @@ enum nl80211_band_attr {
>   * @NL80211_FREQUENCY_ATTR_NO_160MHZ: any 160 MHz (but not 80+80) channel
>   *	using this channel as the primary or any of the secondary channels
>   *	isn't possible
> + * @NL80211_FREQUENCY_ATTR_INDOOR_ONLY: Indoor only use is permitted
> + *	on this channel in current regulatory domain.
> + * @NL80211_FREQUENCY_ATTR_GO_CONCURRENT: GO operation is allowed on this
> + *      channel if it's connected concurrently to a BSS on the same channel on
> + *      2.4 or to a channel in the same UNII band on 5.2.

Same UNII band clarification applies here.

  Luis

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJTA+OOAAoJEKwtdpJg+MHGfAAQALED4u0Z2y6OijsBKYs4YsqA
BU0rcLMNrxFbbc0AN8VdBcQB0jPTGCjnRmSdE8B+lG8cNwODy3KOMEsFADc7u9qu
yvlGrm3zGmgyZSEtoTEfE+7RtPtErAl6A6R06R8h4gPRgTh+j6Sv9MavTbNwnaFj
Pl+T7zzgveXr6hO2jM1nYR+3YaNzzGesyXUFHXASrbb+JzpCLsNqsDfcxSzykBda
0LaxHPCYeOOSbl/Ghexh1UZ8bDr1HUQZQlptHe7Vl3PnOToFv2NEoZZXDMJwLjTw
7QMnNyWz6bFyIEA+zvD70SfzZeMscJgtY4ThBdu54jfXgTX+ePxBaHRgla7Qp8z8
iPg5MsZM2WVOG2jBkLEV1yUtlLIbuAqab5wLJKa7hI6ip+g4Z4WVRWZYa9fviN+h
heupWIXBRgcT4393C/3cFlhT/07RgbOHSVuQeK8g3+aZE1kuSXbq/BtoMluAAV6P
Fe9vICWj4HGunNw5qQHpzmw9DMbG/P5eNcXwx0ryrGNsICW0UBLzE4e5G/IVty9e
U7sb8CG0LL/ZvdtorlYIznH3ykfekoc74k/ivDOPSpkoCT4PXumCPtq/CJHIKqYC
BWKBXJL56W7xrmWs8Ih46ZYfOZJWsi3XCN8y9Z47g2ezqKGDRhSe5Vv7R0ZqeCCF
EJawNYQn9zLIwsgxePp+
=eo20
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--


--===============5167604980107248001==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============5167604980107248001==--


