Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E9CCC55184
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Aug 2026 14:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qh8UBNm5U/sfp98PJI7FDutd3EvD7SzMGXtfQ/QVld8=; b=LjEfpvfwTIUNTH6lsulx08VAxc
	ig7LFTvNAS8zgyoe6+Yvo/f8WAXSZ4XtwYQzPxCQG+FawdS9dDX4Uof+BlhN+6Et2G5p5h+Xgl9lV
	aUwWGh59WduTcN1hdWtibFHe6GH7Oca71HDPlOLFIfrgecI+eB905a9avCPNhnxIy7rcEknAiejtn
	Ch3rBt0Y9ZlQYQOA1W5okavDM8JHKa54y3BFhG9oyM0+aDJV+R0YrN/l2Y0ZHMprKngQkfR8CBRzB
	9RKsVjrsV3dAsSMuWIN2eEjVwB4LUI0j3UAPiRulNFdyGm7LglwtX5e6PjOSl9gS4E47NwfogERSE
	S416LhUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrFib-00000001zcs-1eaT;
	Tue, 04 Aug 2026 14:02:09 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrFiY-00000001zc5-1M6C
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Aug 2026 14:02:08 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-8f18d92172aso47251236d6.2
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Aug 2026 07:02:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785852125; cv=none;
        d=google.com; s=arc-20260327;
        b=oaoMQVhQ6ebWJwiaKP3EuApOr1u/3r75d2oXzirRS1q7sJ6eJn1v+da7+Ev8S/A4V4
         +tB7e2yjlkGLUKcTfO+C1fvQbuna8pVSF0M/CFlKhO7XM1xZMsOJLOjrCyQTlKDN5kxz
         qghWoTjbrGt0qzmpl2xHYNwrUXdJgDHp1zHnJzgp5/m5octg2XxmQjiKdjMqEJdUCEQ2
         tOd6ay18ZKG5ekTNL1DciHQKKyavZ6wvyr6UbTF8vc5KpzKPgjfzab0BmqhmgxfuFMkR
         aINHovG2txpUfIXXBH/R6dS1TO9lwlkLTMzPlMQ4M+NC5VehxZpHJ7PAoWyDxhar1dni
         qHeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qh8UBNm5U/sfp98PJI7FDutd3EvD7SzMGXtfQ/QVld8=;
        fh=jtK6D2UluRfNRytKJKwNa7H9utLA569LB6NHufkX674=;
        b=WPreJtgStuFXKCgo0ZXQPBNkR+MjIyaF1WBgkDLWiB0ru5d/G9tFQuIYRCn3Tr9Jp6
         n/1KKy/vgy7XnNKqsJP0aaEjrdaZFwSS0E5R4Zm/kIT6jJIlv0W6c29/1FShwRyxYnEV
         nXJuVIxweBsU+yWOoVAn2vzghsrs0fhUURQQ39m8wdzGfDRAETav1zPPxjxEpTW6jLxX
         pqhAcorwK1Jfp2mNrOv0FAnBXKWQmtRC/XGXU2qVnKXNF7PKNLHbJ5ZY12V3LNZl/vfO
         HPpXu6sLHOfWazJT60GGCPUTfUMk6poT8AbP1fBiPn87k0mfxmopb0RTLdmx6osZ8XX4
         ZCDw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785852125; x=1786456925; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qh8UBNm5U/sfp98PJI7FDutd3EvD7SzMGXtfQ/QVld8=;
        b=ld3hgo4x6F9siVzPxS0ouzDcwO+R1sHT+yvig28U5iq+loMwnCW7qeh4Nc2XVRhZgy
         chRmPQV1DF5f+gYYkqjRaUiOq6uYzh16KpWnQvLhh4XZfcHugovwS0bzthdcqzN0h85T
         jNwkSPLGHyhvZHjCEXJWtm6hEGdXm7DgkOtKkIPjUMHa/FrUkA+MPhKqBKIZHwak14XZ
         ZYP0RvYhOBzpcDEFZWJLqI/c7jvJmfjtYRCsYO+nCxd8l2fkviKIUpEg53NfqzY7kdON
         vPz10jd8nhiafIN0YV89ZwKUFiWJ4up1au8zYedZH+DquF+X8qNq8Glx/ubdhsAsb9tD
         GTfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785852125; x=1786456925;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=qh8UBNm5U/sfp98PJI7FDutd3EvD7SzMGXtfQ/QVld8=;
        b=P/XN7o1+Q5YxWCZQKvi0v+sFzH4wYqQIWhxwL5eDKnEmz/LYej4Ho2364cIIXfoD2j
         xFeiPnjAjLK86PvV9S+nqs2UwuKF553qZ/UJXjpb1b7naw1GByeYlvXkkS1RO3j5BhwQ
         NYb5UMN0HEOlO7CU7jFz0YsauslTNjY7iMwsCguGUop1AqfxLtyMXqHPkXgngWH8pRaR
         AgxhPSkTiY//nmj2KyeMZ4+SMvUv0O1Fa/ILg3rfrdHv5Rxp6SBpk3IFC/swL1sYPfZQ
         jbuV+8drg9iu2YAUShpzJwYN3wMCLmlDHGZp5ZfDdVY5Y4fcZ84a3S3Amic+OgGvEJC4
         crqQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro0ZkPwbwtmOo0cKbdAs8SitiXf2J6rzS5c05JtU0MDTqi4eBbqYjkoznNHCDE+6tAZwqsmO4jm8HeSM9zS8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaP3B3xKM897pyiAyAZE8FL37R+fm/SSbpH2a5Fu49AtS9fnMX
	Kh3YqIDjLrARL/Izhf7dhzQTgZhjqgz0yb/ooHDKuUjU0EZS94yFdxukip64FT2wIqnpUNcox4M
	Ne1WlkzH+3K8NIIzhJju8xpLOfjceu4iGiMSE
