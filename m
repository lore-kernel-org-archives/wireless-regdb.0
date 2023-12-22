Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A796C41535
	for <wireless-regdb@archiver.kernel.org>; Fri, 22 Dec 2023 18:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ImC0ZSYUvyxJN7cttyQOqgjHvLFT+DqFZbB/HN6qKhw=; b=UHtub9+CswQ17kJTT+mctmsrbJ
	81hvXSMBZXpvpMv/clez0yruaS2NX60uQ3eArLbQBXPUbpha2F7nM/+ih+izITGxUaLN6oh+4Enoz
	9yNlLmzwT4MuuC0W3MwY4FJH+gKfuFVbxOXoxLUN/q9fUGSlpHIfPxbo/XlGXoI5Kb3alWuFtFj+o
	/GZPBhKW82qWhvonqQYJoqZvNMsiLITw4xk2fEmmDop8WHZz2HoFUAYgilWUjD8NXJDTfAzgjEWVA
	g4YN91HRblsRkM72/cB4PGhqjw9IhQ1hxXxPHZ50bGdNgDMkyuwL9ReguyWGncR/W+5q1RA/F8Nh1
	wXtVXGAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGk7m-006dLl-1o;
	Fri, 22 Dec 2023 18:19:54 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGk7j-006dLF-1a
	for wireless-regdb@lists.infradead.org;
	Fri, 22 Dec 2023 18:19:53 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-dbc666461daso1949008276.0
        for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 10:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703269189; x=1703873989; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ImC0ZSYUvyxJN7cttyQOqgjHvLFT+DqFZbB/HN6qKhw=;
        b=b0fq3jZXg5QytZtt0Z9jYJCehA8RHlnqYYT0X1nouY6gZ/4N5vKlmJVO5Y4X03cphI
         61f5UgBGHE85UVtQLmTqVHnh11haITGbMTbIbCabx/0HZ5tCDj3tBp/wnbgC/f+ejwXE
         fnUztW4P6ghsaaK4d77bJZOiAALsHyxNjdBNJNTD4VYOhjtDyc6xcL3E7ulcO2ZTN3Fd
         eG6jma5dGuWqFGCbCovBqSM14Dll5kynG3zXp+Kp3rhdZspCbzoa1miR7d9Ux4Z/VnOX
         1eIk7d8Bku3V36/R7G5lAAfO4uQVd2pi5FRa+LAKrz+YgV/XyFIfi8JyDqVwn6SRBueb
         i2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703269189; x=1703873989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ImC0ZSYUvyxJN7cttyQOqgjHvLFT+DqFZbB/HN6qKhw=;
        b=aW+BpFLJQnBpaZTIPWdJdfmk/cNgV6YXwguInFAy3tQkdK92elk0VAaTizBTLaQ33e
         YMALaIwaFaY2uZ1LnHkGcDmaf0mQZtTtTS9WR5pbW1PjgPqU9eDlNYlaVGgRf1dgKhAe
         BeMBsGecLs+C01Y+kXNfCPYLGgpcnckMWheop+phQIpddimZV2Tv4vpaSkXfVZrVHYQ2
         4hz1IFWBkfYr7GqFLLk+nq9c45WDWU6Wo7cxwjslCImySAEw6oTs/i87vWptC5h6EUgo
         L3/hH49E3/p4VLrBx7PhoOV6GVIxltnybHHKw2XpMso2D/hANDwX1HCgRTnEUbZLJlJY
         O6Qg==
X-Gm-Message-State: AOJu0YxyGM1/xkoNgcm/gzoywiO/kZAxjJqgWXTF9ICXz4hbLHfknw0L
	/yHrWY5kzzfRJOyIjNmfHur7v6UgrGmD/bblqn4=
X-Google-Smtp-Source: AGHT+IGgC5dPdi6Q5fpqhJEwAc06k2sqlWa6k56IC+uSe8LQvruD53t9fCWsPv9+BftXKXlxMuSTZmF/fhYdmYeqGXA=
X-Received: by 2002:a25:41d1:0:b0:dbd:5721:76ef with SMTP id
 o200-20020a2541d1000000b00dbd572176efmr1135314yba.95.1703269189176; Fri, 22
 Dec 2023 10:19:49 -0800 (PST)
