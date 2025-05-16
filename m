Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF071C3ABD8
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 09:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q5CO50yhbzeFsHy1hImtV3jvDNccMC3aRZWtBIM8rHQ=; b=La4eVDx+M2dductlrCuEjI4zSu
	8C+V4BmI2zpChviA8P2QNtT3uFSbq+/ejRiFW+tQcdwozUlcvDpVFCQRVpiwfbE/7CTxJDIxPsDZb
	oTgFNyzK+2+UQVlAsxab/x57MZSy+jsjXDRI3L73D0jdtHZD1K5AaVd+OnnR6RlT+6HDlLgzF5+VS
	qQProE6jIih/oeTgvd9fjG+t33lbeUEDTizkj4uumqXqwOwZ4GV5q29UJ+FFQP1GkE3QViaFRC/Yh
	vfmPcM8AIZmsL05ragNLjf0Ejqtah2ekHCPU/xBzxhRREtjBIEQPogrm3BzK8IZQLrgMZ2+sMlRqg
	5jmV9c/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFrPF-00000002zxf-1hDG;
	Fri, 16 May 2025 09:31:05 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFrO0-00000002zmF-0ewc
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 09:29:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=q5CO50yhbzeFsHy1hImtV3jvDNccMC3aRZWtBIM8rHQ=;
	t=1747387787; x=1748597387; b=rmjHjcDch8a+x2jC2ZkjJejvg+Ira5xWeFMuN7sn/3G8Gxq
	Pr5J0uI4a8KfwYoUaXmMT7nMXyNsY6uY+PhSBjgcKQEtSbdS2qT7KFElk1l/P89GtH0SR6OirnzQO
	vPWQ3ENekUCWipoUaJPpW8OVHZU4eks1u+8nJoZtva0s+gGbTQDtNVJYO8DzuV+UNmwBGprKNq7K7
	MW80B8K8chUVRR+cbdF0g/cPJVW+fM/qVUnWLXg7i4grVkK9tYD6ixZkZAj/ZPmwavLlhgqKlEjQ8
	hml/dYzP569LoxG3PZ+Fqu9TXJXCArTy4YzqRQBDYv5OEnbAce/fm6HrXazCiIGQ==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.1)
	(envelope-from <johannes@sipsolutions.net>)
	id 1uFrNx-0000000EEi4-0NHF;
	Fri, 16 May 2025 11:29:45 +0200
Message-ID: <30e8968b8acb0406d614d320bdf7f6c1c34c068b.camel@sipsolutions.net>
Subject: Re: wireless-regdb: Wrong ETSI tranmit power without TPC
From: Johannes Berg <johannes@sipsolutions.net>
To: Alexander Wilhelm <alexander.wilhelm@westermo.com>
Cc: wens@kernel.org, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org
Date: Fri, 16 May 2025 11:29:44 +0200
In-Reply-To: <aCcD5QLRpbMexvq9@FUE-ALEWI-WINX>
References: <aBoK6p1+F5ve1rC6@FUE-ALEWI-WINX>
	 <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
	 <424fc6a24f3af233fc70296b9995a97c2d7f9e17.camel@sipsolutions.net>
	 <aCcD5QLRpbMexvq9@FUE-ALEWI-WINX>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_022948_197383_C40024E4 
X-CRM114-Status: UNSURE (   8.74  )
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

On Fri, 2025-05-16 at 11:22 +0200, Alexander Wilhelm wrote:
>=20
> I referred to the following EU Rules:
>=20
> * ETSI EN 300 328 V2.2.2 (2.4 GHz)
> * ETSI EN 301 893 V2.1.1 (5 GHz)
> * ETSI EN 300 440 V2.2.1 (5.8 GHz)

Is that really all that relevant? I don't think ETSI has normative
power, that's left to the per-country regulators, IIRC. Who in Germany,
as demonstrated, did a mix of units for the range you were talking about
before.

> The problem with them is that almost always the unit _mW_ is used. And th=
e
> reduction without TPC then is given in _dBm_. However, for 5.8 GHz (SRD d=
evices)
> the transmission power is stated as 25 mW. Does the EU Rules means 14 dBm=
 or
> only 13 dBm are allowed?

It means just that, 25 mW is allowed? I'm not sure you should read more
into it than written.

You could argue that 14 dBm is "close enough" at 25.11886 mW (0.47% too
much), but perhaps that's not something the computer should do, but
rather whoever updated the database. It might even differ slightly per
country, I guess, technically - though here the German document [1]
states the same.

[1] https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Te=
lekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/F=
unkanlagenGeringerReichweite/2018_05_SRD_pdf.pdf?__blob=3DpublicationFile&v=
=3D2


So perhaps the database could state 14 dBm with an appropriate
justification, but the conversion from 25 mW to eventually rounded down
13 dBm also seems right.

johannes

