Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5737E99052
	for <wireless-regdb@archiver.kernel.org>; Fri, 10 Apr 2026 08:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g3wthHpZztJvI8PpcT8h/IHYBiGyudRpOcAj0u5mFTs=; b=jqAC/vw4IZHfuP5y3HM8UIm2ZH
	UL/Mu6x5z2BEMdtMuzuYszV03rVd9mVJlEftwJeTpSV2yn6AyK8Wjay6qPnBt2DNMzzg3n4gzasUv
	7n8UPpch/L3gGVWZVqOJj4dauxzdFseAaYNb2UEo1MYXLLJzITYr7KTNp89SqWTm8FS/mwMN8GXUi
	m5W3083as+lD4vIib9Cws8fIfQrkGb/ERfBOCYtL49/gtmGcBtQzlQgJ9VCMCHj5ztZrqyN2eSaco
	g/RZ7Qd6OWH/n4t9MO2YtWgGg7ajKEMNxNxIIbju7tFSfY7aDr0ZLrrcIWN1Rj8C7iOnbDmHND9BM
	eXpVzDDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB6wB-0000000Bom2-2AGh;
	Fri, 10 Apr 2026 08:09:59 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB6w9-0000000BolJ-0OoK
	for wireless-regdb@lists.infradead.org;
	Fri, 10 Apr 2026 08:09:58 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-7982c3b7da9so15998777b3.1
        for <wireless-regdb@lists.infradead.org>; Fri, 10 Apr 2026 01:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775808596; cv=none;
        d=google.com; s=arc-20240605;
        b=BXAS86Y2WMqBw15Uo5agT5BIYUzVYX4KXQOkz468VHO2IBPMA3kEuGK+/2f0NJhl/R
         42aiL7+SUXNTifx8Z/RKcanh2IFggZ8BEkdoG6HwVBGYHIKii8E/iEw/+bourvUQiMI5
         2YLo6LB0XkLQxnD9wjzJyDUx9OIaR5cEe06rclMeWPLa23dfBWtHslG+De55IYwktp+9
         jedGAfZewUSnlJYmLLMoClR9q39d/kCAH0k1aHTKE00oWnvugbyaTCwiRum3T+uBJPuc
         ijH1DB4R4BdlKI36Ob3wRtmdK+8wjfycw0qNqr3x+xZ+oMy8Pc2nlsC6+qzs6ZTQr2GE
         onbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g3wthHpZztJvI8PpcT8h/IHYBiGyudRpOcAj0u5mFTs=;
        fh=dr4WC3QjkkHM6RwZwd2q1U1cbHIdWMecPutJUfGIKTA=;
        b=GnIt7Q1fzUy08vc+zEG+1Rmi0r8veUpxZlu75kK9ozqT8H9RYDOtF3c5nfBM9bZXlM
         qfH8y1jlXqHbMHEc6/HcP0E9m2lSjAZ9b11hQGSW2Y7rYWIBV7ZEfmi7dV3bJM3l4b+9
         QsSYy3md6yFXtMXDQT7j729982hW8Xc6owRI13CEmvYl+1/T+A+6z7e1lc7ERXqynN8u
         cX+RRuC7mBIxNcRL3Q1P2N2QaKYD+ISCFGpjoCNDHZ9BvMYTgfd7wxMHpFKJhWFUdk1b
         Sucg2yVS/Y2yqzUZEa/Oh4kdTrsKnP6MldgTrZfHG3BvBOfxcOxBX1rpVX0mrB3QvfEy
         xmkA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775808596; x=1776413396; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g3wthHpZztJvI8PpcT8h/IHYBiGyudRpOcAj0u5mFTs=;
        b=UNUTwhFR18bMpJSCMAB5aDddQCELIA5PsVYHGD8bsG5J8wm/7x4+QFdXG2z1/O68Ru
         c9I+KQcqBN5dfQFIOxAwXtQXWDlQOEyDP+o35gpnXIDA4kbSB2FAfSD4Z+P9wFMZO+N6
         CO2ZW0i7kU7ltWwH3J+emKyXy8IgfJtYMqPOixc3eNrY92/6XaitkEO4tBCd6uXpQ8eA
         MsfU/vwVdkpidqOB3Nk7ARm1vaD4rwtd4Qh6vq0kT2pkeIvjPx+izztL8KMC/+rlNL3+
         Jd34mmoYXR3GuyqKLsAxvksNX158J4dDxA8Rb9ZKsx4RTO7DOkry1Xa0VMk5F4/qwUHL
         taTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775808596; x=1776413396;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g3wthHpZztJvI8PpcT8h/IHYBiGyudRpOcAj0u5mFTs=;
        b=ERGCIY7lhGUCH2ckySDpN+0Jjb35I0i9nzG69ym1CXxDhu+gKamg/YfLixm7KvbC/X
         dkmBsKHwoF0KsQbBCuPziWb/8GZLxWb3Pv6TVZ7n5Vu5AgveL6amwFb0dnwmZnOygc4R
         YASvpS8QLXjbmrJSoIbfJCIUWWrO0P8s9C7jmZmgB4YmlSbgxUIBgIic6JyI92h7lhde
         1uHrl420nxpNvQabhSlhlEHx3M+zKF/KM7fXhTMWp6m5CL1HgPIjPhBNPm9je7kDKu7R
         iUlov9Syb+POuuezg5G5AqpDo3T9kYociY2WXmezf4S0UHDi4akD4VKOAtQxppaKA64H
         XR/Q==