X-Gm-Gg: AR+sD11HJLl7toEEM1rbIomMLJxRz20wss/G/1QLsNdTK4nFS9dPRVO0y+MjqclPm1k
	vYzP1hYjAUJfv7zwxrnLDYuLhJbC5G+TXzN5d35PMn68zSzw83FCTeFWw3mLCP7MB1rFlXeMpXR
	iJ1J1dR14YmLt3REDcWpepOt9EmnYVyTaFOjqLQlSHy/dmXRMj12KOcxwD5L82zWGX/GZcCbKuJ
	+YyxfsVJU2SSzBZ8gQdgKbzLQzYXjfCGK4pVVHx7AjVsAjBX1uDgvKuvubDm+TBIBL0zqjA1FWO
	eIOW4iM9Pe1t0LrWXkkahK8tsv/iE/v0IkTF25ZkuKs=
X-Received: by 2002:ad4:4ea5:0:b0:8ce:ca7d:b099 with SMTP id
 6a1803df08f44-90849640102mr296902816d6.18.1785852124779; Tue, 04 Aug 2026
 07:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
 <CAGb2v66RnAr_yPhZuuandeoE=wSh9tJMdfqkLLudWKpDmDKc4Q@mail.gmail.com>
In-Reply-To: <CAGb2v66RnAr_yPhZuuandeoE=wSh9tJMdfqkLLudWKpDmDKc4Q@mail.gmail.com>
From: Morgan Wong <pbodq2@gmail.com>
Date: Tue, 4 Aug 2026 22:01:52 +0800
X-Gm-Features: AUfX_mx96gvitYZPPaAXDF-ihaQsPZ3I4kuyxaAveLR8xsGdrH2wHiqJEl_dSd8
Message-ID: <CABzKGg2C-kb673u4o9Nk28-bp9ONuQAaDA39x47bJOpq6RrNHg@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Hong Kong (HK) on
 5GHz and 6GHz
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: multipart/mixed; boundary="000000000000853eac06583919d6"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_070206_379517_E1C5874A 
X-CRM114-Status: GOOD (  21.34  )
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

--000000000000853eac06583919d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Tsai,

The patch from git diff is now attached.

I summarize again the changes, please decide.

1. 30dbm (1W) of TPC condition is applied on 5470-5730.

2. Now, 320MHz bandwidth can be applied in 6GHz as WIFI 7 rolled out.

Chen-Yu Tsai <wens@kernel.org> =E6=96=BC 2026=E5=B9=B48=E6=9C=884=E6=97=A5=
=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=888:48=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, Aug 3, 2026 at 9:38=E2=80=AFPM Morgan Wong <pbodq2@gmail.com> wro=
te:
> >
> > Dear all,
> >
> > Currently:
> >
> > # Source:
> > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> > (2.4 GHz and 5 GHz)
> > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf =
(6 GHz)
> > country HK: DFS-ETSI
> > (2400 - 2483.5 @ 40), (36)
> > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > (5470 - 5730 @ 160), (27), DFS
> > (5730 - 5850 @ 80), (36)
> > (5945 - 6425 @ 160), (24), NO-OUTDOOR
> >
> >
> >
> > Update :
> >
> > # Source:
> > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> > (2.4 GHz and 5 GHz)
> > # https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/=
subpart-E
> > (2.4 GHz and 5 GHz)
> > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20=
/en_301893v020007a.pdf
> > (2.4 GHz and 5 GHz)
> > # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf =
(6 GHz)
> > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20=
/en_303687v010000a.pdf
> > (6GHz)
> > country HK: DFS-ETSI
> > (2400 - 2483.5 @ 40), (36)
> > (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> > (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> > (5470 - 5730 @ 160), (30), DFS
> > (5730 - 5850 @ 80), (36)
> > (5945 - 6425 @ 320), (23), NO-OUTDOOR
>
> Please do a proper patch or at least diff. This is hard to spot differenc=
es.
> And if it's not a patch it's more work.
>
> > Reason for change in 5470-5730 :
> > The HK department, OFCA has its own requirement, 30dbm in addition to
> > EITHER fulfilling FCC OR ETSI requirement. The rationale behind is
> > having the biggest tolerance among major world standards to be an
> > international city. The OFCA, 30dbm is the baseline value to be
> > fulfilled in the highest priority.
> >
> > About FCC
> > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > # https://www.ecfr.gov/current/title-47/part-15/subpart-E#p-15.407(h)(1=
)
> >
> > About UTSI (same as FCC)
> > 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> > # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20=
/en_301893v020007a.pdf
> > (page 17)
> >
> > A TPC (30dbm), 802.11h edition should be taken instead of 27dbm as I su=
ggest.
> > Or a TPC regulation flag may be a good idea to bind with 30dbm together=
.
>
> There is no TPC flag, hence the limit is set at 27 dBm.
>
> > Reason for change in  5945 - 6425 :
> > The HK department, OFCA requires to have its own EIPR limit, 24dbm in
> > addition to ETSI 23dbm.
> > Therefore, the smaller value should be taken.
> > (6GHz in HK requires no reference to FCC standards, unlike 5GHz situati=
on)
> > WIFI 7 allows 320MHz, the previous value, 160MHz was in wifi 6E era.
> >
> > # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20=
/en_303687v010000a.pdf
> > (page 17)
>
> You mentioned in your reply that this change is invalid.
>
>
> So to summarize, I don't see any change at all.
>
>
> ChenYu



--=20
Regards,

Morgan Wong

--000000000000853eac06583919d6
Content-Type: application/octet-stream; name="1.patch"
Content-Disposition: attachment; filename="1.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mseq7kwm0>
X-Attachment-Id: f_mseq7kwm0

ZGlmZiAtLWdpdCBhL2RiLnR4dCBiL2RiLnR4dAppbmRleCBlYjYzZmY2Li4xNDRjOTQ1IDEwMDY0
NAotLS0gYS9kYi50eHQKKysrIGIvZGIudHh0CkBAIC04OTAsOSArODkwLDkgQEAgY291bnRyeSBI
SzogREZTLUVUU0kKIAkoMjQwMCAtIDI0ODMuNSBAIDQwKSwgKDM2KQogCSg1MTUwIC0gNTI1MCBA
IDgwKSwgKDIzKSwgQVVUTy1CVywgTk8tT1VURE9PUgogCSg1MjUwIC0gNTM1MCBAIDgwKSwgKDIz
KSwgREZTLCBBVVRPLUJXLCBOTy1PVVRET09SCi0JKDU0NzAgLSA1NzMwIEAgMTYwKSwgKDI3KSwg
REZTCisJKDU0NzAgLSA1NzMwIEAgMTYwKSwgKDMwKSwgREZTCiAJKDU3MzAgLSA1ODUwIEAgODAp
LCAoMzYpCi0JKDU5NDUgLSA2NDI1IEAgMTYwKSwgKDI0KSwgTk8tT1VURE9PUgorCSg1OTQ1IC0g
NjQyNSBAIDMyMCksICgyNCksIE5PLU9VVERPT1IKIAogIyBTb3VyY2U6CiAjIGh0dHBzOi8vd3d3
LmNvbmF0ZWwuZ29iLmhuL2RvYy9SZWd1bGFjaW9uL3Jlc29sdWNpb25lcy8yMDIzL05SMDUtMjMu
cGRmCg==
--000000000000853eac06583919d6--

