Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0A88C47422
	for <wireless-regdb@archiver.kernel.org>; Fri, 26 Jan 2024 11:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bq6C3UzimOMQhPszdu1oWlrX0R49ALd7JJdeTISGrRQ=; b=4FblAdVytS75EOPXsbIZknL4rU
	uBnnGxSv1GdpYmvZQprDdSGTm6OwMaenEXaumiEIQpfBsXKS6Xwzl4mMMoRNikvRw9xiGW0oGvxGb
	BEKutoM0S901F13FefkXhiganrVqJgU5SBGLCGkA3O60gLeee9M/7DlD5gOxXKAMc9RXb2Pg0d0Lg
	elN7A7UlO5eFvpbX+jC6CyJVwV15ZV7FQXJUnkyN2Bd3q4kVgJwAs1tCVdii04KhHFsmji9LY5mPi
	dQ0Sq5fNmGr5cLfHK+bJdtRg7ZNJoXe9CQUY3BumnR3rYumymQLHDnDtaw0R579JfZFZ6pHW/kqnD
	vOV7w2Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTKWM-000000040gE-16o9;
	Fri, 26 Jan 2024 11:37:18 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTKWI-000000040dr-0Xin
	for wireless-regdb@lists.infradead.org;
	Fri, 26 Jan 2024 11:37:16 +0000
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7beefdfe71eso24114539f.0
        for <wireless-regdb@lists.infradead.org>; Fri, 26 Jan 2024 03:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706269030; x=1706873830; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bq6C3UzimOMQhPszdu1oWlrX0R49ALd7JJdeTISGrRQ=;
        b=dF2I1/AXVFsCDsjF7YD8NzWIXxuCGHl0XqipnVDTWv4N4sO/bKlHjcQmD7J+2uMWOu
         KZOUPiAOAhNcni5un1CuAIpMwRfBa36SOC5cfi63olAUid4oeSymHe64lR0Og4r/0Uts
         HEvJHA6f5rQc1KVSziZ7kru+7EcSa4ttBU6sg79MSJFU67+jKixplOKnwYWlT/fqSSqG
         Lm5pXEFYid1DTSZ5b/3ThEmp5RCTDa3FVArMAi9P5zHftGkyEbKQDMNprMGVBC2HFzTU
         kSApyfCAVqdXMyQgGlICscc4FD8BxXacDbCBGWFFIgjNuGJahpYL0KhDR+QwtDEA1YCf
         q+9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706269030; x=1706873830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bq6C3UzimOMQhPszdu1oWlrX0R49ALd7JJdeTISGrRQ=;
        b=kjFzlHRV/WjwnZoBcTkHovLPx21EaMjcENh6b+hx07OXc+UtnWHkbw8LRJxCw1jQFi
         0hxrFLAhAN+/YO4BBVA3VhYGY5gVztiTv1dUSQLrf50APqsV9wIftxtVcDpcdcOVqwKt
         qyNUPVnAn00GSIIVKtL7zAE5UJJLZACZDcbvtzcBVVVqHviO7N3xHmeuReDlwRGAfFq+
         IXVGlLTwFlBRnN8k0QXbQA9JSlILpI1olyIS1G2MWz//TEbLGless7dgFw2D89Qh0wjW
         pIXjp6fVNvZuvFrorfRvsMSq6LsSyuWjPg6zzvJ+KhGqBX99+H+qN8+5tAhAh2shNr7M
         effA==
X-Gm-Message-State: AOJu0Yw9zwBV07dYAScwWTNwduN/kgPdLPyHghTCxrprBUbkvYIaGwzw
	HAO0hDWSDv27sspiDslyvJb4S9wD4zvo7mO81tz3oIAZykHVnlRtqe/DvJ71WoRJ59ACc6cxORx
	9kQ8MYE/viyqr6D2402xwP6TQ9GQ=
X-Google-Smtp-Source: AGHT+IG6uZ39MU1wUeX0D/BgNk+OX/kfyNKMr0CgvQhakXKnln8nqMHbbev8WnfBSxepk7I11mhg7VW07G/YrGWHMvY=
X-Received: by 2002:a6b:580a:0:b0:7bf:60bf:ed0f with SMTP id
 m10-20020a6b580a000000b007bf60bfed0fmr1671863iob.7.1706269030189; Fri, 26 Jan
 2024 03:37:10 -0800 (PST)
