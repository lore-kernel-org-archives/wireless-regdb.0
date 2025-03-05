Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5340CC282D3
	for <wireless-regdb@archiver.kernel.org>; Wed,  5 Mar 2025 09:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wx6niFNxB11vVymGAkoEEkkaFjOWfbgUXeUXpDwUHqs=; b=ykxRiVO4uqzLhRSEQCvkY/P/UQ
	RnWwfF6GWp/ooypGvohoIUoSoxyNpBZTVqZ+ZhVif/5JbtMNMx85+/S0EUeZjF+v8qubfBeXxzuvk
	Zr2ca/1t7tuH8JjteDuafkh2ijM+atMBUQiD8wMkoXmad2cE09WI28WCIkgXEwch5+uB8B4F3sxFA
	X5XzpNkGC+5LXjaSseOd13D8+dAm1WI8TyovVTBPxp0N7lUh4GcomPDd8A38L6vs/SgV9a5b4Ts1c
	vTPv7Fv9jWiJqYQTbSWzmBtSK/DTv3PqgiOJsm5KLdZfKggsfdTVCXTn4tXZ+lq57jhOxO+ZSBwhS
	CfUZFGmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tplJA-00000007YHI-1r1T;
	Wed, 05 Mar 2025 09:44:56 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpk60-00000007My7-0jQI
	for wireless-regdb@lists.infradead.org;
	Wed, 05 Mar 2025 08:27:17 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-43bcf9612f4so8825245e9.3
        for <wireless-regdb@lists.infradead.org>; Wed, 05 Mar 2025 00:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741163234; x=1741768034; darn=lists.infradead.org;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=wx6niFNxB11vVymGAkoEEkkaFjOWfbgUXeUXpDwUHqs=;
        b=gRfm02GaSiQJrixuHcvtu79G3p2+Yr2afCMhBDelgK4tcxVhiF84Nhc+9RU5z4f/Ye
         CTZe2Laj85WdWDz/zWvohhlTfaiKdqbmsBVMvtyPAYYFif3L5WK3sCMIxVVA5Z9UYNj6
         2z6RLWSg78yHZCQOnEKqydbdHZOA8SGcUrWAeeIENEA4UOI0ToYlbe8eQAqqUwSmSeKu
         slNflQXCQKccwwAahssrIVv1xmZSeWvEufBM29IwF0rDeT0zQCG8ctuecQWmf+NFEqFQ
         +IRLgv2xMA6KKitjCAslrwl+iC87R+du8bXHAB0V6HAwx4a8De9Ov9rN8SbV97U6xj0w
         Jgsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741163234; x=1741768034;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wx6niFNxB11vVymGAkoEEkkaFjOWfbgUXeUXpDwUHqs=;
        b=ae53IPVNFg2d4Fp1uZ2hh7D/ufQlsZNgeCyq2NpXnEkGdTOq/h5EUbwIJxK0pUjlAN
         Atiy8LhEYfU8qs2o+SWd+CQNNciwi+yh+Z5Oi5dkqiocDKLK5h5HvscMSCqZg0WhJs/E
         Z95rXVR7nEdF1/Q75zNwx6pTwFpPHuHBpoieN47PqugX57HNVce+IveSKbL/e05OZs5D
         kHkn/rev6677anNhaZKgNe2FqdIzYW/dLUpqU7jiFozgU8uyHrhNp4D2aOoyWrAJwLjo
         0qk7CohVlBEt/aox9jDR0R5VwZ5vFbQU2YvaeKmUkZUiGmQlXEwZR3al2bGAzdQIZsuY
         UR6A==
X-Forwarded-Encrypted: i=1; AJvYcCWXmC3cf4+kPu4064RQCe8YM2K3rdoUOMWiToKSby4TMkLV96EekxoZuLNqwzR9Hg6g5IJ9TRXr2pnOx1j2mQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9kertr25y2Cpqeaw8/2uHRXO3LgQNo5Kfr6W04PTJEg6E7CEu
	EEVi/k+icJXdKPaHxewFY5LwUTmENC9zMG4/5JS0B/liY2wYJJk=
