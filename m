Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 457EFC19F32
	for <wireless-regdb@archiver.kernel.org>; Wed,  5 Mar 2025 16:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZUNOlfz4QA/sJfG98zHcorBM2yYfAKZgER92KCEyonA=; b=3iTzWOEiTm3JgDpF9oZKfWPnup
	tSFLPXQUqh8OTVIs8hrH93PPIHa+++4jrRQQ2a/6ZUx8laKETrbkxzv6+ctLmL/crODvQ2KSLJMnU
	ZKut2gVPZdJgRSn2moFE/2WYG37A5XguTVYkslJ3ZLqnLYdP1f5SAIbhNBQUIHAnRdMxgu3B5IPxW
	ORR+31fhqh50kL/LeV/Ykfq9oMGZN5k6gMxNFPDprLdXxk5KEcceTlm0R+Xapg81dxGuYENXdPpx1
	qEo61JMjOG+/CM9UOz8rAGAxMLWluuQjkHd4f5lp0GOI9hmoNmwaEgfRyE2n/Xuep+VIszZIwxS1+
	cLwRGwzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tprgm-00000008gCS-2iOZ;
	Wed, 05 Mar 2025 16:33:44 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpqeY-00000008WHW-1n77
	for wireless-regdb@lists.infradead.org;
	Wed, 05 Mar 2025 15:27:24 +0000
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-390eebcc371so3272289f8f.0
        for <wireless-regdb@lists.infradead.org>; Wed, 05 Mar 2025 07:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741188440; x=1741793240; darn=lists.infradead.org;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZUNOlfz4QA/sJfG98zHcorBM2yYfAKZgER92KCEyonA=;
        b=TTBlTGhASs/7WdKahqYGeSpeavUM1Stz7XLVby3tm8GqeolR4fyR+jYGJQO3rTOM9+
         MNw0CqMRU66xltcDC5AE/RESafJzeboIq/KQeDmgljA1nVeuxd4wthH9tHOIY8shCzXj
         daAVqdTH/tu4tjFLR3FfC6rvc0khBYhThvFzWUJCxZnRl8shCKFAZh6ZgYQeWcX9H9ZO
         wRH2nPGNS8MAgD8r7ZM7y7y5rTxJROTPuQe3XIqt0BWvg4snspu0BVqoA/feUq/df40U
         AJT9vcBLrl6fQY5VcCD1pQZwXM5ImvVTmJ7cV426MNatkAany3m8RxoHPUjYc0xekEbj
         BD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741188440; x=1741793240;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZUNOlfz4QA/sJfG98zHcorBM2yYfAKZgER92KCEyonA=;
        b=t2YB0uPGlTlDc3Rki09nLVBVDPpQ/qPoH3S/J98D6WY6Hgpu05UXt6LcDSlvugB1RD
         freI0Vb1p4QskNTxxxuX67XzEesfMRc2oY4No1xCCxCsLXcv1kywcbDeQWTb26W+/4M8
         xf8dY5KfZiqA3fGJnUVJ/bl8Ccl2ID2o6Rtho9js98ivDDDBMGMqqeb14EyNE3NxxqJ6
         kY+s8v90Ifgxz0BeJJJ0rkEISrxzwMamq9EPTkZ0Jexk2kFbBaSZMoo6ir8FDPuAq/AZ
         IG+3g2PgMRF/+EKy0fVE2If3S5md3Wsu/IjBHN1YH/I4wFauQVfBC+NHdyzPw2hWzoQV
         Tw9g==
X-Forwarded-Encrypted: i=1; AJvYcCXUnNi9QkKg0cMo+1F+jJwTE3Z3D80oQ9JDWQGI+62njSyeBAzII4AwXhImxKQiQYmgMMf0/pmj0aA/I9oHtg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhlO4z1rC8GniFq1YXnZ92VMrKTS7MjJlHiqC4LeW3c4sfZkbF
	9CP81h3/G7shnOuueuKgh/6tmXD37pQTcCugni74nBLdIoy0M14=
