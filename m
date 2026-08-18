Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12034C5DF7D
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Aug 2026 13:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1kLtpbFR5SYSksD0nL4IXXu9FNfott2NZaHxkpQa/Nc=; b=VVEHDb/FHxn7iy3G62G1EXa//S
	2t1VBy9HdlXdVJxcdDxHe0SHjeHR+dkNlXU6sOB4KoXYBMM40zBbB+F8uxC0dhcGUHqkD6Wo2CLFj
	LgVjuKznOrf6FTZyYdFpPPSAApkUnAmfsCLpZu21ZX1+bFbqdXtyBv9vBqVMbwWKagjbMC8/TUuXF
	UEJZZte14tIfkJkSOUZtMaOvoCE+GPw+F+ZtBdBoSpr+T+ikeJZAJHe2sQ6+k9eDBs52/oZOMxBnU
	zO9ikm9RIguWrtxfC6kMLdvFM/R1hQzxCh3kj3wP7TfLuFvKsAIpFpICan6MvkN5SYKI8bkE+yx6h
	OPuEr9nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwJai-000000080rg-2Tel;
	Tue, 18 Aug 2026 13:10:56 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwJae-000000080qM-1bAJ
	for wireless-regdb@lists.infradead.org;
	Tue, 18 Aug 2026 13:10:55 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-8efcfdb2b43so31513336d6.3
        for <wireless-regdb@lists.infradead.org>; Tue, 18 Aug 2026 06:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787058650; cv=none;
        d=google.com; s=arc-20260327;
        b=ourT1Lt8pIokPm7S4pOC1mvaoKg7rdghjAKKwKEmNCvdtUlTUH5w7yQlsIbC1ikQia
         2rKAv+l1jYhDDHGjzQWHpaLXLJmBJV0fecpfojCWFvikEsMO9i9OUmqwP7nFhP5VwLpr
         iNE0DoBDcuJ9Ei/UJVuoXvVZToH2PtCtOWtyxpwkVtCrvBKOlYK8KxQrpNnTAFVOYBNx
         NnRJ85d+bTsz4IJ4YIRb8zzZX/p3lQOa8MascW0t/ikYh/oDg38x014iL+tv3gZzn5dB
         R26Hf8V6n+hxhjl0CMVsvlXnjqr0UoUX6m4Gv7h57DnBZHGgENdnK0n2Zb1Wz5rroTI0
         eJOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1kLtpbFR5SYSksD0nL4IXXu9FNfott2NZaHxkpQa/Nc=;
        fh=yPDhAu6X/fUm+UpVDlh1nHyf4VCzdHLDFMHvYN+W6NE=;
        b=GBGnOuzm/5CJKmgunVcnmN7KvdD2gj9T+NJPnL5OrnQAWwKJEbKiITWgonX7NmftPi
         AXQjp68bqaOeqa9wPOCx9WxEAArwwxzuOJ2n6wAOBWaACH3wo/QvJtDsMaf3kdUQcPyJ
         9WAzwCWR5OIdsF0rJInekgkklPENfUdtMMPbakVE+xGyifPx/XOuJ6tU/6D7A9zqjxzk
         chv8yHi9/yjg4mYTm3lTLjPhujpK7z8Ft0YnOhXJ1tD/waL6/Evjs7mIHRihjDwYPLy/
         JO6F6JDSjOkLRutVGFuBXLoUJAgADp7kwGUY1iHJ2e86B2GTtj9B1Juw+A9nsuxDA/1a
         qREA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787058650; x=1787663450; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1kLtpbFR5SYSksD0nL4IXXu9FNfott2NZaHxkpQa/Nc=;
        b=qTH1jWPD5dv/N/2/WMwbd9A1PA2Fw6CboQ4KCLTm43fcyKlLXlBKfaCZyWE5j0bHEK
         NpRna85W5T+41HiLEU+pgUALuxJWko8vy3mbLWaTb2F4nen3RNWBtRqUV79D/HKLjv4q
         ib/g4FIcdtmXGSQvdlWiekXPEmZ2UJX/U1KpkEK/YYq5JK6d9VTPuXb6tq2VnbAI7UdP
         kumpXuu0aYsY/ssXgIk0Gj9/aXvMrpt3qZ0XIujPGZXLud79St6d8Yws2GEZoOj5Dxme
         gnbahbhApf7WjFB3AbrRZjQ28XftwO/CfUCqsMkPdLiUw3663axd7WlDg4KJ9po2Z+jU
         Z55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787058650; x=1787663450;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1kLtpbFR5SYSksD0nL4IXXu9FNfott2NZaHxkpQa/Nc=;
        b=GQk68qvQGULYJhkDClm3FVdOh0dLXs5hvWfQ0vvkb+/lZ0yrCK+t4VK9hP3OFGs/TE
         iL0LcffErVQzhdCxsawEsreP9oPFoDPEuPKN44MWfRB8FFSltPTkeWhzhueHKf3HTvPU
         ZS6lJkXuzL27fhMxMCx3K5R4qUMokh2zUTyskRvJCzdrmcagDLidEYBlZyE/TxSP7bxd
         IKu7VF0HA/zFw3GLDWqcvhd3CVX9JmqKSpPaMb6lweMUzCAkvnNT5aBnWm6y22zXqFyw
         NMTz2RXS3ETxSGcYzFx9v7ozGet6Vdc3jYaX2C+tZIbLnheUFQf0Fqc7FerUVxpiQdCS
         hoyQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr8B3gfI1OIvkVtx8u7zf4REJGpV6nLfi7bdnXOfpiCmtGVJB+BaT/7E9D4F9IRglVDiaMjKz02udJB7zKSdA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2VsPZNoM/qIZdcNgj+tLlMeI+tMU93E+w6jIqL5KjcvAyO3d/
	UemQNotKV6WQeqsqdPxlO+qPxFjb7Vxcohde0lGx9XURT9wfzGdt6y6eaSkqAId2EzYq67XkDNl
	2E6nB6+Rgtg3sAkr4mnyjfnhjW5GF3as=
