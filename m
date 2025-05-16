Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8343DC3ABC9
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 09:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZqtSMkyWgK5O9yoxSo2YjhzoYKwwO2tY8zxxGFJlFqc=; b=M56sXw+9A/u9UcH1y9qfmk9I94
	moKgLNBFuJBEwM/FmXBQBoAbKjIELFWEd9DawaauT7Vbhh7FFh5TkQ6TxeL+/JqgvvuIgUY0A4GK3
	8pA5LaV9BN0VZgc1JaLBWumkShD+8V3GYsDrgqwh4HxlYema0zDfU7W/z4HbJSVwJ58Hiz1+Qn413
	NJaYbXcLStNTvE6tEyL2CAG/u3esKByblDzvTVytdwCxCaoS6nM3s2n5CmsGk/A3jUh5ybiMnMS2q
	xU4gwLtLWOnFunvdsR3MNM8DGHY6MJ7ocZsBnNBhdvgzLTZv3osmQquxTK7e1grK3XNSw/KWnKs0E
	+IK8/rLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFr4J-00000002x1f-4APA;
	Fri, 16 May 2025 09:09:27 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFr3a-00000002wxL-3fLb
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 09:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=ZqtSMkyWgK5O9yoxSo2YjhzoYKwwO2tY8zxxGFJlFqc=;
	t=1747386522; x=1748596122; b=tEUOj+UssbNaeaub1DweA9HaEeMGJfefR7Gklgq3oyY2g66
	k9xaA+IVEOhrJ9HJxNzHY2IG+cVgW5d2CIyzQ46GhNjkwgppZHxak3rKES32xyiNyBpNrkXwT6Ha4
	uujrqOjtmR+GsEQG4RHDoEYVZ9XJ5F2cw6vxBHXVKP8vPB6Clw10WYWCXX81Ywa8AkFRmK4ME0goh
	kLpwcwUfob/od31kp9icAakO/Uhr35JGaV18LEuUM1KbuY9VI6kJ0C5dggIu5jcHbeNPsojO+Szhg
	MGeQig0sivZs/yR32UV9RpQ4JC0JVT5zZk6tfPuf+0DwMr16dC/q/zCXF52M3UkQ==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.1)
	(envelope-from <johannes@sipsolutions.net>)
	id 1uFr3Y-0000000EBix-3pHC;
	Fri, 16 May 2025 11:08:41 +0200
Message-ID: <19cbc5ca0dc485c39c61ce713f2b4f4faabad684.camel@sipsolutions.net>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for Vietnam
 (VN) for 2025
From: Johannes Berg <johannes@sipsolutions.net>
To: Duy Hoang <duy@etylix.me>, linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Date: Fri, 16 May 2025 11:08:40 +0200
In-Reply-To: <12521651747386138@mail-sendbernar-production-main-36.klg.yp-c.yandex.net>
References: <12521651747386138@mail-sendbernar-production-main-36.klg.yp-c.yandex.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_020842_912300_1E0C44BB 
X-CRM114-Status: UNSURE (   6.75  )
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

On Fri, 2025-05-16 at 16:02 +0700, Duy Hoang wrote:
>=20
> * 5470 - 5725 MHz
>   - 500 mW (27 dBm)

So as we found in the ETSI thread, this (500 mW =3D=3D 27 dBm) isn't
actually what happens, but rather you get 26 dBm.

However, the Vietnam regulations, although seemingly the same as ETSI,
explicitly state 500 mW rather than the 3 dB reduction from 1 W that's
stated in Germany!

I'd still probably argue that the difference between 500 and 501.187 is
small enough that you can state 27 dB here in the db, rather than
stating 500mW.

I'm not sure we should make the processing scripts do rounding in this
case, perhaps we should, if we decide that we want to ignore the
difference of 0.237%?

johannes