MIME-Version: 1.0
References: <CAL4zwzzFNEMz-UtnR=5kQKTPPUfZjD-cyc0mgvbBZh1LEqBKxw@mail.gmail.com>
 <CAGb2v66VnsbBRtkcy7bn-3SLQW7E0UG1_AwaFj+jcUmqhaxU2Q@mail.gmail.com>
In-Reply-To: <CAGb2v66VnsbBRtkcy7bn-3SLQW7E0UG1_AwaFj+jcUmqhaxU2Q@mail.gmail.com>
From: Diego Garcia del Rio <garci66@gmail.com>
Date: Fri, 22 Dec 2023 15:19:36 -0300
Message-ID: <CAL4zwzwP3LujcX1GaGK-ajfOCp8qN7dateunA2Wvy5Lv=phcPA@mail.gmail.com>
Subject: Re: [wireless-regdb] Argentina approval of 6GHz band - updates to regdb
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_101951_535007_3CE98BBC 
X-CRM114-Status: GOOD (  28.21  )
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

Thanks for the info!

Let me try to get a patch. The limits are a bit strange indeed. But
then the law says it should.follow FCC so I'm not sure.

On Fri, Dec 22, 2023 at 1:07=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Mon, Dec 4, 2023 at 8:26=E2=80=AFPM Diego Garcia del Rio <garci66@gmai=
l.com> wrote:
> >
> > Dear wireless-regdb / linux-wireless list members,
> >
> > Argentina approved, in may 2023, the use of the 6GHz band for indoor
> > use. The specific decree can be consulted here :
> > https://www.boletinoficial.gob.ar/detalleAviso/primera/287126/20230524
> > but the specific technical addendum can be read at the link "Anexo 1"
> > at the end of that document.
> >
> > The main changes are that operation on the band  5925-7125 MHz is
> > allowed at an EIRP of 30dBm for APs and 24dBm for clients. The APs
> > must also follow a maximum Power Spectral Density 5dBm/MHz  and
> > clients must restrict themselves to -1 dBm/MHz EIRP PSD.
> >
> > I wasn't sure how to express the PSD requirements in the txt file nor
> > how (or if its possible at all) to distinguish APs from clients.
>
> I believe the PSD requirements are being discussed [1]. But currently
> there is no support for this. Also no support for distinguishing APs
> from clients.
>
> > The given PSD limits would mean 18dBm for an AP at 20MHz, and 3dBm for
> > each doubling in frequency, so a max of 27dBm for 160MHz APs)  while
> > for clients, it would be 12dBm for a 20MHz channel and again, 3dBm
> > plus for each doubling in channel width  (maximum of 21 dBm for a
> > 160MHz channel).
> >
> > I believe that basically copying the FCC restrictions for the 6GHz
> > band would probably be enough, but I was not 100% sure.
> >
> > Following James Clark's post mentioning the WiFi alliance's page,
> > argentina is also showing up as having adopted the full 5925-7125
> > range.
> >
> > Sorry I can't provide a direct patch to the DB itself since im not
> > 100% sure how to represent the different power limits. Best regards
>
> I think without a representation for PSD limits, and AFAIK unable to
> have multiple rules for the same band with different requirements,
> we can only use the minimum or the hard EIRP limit and PSD limits,
> so that the client doesn't go above the limit when using narrower
> channels.
>
> So in this case the limit would be 12dBm regardless of channel width.
> Can you send a patch for that? Preferably with a comment on why the
> limit is so low, i.e. as explained above.
>
> We can revisit it if the PSD stuff gets merged.
>
> Thanks
> ChenYu
>
> [1] https://lore.kernel.org/all/20230315132904.31779-1-quic_adisi@quicinc=
.com/
>
> > Thanks!
> >
> > _______________________________________________
> > wireless-regdb mailing list
> > wireless-regdb@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/wireless-regdb