X-Gm-Gg: AR+sD13fBwqPWXjU0G6JGGLkNLm2pJAWhMIFCKA9F1GMkXwKXnuQlrUmLaIQo7GrHX7
	Zb92igntwSzXaa1yqMVwh5qzECwFhaljujSmQS1lq/NySW5rg/PBUA4QYRj3ZsAvs+VrrJdqJHq
	uzUSyZBaCwoZ+OuZQJxhH53CWaQtDSP7M/ztk1KSZ+lu433c846zBs7QWV/FpZD3552/BUpzm1a
	7VQI0qsWgJBmAy5DZWUDOvKi/bA1knCsIJi0n3vpfkyhjw8H5aOCPWQWJytSWSOdcGI4NebN8ot
	IhGkVoNRbZLYmgGRVMVA4+0R0zzZiicEliFe4rY/UVjKMunglUsSNf00
X-Received: by 2002:a05:6214:130b:b0:8fe:40a0:7cbb with SMTP id
 6a1803df08f44-90a91d481cfmr367261746d6.15.1787058649864; Tue, 18 Aug 2026
 06:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
 <CAGb2v66RnAr_yPhZuuandeoE=wSh9tJMdfqkLLudWKpDmDKc4Q@mail.gmail.com>
 <CABzKGg2C-kb673u4o9Nk28-bp9ONuQAaDA39x47bJOpq6RrNHg@mail.gmail.com>
 <CABzKGg3-5yE19-_fiBuvaM9CBUnyJ7UYmt6M6w3BrEqu+3Unbw@mail.gmail.com> <CAGb2v6592_Tp7UbAKcXm3FZGMWCfxNriH3VJWDm5yZA-atYN0g@mail.gmail.com>
In-Reply-To: <CAGb2v6592_Tp7UbAKcXm3FZGMWCfxNriH3VJWDm5yZA-atYN0g@mail.gmail.com>
From: Morgan Wong <pbodq2@gmail.com>
Date: Tue, 18 Aug 2026 21:10:35 +0800
X-Gm-Features: AcwNN1WRpw_IiFjKGWtUde7Em2CGw78XjtwYZfIg6_z69NRkehqPU2QhCCj0PKw
Message-ID: <CABzKGg0knPnFARuf_+yZjpVhFV_O2ihCRTAEZqcDJ=S6JN3NZw@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Hong Kong (HK) on
 5GHz and 6GHz
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_061052_442179_6A1AEB3E 
X-CRM114-Status: GOOD (  29.85  )
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

Dear Tsai,

Sorry about overlooking the second paragraph.


1. About the TPC issue, you are right, please ignore this part of request.

2. About 6GHz 320MHz bandwidth, I am grateful if you could generate the fil=
e.

Take your time. Thanks for your help. Have a good day.

