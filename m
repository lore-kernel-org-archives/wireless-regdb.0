Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36EADC282DE
	for <wireless-regdb@archiver.kernel.org>; Wed,  5 Mar 2025 16:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysHnt+Q4SKk1eIfEQJ6pwY+pJyJmWq3UE5479PZRYW0=; b=31mcv1aU972Vzf
	W7TcIDiC8C09MLFN8bJi0JcYcZWLSM4DZq5kttSkp4PO/gEWWP9xqfqJeYQ6hObFrJyZUjhrBCP/s
	fTpdo5yrftBFu0E0VmxSpID0K/bFBO2iupNQaSTZ5a8mkxbD5H2lGHlAXG2H7Il7UTy21i4c3qGW6
	8pzeGiZ4ltn1IV642MV/NjwHylfjUqmwvzcN4Z3AU6KHUudJ0kYPQy2VFRm96DG7pNr+RV8Ez8HdO
	ZKXI0soPgg5tD8QwYmrlMgQ+e8FIWkQpG+IzoLVDazQJxXr6l+/ZCYjGshadARivh4cDEVNvUd2Gz
	VR9tS8dS8SKlaYTtQHtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tprSG-00000008dUn-0IP7;
	Wed, 05 Mar 2025 16:18:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpqPH-00000008UVH-2mj6
	for wireless-regdb@bombadil.infradead.org;
	Wed, 05 Mar 2025 15:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	Cc:To:Subject:Message-ID:Date:From:Reply-To:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description;
	bh=ysHnt+Q4SKk1eIfEQJ6pwY+pJyJmWq3UE5479PZRYW0=; b=SNrPuWdGKLGY+aUgzx0wOk/EJP
	KngE9hs65FesuacNeEvwFnqIo3wzMGLHKeo1G0N9q5kTPpdag00A4GI8PHhon7SoMP0tck9MWIkj1
	zkgirzJkkiqKd32kAxzz55nBAmvCGiAM4LACZOmsjm1sfeImaadmdVZEa5tFHYNssTI6umFcmss5m
	88l2Kbiq8uEKW3+CnLuoYZlHAjI7KAlO87b5ZXYdAPXeJCdjgV3Iu54rwzib49rB+FhbpCzYCaqp/
	AqTqlnrLXCpQocry0iEdMWAmKS1LwrUVkumy4Z/oqi6etkB43Thm0h7mzfN3ll9ECuxxXw8bvZbc8
	miNZGF9Q==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpqPE-00000005jyo-27N0
	for wireless-regdb@lists.infradead.org;
	Wed, 05 Mar 2025 15:11:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4D2EAA4596B
	for <wireless-regdb@lists.infradead.org>; Wed,  5 Mar 2025 15:05:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA458C4CEEB
	for <wireless-regdb@lists.infradead.org>; Wed,  5 Mar 2025 15:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741187488;
	bh=tB9GOxtavRA2qvmdaSxmmHsJMc9VVC6DLgW+JzGYUTI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=COUU4FRt3bQFBN7DJY7MnEy+aqrg300fmqveJIjNwiKSoW/XyfoEkJi+IHwvqrIjc
	 Z6UUZXrIltQV1Q3S8Zmf9NUm/LDJA90r6QX7/ZBj3Bf+oYIGBEUwz0vPiD3eWEH8L4
	 rDFR7bJ46cw2Gn4UTvCIdfvmlp8DTmGP5WTasBwiMAj713V+8n8O119bkr7UzNc1XT
	 y+6i3P29snKRrhP3lO4eut2y8avuKwd9wbr1i8RW8kLr1qeJ2kQyJkWnX7SBE0dpB+
	 mz9mc+uVaV9GYicscd1wuwk0PnMAEqiL5Z5deCKGjvzTGxIRMqHm2LZeqJzjG5nGHY
	 V1LZk13XEa9Yg==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30bd473770bso15110211fa.3
        for <wireless-regdb@lists.infradead.org>; Wed, 05 Mar 2025 07:11:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWls+zxI0uFzy1wy1EX7iYfqFkGPfVAHwSJ7P9aBcOAxVX1QVuTFUpgo4W53iQiRcvJ1hIYV7DELlArnS0C2Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwFpmdZAGB1r2V0O3SNnHSBrEQ7++Y88yknsNqNSqzlgDnw98ED
	985QsHjs51jQBJwwNhkfRSR/z5/xJP2SJMxdtoN/b5W9Jps9LQeQ2a8ESFDqUlmqTA37+HlY27s
	Si67HvUgUjhJhr6JJVy2ji4CLOFE=
X-Google-Smtp-Source: AGHT+IFqp4PPBWjgNNVSE890qPKdF3ynsFSNjoXlnL14WLC8Te3d7te3csy3TC1xcQAjUXfKTMKKB31NcLUjvMJ3SxI=
X-Received: by 2002:a2e:a781:0:b0:30b:8c92:63ec with SMTP id
 38308e7fff4ca-30bd7b11c17mr15331551fa.32.1741187486977; Wed, 05 Mar 2025
 07:11:26 -0800 (PST)