X-Gm-Gg: ASbGnctTDMlk7fnuP5pAvNcvgUf8mSIgNMVQ2ujMufEaPmOqVXXB6Qmma9NMsS5e+Tq
	O/H/XkbbGCNB58Eb/Mv2IWjY/75GSrZOZDV44hp/WGmybfLEWPJHRYZPsjZn00/+qwNFcxnLrmt
	zHdlAvPWbh+aHVTdVAb5rRdqZc9ZP2bHwh+GCc5iNisNVcgV1ibNCfZYLQ5zQ5Ej41CI/WNXEJI
	M8InjwNeG5nKBkkKGPQXovWYwSYHyHdiuTG4G6cU6/MHdF/7zZDda2tH89WxuoVyisqQ05zTxIl
	2xAntPKJA6oLMi0OwJH2AsEXG3uji6mdcMxhDMNowmfWp35cs2HFloLzB0CIEIa/ELxOQuONlcU
	FIGMKk9wOYhuon2gQw3hZSttqpyaEY+4=
X-Google-Smtp-Source: AGHT+IGynrrO1AYCYWfxF5mTzcYIEuN10gQdVtirCk09RjQ6ik08z7m+wENAvlc52HD+ugmKX445VA==
X-Received: by 2002:a5d:5850:0:b0:391:4f9:a039 with SMTP id ffacd0b85a97d-3911f7400aamr3778136f8f.16.1741188440201;
        Wed, 05 Mar 2025 07:27:20 -0800 (PST)
