Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DEC7CCA470
	for <wireless-regdb@archiver.kernel.org>; Tue,  7 Oct 2025 04:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33ewjYkb4qoFkkq0fX8pWFVAxvzax+lpS2Yg53heRLg=; b=qR8Lu/TZYSiXSG
	P/nqI84YHHxF1iQk+xI0JBSoiziSxNLYXxqRTnU9UMDBcDiOxjY5XvKg9m0onp13rzssBaM2uDpeO
	nsGK4mGtqSHqCwuCKzDIW8iAu/CKuWXxvalq3uTs1AIDBz7oaS1kAUCWFAdy+UDiLkD8GNNgKzIzl
	IJq7Env4UIvnbJK1Z9lhGwSWQpy42ii63oRtw5Nhb7OV9nImlRJaerk9SOGaNdTuQvGEyeOLScc1O
	Y9cDwk0o2pFhbgQVu1PsL74B/aa9uLcmbTjHA7Kr3SB/7Q4V90qPuI2/yz4N5A+E7/FMwS97oKMIs
	ZD4+tuAzBbQ1FaKqQ54A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5zLE-00000001FpH-1UGX;
	Tue, 07 Oct 2025 04:30:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5zLB-00000001FoQ-0i4e
	for wireless-regdb@lists.infradead.org;
	Tue, 07 Oct 2025 04:30:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D7444451B
	for <wireless-regdb@lists.infradead.org>; Tue,  7 Oct 2025 04:30:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2C02C4CEFF
	for <wireless-regdb@lists.infradead.org>; Tue,  7 Oct 2025 04:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759811419;
	bh=33ewjYkb4qoFkkq0fX8pWFVAxvzax+lpS2Yg53heRLg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=fIdPjC1uBAeGidI3TdvLjGBaFrrjdrDFqgN3yAnIORJkHDjR0uGsJEa7Z2SFuzIPU
	 /IRZtQP+IMqkFdYJrZl8qxxwTVqUhon8OK0s/IBHf3NWi8CGWZCFU0Ka45Zmvml5Xg
	 FxG0RuuqKbjE/4vgQFP0hC2IL4Pfrbz0l2bZ6RqjCRgFCT66zT1vHFmJbwIrPc+ZKv
	 1Q8Q+Tr5PairLe/60oc6i7Kf7HbjNCQqOQ5j63VR1T335lQojcF5x/vor18lEKezgg
	 6W0I2aMdG5r6w8iN3RzmSEzs5MAoxXPkvWSClYsvg97BRfjzTb/PWLW+gkC9iQ5OQA
	 bd6EffE3lRjJg==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-371e4858f74so64691841fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 06 Oct 2025 21:30:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU3oEZvgggOa8AUBJ9gSNy3jq1nPlLYDMY8WeDooE6KKr2QFodh+bc4iFBFW8VANq7SeZnygQOiec4ZTzJETw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWnXMIpJcOftjWTzcDZkyzJp/fcGwZRJOpCd6QxfxWDGTJ/tf2
	bv5A6W4EsJb4jRvxvLeahf0cQRtKH3YWYsps3ITm/mu3YudVCNFr8LP3JUNfFuOZQ4vNhUYHWy+
	b2nOywiyd8BwDN6kJ5wdL5XGVpbokhnw=
X-Google-Smtp-Source: AGHT+IHYg3D7tiGpbxNGeGRo6iabMU4brCVrPZKp3O/2A56FdjfE/684Z/RFeDpLQX+bS8W1L3whBaHxHRFXKtRMl5Q=
X-Received: by 2002:a05:651c:25db:10b0:337:f57a:6851 with SMTP id
 38308e7fff4ca-375f525765bmr4408111fa.14.1759811418233; Mon, 06 Oct 2025
 21:30:18 -0700 (PDT)
MIME-Version: 1.0
References: <d2e09391-d2fd-4456-ae45-103239dbac74@gmai.com>
 <CAGb2v66VXhx0ymHGOdS33W2QxUMxew1xW--+hrs+jy48u6MfoA@mail.gmail.com> <252f428e-8903-4d3f-8337-d42e6a2ad4a4@gmai.com>
In-Reply-To: <252f428e-8903-4d3f-8337-d42e6a2ad4a4@gmai.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 7 Oct 2025 12:30:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v66iOCSm6ST4Bw4ioRjjnNvHCxSaGWcNS0SLWOk=ELy+5w@mail.gmail.com>
X-Gm-Features: AS18NWBZ9y8hGD18GPcXmgFcqXiLhk4F0H2Z81m6IicqdpApkT5ncP5KiOug_eU
Message-ID: <CAGb2v66iOCSm6ST4Bw4ioRjjnNvHCxSaGWcNS0SLWOk=ELy+5w@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Ukraine (UA) on 6GHz
To: Dmitry Geurkov <d.geurkov@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_213021_246398_52BC20C9 
X-CRM114-Status: GOOD (  23.64  )
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

Hi,

So actually it is already enabled in the latest release of the database:

https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git/tre=
e/db.txt?h=3Dmaster-2025-07-10#n1984

23 dBm is 200 mW.

So if it doesn't work for you yet, perhaps check the database version
on your system?


Thanks
ChenYu

On Sat, Oct 4, 2025 at 11:57=E2=80=AFPM Dmitry Geurkov <d.geurkov@gmail.com=
> wrote:
>
> Hi ChenYu,
>
> Here is official website with text of amendment that was approved and
> became a law as of 13 August 2025
>
> https://zakon.rada.gov.ua/laws/show/976-2025-%D0%BF#Text
>
> The text is in Ukrainian language but you can use google translate and
> translation is pretty much accurate
>
> If you have any questions feel free to ask, thanks in advance
>
>
> On 10/4/2025 5:38 PM, Chen-Yu Tsai wrote:
> > Hi,
> >
> > On Sat, Oct 4, 2025 at 10:36=E2=80=AFPM Dmitry Geurkov <d.geurkov@gmail=
.com> wrote:
> >> Hi,
> >>
> >> 6GHz wireless band was recently allowed by Ukraine government for WiFi
> >> 6e standard indoor use.
> >>
> >> Could you please add the appropriate setting to wireless-regdb
> >>
> >> I'm not familiar with wireless-regdb format nor an expert on wireless
> >> technology to create PR myself
> >>
> >> You can find all needed information here
> >>
> >> https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-rad=
iotehnologiyi-wi-fi-6e/
> >> <https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-ra=
diotehnologiyi-wi-fi-6e/>
> >>
> >>
> >> https://mrt-cert.com/en/gjxw/4323.html
> >> <https://mrt-cert.com/en/gjxw/4323.html>
> >>
> >>
> >> Best regards from Ukraine
> > Thank you for the notice.
> >
> > Would it be possible to provide a link to an official document or web p=
age
> > that describes the change? Something from a government ministry or offi=
ce.
> > We prefer those as reference over second hand sources.
> >
> >
> > Thanks
> > ChenYu

