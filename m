Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F5CEC3ABC9
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3+eO/Qfn6xTvJMuj8st/TlhNA5PDFTSdkuTMA5gffj4=; b=yVDmwfEQHP85M9WNeuinADgedD
	DiAa3PvLwskLyFzmtpGeQ+8+rYYyj9fk1uUSdoeSV2i560cgnCf19pDGInu4pUvLtS7W23klQyS1D
	cCbflVA/TXajMeB3UJKuRV7sIq7u4Yy+LqNlMyB5p1dDlpbCHesCX7dnV/o+Rma+GMJespT2zYcEy
	m6yReLUYLLNFGvlm8BqagayoIR9mEk5cKNRUgbNU0vzK0ZYcGt5ao93rYHILaDozfO8SdhgS5h24Q
	S0qn0sim2QRrLDaAxOWyeq2T+eeXgwD8msHRQDPNoQMzPVnSIgCTAmEOW6vNrFkWKa6WzE0XTMDdb
	LqVh+fPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqa7-00000002svW-42eT;
	Fri, 16 May 2025 08:38:15 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqa1-00000002sv2-09jp
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 08:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=3+eO/Qfn6xTvJMuj8st/TlhNA5PDFTSdkuTMA5gffj4=;
	t=1747384688; x=1748594288; b=kAbLdfFwAAjlmLMKTiRE4XuunVxzkn/iz5X61bzdh/1JRUI
	E1Usl7j/P1aXVWA3S3Yti0ElmaSbORNfNzBdLD1GOxZpOmg78uUoT9dJMqGG022VpJgfdBZe8KgwQ
	Sels3Vh0l1g3vhYB9bbkhBGKAOokjn9CYKMU1yKffOxawEmqeARv9hWxv10HrUXcfQof5hpND6uB3
	J+yiSWqJasiN1TixdOBSbEFvSEQZTa2+b6rSK85A42x660hleZ8C7Y6jYKsWh9TqDtMrhh7/17FGW
	Uj5IFOMRLd0SNgDZbDg3XEYNJYefyitsOwE5206VOrF1tUTx9slNEIZeCuTMvL/A==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.1)
	(envelope-from <johannes@sipsolutions.net>)
	id 1uFqZx-0000000E7Ec-2b3M;
	Fri, 16 May 2025 10:38:05 +0200
Message-ID: <424fc6a24f3af233fc70296b9995a97c2d7f9e17.camel@sipsolutions.net>
Subject: Re: wireless-regdb: Wrong ETSI tranmit power without TPC
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org, Alexander Wilhelm <alexander.wilhelm@westermo.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Date: Fri, 16 May 2025 10:38:04 +0200
In-Reply-To: <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
References: <aBoK6p1+F5ve1rC6@FUE-ALEWI-WINX>
	 <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_013809_076032_DFAC6778 
X-CRM114-Status: UNSURE (   5.40  )
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

On Fri, 2025-05-16 at 16:15 +0800, Chen-Yu Tsai wrote:
> > The frequencies 5470 - 5725 have a power of 500 mW. It results in 26 dB=
m. But I
> > believe 27 dBm are allowed.

Seems like. But units are hard...

The link in the db went stale, but the current versions

https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Teleko=
mmunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/Mobil=
funkDectWlanCBFunk/WLAN_5GHz_pdf.pdf?__blob=3DpublicationFile&v=3D1

states (page 5):

--------------------
Frequenzband 5470=E2=80=935725 MHz
...
Maximale mittlere EIRP f=C3=BCr
bandinterne Aussendungen

1 W
Ausnahmen:
f=C3=BCr Anlagen in Stra=C3=9Fenfahrzeugen gilt eine maximale
mittlere EIRP von 200 mW.

...

Maximale mittlere EIRP-Dichte f=C3=BCr
bandinterne Aussendungen

50 mW/MHz in jedem 1 MHz-Band

...

Sendeleistungsregelung (TPC)

TPC muss durchschnittlich einen Abschw=C3=A4chungsfaktor von
mindestens 3 dB gegen=C3=BCber der h=C3=B6chstzul=C3=A4ssigen
Sendeleistung der Systeme erbringen; oder ohne TPC muss die
h=C3=B6chstzul=C3=A4ssige mittlere EIRP und die Obergrenze f=C3=BCr die
entsprechende mittlere EIRP-Dichte um 3 dB verringert
werden.
--------------------


So to be _really_ precise you'd end up with 1W reduced by 3dB which of
course _is_ precisely 27dBm since 1W is 10^30 or precisely 30 dBm.

(Except in "street vehicles", apparently. Rail has its own things, so I
guess that really does mean cars/trams/etc.)

But given the unit conversions are hard, we should probably just do this
in the db in dBm?

johannes