Received: from winhome (cpc112753-pert6-2-0-cust678.16-4.cable.virginm.net. [86.18.22.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e485d906sm21573380f8f.90.2025.03.05.07.27.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Mar 2025 07:27:19 -0800 (PST)
From: <rmandrad@gmail.com>
To: <wens@kernel.org>
Cc: "'Nicolas Cavallari'" <nicolas.cavallari@green-communications.fr>,
	"'Dennis Bland'" <dennis@dbperformance.com>,
	"'Ping-Ke Shih'" <pkshih@realtek.com>,
	<linux-wireless@vger.kernel.org>,
	<wireless-regdb@lists.infradead.org>,
	"'Johannes Berg'" <johannes@sipsolutions.net>
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com> <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com> <ff6ad414457e4b1cb68e834978a553c3@realtek.com> <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com> <002d01db8da7$daf2ed50$90d8c7f0$@gmail.com> <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com> <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr> <001a01db8ddc$019e8890$04db99b0$@gmail.com> <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
In-Reply-To: <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
Subject: RE: wireless-regdb: Allow 6ghz in the US
Date: Wed, 5 Mar 2025 15:27:23 -0000
Message-ID: <000101db8de3$18727b10$49577130$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQMUrzCf8XdNoAU6+fu4ECJnDc0awgHIktuQAg9ms7MCOQTCTwHce3oJAeRkceYB16Yw4QG9HTMVAdpTHyuweFySQA==
Content-Language: en-gb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_072722_468474_1ACF0480 
X-CRM114-Status: GOOD (  32.51  )
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

Thank you Wens for cc'ing Johannes

One of the issues [1] reported with one the openwrt devices ... my =
understanding / experience is that if there is NO-IR basically clients =
will not connect (I can't think of a use case where there's prior =
traffic)

[1] https://github.com/openwrt/openwrt/issues/18079


-----Original Message-----
From: Chen-Yu Tsai <wens@kernel.org>=20
Sent: 05 March 2025 15:11
To: rmandrad@gmail.com
Cc: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>; =
Dennis Bland <dennis@dbperformance.com>; Ping-Ke Shih =
<pkshih@realtek.com>; linux-wireless@vger.kernel.org; =
wireless-regdb@lists.infradead.org; Johannes Berg =
<johannes@sipsolutions.net>
Subject: Re: wireless-regdb: Allow 6ghz in the US

Cc-ing Johannes since I think this discussion also involves what =
cfg80211 does.

On Wed, Mar 5, 2025 at 10:36=E2=80=AFPM <rmandrad@gmail.com> wrote:
>
> See below
>
>
> [1] Beacon Hints
> " cfg80211 has a feature called beacon hinting to assist cfg80211 in =
allowing a card to lift passive-scan and no-beaconing flags. =
Passive-scan flags are used on channels to ensure that an interface will =
not issue a probe request out. The no-ir flag exists to allow regulatory =
domain definitions to disallow a device from initiating radiation of any =
kind and that includes using beacons, so for example AP/IBSS/Mesh/GO =
interfaces would not be able to initiate communication on these channels =
unless the channel does not have this flag. If either of these flags are =
present on a channel a device is prohibited from initiating =
communication on cfg80211."

Doesn't this do what the FCC rules say? No initiating communications =
unless prior traffic has been seen on the channel for client devices.

> ...
>
> " It is also important to note that the Linux kernel beacon hint =
mechanism only trusts beacons from 802.11 APs, not Mesh or IBSS."
>
> [1[ =20
> https://wireless.docs.kernel.org/en/latest/en/developers/regulatory/pr
> ocessing_rules.html
>
> My experience is with Openwrt and APs. We have users in the US=20
> complaining that they can't use 6GHz due to NO-IR

OK. It would have helped if you explained that it is the AP side that is =
not working.

Regarding that, AFAIK we don't really have a way to specify different =
rules for APs vs client devices. AFAIK all the power limits written in =
the database are for client devices, because clients seem to have more =
restrictions.

ChenYu

> -----Original Message-----
> From: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
> Sent: 05 March 2025 12:19
> To: wens@kernel.org; rmandrad@gmail.com
> Cc: Dennis Bland <dennis@dbperformance.com>; Ping-Ke Shih=20
> <pkshih@realtek.com>; linux-wireless@vger.kernel.org;=20
> wireless-regdb@lists.infradead.org
> Subject: Re: wireless-regdb: Allow 6ghz in the US
>
> On 05/03/2025 09:58, Chen-Yu Tsai wrote:
> > On Wed, Mar 5, 2025 at 4:23=E2=80=AFPM <rmandrad@gmail.com> wrote:
> >>
> >> That is not specifying NO-IR which basically is denying any 6Ghz in =

> >> the US what it means in my opinion is
> >>
> >>
> >>
> >> Client devices (like phones, tablets, laptops) need to find Wi-Fi =
networks before they can join them.
> >>
> >> One-way devices do this is by sending out probe requests. These are =
little "Are you there?" signals that ask nearby access points (routers) =
to respond, so the device knows which networks are available.
> >
> > Section 122 says: The Commission therefore only permits a client=20
> > device to send a probe request to an access point after it has=20
> > detected a transmission from the access point. The client device=20
> > will be required to send the probe request on the same frequency as=20
> > the access point's transmission.
> >
> > I think this translates to "passive scanning only", which is what=20
> > NO_IR is meant to specify. NO-IR was previously called PASSIVE-SCAN, =

> > and was renamed when it was merged with NO-IBSS.
> >
> > Maybe the kernel's implementation needs work? I'm not a WiFi person=20
> > so I really don't know all the details.
> >
> >> That is why drivers use the non 6Ghz for allowing clients to=20
> >> identify the router has 6ghz capabilities=E2=80=A6 I don=E2=80=99t =
think is for=20
> >> wireless-regdb to take over the HW router compliance and=20
> >> certification which is what 122.  is about
> >
> > No, section 122 is definitely about client devices, which is what=20
> > Linux devices are.
>
> No, Linux also supports access point, IBSS, OBSS and mesh, not to =
mention monitor injection.
>
> If you remove NO-IR, you are allowing Linux to create access points, =
ad-hoc and mesh networks on the channel without conditions.
>


