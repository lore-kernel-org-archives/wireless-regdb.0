Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D73A3C021BC
	for <wireless-regdb@archiver.kernel.org>; Wed, 26 Feb 2025 09:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xlx2uT4DE3pUEcJGEI859f4n1olSxyWc3awOxYZ3fLI=; b=JzRmDVUpvoev6vos5brKvTnwm+
	MkQ69bRKjZo6YM38+ZaPvPoMrxnDJuXwnJLqh+HqQXoz6RMzh7hgIL6tpqXmdWqvtFUjjt+c0ywUA
	cVaveIfNYoOyPYuow7B5eIJYNgNkceBYb2g6hX+z8ITK9HcSrGuQEF7coEKGBr4fIMffcQoBmXYE5
	iaWj4IVqehcq3mR21wx1LmyfTs1yDPA4pAmEUKopk9DyjgnLn7CJ0YxxpxRq2JKmZLpb5IRzV8jd3
	ArvokRUzok+EvwBkXf06sAvLNw5g4dMI7AS08Ckh/NtiNESUMgdH1tVF/nmaHTOY2qAa9VJXeoHnp
	Qjco4wPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDuO-000000038Ka-26hC;
	Wed, 26 Feb 2025 09:40:52 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDuM-000000038K8-17G0
	for wireless-regdb@lists.infradead.org;
	Wed, 26 Feb 2025 09:40:51 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4393dc02b78so44736805e9.3
        for <wireless-regdb@lists.infradead.org>; Wed, 26 Feb 2025 01:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740562848; x=1741167648; darn=lists.infradead.org;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xlx2uT4DE3pUEcJGEI859f4n1olSxyWc3awOxYZ3fLI=;
        b=lOijQnwmMtPaQCdpuEPOiZmEHIEAcQQZCcPRKEAjzTl8HbcjfLiwFBTUc1zvGm3Gwy
         yYG+drxjIef+5gw7iCDeNeSEeLIV0B0X3lhsyYp4CD8iLlkHGmE8J7ND0pkpCK9eFsH9
         LhnmRYChVBawPcxHmA7Se7tH1akSPUk5uMnwkM3kE8rTROxSza0m0VwGbuH1+zC6ngIw
         nplkpRGLJifA1+4DWoyTD+rtof7tUmxHbVfQh69gQANVhSUiqd6FeUj9tLpzN2wPYP5j
         VRwPdofHUhigyd3hov7I448KN6Bw7Ny8XtzNnKw35aJAY1AjxwE0Cak6ftp3LT97sz7+
         e4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740562848; x=1741167648;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xlx2uT4DE3pUEcJGEI859f4n1olSxyWc3awOxYZ3fLI=;
        b=vumwYYnI2HCbubNWjTCHoejldhMnHP7YRIUx9iQv8jE6bpcJ5uOIzA05HGZ/32hJx1
         L8XVn9RekN3nIt94xUOk/FQO2kvHGqWwIjHVqsQiEHwhyYOJIrEa6wx5Hx5hiBnd8Dhv
         WQ16q+IvsKCy9gwiFzsU1sDv4HNcbJbHTTn+8/4wz7yOiI3yjZGIffq996mr6T+7I1pN
         I9FDphcbhEEeE379VWBlBZYi4I9RN/JgCJYgmhxtG7izYo6LzyZPMbN6tLtdgEdSXD6p
         u5rRTHfK4n6sEoloUzmtP++V3hjTKfaEX4Tky4m9VNhQNLg7H8PEXrP4p1h5vbHdfJic
         pH1A==
X-Forwarded-Encrypted: i=1; AJvYcCUGDvre2HPvWT9NY8zWZAXTveYuUrRr11ZzNzVFEwZD21fEgVMDEZq1epZGFZ188NB/i3ruNDd10CLGCh/ERQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzcZXsQUFSqt7LeJsQk7lxreOVbBhWVE9JYa8WxtoGmi1l0PQCi
	lWjIzIka3vQEYbEcx2Ey8z/YBtVGdDQEcpucJMx3k7TMUTI1wRc=
