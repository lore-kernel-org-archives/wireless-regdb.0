Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE1FC55838
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Aug 2026 12:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MpnNxPs2kvssObanVQDUh/m4GaswozFxnPICO3pxlak=; b=fbMbcsZw5areYPYZVlzCSrECXe
	vH/SBwx161GRlqv9Y0uSLXpClZcgZlNIORYxmtA2vrjdkdT8WFjZbwV6pdmWEoLVj8srk6m5z3PZI
	ijAHCW71SQg0Y9QIg5maLcTyMqpgOuJ3gIOB7gLtruNb6vzJMxlQf8eNyO9A44d/nHErwQIaeij2j
	1BevHVFk3oz3tl4/yzh5M/jkEDHG7v9+Qi7GtdSGmXMWIGo5lI8X4vvys4ecRhK6Zzy2nFigEgJyw
	qx0X17rNFePtWlvRqBSanuLPzA2WaYJDgZYNJ3BwbGBEPn1qNctCeMLdwnzKyNPCp4E8XI6VeniHn
	2+W55znA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE1d-00000001mkS-15Tv;
	Tue, 04 Aug 2026 12:13:41 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE1Z-00000001mj3-0KbI
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Aug 2026 12:13:39 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-930fad20240so213703085a.0
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Aug 2026 05:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785845615; cv=none;
        d=google.com; s=arc-20260327;
        b=g2xUW89hA1eEQopZwuv5WkIaR/0S/UEduJg7p3n5ooVluWsUNbvOGccI0JikNrFJRH
         8/4Qe61e+NEO5wegOCPR/3GPJAu7J/m8zgw0VGpqrq/gIXIr2P2vmvUZzWznPKwjVn8R
         tLb3xtaSHVTkRmkyNOvlGaVoFUvhJhzleAVa8YfiffOT7DoIh6Cqxhdl1FAZ1CcBMYsl
         eyDKtGNLs5oIWChRwApR0V8J7TOggHNkO5dUKeOGSSpDQcK85tcoF0PPUEXkVpN3I0KB
         onCYCv2Kr3bmHifxa/LcV2heCrv/qKqTMsr+qZ4UCMWae5LFkoiZbPUAfHm1I2xdN/C6
         DyBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MpnNxPs2kvssObanVQDUh/m4GaswozFxnPICO3pxlak=;
        fh=BzVcj3AOSjt+4oCebDOU6fO0kGZQwBEUFf03l6Edbvw=;
        b=T5KyXBRXjr0SyKr9nGnNT3EQb+c8ScgjdTxWwEyl7yqjfVSF9J82XaepAy+xGDEBNH
         XBiwx76Fz2H7Sm+LymxXYCpcDHptJSsH24BdPXrvQ0C3IJ3Nhli2l3j9jDCyQGMGWq/8
         /jwvK9HgEylAJq6qS+U5KQi3HAxFgosDh1Ra0ns1QIVyvBoqPL/o9k5Cu0yIcL9MDIJU
         Thj4sRT48aDbJnGteMFioT2v9fl2m60dXXyz1RiFuqRK9G3iHS+tvhWE1m7PX26LHbI0
         SiOAE4dKEI0Gw9fx++DwBOemm9fYJ2pHwBBSJho7IR+j9utkAosTAMNMhGfdsL4k1Xxe
         oKfg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785845615; x=1786450415; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MpnNxPs2kvssObanVQDUh/m4GaswozFxnPICO3pxlak=;
        b=meIwC6mhgvqbTQ631IPhHzV2CVrphRH1Am5s0EtiCTHy6Ty0JjvuED/FTcRjUum6zF
         2gQMxPFph3taB6+5udEOnotj9xZZMS54VuXvN1UF7eFCJzkWOiQfjuadu+aI7OLkt+bP
         0auUDvUGgiwVNF/JN7BEXoXaM4mZKMPLC2o9qxd83xs2H2qKD7Pi078LAkd5ew3nBiiC
         0/ilrrv6DUzRQhnm9C6isP4iIH/pg+abRToz7hi6+XuqYsK83G8Ip9Sk5UUhkRgYnfwb
         guKKNQWSfYMGE1XP1r/DqohPV/Y/dFvTMdr2m60JW69HrOisdchLqttZeNvIoLdIBiwH
         alFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785845615; x=1786450415;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MpnNxPs2kvssObanVQDUh/m4GaswozFxnPICO3pxlak=;
        b=JNF2RJJ4/NeN68chwEkZp/3wFfmeAJnj7CG6YURbDTbenwCpsTid0Nfml4rlQ3zfA6
         F3UKt0oYAqYxEuvGuz8QklWOthu4KAZppiK7f3iEpz5GaLJrm1CVJfUlJqSrlUNurz90
         zju2qYUsZquQd4YVtyY1xW2+svl424p1ppji0zkB/cnVE089zesUUUlh7x44/4RiTV7f
         FVHwO0mLe/XsW7Xlr4wNK6kknCdB+8sFLXgWLohimuIhJ9+noG4DJByLwGQLCQD9aR+v
         sj137R8QzHJ8plnE2L4+d/J1o4hofx+0q/ncih+ZfWmU9NiKuWu2b7h6f3eEpawCDhBE
         3YfA==
