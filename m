Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A48DBC5CFC1
	for <wireless-regdb@archiver.kernel.org>; Mon, 17 Aug 2026 06:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ULpKgCJjRO3FeWXvSmkBGFQFV6o2kwMzsT3tVXGHs2c=; b=Fu+scHKL/Lbsc7Nzwuv9ApIs1E
	10EuolU70C80AUuL0wGaivEYZWh9eRJ096BjRIsvNjT4V/000+ek5Oq1kiDI9iKg9Px3r6BSNqgew
	dg9eKQhqvJONeDuwELoF+SFHCZjZLAxTOc2cx9r8EG5X13ATwpZQ3DnZ3CRgrilwrKabX3KdivQ0S
	kks0Jq/es1gvEkQh6Ud1gC6J34FPUpfqAAICWgYAqVNr3mSxMeEHX/rVG6zm+mTivDqDDEzrUd9o3
	0xUS1lnLdbPyiJvPI9MGU28h99eXRvchNQ4CBNDTftYpqDUwhjAsO5B9f5wuoq6/UWXvANpXy+LjJ
	tCmH+cAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqfO-00000005TGb-1oKb;
	Mon, 17 Aug 2026 06:17:50 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqfL-00000005TG0-0ab7
	for wireless-regdb@lists.infradead.org;
	Mon, 17 Aug 2026 06:17:49 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-8efcfdb2b43so20947176d6.3
        for <wireless-regdb@lists.infradead.org>; Sun, 16 Aug 2026 23:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786947465; cv=none;
        d=google.com; s=arc-20260327;
        b=Xn0/zTxyLe1UyJfm3mn63K931kw61pcDYB4gkDJtP4piVYcYCEij1VwOqf/JVB5QEe
         9Rdr0UeS/lhYCnZ/rMlC+ZLn5hmiuxcAzMAZn8dehDOdraDmo1r31W/fCL5m9/Yj7cCD
         7hj1hURp85tpijzVfGfsfTBlqX22cOtDLJfUpQZTA8ZYmkWBOKNtW+hr/dz0/PqkcLYx
         tAxgzRG0zlqEBb5qdk2hNYZUX6NiCrk6ZvDIZarbk56uIy04KrKv18JpWM1h49BOywup
         sPw0txkzF+35w6He8pPX+h/QzcI/0BlGf4iZfHarFnmRpYk8astOD+g8vfMdkfrKpDeG
         icqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ULpKgCJjRO3FeWXvSmkBGFQFV6o2kwMzsT3tVXGHs2c=;
        fh=sV99+8/2dfiLFn8Qi2RbZ1OHMyxJmBfLp1nzUJy9L+k=;
        b=Z+oP7yU8l8USI6gg6xsv2iY77um6zSDoXYzHsPISJigSVVG/qDwKA1B9LnnBSnM96W
         axxepazjUaO6dWMFfnOUQj8ERLfI+g1ikazwX5GGp2YEFu/S2DEptkdJqqQbsKR7Dsat
         IdOgHWB3kgTaaFNWfL0oVmNTkJnZoqizHOdAI51A1fE9QUuZG0l8QDLhJpOXEoxIE7zN
         Ks/9Wu1kF48Qi9RpCSdu5WPvhrvMuP+DgvenBfRLr2CiJOXuO94iQdXaF7xPC7Bi2Qt1
         eI4t3oYPagezw950RgBWhsKPRry0Jl8XYxdfGm/NDffb4wtuNCs39WHRXVgNNyRt356h
         pY5Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786947465; x=1787552265; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ULpKgCJjRO3FeWXvSmkBGFQFV6o2kwMzsT3tVXGHs2c=;
        b=oL1gzny4DBmr6H+JgvzivSZ1h5MCTWHEaTtf1i0EcUAgVLxsLe4aq0cpfdknN0Kfja
         ZBxzT7MGEXXTiKRgiAwQm44LsbcRqIg/xHPFwTsaebLiBWbSc0+Lluy2y9y3SEWpbR6J
         0z+IvOMcPysSGBBYaTwtQhexvpSUkqFwLyOVeL+uxoV7pSBshwgjlVNsdXam0JK9FFpu
         20ghZ/4Njs53VTRb9G6+9j6X5IyMiORXSXPf1kZxGu0LQYeqL/v6AzcgTQCAmEBrMZR2
         v4von7zSNUvzbv/hIBU/WRMurS2HNDCB/j6jpNiUTXVTedCfZtg1klqxPaUjiaHEzmAP
         EGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786947465; x=1787552265;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ULpKgCJjRO3FeWXvSmkBGFQFV6o2kwMzsT3tVXGHs2c=;
        b=TFfu3r259xIEw1hRfA3URoFD1U00ME/PjREHHJEDpF+MoTjzsnsRI+UhBou2mWF82s
         jxy3FbiDMHon36G6+HI/IkbGARuXZJpv+OHUmtQhlysGUNecZtMysKQ7FZEKzq/BOsAP
         APwKLvFzQRsM+19oMo+JOFv78WtpLhuIW2yzrYBfuk5e8p7Eb/kVy0BmugbstSkzvv/F
         WeOLkOA0k+Zht2UAaJ06iNHt3zNYHyOcUH7hSBdTby8GlOzoqTH73aXN872i2n6l95cS
         21W7RqjYSirSxp7BxLL6p1AZXb7CXPukzLBs8AND+UIXb3mJzSKLHaI7n97Jd2aD9mBS
         1dSQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq7f5lZxuVTRnkqgyFRirZ/paGnB8CU167FsPri+gr6Ne3mTW6lSf/Fpk2o5OMzc3nX4vS7mwlUUaSTepQKdA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkYvHfDU/LfS/qjMAiekW1LI8hloB/Qx0zyF2XD1fZyF5KsHig
	iwKzv1RrjZEsGCj8CkmUxAto2DmGTBJCEkRaBya8L/tgBRmZB7BHNCNu2Pp8cigXB3UHmk9IARL
	Xs3rpOAu8u8cJTDmWX/OSkye3ZOSiVtw=
