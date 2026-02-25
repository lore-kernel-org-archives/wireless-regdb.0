Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E6EF357DA
	for <wireless-regdb@archiver.kernel.org>; Wed, 25 Feb 2026 07:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUV9bGNjQmuxTPpLHW6VawellmS7Xr+5dDBuECq0vIs=; b=fdmTkpFr+o3nYd
	m4stu6OxWyYCvKYe72gBV076TcsQ/G1MZYgrCRGjVok9bKdfnof6SUsEA3edsxeUlT8gUDMwDb/P1
	NNqIUMT8pAoIN9ELT0oxhmcPro57MJsI0bF4gHV8C7LFxBN5EyNtTiLv9tW6+OU0vtz6oipvQeB18
	XT9a4MKJnbs2rQgFqGLpDKcgTXUTxOunebl6dy+5JJ1SK5+UW/qPS+E9N79DTeHPhAtf0EBKxHymK
	02iOD/6GWukuTaBieQEJ2euG5sL93BhcAlR4z/FvduJHK8Z3Bibji+hN+2wClUAGvhs5kcVaS9S39
	5ymNjt1gei9ze1Qmf0mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9TS-00000003R4h-3OAP;
	Wed, 25 Feb 2026 07:38:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9TN-00000003R4I-17Y2
	for wireless-regdb@lists.infradead.org;
	Wed, 25 Feb 2026 07:38:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7EF7A43A24
	for <wireless-regdb@lists.infradead.org>; Wed, 25 Feb 2026 07:38:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DFF4C19425
	for <wireless-regdb@lists.infradead.org>; Wed, 25 Feb 2026 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772005096;
	bh=j9gtPTNra9e2hfvaCX2It61foBz+mxYQEvCr9Hw6B98=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=NTsZm0Wf1u1lHuDmRp2WZXSkQ8rIJRou/2dDWmBDvKBWlwY03AuCHiVF8XcOdSVRi
	 /A2QGCS4tLz+ev0Eo7+cH0uDDm91DbnlSIrSLc6nzcIE+3NCWSGIB9BKVHAW0rCTre
	 ZO9UX4Pxa2aNjL915tdSIe0k55ffXBrVvImTBBKXhPhRFsO876Dalmi/X1s98q7I6h
	 Ir9coVTQkQugeAk90okv4j+ecDszwd+p6zCsvZiFvlw0Twed9hTllgTuvXgcgzFFZc
	 M0Orj0ZVl0mUZYaE9dkbQu0pMlMSmcvViMoBK64F43uvQ7L/fNYgTZcviNIUonVbHd
	 i/PkEJEwyhccw==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-389e2950f54so3419941fa.0
        for <wireless-regdb@lists.infradead.org>; Tue, 24 Feb 2026 23:38:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUFSlmMYhZfGCe6Dq4HMkak5FDVxIp7N3dKgEBFzR+e1g/4xiuRvbFEMw2QKBFKcbiBXc12uP6ySjnlg18mOA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0rRW+bmOeat3bjr/MRcNweTBDz3uuHsMqNFh57l2rJI0DLLhq
	QrIsIZx9HzokG3jzC4syye5nBd1Nw/Ze+NpUQSUfKyDy2XJPNC00pKMlHVuYnE5trz9gElI/59f
	TJ+fevyy3Rk9OO1xpf9uzkKPvMxkk+V4=
X-Received: by 2002:a2e:bea7:0:b0:366:ef7d:bab3 with SMTP id
 38308e7fff4ca-389ddc4d7fbmr8506501fa.1.1772005094693; Tue, 24 Feb 2026
 23:38:14 -0800 (PST)
MIME-Version: 1.0
References: <aZN3thlmaiBxYVQQ@decadent.org.uk> <aZN4FltUUWKUh6rp@decadent.org.uk>
In-Reply-To: <aZN4FltUUWKUh6rp@decadent.org.uk>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 25 Feb 2026 15:38:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v66kMtJmdV8ijbbjjP+iig1Kz=ipVS4Hzv_=kwt+PS9QQw@mail.gmail.com>
X-Gm-Features: AaiRm52ClQmSBSgnpNgvirOTe2JXtV2wnpqd0w6e2dRIOfy181fBWdTZsKTR8q0
Message-ID: <CAGb2v66kMtJmdV8ijbbjjP+iig1Kz=ipVS4Hzv_=kwt+PS9QQw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Replace M2Crypto with cryptography package
To: Ben Hutchings <benh@debian.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_233819_712196_9D5BD28B 
X-CRM114-Status: GOOD (  13.50  )
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

On Tue, Feb 17, 2026 at 4:03=E2=80=AFAM Ben Hutchings <benh@debian.org> wro=
te:
>
> M2Crypto is deprecated by its maintainers in favour of the
> cryptography package.  Update db2bin.py to use that for signing
> regulatory.bin.

Cool. This actually forced me to remove Python 2 from my system
to switch over to python3-cryptography. I was using some ancient
version of M2Crypto otherwise.

> Signed-off-by: Ben Hutchings <benh@debian.org>
> ---
> This applies on top of the preceding fix for M2Crypto usage, but I can
> squash them together if it's preferable to switch directly to
> cryptography.

It's fine. Having some history is good.


Thanks
ChenYu

> Ben.
>
> --- a/db2bin.py
> +++ b/db2bin.py
> @@ -2,7 +2,6 @@
>
>  from io import BytesIO, open
>  import struct
> -import hashlib
>  from dbparse import DBParser
>  import sys
>
> @@ -125,19 +124,18 @@ if len(sys.argv) > 3:
>      # Load RSA only now so people can use this script
>      # without having those libraries installed to verify
>      # their SQL changes
> -    from M2Crypto import RSA
> +    from cryptography.hazmat.primitives import hashes, serialization
> +    from cryptography.hazmat.primitives.asymmetric import padding
>
>      # determine signature length
> -    key =3D RSA.load_key(sys.argv[3])
> -    hash =3D hashlib.sha1()
> -    hash.update(output.getvalue())
> -    sig =3D key.sign(hash.digest(), algo=3D'sha1')
> +    with open(sys.argv[3], 'rb') as key_file:
> +        key =3D serialization.load_pem_private_key(key_file.read(),
> +                                                 password=3DNone)
> +    sig =3D key.sign(output.getvalue(), padding.PKCS1v15(), hashes.SHA1(=
))
>      # write it to file
>      siglen.set(len(sig))
>      # sign again
> -    hash =3D hashlib.sha1()
> -    hash.update(output.getvalue())
> -    sig =3D key.sign(hash.digest(), algo=3D'sha1')
> +    sig =3D key.sign(output.getvalue(), padding.PKCS1v15(), hashes.SHA1(=
))
>
>      output.write(sig)
>  else:

