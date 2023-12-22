Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD2D6C41535
	for <wireless-regdb@archiver.kernel.org>; Fri, 22 Dec 2023 04:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYAiiwaXzF3Om3Epa4+2xU28tTFjhZWJaBqu25DVOPo=; b=aFLdjEXm8gXoXw
	tjS7ecVX7LdZjYfQEx6zpdcZMU2FWm7VYTcISvFkZnLyAPHOM3/LblYDTLVp0PqMiiRe611WZZbMb
	rw7kBILyuMzscL2uCKb2t/KwBLWrJ2GemtlZfIA1hhSfHTQpzntON+7J91J900cBV/16Za/7q0ni1
	r78844k5yBhrvz7jkl0/5zgbX4s/ayUC0tmkEHjEF/gjI4jt8C54gS/YdXp3f8EjoKHcccktFeiNp
	3Q8931H1m0Mj3Y7Sln6moVdLm9A9OLQzW4V9Eg5HVOvViFruWb0wn2zFq6qNLf7yjk/GOUG8MIquT
	KYd5w3Cs8MQLASNcIdjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGWpN-004oOw-0R;
	Fri, 22 Dec 2023 04:08:01 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGWpJ-004oOb-03
	for wireless-regdb@lists.infradead.org;
	Fri, 22 Dec 2023 04:07:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A5356CE1F60
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 04:07:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FBD8C433C7
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 04:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703218070;
	bh=A8elD+Q4IAl1IaHtaC2VfYkuKZ7yRnkSdjso4O8GHBQ=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=OoGJ5u+LDisyx6I9K4+szwWe+3sqOk3AgHQUKRVNJ/PiQCNvygpUNQvUPB5OZJzQZ
	 dJyMwS/ENcWlfPkQlVfX1xSAIJI4sXLuhR3aPzhvgVtnQ9veKnZJy9vocMz8msR65K
	 +xOgkg3EEHwUF+/yLOSxclX2ntGMciXkp3HvibW84262Tz6MTT70Aec0qH7SPZuJCD
	 Ze84DE6C7bgdG3k8QWxEuMewuDmAdiei7OoBya0EC8970Z2opYJk9+dEbjmGcPUTj9
	 IhL/OumzqhdUS/Qa3k7mTPzD5DOD00N5sg67ZDMP716zQsRLBvdt9O8C+wC3dKkNDV
	 VbNBs42Nf7ZXQ==
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6da45aa5549so1087405a34.0
        for <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2023 20:07:50 -0800 (PST)
X-Gm-Message-State: AOJu0YxqipG+hIs2Kva5Ug53ymOxbZWNy1fGqvg+OAGaK+pwbB7fYy/T
	WZwZwT9fTm+iMgg4npzaMgOHVM02kjPFKQ6Lmn0=
X-Google-Smtp-Source: AGHT+IHQp7NKxUerLfLb2jLDBTjPW8Ljtiqi9eLhOXTjQ/qThdDW39NAIqqPrUjPSFLUUm4IgrHZhYdbLepvmy4Dysg=
X-Received: by 2002:a05:6830:6c15:b0:6d9:cf49:f5e2 with SMTP id
 ds21-20020a0568306c1500b006d9cf49f5e2mr818940otb.19.1703218069905; Thu, 21
 Dec 2023 20:07:49 -0800 (PST)
MIME-Version: 1.0
References: <CAL4zwzzFNEMz-UtnR=5kQKTPPUfZjD-cyc0mgvbBZh1LEqBKxw@mail.gmail.com>
In-Reply-To: <CAL4zwzzFNEMz-UtnR=5kQKTPPUfZjD-cyc0mgvbBZh1LEqBKxw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 22 Dec 2023 12:07:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v66VnsbBRtkcy7bn-3SLQW7E0UG1_AwaFj+jcUmqhaxU2Q@mail.gmail.com>
Message-ID: <CAGb2v66VnsbBRtkcy7bn-3SLQW7E0UG1_AwaFj+jcUmqhaxU2Q@mail.gmail.com>
Subject: Re: [wireless-regdb] Argentina approval of 6GHz band - updates to regdb
To: Diego Garcia del Rio <garci66@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_200757_410013_B8E98420 
X-CRM114-Status: GOOD (  21.93  )
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

On Mon, Dec 4, 2023 at 8:26=E2=80=AFPM Diego Garcia del Rio <garci66@gmail.=
com> wrote:
>
> Dear wireless-regdb / linux-wireless list members,
>
> Argentina approved, in may 2023, the use of the 6GHz band for indoor
> use. The specific decree can be consulted here :
> https://www.boletinoficial.gob.ar/detalleAviso/primera/287126/20230524
> but the specific technical addendum can be read at the link "Anexo 1"
> at the end of that document.
>
> The main changes are that operation on the band  5925-7125 MHz is
> allowed at an EIRP of 30dBm for APs and 24dBm for clients. The APs
> must also follow a maximum Power Spectral Density 5dBm/MHz  and
> clients must restrict themselves to -1 dBm/MHz EIRP PSD.
>
> I wasn't sure how to express the PSD requirements in the txt file nor
> how (or if its possible at all) to distinguish APs from clients.

I believe the PSD requirements are being discussed [1]. But currently
there is no support for this. Also no support for distinguishing APs
from clients.

> The given PSD limits would mean 18dBm for an AP at 20MHz, and 3dBm for
> each doubling in frequency, so a max of 27dBm for 160MHz APs)  while
> for clients, it would be 12dBm for a 20MHz channel and again, 3dBm
> plus for each doubling in channel width  (maximum of 21 dBm for a
> 160MHz channel).
>
> I believe that basically copying the FCC restrictions for the 6GHz
> band would probably be enough, but I was not 100% sure.
>
> Following James Clark's post mentioning the WiFi alliance's page,
> argentina is also showing up as having adopted the full 5925-7125
> range.
>
> Sorry I can't provide a direct patch to the DB itself since im not
> 100% sure how to represent the different power limits. Best regards

I think without a representation for PSD limits, and AFAIK unable to
have multiple rules for the same band with different requirements,
we can only use the minimum or the hard EIRP limit and PSD limits,
so that the client doesn't go above the limit when using narrower
channels.

So in this case the limit would be 12dBm regardless of channel width.
Can you send a patch for that? Preferably with a comment on why the
limit is so low, i.e. as explained above.

We can revisit it if the PSD stuff gets merged.

Thanks
ChenYu

[1] https://lore.kernel.org/all/20230315132904.31779-1-quic_adisi@quicinc.c=
om/

> Thanks!
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