X-Gm-Gg: ASbGncvJbYD4GBAG2gselFCAIROfRbMMBFyIlm84+bymohNBDxg9wWtnrAkOX13OIiU
	IVTpc7qTkdDN+qeymjd4r4+ZlFDoE8Aq4TRSXlsCPd8btHIFg+WSq/NcorUe1ssiRPoOTPjHANi
	/HPCtHbqKcLCIcd3ApAoET0PuKrzALFtyleFe0uvHX8NfNvhxt9gOFRjdYe1+RFy+7IzPG2N/Bp
	FAzxjG++vSfb6oQh1bGuT6aAoki1YHhVqo5M9Z2xuSq7GVvmZJV1Y4kygkuHhzufe1lSRRtJhCp
	R0m4+rb103c5NWj98o4qZ9X75zab6pOU0MIs/nuBpWkNemqYbXN83vGDTCwCrVKiTyeCfTgXd5Z
	+ssrRxN29TmcWOoeIFFzkNoItu3R1KiM=
X-Google-Smtp-Source: AGHT+IFo/BzBCp9DlgvFbq8tLwKtcaqZqQ+JEIfrk5TZCy8Dd0SOeQ7gch8CJZYZZZfbWo2aD7lGyQ==
X-Received: by 2002:a05:6000:18ad:b0:391:1388:64b7 with SMTP id ffacd0b85a97d-3911f7c39c7mr1629746f8f.46.1741163233957;
        Wed, 05 Mar 2025 00:27:13 -0800 (PST)
Received: from winhome (cpc112753-pert6-2-0-cust678.16-4.cable.virginm.net. [86.18.22.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e479596dsm20161761f8f.7.2025.03.05.00.27.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Mar 2025 00:27:13 -0800 (PST)
From: <rmandrad@gmail.com>
To: "'Dennis Bland'" <dennis@dbperformance.com>,
	"'Ping-Ke Shih'" <pkshih@realtek.com>,
	<wens@kernel.org>
Cc: <linux-wireless@vger.kernel.org>,
	<wireless-regdb@lists.infradead.org>
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com> <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com> <ff6ad414457e4b1cb68e834978a553c3@realtek.com> <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com>
In-Reply-To: <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com>
Subject: RE: wireless-regdb: Allow 6ghz in the US
Date: Wed, 5 Mar 2025 08:27:17 -0000
Message-ID: <006301db8da8$686cbb20$39463160$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQMUrzCf8XdNoAU6+fu4ECJnDc0awgHIktuQAg9ms7MCOQTCT7DBabeA
Content-Language: en-gb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_002716_219694_3450095A 
X-CRM114-Status: GOOD (  11.31  )
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

Hi Dennis, et all

122. is not specifying NO-IR which basically is denying any 6Ghz in the =
US what it means in my opinion is=20

Client devices (like phones, tablets, laptops) need to find Wi-Fi =
networks before they can join them.
One-way devices do this is by sending out probe requests. These are =
little "Are you there?" signals that ask nearby access points (routers) =
to respond, so the device knows which networks are available.  This is =
why drivers use the non 6Ghz for allowing clients to identify the router =
has 6ghz capabilities=E2=80=A6 I don=E2=80=99t think is for =
wireless-regdb to take over the HW router compliance and certification =
which is  what 122.  is about

Thank you
Best Regards,
Rudy

From: Dennis Bland <dennis@dbperformance.com>=20
Sent: 05 March 2025 05:49
To: Ping-Ke Shih <pkshih@realtek.com>; wens@kernel.org
Cc: rmandrad@gmail.com; linux-wireless@vger.kernel.org; =
wireless-regdb@lists.infradead.org
Subject: Re: wireless-regdb: Allow 6ghz in the US

Hi everyone:

Section 122 of Document 2020-11236 (Unlicensed Use of the 6 GHz Band) =
mentions the following, which formed the basis of the NO-IR requirement:

  122. The Commission recognizes the utility of permitting probe =
requests to enable client devices to join an access point's network. =
However, these probe requests have the potential to cause harmful =
interference to licensed operations. The Commission therefore only =
permits a client device to send a probe request to an access point after =
it has detected a transmission from the access point.

Best regards,

Dennis


On Wed, Feb 26, 2025 at 2:09=E2=80=AFAM Ping-Ke Shih =
<mailto:pkshih@realtek.com> wrote:
Chen-Yu Tsai <mailto:wens@kernel.org> wrote:
>=20
> > based on this remove NO-IR flag and allow 30 dBm max power
>=20
> The original submission mentioned NO-IR requirements, though I did not
> find such wording. Dennis, do you have any ideas?
>=20

FYI. The description below in [1]

In all cases, an exception exists for transmitting brief messages to an
access point when attempting to join its network after detecting a =
signal
that confirms that an access point is operating on a particular channel.

[1] =
https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicense=
d-use-of-the-6-ghz-band