MIME-Version: 1.0
References: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
 <CAPuHQ=GSuKW5=T0GXXCq7Pf9jw=zcEnms-fEJey68QUWH1ishQ@mail.gmail.com>
 <a5123274d5a8d80d554ffb786e25bef72d45f69b.camel@sipsolutions.net>
 <CAPuHQ=HSJNXx_ukS4G=+AsM=qp2yMA4mKD=NHDpq+BoMMLSv+Q@mail.gmail.com> <CAAgmp6vdK-bMJCnXUqhPPADRcd3sJXeFvuSOt5_7HCSV2dVKEQ@mail.gmail.com>
In-Reply-To: <CAAgmp6vdK-bMJCnXUqhPPADRcd3sJXeFvuSOt5_7HCSV2dVKEQ@mail.gmail.com>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Fri, 26 Jan 2024 12:36:58 +0100
Message-ID: <CAPuHQ=F5QXXaELZLApK7WiveXSDoUeH-YEHM4RrZy6qLkibS8Q@mail.gmail.com>
Subject: Re: WiF Transmit Power Control (TPC) Regulatory Requirements?
To: Petko Bordjukov <bordjukov@gmail.com>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, thomas.huehn@hs-nordhausen.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_033714_209295_0F26F972 
X-CRM114-Status: GOOD (  21.08  )
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

Yes, I've read their research when it was published and I view it as
influential results. Their approach jointly optimizes transmit rate
and power for each and every frame (i.e., for each link and each
direction every time).

However, we are talking about much lower hanging fruit if all you want
is an attic mounted access point that tries not to interfere too much
with the neighbors while still dealing with blind spots within the
house. I still think that the periodic global adjustment method also
used by Cisco should be legal and very easy to implement on OpenWrt.

On Fri, Jan 26, 2024 at 11:46=E2=80=AFAM Petko Bordjukov <bordjukov@gmail.c=
om> wrote:
>
> Hi,
>
> The only project I've heard of that implements such functionality is
> https://github.com/thuehn/Minstrel-Blues.
>
> On Thu, Jan 4, 2024 at 12:02=E2=80=AFPM <b.K.il.h.u+tigbuh@gmail.com> wro=
te:
> >
> > Ideally, TPC should be a fully automatic mechanism that reduces
> > transmit power between the two points to as low of a level as possible
> > while delivering the same quality of service. The purpose is to reduce
> > the excess headroom in each link. I.e., if you could still link with
> > 65Mb/s towards a given direction using 14dBmW, you should not transmit
> > with 20dBmW.
> >
> > Some only set the AP TX power globally (i.e., same towards all of its
> > connected clients at the moment) to tackle the hidden/exposed node
> > problem, but again must do this adaptively and change this constantly
> > without human intervention. There exist multiple advanced algorithms
> > for this, some proprietary tuned for corporate deployment.
> >
> > Actually, if we accepted automatically retuning tx power with iw based
> > on actual link stats of momentarily connected clients every 60s with
> > cron, this could be added to OpenWrt pretty easily.
> >
> > > Class A devices control their transmit power within =C2=B13 dB and cl=
ass B devices control their power within =C2=B19 dB.
> >
> > - https://www.litepoint.com/blog/wi-fi-6-ofdma/
> > - https://www.cisco.com/c/en/us/td/docs/wireless/controller/technotes/8=
-3/b_RRM_White_Paper/tpc.html
> >
> > > On Thu, 2024-01-04 at 10:07 +0100, b.K.il.h.u+tigbuh@gmail.com wrote:
> > > > You can find a wording in most such regulations that if TPC is not
> > > > supported, the maximal TX power must be reduced by 3 dBmW. Hence in
> > > > all such cases, the entries in db.txt contain 3 less than the maxim=
um.
> > > >
> > > > If, on the other hand, you know of a country that specifies that
> > > > devices lacking TPC may not use the band at all, all such band entr=
ies
> > > > must be omitted (commented out along with a URL).