Chen-Yu Tsai <wens@kernel.org> =E6=96=BC 2026=E5=B9=B48=E6=9C=8817=E6=97=A5=
=E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=882:54=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, Aug 17, 2026 at 2:17=E2=80=AFPM Morgan Wong <pbodq2@gmail.com> wr=
ote:
> >
> > Dear all,
> >
> > Is there any problem about the patch and the reason? Any regulative
> > restriction conflict ?
>
> Sorry I haven't gotten around to it.
>
> > Morgan Wong <pbodq2@gmail.com> =E6=96=BC 2026=E5=B9=B48=E6=9C=884=E6=97=
=A5=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8810:01=E5=AF=AB=E9=81=93=EF=BC=9A
> > >
> > > Dear Tsai,
> > >
> > > The patch from git diff is now attached.
> > >
> > > I summarize again the changes, please decide.
> > >
> > > 1. 30dbm (1W) of TPC condition is applied on 5470-5730.
>
> As previously mentioned, Linux does not support TPC, so any power limits
> that require TPC do not apply. So the option is to use the "without TPC"
> option that normally halves the power limit.
>
> > > 2. Now, 320MHz bandwidth can be applied in 6GHz as WIFI 7 rolled out.
>
> This is fine.
>
> Do you want to do a proper Git patch? Or I will do the patch and list you
> as the issue reporter.
>
>
> Thanks
> ChenYu
>
> > > Chen-Yu Tsai <wens@kernel.org> =E6=96=BC 2026=E5=B9=B48=E6=9C=884=E6=
=97=A5=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=888:48=E5=AF=AB=E9=81=93=EF=BC=9A
> > > >
> > > > On Mon, Aug 3, 2026 at 9:38=E2=80=AFPM Morgan Wong <pbodq2@gmail.co=
m> wrote:
> > > > >
> > > > > Dear all,
> > > > >
> > > > > Currently:
> > > > >
> > > > > # Source:
> > > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca103=
9.pdf
> > > > > (2.4 GHz and 5 GHz)
> > > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca108=
1.pdf (6 GHz)
> > > > > country HK: DFS-ETSI
> > > > > (2400 - 2483.5 @ 40), (36)
> > > > > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > > > > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > > > > (5470 - 5730 @ 160), (27), DFS
> > > > > (5730 - 5850 @ 80), (36)
> > > > > (5945 - 6425 @ 160), (24), NO-OUTDOOR
> > > > >
> > > > >
> > > > >
> > > > > Update :
> > > > >
> > > > > # Source:
> > > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca103=
9.pdf
> > > > > (2.4 GHz and 5 GHz)
> > > > > # https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/pa=
rt-15/subpart-E
> > > > > (2.4 GHz and 5 GHz)
> > > > > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00=
.07_20/en_301893v020007a.pdf
> > > > > (2.4 GHz and 5 GHz)
> > > > > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca108=
1.pdf (6 GHz)
> > > > > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00=
.00_20/en_303687v010000a.pdf
> > > > > (6GHz)
> > > > > country HK: DFS-ETSI
> > > > > (2400 - 2483.5 @ 40), (36)
> > > > > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > > > > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > > > > (5470 - 5730 @ 160), (30), DFS
> > > > > (5730 - 5850 @ 80), (36)
> > > > > (5945 - 6425 @ 320), (23), NO-OUTDOOR
> > > >
> > > > Please do a proper patch or at least diff. This is hard to spot dif=
ferences.
> > > > And if it's not a patch it's more work.
> > > >
> > > > > Reason for change in 5470-5730 :
> > > > > The HK department, OFCA has its own requirement, 30dbm in additio=
n to
> > > > > EITHER fulfilling FCC OR ETSI requirement. The rationale behind i=
s
> > > > > having the biggest tolerance among major world standards to be an
> > > > > international city. The OFCA, 30dbm is the baseline value to be
> > > > > fulfilled in the highest priority.
> > > > >
> > > > > About FCC
> > > > > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > > > > # https://www.ecfr.gov/current/title-47/part-15/subpart-E#p-15.40=
7(h)(1)
> > > > >
> > > > > About UTSI (same as FCC)
> > > > > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > > > > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00=
.07_20/en_301893v020007a.pdf
> > > > > (page 17)
> > > > >
> > > > > A TPC (30dbm), 802.11h edition should be taken instead of 27dbm a=
s I suggest.
> > > > > Or a TPC regulation flag may be a good idea to bind with 30dbm to=
gether.
> > > >
> > > > There is no TPC flag, hence the limit is set at 27 dBm.
> > > >
> > > > > Reason for change in  5945 - 6425 :
> > > > > The HK department, OFCA requires to have its own EIPR limit, 24db=
m in
> > > > > addition to ETSI 23dbm.
> > > > > Therefore, the smaller value should be taken.
> > > > > (6GHz in HK requires no reference to FCC standards, unlike 5GHz s=
ituation)
> > > > > WIFI 7 allows 320MHz, the previous value, 160MHz was in wifi 6E e=
ra.
> > > > >
> > > > > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00=
.00_20/en_303687v010000a.pdf
> > > > > (page 17)
> > > >
> > > > You mentioned in your reply that this change is invalid.
> > > >
> > > >
> > > > So to summarize, I don't see any change at all.
> > > >
> > > >
> > > > ChenYu
> > >
> > >
> > >
> > > --
> > > Regards,
> > >
> > > Morgan Wong
> >
> >
> >
> > --
> > Regards,
> >
> > Morgan Wong



--=20
Regards,

Morgan Wong