X-Gm-Gg: ASbGncuTFR9VRdNrsGlgiFgYnVre1kJxXdX4rBe5WIyaXKH4rgIMPcEdAJA5/xkUo59
	jn06FIOA8aw/AEMZj/lG0wJYpeJleh/7BijHlH61JNBmKUZcxP2uhyaSxa9d/zDv5oVIQJX3syT
	3oIIPCFkD4tD1rmtcfhXoiZRn+rg0JSq3S/pHK3g9EbQHpTKCCVlAtVH36VWRokUYbPjcwhEc9I
	/bIAKMAhPf4OPtgxiTqpcEP6sxpY7kMOPSw+JWDrVNVIOU0L3oJAUwxDcfnputmyWmYXWOCMgYb
	j1f17UlPeQqZQviUoFKcytjN9O1WAlyjhouXd8h7nTMwZ0LYtKKF6DbMELdEFtZa04wMIMylSS/
	uIo54UhdeskGa
X-Google-Smtp-Source: AGHT+IFCRBFK66HToInMDDQ0ANVk7duqA1/AyY83wgfmnH6uV5aa0JKbAV76OMWZeyd/wn46035+fw==
X-Received: by 2002:a05:600c:458e:b0:439:91dd:cfa3 with SMTP id 5b1f17b1804b1-439ae221d72mr167483875e9.29.1740562848194;
        Wed, 26 Feb 2025 01:40:48 -0800 (PST)