MIME-Version: 1.0
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com> <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
 <ff6ad414457e4b1cb68e834978a553c3@realtek.com> <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com>
 <002d01db8da7$daf2ed50$90d8c7f0$@gmail.com> <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com>
 <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr> <001a01db8ddc$019e8890$04db99b0$@gmail.com>
In-Reply-To: <001a01db8ddc$019e8890$04db99b0$@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 5 Mar 2025 23:11:13 +0800
X-Gmail-Original-Message-ID: <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
X-Gm-Features: AQ5f1JpDvLPwTM8VPit-L5pglt24QglWLGT5ieoENaXVI_9p3KF0T-ysJNxJL7s
Message-ID: <CAGb2v6689=CmxqOk9rCSXPctg8iCZzOUgcaxdNeB9uHSHzk39Q@mail.gmail.com>
Subject: Re: wireless-regdb: Allow 6ghz in the US
To: rmandrad@gmail.com
Cc: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>, 
	Dennis Bland <dennis@dbperformance.com>, Ping-Ke Shih <pkshih@realtek.com>, 
	linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_151132_721822_E3CC05B6 
X-CRM114-Status: GOOD (  21.44  )
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
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Cc-ing Johannes since I think this discussion also involves what cfg80211
does.

On Wed, Mar 5, 2025 at 10:36=E2=80=AFPM <rmandrad@gmail.com> wrote:
>
> See below
>
>
> [1] Beacon Hints
> " cfg80211 has a feature called beacon hinting to assist cfg80211 in allo=
wing a card to lift passive-scan and no-beaconing flags. Passive-scan flags=
 are used on channels to ensure that an interface will not issue a probe re=
quest out. The no-ir flag exists to allow regulatory domain definitions to =
disallow a device from initiating radiation of any kind and that includes u=
sing beacons, so for example AP/IBSS/Mesh/GO interfaces would not be able t=
o initiate communication on these channels unless the channel does not have=
 this flag. If either of these flags are present on a channel a device is p=
rohibited from initiating communication on cfg80211."

Doesn't this do what the FCC rules say? No initiating communications
unless prior traffic has been seen on the channel for client devices.

> ...
>
> " It is also important to note that the Linux kernel beacon hint mechanis=
m only trusts beacons from 802.11 APs, not Mesh or IBSS."
>
> [1[  https://wireless.docs.kernel.org/en/latest/en/developers/regulatory/=
processing_rules.html
>
> My experience is with Openwrt and APs. We have users in the US complainin=
g that they can't use 6GHz due to NO-IR

OK. It would have helped if you explained that it is the AP side that
is not working.

Regarding that, AFAIK we don't really have a way to specify different
rules for APs vs client devices. AFAIK all the power limits written in
the database are for client devices, because clients seem to have more
restrictions.

ChenYu

> -----Original Message-----
> From: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
> Sent: 05 March 2025 12:19
> To: wens@kernel.org; rmandrad@gmail.com
> Cc: Dennis Bland <dennis@dbperformance.com>; Ping-Ke Shih <pkshih@realtek=
.com>; linux-wireless@vger.kernel.org; wireless-regdb@lists.infradead.org
> Subject: Re: wireless-regdb: Allow 6ghz in the US
>
> On 05/03/2025 09:58, Chen-Yu Tsai wrote:
> > On Wed, Mar 5, 2025 at 4:23=E2=80=AFPM <rmandrad@gmail.com> wrote:
> >>
> >> That is not specifying NO-IR which basically is denying any 6Ghz in
> >> the US what it means in my opinion is
> >>
> >>
> >>
> >> Client devices (like phones, tablets, laptops) need to find Wi-Fi netw=
orks before they can join them.
> >>
> >> One-way devices do this is by sending out probe requests. These are li=
ttle "Are you there?" signals that ask nearby access points (routers) to re=
spond, so the device knows which networks are available.
> >
> > Section 122 says: The Commission therefore only permits a client
> > device to send a probe request to an access point after it has
> > detected a transmission from the access point. The client device will
> > be required to send the probe request on the same frequency as the
> > access point's transmission.
> >
> > I think this translates to "passive scanning only", which is what
> > NO_IR is meant to specify. NO-IR was previously called PASSIVE-SCAN,
> > and was renamed when it was merged with NO-IBSS.
> >
> > Maybe the kernel's implementation needs work? I'm not a WiFi person so
> > I really don't know all the details.
> >
> >> That is why drivers use the non 6Ghz for allowing clients to identify
> >> the router has 6ghz capabilities=E2=80=A6 I don=E2=80=99t think is for=
 wireless-regdb
> >> to take over the HW router compliance and certification which is
> >> what 122.  is about
> >
> > No, section 122 is definitely about client devices, which is what
> > Linux devices are.
>
> No, Linux also supports access point, IBSS, OBSS and mesh, not to mention=
 monitor injection.
>
> If you remove NO-IR, you are allowing Linux to create access points, ad-h=
oc and mesh networks on the channel without conditions.
>

