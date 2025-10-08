Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EBF9CCA470
	for <wireless-regdb@archiver.kernel.org>; Wed,  8 Oct 2025 03:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XVtbU06OwyLC0jr5JiAhopuYtCoxnhI1Lx98zt/ULbY=; b=YSi/XGK0QqRbnF2xOQktsCFvao
	aU6T2tyv8AD/jSAxleMyt2OeCaadSnW2URcgpe42oApg8KwoIe1tuyhh1UYpNXKOU459lF7EcfXuU
	MdxP4ye7GkriKLQo/Eb3xR9H713yPSsEwTfE9xNncESV8XW5SWlfDzKduL5OEBz4A6FXh2X31fWdi
	vKZfPOHW6EZYFl24rKS1NMjKp8keZsPoacKrWrMxWdYsPtmbGmZ0HgKptDCMmYPvsDpRGnVDzffcP
	eZQQ3KKE14/DOXXBVd9zusRY/gkiW3d0WQq11A8Aj10iPc5IYufvGYPnDMBAyLcHVXGkxhTq7LuCP
	Euo8vMmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Kur-000000037qu-3wq4;
	Wed, 08 Oct 2025 03:32:37 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Kup-000000037qD-1vxC
	for wireless-regdb@lists.infradead.org;
	Wed, 08 Oct 2025 03:32:36 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-634b774f135so12332465a12.2
        for <wireless-regdb@lists.infradead.org>; Tue, 07 Oct 2025 20:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759894353; x=1760499153; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XVtbU06OwyLC0jr5JiAhopuYtCoxnhI1Lx98zt/ULbY=;
        b=NNk8hBuOb9pXdHk/TgFkMU0mxwyPz8kEnT4O+9DMujid0vTXDWqmyb9KZipYi5yrpS
         cZPy98dz1zX0Ltgm0uIAa/zw3oU24sUsZtVM+SpvsRFjgZzGmMC2v9sZOnHT9i7VgeSt
         NX/bQj9YS30JPv0WRCmt8AbQYNbvqE3cyIHbVV6+A82lHDYwPAnpx+vUP0uKXM7ePLt6
         4EeRNzkwDbUMI6dWPB9cE1sAiN0j5xsvcPkhNkuH6NQ/vN6IfJ2BU9lnwX+buxZodd10
         vJF8uIFIL32MiQAE5ArJU3tIP3RrvCxTkVFkJ6ZOafz+byqvUXEuNBfLyCtVJEY/uoaN
         ZrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759894353; x=1760499153;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XVtbU06OwyLC0jr5JiAhopuYtCoxnhI1Lx98zt/ULbY=;
        b=wy6o+TOma0lyd8UNNxxbcTkIkvQV/G8ndIFTqm87naCZkaTnV2AWaD3rD1iqcoP1ti
         /Oa9kkzvfGukLRqqV8V2w6krbD1i3zCH7qz4k0/+zHI2vzks3Xowlz/MwVixRnvfdqiY
         4WE9CxKRdkdt4lgjPwoE011bprF3s63uY3Fg3GrNDFzKb8oAiz0wL18ak7QWUd9Iy07o
         r479HYa8uGpCWNBg+EhYN0TqCGyLh6CJfbtb3/OAXwK4Iws+OEOIl3hdTnIwdk8IhKn5
         81IwPzsKT9S6FwA1+tJ5VleJ7YFygE9/vj80LrfqEqWqV+APXT+Hqd9GkQu5HAXgj4aZ
         H0jA==
X-Forwarded-Encrypted: i=1; AJvYcCW0724l4BgAiMJAF2kCgSNolJNW5hrpAP9FjYU/JKbdB/RS5fjMQdc1okIygcnvfp7wMzbbEXJVBIbggjNuZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxF3E7JN01JZJD7Lqb7wM0zu4Zh3Shoics8QqU00wa1PJBGzFMV
	OXxzbre0tNBE+b9qMlMNPyTNeY4zXAb1+O1fYehZXGOQsQHwS0lxfIE0o3Zt/KRfmb0pv0JOgjr
	0r86O6aB9F/YC//C61LLHeNBKuLonPQs=
X-Gm-Gg: ASbGncsqSUaG1IzhwxuVBZK13E5TrJbLqzApCHgvumQC7ZOqmU9sVpAe7u1ozVIXqkQ
	cTeW1/tehL4JAwsrr1syte3Hz/1UeBrD/s3RrsarbaQNatiex2gPZ9ZujNabXJbqZZmywctKkax
	IX3bM7N4vSO7d+ZTQKcGJrIf8Uvdjx5pXKAuklkwZRBCsdrY2wDQe6Pt0qwcizby1q/BeCVvcW0
	9qC+FYOFUNnIl6aMu75jNs7tGzW8jA=