X-Gm-Message-State: AOJu0YwCglWCJIehczH6LuAAhCVsNsFVoAJznLhd4x+M5QBTgLs77njF
	o9ffZZVhrUMZbczc0GUUhhLTXLW0c8V5upAEmVCxPOv59DP2YppDmV7X5VeeITLGTu3lbXTA4pX
	nPL8uQnGgLTE6nfJZqrwMkYX13CeUsTU=
X-Gm-Gg: AR+sD10I7mXriiMzyQ5q/dmNHF6NAEg/UrwHFciDa2sT1TTYK3RT3t2YLA5yOtKvCqK
	IcmIc1XPWyWmSSvFUOH1bhsebU6KkHgkkelPJbO5aP6nxpPnd9w8D5Z/b0rxiUpC0CpFmXX036m
	AP7aXcAcMmDlJ3vFrrOjSxfqLQOemsyCsWaIAtZ0U2OSs0AQVEryM1bd7kYv2d3Rx2P7K2Zi3p7
	XjidPEUDCY/BszD2lv1S/oIPwOf6EjaPs5dQij2e7xkOzLUvYLrxLFp28+nfQ6QS0mvT210fWc6
	9Z88IEmyukD/8RvGWuMcuD4GfAgsOLZrd2iPPWzbYkXGMA==
X-Received: by 2002:a05:620a:230a:20b0:932:fce7:dc66 with SMTP id
 af79cd13be357-934a0ac3160mr2111014985a.45.1785845615013; Tue, 04 Aug 2026
 05:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
In-Reply-To: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
From: Morgan Wong <pbodq2@gmail.com>
Date: Tue, 4 Aug 2026 20:13:23 +0800
X-Gm-Features: AUfX_mx15RRG_NO1G4syHthtl5Uhx9IY1aVX7haBwNh8VQCuAueAVLc-QZI1P5M
Message-ID: <CABzKGg3SeW+vUzyZ5Bq1cUoN2YGHo2vuBY3vuqLoa2dc9buMGQ@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Hong Kong (HK) on
 5GHz and 6GHz
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_051337_128979_4B6FD878 
X-CRM114-Status: GOOD (  12.18  )
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

Please keep the original value 24dbm instead of 23 in 6GHz.

I overlooked there was a small footnote at the bottom of document HKCA
1081. The government allows +1dmb on top of ETSI's 23dmb =3D 24dbm

https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git/com=
mit/?id=3D756d784aa2ee2810ded0dd314d9764c80660a75b

Morgan Wong <pbodq2@gmail.com> =E6=96=BC 2026=E5=B9=B48=E6=9C=883=E6=97=A5=
=E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=889:37=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Dear all,
>
> Currently:
>
> # Source:
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> (2.4 GHz and 5 GHz)
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6=
 GHz)
> country HK: DFS-ETSI
> (2400 - 2483.5 @ 40), (36)
> (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> (5470 - 5730 @ 160), (27), DFS
> (5730 - 5850 @ 80), (36)
> (5945 - 6425 @ 160), (24), NO-OUTDOOR
>
>
>
> Update :
>
> # Source:
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> (2.4 GHz and 5 GHz)
> # https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/su=
bpart-E
> (2.4 GHz and 5 GHz)
> # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20/e=
n_301893v020007a.pdf
> (2.4 GHz and 5 GHz)
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6=
 GHz)
> # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20/e=
n_303687v010000a.pdf
> (6GHz)
> country HK: DFS-ETSI
> (2400 - 2483.5 @ 40), (36)
> (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> (5470 - 5730 @ 160), (30), DFS
> (5730 - 5850 @ 80), (36)
> (5945 - 6425 @ 320), (23), NO-OUTDOOR
>
> Reason for change in 5470-5730 :
> The HK department, OFCA has its own requirement, 30dbm in addition to
> EITHER fulfilling FCC OR ETSI requirement. The rationale behind is
> having the biggest tolerance among major world standards to be an
> international city. The OFCA, 30dbm is the baseline value to be
> fulfilled in the highest priority.
>
> About FCC
> 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> # https://www.ecfr.gov/current/title-47/part-15/subpart-E#p-15.407(h)(1)
>
> About UTSI (same as FCC)
> 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20/e=
n_301893v020007a.pdf
> (page 17)
>
> A TPC (30dbm), 802.11h edition should be taken instead of 27dbm as I sugg=
est.
> Or a TPC regulation flag may be a good idea to bind with 30dbm together.
>
>
> Reason for change in  5945 - 6425 :
> The HK department, OFCA requires to have its own EIPR limit, 24dbm in
> addition to ETSI 23dbm.
> Therefore, the smaller value should be taken.
> (6GHz in HK requires no reference to FCC standards, unlike 5GHz situation=
)
> WIFI 7 allows 320MHz, the previous value, 160MHz was in wifi 6E era.
>
> # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20/e=
n_303687v010000a.pdf
> (page 17)
>
>
> --
> Regards,
>
> Morgan Wong



--=20
Regards,

Morgan Wong

