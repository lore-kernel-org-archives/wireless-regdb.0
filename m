Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9659CC5DF94
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 08:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y8fsAv1K91Un6gSOD8KCR5sbE7jcf0afTaQzn8RTJQw=; b=eWoVlrxr4JZTSP9pRLfJroJ84d
	LR71Jw+sFWwxWjopN51ywC9gYdy/+T1a+fEodj8yqiDcDx+6q94l/MgeWjzD4mexxMHdaKRrkBpBW
	OwtwVO+bFkukxDkQiVdBGbQoR21N0J9Qk/yL2amiKwW2sZ5Y1aXEMFfci1R4x605CHQEw0mNPnNew
	NKBdICCTfrA/27gtqMl7g6a7fVOy21X8d9tq9vsGygZaiD+lIjLqs1iBd/jxj2QlB+f6kYQfpxBBV
	I80cmCPJT4o0hOIhYFZRsq0L59D3uQGayESX1DG5uuhxCA9JD77ogpRSXvLKl3KN+gPVuGIrmPbxH
	WXTRQ3Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPqj-0000000GBmp-48OZ;
	Mon, 24 Aug 2026 08:16:10 +0000
Received: from mail-yw1-x1143.google.com ([2607:f8b0:4864:20::1143])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPqg-0000000GBmV-3XHz
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 08:16:08 +0000
Received: by mail-yw1-x1143.google.com with SMTP id 00721157ae682-836f34a0ceaso48313397b3.1
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 01:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787559365; cv=none;
        d=google.com; s=arc-20260327;
        b=Jnn8RviCQup1buVFEBuayURKucFyw+Vp0QFX0d1NsEavElpcd2l3bebLytV8xPwynk
         tUa23Knx6VpSZbnhhtwT8IH+f6iY4pad8Yn1k5yzyfrmWZmK/YjA330dRWmL+kPaftED
         GQKPAJcf/Xl6sdlWltHrnoNMbeLE4L+QpPlefjCiuPPJHlNBQBYmKwVAU6OsGCzESdLS
         Tpjsd28gLFqGSDN+Fq9Skqe0/LeKt1eWB/q6SW8SQwLZBFxtVzg1226SguH9pF1/iRN6
         GfvrcvfIoXjzWm8l6rkr1aVUUSoKh9JyHKLrkI0Xl247mJCzYE6tx2IYs5u6wJPMHMR6
         jgbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y8fsAv1K91Un6gSOD8KCR5sbE7jcf0afTaQzn8RTJQw=;
        fh=it9JuR87q8Xs3I8EZSYl68+kPNDyr3wZgzCp79/C2cs=;
        b=ZOscK/i4ZLLXNgt8oHhEiTsBjygDo5oR4Qpd4ZMdys8pjm805FPxyyYWiq9nBRizdN
         DuvS0L8MbS25RCdIh0Uj0XrbBnEzI5UY5WA5VZtIO6NFvMugBDXZ48oVcTWvduUu8G1V
         +UWc9qwHMd3fihJ6xJrycv/AC13Tb8Bhfk03ODAn8SdQhydluJhhBGSk/5MTCRkp1kRo
         O7kFSTl12i5szHEqwt3HU0+9Qw11NyNngqeyl1d5/aH4B2kSLvnpFsueAJfkhoUH71Ax
         hpY/FGO9GzpwZRE3gpDgz5hTJJN2a5fq3ImuYpZSNBS7+18QJ0TQeBkE2KS84BTglaSA
         KHJg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787559365; x=1788164165; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Y8fsAv1K91Un6gSOD8KCR5sbE7jcf0afTaQzn8RTJQw=;
        b=IOB+U6R9ZFHUYcdHmYEvAy26Fr7jVZVn7/PdPL2EpsE2Kbqaj9+oW+BbY1l9ZgPMso
         hE5s7h3z39ZAT/IVxQlfKUb3pKLI+UYCjpNY2lLS3fyQQ52mfybBQPV4hXRG2sqenmjm
         ffDagfiLH8a1EHqppRuP9aSHU/H1IyCcs90JLyBLUl4YSXp+nhlJ1wA0Y9t1XuZTRIwX
         xb164UldzDK1CFKzo5fYAxqC1jOWtgbNaUOCm0m5IzI/bnuK9kL/GHc2S0xF6tOyU+cy
         8pKoV7f0ubL/uYWAEF43qy4fn6AFJ/UBeQbMQEI6CC8VHQqs+cmpuy1saOBsz+MqV8uj
         XLJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787559365; x=1788164165;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y8fsAv1K91Un6gSOD8KCR5sbE7jcf0afTaQzn8RTJQw=;
        b=tSHHq9lZ6skTFu6IS/tF/wx//2OlY987gBA7Q77+edh9M6mzS7wY/FNDtLFAGUSWAZ
         0H6c3FsQp+cb4Gsck8YrLuC3hrfQDHY1Fbcv+feo75Mp5WzdYzHdEvjVpJrDfL2zNO2c
         uaIPaPswLfCfcHfF+u9Faz+EZ6vFsIgVbOxjZdABeDcqHnND/Ow0y8jwF/QPWLzGcuOB
         LSdN6DCosN2Fnw61xvPVRfnZBUfXHVXnhJmWN0+GD3qzqjH4x6sdZktparh9LjHb1R5c
         +NB9DOXT5b5rJBrU364HTylLTBEMRm0nd7MsJrWOAlaLE+hyxGZ2F5zPdqfzX+CuqFNn
         TJag==
