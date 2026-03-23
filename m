Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F001D58CD1
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Mar 2026 05:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urdlVe/lcU6z4GV9IglqEB1t0rmhmEATtHSfcd3O1iE=; b=cryNARoRDioVBy
	H7+eGGB4+wM7MrUgi5gA8SgEJgDtyO+N+s6AX/5X/YGDvhgeOWTkHmO2sFa+pyoLnrgIuW01iHR+G
	FBWMytFJnM2j6reWYhBEXboGmwmvh10AECEWhVCvLlYDwYwT1JuM3kfs6klBpScZYQsj5BASxvl9U
	RVusx/Q0axlcnkpwyiQ+CU4CTIFlBCAYb81I6rY7/tZIHOnZRHCysdRyVe1IrhD9Gv/M9WwE6qJre
	+vJquSMNgdXxFQKjAATR/lCpUHCPh0LKf88XO29JPDX8HX8TVjop6XGiYCH/519/LzCey6qnOPtP2
	p1sdo/LKSllBGJF6hnmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4XWO-0000000G2uo-42I5;
	Mon, 23 Mar 2026 05:08:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4XWM-0000000G2uR-0RAD
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Mar 2026 05:08:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 66362402D7
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Mar 2026 05:08:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4625BC4CEF7
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Mar 2026 05:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774242489;
	bh=3M/qa2j2XtSav5vEQ9cbpA94fhQS57if053QslqBV7E=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=eyTR2j6WMeQDnZ13+rZfQkANPKQSgcg4IN92FSdrU2ffWJvgfcSaw5jeWw4+pOS0G
	 XcIIg+0AunhYGl02HrI3/ptDdPcL9S+/vQgEZNArlyos9tJlTjGjewR55vKrBhElG7
	 +ZxUqLcIyuJhgT4CJJnidj/ay1+rzxGlhNQZn3tZgfYhIHVJUTmP5RvCLzwt6w0znR
	 8Wy8OtTJBM5MssIfuIzsWzYxNAD8SB6O6PV3rLEmRKoHvmmzP0EniNchPOzdSp3hZx
	 S0Ya1BkbjgoLkjmuXUYv7F9FOy21pZFpjgLXwWMtnBzO8jKbVmSZJ4AU0fpWbxtNhd
	 ttEAPcqFBbTeg==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-38a32d36396so34403951fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 22 Mar 2026 22:08:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWJNiq3B2s729kTjYtlnUWoJyDbs8CDwL9quaKlE34rasgcHXbkdySQBG9PGqqFpdkrPvDOipuOuTFR+F8rCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIWqG+X7Po/I9TKrM8mgz3hsWuZ3bpYbQDyD/hP7ZNJBSKSyII
	n2k2mSoTXA8eaYQ6VFp4nueRNAf0k24Q8gNRCshiI1GYF8EYOOB3koXRBVWWfm2cR4fZwORsudt
	UJcJ5PPi5iABsRNcfyWaAaPVpXTbvLQE=
X-Received: by 2002:a05:651c:1a1e:b0:38b:d126:8ff2 with SMTP id
 38308e7fff4ca-38bf9d13c28mr32429411fa.8.1774242487659; Sun, 22 Mar 2026
 22:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260125212622.28370-1-bage@debian.org>
In-Reply-To: <20260125212622.28370-1-bage@debian.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Mar 2026 13:07:55 +0800
X-Gmail-Original-Message-ID: <CAGb2v64KgRdrSAbCXDh4nuqQa3Gftmdk8Nt7AmC4RFU28NoY6w@mail.gmail.com>
X-Gm-Features: AQROBzDfDB9RDuBpgX5Kwyrvb0UbEjorp9OJFk0F63qxs0y5IMAIcFNsoN7bvHw
Message-ID: <CAGb2v64KgRdrSAbCXDh4nuqQa3Gftmdk8Nt7AmC4RFU28NoY6w@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Port RSA signing to cryptography lib
To: Bastian Germann <bage@debian.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_220810_818879_8F006B65 
X-CRM114-Status: GOOD (  15.77  )
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

On Mon, Jan 26, 2026 at 5:26=E2=80=AFAM Bastian Germann <bage@debian.org> w=
rote:
>
> Port the RSA signing from the deprecated M2Crypto library to the
> cryptography library.
>
> M2Crypto is no longer actively maintained. The cryptography library is
> the recommended replacement, offering better maintenance.
>
> Remove unused hashlib import.
>
> Signed-off-by: Bastian Germann <bage@debian.org>

Sorry for getting to this just now. I somehow accidentally archived it,
so I ended up taking Ben Hutching's patch instead.


Thanks
ChenYu

> ---
>  db2bin.py | 25 ++++++++++++++++---------
>  1 file changed, 16 insertions(+), 9 deletions(-)
>
> diff --git a/db2bin.py b/db2bin.py
> index 29ae313..a4fa3e5 100755
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
> @@ -125,19 +124,27 @@ if len(sys.argv) > 3:
>      # Load RSA only now so people can use this script
>      # without having those libraries installed to verify
>      # their SQL changes
> -    from M2Crypto import RSA
> +    from cryptography.hazmat.primitives import hashes, serialization
> +    from cryptography.hazmat.primitives.asymmetric import padding
> +
> +    # load the private key
> +    with open(sys.argv[3], 'rb') as key_file:
> +        key =3D serialization.load_pem_private_key(key_file.read(), pass=
word=3DNone)
>
>      # determine signature length
> -    key =3D RSA.load_key(sys.argv[3])
> -    hash =3D hashlib.sha1()
> -    hash.update(output.getvalue())
> -    sig =3D key.sign(hash.digest())
> +    sig =3D key.sign(
> +        output.getvalue(),
> +        padding.PKCS1v15(),
> +        hashes.SHA1()
> +    )
>      # write it to file
>      siglen.set(len(sig))
>      # sign again
> -    hash =3D hashlib.sha1()
> -    hash.update(output.getvalue())
> -    sig =3D key.sign(hash.digest())
> +    sig =3D key.sign(
> +        output.getvalue(),
> +        padding.PKCS1v15(),
> +        hashes.SHA1()
> +    )
>
>      output.write(sig)
>  else:
>