X-Gm-Gg: AR+sD10qpBH+kiizLK5kvz3fGlrDlBdT96lD/7N0EK5MpwDPEQSKc/P/UJnXNPunZCh
	pGAB7mOWdtHdZJSTVIa+Bx/9zbX0Ugbyzt5d8JvNbwzyI0xqNC2YcPxHmFIjgn5zM2K6IPzHXjG
	0zL8wzFpUooVCXpMElyQzsxU1GtxXqfyKoH5X99v/OKSkEHqo/vZu41/8KjCGJUfVvUYjx9OKGO
	ggu7Lp8tNUn5M1i1T09j6xG3Tvd1VY+cbpWnNIsLPkG3hUpJNDx1ZP+ZXxKBfd1CcyYfPNZMLmD
	wf31qeGRnvlOPQ0XQ4Jmk91e08HlchY032zDk2d+WI8Dqw==
X-Received: by 2002:ad4:5ce9:0:b0:8fe:b7a6:4ff3 with SMTP id
 6a1803df08f44-90a91d802c2mr263940006d6.23.1786947465150; Sun, 16 Aug 2026
 23:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
 <CAGb2v66RnAr_yPhZuuandeoE=wSh9tJMdfqkLLudWKpDmDKc4Q@mail.gmail.com> <CABzKGg2C-kb673u4o9Nk28-bp9ONuQAaDA39x47bJOpq6RrNHg@mail.gmail.com>
In-Reply-To: <CABzKGg2C-kb673u4o9Nk28-bp9ONuQAaDA39x47bJOpq6RrNHg@mail.gmail.com>
From: Morgan Wong <pbodq2@gmail.com>
Date: Mon, 17 Aug 2026 14:17:32 +0800
X-Gm-Features: AcwNN1UGbJOzJrUdN01Ko_-VcJlNKqiySnt1yLlDBveeAaFXktz02q3MfOVLajo
Message-ID: <CABzKGg3-5yE19-_fiBuvaM9CBUnyJ7UYmt6M6w3BrEqu+3Unbw@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Hong Kong (HK) on
 5GHz and 6GHz
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_231747_198835_DDB5CE98 
X-CRM114-Status: GOOD (  22.98  )
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