X-Google-Smtp-Source: AGHT+IGDA4Abifp0w5BmEaUtMt7hdS7tcWSKJB7TRkW6Mg8zA4ebEw9eKSFqKcda03CIA/OPyIZXiPIFbHPb8w0wveI=
X-Received: by 2002:a17:906:6a22:b0:b37:4f78:55b2 with SMTP id
 a640c23a62f3a-b50ac1cba08mr191722666b.34.1759894352826; Tue, 07 Oct 2025
 20:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250924022156.8435-1-pkshih@gmail.com> <CAGb2v66MZpd8QWYptLrh5O5qf-DWAnqxf3d692JWZoF3jCRj0g@mail.gmail.com>
In-Reply-To: <CAGb2v66MZpd8QWYptLrh5O5qf-DWAnqxf3d692JWZoF3jCRj0g@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Wed, 8 Oct 2025 11:32:21 +0800
X-Gm-Features: AS18NWALd6DUHPpzrSv7YsfTr8EYXeFtkEbTMcH2t9iVUBXgFXf6dYgI15FkH6U
Message-ID: <CAHrRpuknX-Ptz990dqKpPAN71k_fNdJT5aX3CcmckyeOgC9MJA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info including
 bandwidth for Trinidad and Tobago (TT) for 2025
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_203235_518211_E4B66EB3 
X-CRM114-Status: GOOD (  24.59  )
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

Chen-Yu Tsai <wens@kernel.org> wrote:
>
> Hi,
>
> On Wed, Sep 24, 2025 at 10:22=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> =
wrote:
> >
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >
> > The Telecommunications Authority of Trinidad and Tobago [1] provides
> > Schedule of Devices Eligible for Use under a Class Licence [2]. The
> > type 1 (End-user devices or customer premise equipment) with Schedule B=
.1
> > and B.2 shows
> >
> >  - 2400 - 2483.5 MHz
> >    * 30 dBm
> >  - 5150 - 5250 MHz
> >    * 24 dBm
> >  - 5250 - 5350 MHz
> >    * 24 dBm
> >  - 5470 - 5725 MHz
> >    * 24 dBm
>
> For these bands, the rules specify ERP, or effective radiated power.
> However it states "Maximum Effective Radiated Power ERP (from RF
> transmitter)", so I think it is meant to "maximum conducted output
> power" as seen in FCC rules?
>
> This is not the same as EIRP, or effective isotropic radiated power.
> AFAIK the latter is what is supposed to be used in the database. This
> discrepancy is found in many rules originating from the FCC rules. The
> FCC rules specify maximum conducted power (TX power) plus max antenna
> gain in dBi.
>
> So there is some conversion involved. I think the values should be
> "max conducted power" + "max gain in dBi". This assumes no cable loss.
>
> I think we would also need to revisit the US rules.

Thanks for the detail, but I still not clear if I should use ERP +
antenna gain as
EIRP, or should I apply FCC requirements as hard power limit?

By [1], it also mentioned limits of maximum power spectral density, if we a=
lso
apply the limits, the values will be almost what I wrote, which are also al=
most
the same as US country in db.txt.

[1] https://www.law.cornell.edu/cfr/text/47/15.407

>
> >    * extend 5 MHz to 5730 MHz for channel 144
> >  - 5725 - 5850 MHz
> >    * 30 dBm
> >  - 5925 - 6425 MHz
> >    * 24 dBm
>
> These two bands have 0 dBi for max antenna gain, so max TX power =3D=3D
> max EIRP.
>
>
> ChenYu
>
> > [1] https://tatt.org.tt/licensing/class-license/
> > [2] https://tatt.org.tt/wp-content/uploads/2025/07/Schedule-B_Schedule-=
of-Devices-Eligible-for-Use-under-a-Class-Licence-25th-July-2025.pdf
> >
> > Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> > ---
> > Hints to find these entries: by searching "Wi-Fi" with type 1 in [2].
> > ---
> >  db.txt | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 6e1ad30222a4..90ffa4e0d5d7 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1946,12 +1946,15 @@ country TR: DFS-ETSI
> >         # 60 GHz band channels 1-4, ref: Etsi En 302 567
> >         (57000 - 66000 @ 2160), (40)
> >
> > +# Source:
> > +# https://tatt.org.tt/wp-content/uploads/2025/07/Schedule-B_Schedule-o=
f-Devices-Eligible-for-Use-under-a-Class-Licence-25th-July-2025.pdf
> >  country TT: DFS-FCC
> > -       (2402 - 2482 @ 40), (20)
> > -       (5170 - 5250 @ 80), (17), AUTO-BW
> > -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> > -       (5490 - 5730 @ 160), (24), DFS
> > -       (5735 - 5835 @ 80), (30)
> > +       (2400 - 2483.5 @ 40), (30)
> > +       (5150 - 5250 @ 80), (24), AUTO-BW
> > +       (5250 - 5350 @ 80), (24), DFS, AUTO-BW
> > +       (5470 - 5730 @ 160), (24), DFS
> > +       (5730 - 5850 @ 80), (30)
> > +       (5925 - 6425 @ 320), (24)
> >
> >  # Source:
> >  # Table of Frequency Allocations of Republic of China (Taiwan) / Feb 2=
017:
> > --
> > 2.25.1
> >