X-Gm-Message-State: AOJu0Yyp9weC8sXbJv72qOegPRcmWL6FbLturw8PfE0V2Xu28DuXu7+j
	YRKTsLYtckAq9Bt8MTf1lDkluC2uBBGNBKmRg8uxwpXXA0VXUly5uIwiT+fBSebOfJwa5cY4DRQ
	R+HWBOMqyED9sXZlDhvd/x8ZC3i2oYaPcB/hkHwpe+Q==
X-Gm-Gg: AeBDieurgC5b0v3F/Re5nA3N0skrWaG/x30NlhGy09niZAGSshjoZVECicKKLDN6iLe
	K9typPuuscrnI4NAuySGwA2X5vfmRqpCx2rjAjrRBemFZZ1ehw3ad70Arw3mmJ5Gl1KODXwTMwN
	W7uv++ow+cVSYREt1NkCA4dfrox+i7iVZYclJhNeURTphf1tB9XKQLO6uSI66oBu3FVUCfoSItg
	CDExq5vhgehQAN+wJ/D/X+31stGduMMYELKMcq0GPQjAlNdECYLFfG8FT71qIwwdnnzoi9J1kC3
	Vv5T55563g==
X-Received: by 2002:a05:690c:c226:b0:79a:d393:f8c4 with SMTP id
 00721157ae682-7af715704e4mr21967677b3.34.1775808595808; Fri, 10 Apr 2026
 01:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcSecJ7nDo+-JqGri80m8yn_cp9UfajHqLQDPYup7Zh7QVj7Q@mail.gmail.com>
 <CAGb2v65cGJLYMAJTu00BocqprModBUfYd94GVNEemJj33g+gfg@mail.gmail.com>
In-Reply-To: <CAGb2v65cGJLYMAJTu00BocqprModBUfYd94GVNEemJj33g+gfg@mail.gmail.com>
From: Louis Kotze <loukot@gmail.com>
Date: Fri, 10 Apr 2026 10:09:44 +0200
X-Gm-Features: AQROBzBODtHJ1x4N0SWIJySiuhsJnDKsI9K5wnVdHMCyvHb4b1ImIMegpXGtDz0
Message-ID: <CAMcSecLssysJKfNXuhPjq2QLNVeO6Wpa-oW9W_hXxYsMT36mZQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Add 6 GHz LPI rule for South Africa (ZA)
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_010957_145783_700312D5 
X-CRM114-Status: GOOD (  26.89  )
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