Dear all,

Is there any problem about the patch and the reason? Any regulative
restriction conflict ?

Morgan Wong <pbodq2@gmail.com> =E6=96=BC 2026=E5=B9=B48=E6=9C=884=E6=97=A5=
=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8810:01=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Dear Tsai,
>
> The patch from git diff is now attached.
>
> I summarize again the changes, please decide.
>
> 1. 30dbm (1W) of TPC condition is applied on 5470-5730.
>
> 2. Now, 320MHz bandwidth can be applied in 6GHz as WIFI 7 rolled out.
>
> Chen-Yu Tsai <wens@kernel.org> =E6=96=BC 2026=E5=B9=B48=E6=9C=884=E6=97=
=A5=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=888:48=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > On Mon, Aug 3, 2026 at 9:38=E2=80=AFPM Morgan Wong <pbodq2@gmail.com> w=
rote:
> > >
> > > Dear all,
> > >
> > > Currently:
> > >
> > > # Source:
> > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pd=
f
> > > (2.4 GHz and 5 GHz)
> > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pd=
f (6 GHz)
> > > country HK: DFS-ETSI
> > > (2400 - 2483.5 @ 40), (36)
> > > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > > (5470 - 5730 @ 160), (27), DFS
> > > (5730 - 5850 @ 80), (36)
> > > (5945 - 6425 @ 160), (24), NO-OUTDOOR
> > >
> > >
> > >
> > > Update :
> > >
> > > # Source:
> > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pd=
f
> > > (2.4 GHz and 5 GHz)
> > > # https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-1=
5/subpart-E
> > > (2.4 GHz and 5 GHz)
> > > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_=
20/en_301893v020007a.pdf
> > > (2.4 GHz and 5 GHz)
> > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pd=
f (6 GHz)
> > > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_=
20/en_303687v010000a.pdf
> > > (6GHz)
> > > country HK: DFS-ETSI
> > > (2400 - 2483.5 @ 40), (36)
> > > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > > (5470 - 5730 @ 160), (30), DFS
> > > (5730 - 5850 @ 80), (36)
> > > (5945 - 6425 @ 320), (23), NO-OUTDOOR
> >
> > Please do a proper patch or at least diff. This is hard to spot differe=
nces.
> > And if it's not a patch it's more work.
> >
> > > Reason for change in 5470-5730 :
> > > The HK department, OFCA has its own requirement, 30dbm in addition to
> > > EITHER fulfilling FCC OR ETSI requirement. The rationale behind is
> > > having the biggest tolerance among major world standards to be an
> > > international city. The OFCA, 30dbm is the baseline value to be
> > > fulfilled in the highest priority.
> > >
> > > About FCC
> > > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > > # https://www.ecfr.gov/current/title-47/part-15/subpart-E#p-15.407(h)=
(1)
> > >
> > > About UTSI (same as FCC)
> > > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_=
20/en_301893v020007a.pdf
> > > (page 17)
> > >
> > > A TPC (30dbm), 802.11h edition should be taken instead of 27dbm as I =
suggest.
> > > Or a TPC regulation flag may be a good idea to bind with 30dbm togeth=
er.
> >
> > There is no TPC flag, hence the limit is set at 27 dBm.
> >
> > > Reason for change in  5945 - 6425 :
> > > The HK department, OFCA requires to have its own EIPR limit, 24dbm in
> > > addition to ETSI 23dbm.
> > > Therefore, the smaller value should be taken.
> > > (6GHz in HK requires no reference to FCC standards, unlike 5GHz situa=
tion)
> > > WIFI 7 allows 320MHz, the previous value, 160MHz was in wifi 6E era.
> > >
> > > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_=
20/en_303687v010000a.pdf
> > > (page 17)
> >
> > You mentioned in your reply that this change is invalid.
> >
> >
> > So to summarize, I don't see any change at all.
> >
> >
> > ChenYu
>
>
>
> --
> Regards,
>
> Morgan Wong



--=20
Regards,

Morgan Wong