X-Forwarded-Encrypted: i=1; AHgh+Rq3JdQB5Dbm1rJ1oE94NFXP3L2ClopIxLI2TlijxnCCqtRRV1/6q0S+1AwREa2MxAfRQLy6gwC+Qp+bdysppg==@lists.infradead.org
X-Gm-Message-State: AFuF++nvTyUJB5dJLt4JI5IpnwTh5koX/80C8Eput1IAeM0mHqBQEXA1
	j3LAuwqQ+ozbtbtMDB/448zE26tPViwPhdwW7Hw+1n4hkYcIDAonv5HL6RxRMgBK1LD8D1U+yZX
	jOBSEk4ofU1EbVZKUm6o1Vr+4X89Sfg8=
X-Gm-Gg: AR+sD136rUCSQhT5z7gl0xvZuCzYuKjorjLJv10OyuBwd1XH8VTM63S65C8afXlP+4p
	cWet55HZamnIqEQT1uxfK69xVaFVA/iNXnbxmwvYIYlGeZnpX7kZ1R/03nBW8jeBHfAGGmZsKjF
	3lhqPADiyqqzk8zfznrTkXP1AatGJiTvwFZYgVkeesBEwMSjLjJ0zlcsAHIlumnJieX1aaXoNPF
	PmXt2xDp7arciyIatCoQz3EFkZQDsVBnIbbUikCVJHkN5HPAyBqgw3sAqpMi91nCSYuJUxDQCKi
	2IKlxMpWUWEdWkFpLbBuD4PsL85JuGsXfYDnuY/ir44IY41F28De8F3QOATTcNizc6KfiT2gvDn
	LmEkNUqT+wNGL59XJPI79ZtgIvsoHih8YrZp4/t+NJ0ZpElAyMCqSopghsw==
X-Received: by 2002:a05:690c:b96:b0:82d:8dc0:9cf with SMTP id
 00721157ae682-8470c1665aemr134502787b3.13.1787559365355; Mon, 24 Aug 2026
 01:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF5HCtEvb-aiusJuzmCvu-db4orDwsSnG+mOfCbLXXYRCbtvg@mail.gmail.com>
 <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com>
 <CAJF5HCtAVMbarNYDkrKWE97Lib+YJk8ZE+5eWsEZ4fKVTp8tOw@mail.gmail.com> <CAGb2v66-ee1n9E2-GmFZu02HRmFFWPQ1KB-L9uPQcq1i5HSpEw@mail.gmail.com>
In-Reply-To: <CAGb2v66-ee1n9E2-GmFZu02HRmFFWPQ1KB-L9uPQcq1i5HSpEw@mail.gmail.com>
From: Ibrahim Hossain Abir <xbowpc@gmail.com>
Date: Mon, 24 Aug 2026 14:15:54 +0600
X-Gm-Features: AcwNN1VAObvE3DgFeXTbISGv9Hi8oremEZygJwgnlwIVruZknGGCk1Czd7Ce4bg
Message-ID: <CAJF5HCsYhv-JTMvXRHLesuOFsVFnySqEKWYzK6_B-bWEoAEW0g@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bangladesh (BD)
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, sforshee@kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_011606_896613_E3DEDFCE 
X-CRM114-Status: GOOD (  25.91  )
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