Received: from winhome (cpc112753-pert6-2-0-cust678.16-4.cable.virginm.net. [86.18.22.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba57145esm14718615e9.30.2025.02.26.01.40.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2025 01:40:47 -0800 (PST)
From: <rmandrad@gmail.com>
To: <wens@kernel.org>
Cc: "'linux-wireless'" <linux-wireless@vger.kernel.org>,
	"'wireless-regdb'" <wireless-regdb@lists.infradead.org>
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com> <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com> <000901db882d$8cb13090$a61391b0$@gmail.com> <CAGb2v642utRqjhKth9he-jicA_E5RfYoXTPRyZaVykLNXQCXvg@mail.gmail.com>
In-Reply-To: <CAGb2v642utRqjhKth9he-jicA_E5RfYoXTPRyZaVykLNXQCXvg@mail.gmail.com>
Subject: RE: wireless-regdb: Allow 6ghz in the US
Date: Wed, 26 Feb 2025 09:40:47 -0000
Message-ID: <001e01db8832$844ef130$8cecd390$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQMUrzCf8XdNoAU6+fu4ECJnDc0awgHIktuQAWl/dqQCwiE64rC3Ybxg
Content-Language: en-gb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_014050_323063_1E20C6C8 
X-CRM114-Status: GOOD (  27.57  )
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

wireless-regdb: Allow 6ghz in the US by removing NO-IR

The Federal Communications Commission on 05/26/2020 allowed for the use =
unlicensed use of the 6GHz band [1]. Currently the settings for US have =
non-IR. In order to comply with this legislation [1], the patch removes =
the NO-IR flag

The power limit is not increased from 12 dBm to 30 dBm to comply with =
the PSD requirements when using a 20 MHz channel

[1] =
https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicense=
d-use-of-the-6-ghz-band#p-66

Signed-off-by: Rudy Andram <rmandrad@gmail.com>

diff --git a/db.txt b/db.txt
index 803f1bc..ffcb0a6 100644
--- a/db.txt
+++ b/db.txt
@@ -1953,7 +1953,7 @@ country US: DFS-FCC
        (5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
        # 6g band
        # =
https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicense=
d-use-of-the-6ghz-band
-       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
+       (5925 - 7125 @ 320), (12), NO-OUTDOOR
        # 60g band
        # reference: section IV-D =
https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
        # channels 1-6 EIRP=3D40dBm(43dBm peak)


-----Original Message-----
From: Chen-Yu Tsai <wens@kernel.org>=20
Sent: 26 February 2025 09:16
To: rmandrad@gmail.com
Cc: linux-wireless <linux-wireless@vger.kernel.org>; wireless-regdb =
<wireless-regdb@lists.infradead.org>
Subject: Re: wireless-regdb: Allow 6ghz in the US

(When replying, please reply to all)

On Wed, Feb 26, 2025 at 5:05=E2=80=AFPM <rmandrad@gmail.com> wrote:
>
> Thank you. Apologies this is the first time submitting a kernel patch. =

> The original submission set NO-IR where clearly the document notes it=20
> is allowed as section 59 states hence the patch - with increase usage=20
> of 6Ghz we have now Openwrt users complaining they can't the band in=20
> the US due to NO-IR
>
> Shall I update the patch to only remove NO-IR and increase power to 30 =
dBm ?

As explained, the limit is lowered from 30 dBm to 12 dBm to comply with =
the PSD requirements when using a 20 MHz channel. I suspect no one would =
use such a narrow band, but the requirements exist and the database rule =
should not be written in a way that allows the user to exceed the limit, =
i.e. using 30 dBm on a 20 MHz channel.

So please update the patch to only remove NO-IR. You can look at =
previous commits to see how we put URLs in the commit message.

Thanks
ChenYu

> Thank you again
>
> -----Original Message-----
> From: Chen-Yu Tsai <wens@kernel.org>
> Sent: 26 February 2025 08:58
> To: rmandrad@gmail.com
> Cc: linux-wireless@vger.kernel.org;=20
> wireless-regdb@lists.infradead.org; Dennis Bland=20
> <dennis@dbperformance.com>; Ping-Ke Shih <pkshih@realtek.com>
> Subject: Re: wireless-regdb: Allow 6ghz in the US
>
> CC-ing Dennis, the original submitter, and also Ping-Ke, who has done =
a lot of 6 GHz updates, for more information.
>
> On Wed, Feb 26, 2025 at 4:03=E2=80=AFPM <rmandrad@gmail.com> wrote:
> >
> > Allow 6ghz in the US
> >
> > https://www.federalregister.gov/documents/2020/05/26/2020-11236/unli
> > ce nsed-u se-of-the-6-ghz-band allows the use of 6ghz in the US=20
> > namely section
> > 59 https://www.federalregister.gov/d/2020-11236/p-66 with absolute=20
> > radiated power of 30 dBm for the 320 megahertz channel
>
> Please don't wrap URLs.
>
> Please see the original submission [1], which explains why the power =
limit is so low. Basically, neither the database nor the kernel supports =
specifying power spectral density limits, so we can only take the =
narrowest bandwidth to calculate the applicable power limit.
>
> [1]=20
> https://lore.kernel.org/wireless-regdb/CAPRryQp6j4UKvLZCkMAuQdaxepMBET
> QUJ1eNULJSh3ZWXC0f5Q@mail.gmail.com/
>
> > based on this remove NO-IR flag and allow 30 dBm max power
>
> The original submission mentioned NO-IR requirements, though I did not =
find such wording. Dennis, do you have any ideas?
>
> > Signed-off-by: Rudy Andram <rmandrad@gmail.com>
> >
> > diff --git a/db.txt b/db.txt
> > index 803f1bc..bc2b4fe 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1953,7 +1953,8 @@ country US: DFS-FCC
> >         (5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
> >         # 6g band
> >         #
> > https://www.federalregister.gov/documents/2020/05/26/2020-11236/unli
> > ce
> > nsed-u
> > se-of-the-6ghz-band
> > -       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> > +       (5925 - 6425 @ 320), (30), NO-OUTDOOR
> > +       (6525 - 6875 @ 320), (30), NO-OUTDOOR
>
> The database entry targets LPI usage instead of standard usage, which =
requires the presence of AFC, which is also a requirement that the =
database is unable to represent. And under LPI usage, the full 6GHz band =
(U-NII-5, 6, 7) is available.
>
>
> Thanks
> ChenYu
>
> >         # 60g band
> >         # reference: section IV-D
> > https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> >         # channels 1-6 EIRP=3D40dBm(43dBm peak)
> >
> >
> >
>