Thanks for the quick reply.

Indoor is the right choice. The LPI rule at 23 dBm is the primary use
case =E2=80=94 indoor WiFi 6E/7 access points. The current VLP-only rule
(14 dBm) breaks 6 GHz entirely for indoor setups because the
regulatory mismatch with LPI access points causes repeated association
failures.

ICASA references EN 303 687, which restricts LPI to indoor use, so
NO-OUTDOOR is required.

Updated patch below =E2=80=94 replaces the VLP rule rather than adding a
second one.

Signed-off-by: Louis Kotze <connect@prolificstudio.co.za>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 343b256..778ac21 100644
--- a/db.txt
+++ b/db.txt
@@ -2180,6 +2180,6 @@ country ZA: DFS-ETSI
  (5170 - 5250 @ 80), (20), AUTO-BW
  (5250 - 5330 @ 80), (20), DFS, AUTO-BW
  (5490 - 5710 @ 160), (30)
- (5925 - 6425 @ 320), (14)
+ (5925 - 6425 @ 320), (23), NO-OUTDOOR

 country ZW: DFS-ETSI


Regards
Louis Kotze

On Fri, Apr 10, 2026 at 9:26=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Thu, Apr 9, 2026 at 7:34=E2=80=AFPM Louis Kotze <loukot@gmail.com> wro=
te:
> >
> > Hi maintainers,
> > Please have a look at the following request:
> >
> > ICASA (Independent Communications Authority of South Africa) published
> > Notice 1822 of 2023 on 23 May 2023, amending Annexure B of the Radio
> > Frequency Spectrum Regulations, 2015, to allow licence-exempt use of
> > the lower 6 GHz band (5925-6425 MHz) for WAS/RLAN.
> >
> > The notice references the ETSI EN 303 687 standard and defines two
> > device classes for 5925-6425 MHz:
> >
> >   1. Low Power Indoor (LPI)
> >      - Max EIRP         : 23 dBm (200 mW)
> >      - Restriction      : Indoor use only
> >
> >   2. Very Low Power (VLP)
> >      - Max EIRP         : 14 dBm (25 mW)
> >      - Restriction      : None
> >
> > Currently, the database only contains the VLP rule (14 dBm). Add the
> > LPI rule (23 dBm, NO-OUTDOOR).
> >
> > Without the LPI rule, clients connecting to indoor access points
> > advertising 6 GHz at LPI power levels experience repeated association
> > failures due to regulatory mismatch ("regulatory prevented using AP
> > config, downgraded"), which on MLO (Multi-Link Operation) setups
> > causes the 6 GHz link to fail and disrupts the connection.
>
> Unfortunately we can only have one rule per band. So it's either allow
> outdoor usage or better indoor performance.
>
> ChenYu
>
> > Reference:
> >   ICASA Notice 1822 of 2023
> >   Amendment to Annexure B, Radio Frequency Spectrum Regulations, 2015
> >   URL: https://www.icasa.org.za/news/2023/icasa-releases-more-spectrum-=
for-wi-fi-services-in-the-lower-6ghz-band
> > Signed-off-by: Louis Kotze <connect@prolificstudio.co.za>
> > ---
> >  db.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/db.txt b/db.txt
> > index 343b256..778ac21 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -2180,6 +2180,7 @@ country ZA: DFS-ETSI
> >   (5170 - 5250 @ 80), (20), AUTO-BW
> >   (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> >   (5490 - 5710 @ 160), (30)
> > + (5925 - 6425 @ 320), (23), NO-OUTDOOR
> >   (5925 - 6425 @ 320), (14)
> >
> >  country ZW: DFS-ETSI
> > --
> >
> >
> > Thank you and Regards
> > Louis Kotze