Hi ChenYu,

Understood. I have reached out directly to the Spectrum Division of
BTRC (sohel@btrc.gov.bd) requesting technical clarification on
explicit EIRP limits and standards for 5925=E2=80=936425 MHz.

I will update this thread as soon as I receive an official response from th=
em.

Thanks,
Ibrahim Hossain Abir


On Mon, Aug 24, 2026 at 1:39=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Mon, Aug 24, 2026 at 3:23=E2=80=AFPM Ibrahim Hossain Abir <xbowpc@gmai=
l.com> wrote:
> >
> > Hi ChenYu,
> >
> > Thank you for the review.
> >
> > Regarding the reference:
> > The official BTRC circular (dated Sept 15, 2024) specifically
> > authorizes the 5925=E2=80=936425 MHz frequency range for Wi-Fi/WLAN/IoT=
 shared
> > usage in Bangladesh. However, this notice does not define explicit
> > EIRP power limits, TPC, or DFS requirements.
> >
> > In the initial patch, standard conservative limits (such as 23 dBm for
> > 6 GHz LPI) were derived from standard Wi-Fi 6E/7 spectrum norms.
> >
> > Could you advise on how wireless-regdb prefers to handle cases where
> > the regulatory body approves the band without listing explicit EIRP
> > limits in their notice? Would setting a conservative default (like 20
> > dBm / 100 mW EIRP) for 5925=E2=80=936425 MHz be acceptable for Patch v2=
?
>
> As previously mentioned we cannot accept random limits without justificat=
ion.
> The regulatory body needs to specify limits, or outright state they defer
> to some other standard.
>
> Please help reach out to the regulatory body for clarification. They shou=
ld
> provide the information, otherwise folks doing the certification have not=
hing
> to base it off of.
>
>
> Thanks
> ChenYu
>
> > Thanks,
> > Ibrahim Hossain Abir
> >
> >
> > On Mon, Aug 24, 2026 at 10:38=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org>=
 wrote:
> > >
> > > On Mon, Aug 24, 2026 at 4:26=E2=80=AFAM Ibrahim Hossain Abir <xbowpc@=
gmail.com> wrote:
> > > >
> > > > wireless-regdb: update regulatory rules for Bangladesh (BD)
> > > >
> > > > Update regulatory rules for Bangladesh (BD) based on the official B=
TRC
> > > > (Bangladesh Telecommunication Regulatory Commission) directive date=
d
> > > > September 15, 2024.
> > > >
> > > > Enables U-NII-1/2A, U-NII-2C (DFS), U-NII-3/4, and lower 6 GHz (592=
5-6425 MHz).
> > > >
> > > > Official BTRC Notice:
> > > > https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d
> > >
> > > This only says that the lower 6 GHz range is allowed. It does not say
> > > what the power limits are, or if there are any other restrictions.
> > >
> > > > User Impact Reference:
> > > > https://community.intel.com/t5/Wireless/6-GHz-Wi-Fi-6E-Not-Detected=
-on-Intel-AX211-in-Bangladesh/m-p/1740885
> > > >
> > > > Signed-off-by: Ibrahim Hossain Abir <xbowpc@gmail.com>
> > > > ---
> > > >  db.txt | 8 +++++---
> > > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/db.txt b/db.txt
> > > > index 0000000..1111111 100644
> > > > --- a/db.txt
> > > > +++ b/db.txt
> > > > @@ -223,5 +223,7 @@ country BD: DFS-JP
> > > >   (2402 - 2482 @ 40), (20)
> > > > - (5735 - 5835 @ 80), (30)
> > > > + (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > > > + (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> > > > + (5725 - 5850 @ 80), (30)
> > > > + (5925 - 6425 @ 320), (23), NO-OUTDOOR
> > >
> > > A reference with the band and power limits, as well as any other
> > > restrictions like DFS or TPC (andif TPC is required, what is the
> > > limit if TPC is not implemented) needs to be provided. We cannot
> > > put random numbers into the database without justification.
> > >
> > >
> > > Thanks
> > > ChenYu

