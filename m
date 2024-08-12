Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17E63C3DA7F
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 11:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMF/pcDT8zvMHchT4Oz6nEmx/XYKw/r6u78XbQTxCzo=; b=ZdmB8530vv5UkJ
	p8I3ZM7m6vTt1rQONmE7Dl8BFqdbTEnIMXxXMG+ucWWFxLRvl8ftJaFr5M3JKXhg+eJ5iY3+xJb7k
	NNQ7JTNHzd5J9/n3RZadObqunn9aJv0UsWQptivFoMbIX52rJ219NClOvlxGhl/oQwV1EMT65QA41
	n1gi6KZAhX0vqG4bVCbbVfmTjLArmKF/AiVYRB7Ix/I9C/g/itnf4WdGfcCZb/amdUdGye18/g2Yy
	vud7d3LongTbe2Cx+AhWLm17nd3IFNNvWQwaIzXaDiIUZcEhrzClnR6sB4TyQ8mS8py1nSaAKB1F/
	7AEwCMgzRbUo27R5FzBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTQy-00000000A2P-3Axo;
	Mon, 12 Aug 2024 11:41:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTQq-00000000A1N-3PL6
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 11:41:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3D7E861184
	for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 11:41:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E69EAC32782
	for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 11:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723462907;
	bh=kMF/pcDT8zvMHchT4Oz6nEmx/XYKw/r6u78XbQTxCzo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=tZZLkelvEInUMEbH5WoH6IjdtBpzEPxzLdrpc+THkWJb/AyIfSwTyuqIrAUrVbmSS
	 vz6Sho0WcDenuF7iD+ngN0yCvPtW/q8ciGiYOIJWTPwbU7XSfRKMGeF7iGSA6Th96z
	 3dH4O0ZCkdFKgtAdTJoUDh+RjwB+fosqjjH/uymjmIOhhqNQHxZY7eHbMwnhzuecJg
	 SxTQ2jpUCVh/9pweUvqWfxoHNcHE0HIidVTt84l2eDPqc1+XEAocA8yMlgYhFQP5Hp
	 /NkJPuV9LVhfGigZWOS0se2wNT5VrZE/KeUqHW5OtsygOgptNDhyxiitdhps5UvZoZ
	 S53uIUV6EngBg==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f0dfdc9e16so49989201fa.2
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 04:41:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWZep9nVGa8Whde7W5FsbaKItLXGiq0NJnVaAW68mwzHjMFQZBxvaS278exhNGhtgwxzlKc+j0pH2n4puZRWlQ4tyiRPjHG7p6j30yOsADfYQRt
X-Gm-Message-State: AOJu0YycEMEUK63W9UmAJLfJ+s9SJ16pbB5JmGU1QAL7v9YcH1wn2bGl
	mSOrVLfrYdg8ElQ8xf5vRXAp9K59/Y54EDT6iIJX2EJ2AK1uIl+y9ygLHi3H4Byv6GhVSAXSn2+
	gJZmJE3/Vdklz0xwe4pOysV4JSCg=
X-Google-Smtp-Source: AGHT+IE8wXvfgTPIrpcj6QGb+Lk/FLqmTQL6rqO3+fRPj//sfaG2Gq43ZomYIe1ktiIfua0kkUkRrEMCDFKyAqSp/uU=
X-Received: by 2002:a05:651c:221e:b0:2f1:a509:ce66 with SMTP id
 38308e7fff4ca-2f1a6cd441emr72474261fa.5.1723462906267; Mon, 12 Aug 2024
 04:41:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240806061203.1839-3-gcperfinian@up.edu.ph> <CAGb2v67fQiYAq7C-eT98L-tx4DoS5AN0UyfaB+hFkpOQy4Z3vQ@mail.gmail.com>
 <CAJ5pLOZ0mBWjZ2zSwwsBj1TsLXc+R__1bGsUgNUpZ8an9K8WEw@mail.gmail.com>
In-Reply-To: <CAJ5pLOZ0mBWjZ2zSwwsBj1TsLXc+R__1bGsUgNUpZ8an9K8WEw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Aug 2024 19:41:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v64MnnY8ekQd1AES68J6NSOXP4Rcb41orShrzhtH0aT4Xg@mail.gmail.com>
Message-ID: <CAGb2v64MnnY8ekQd1AES68J6NSOXP4Rcb41orShrzhtH0aT4Xg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Philippines
 (PH) on 6GHz
To: Gacel Perfinian <gcperfinian@up.edu.ph>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_044148_916799_8C0AB54F 
X-CRM114-Status: GOOD (  13.80  )
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

On Mon, Aug 12, 2024 at 7:38=E2=80=AFPM Gacel Perfinian <gcperfinian@up.edu=
.ph> wrote:
>
> > Could you use the value and unit directly given in the referenced
> > document? So 250 mW.
> >
> > The database takes both. You don't need to convert the other ones.
>
> Can you clarify if this is just for the new entry or for all of them?
> The documents has always stated the requirements in mW eirp but the
> old entries were in dBm so I thought there was a reason why these are
> listed in dBm.

AFAIK in the distant(?) past the database only supported values in dBm.

You can either "just" add the new 6 GHz rule using mW, or update all
of them.

If you opt for the latter, could you also mention "changing the existing
values and units to match the official documents" in the commit message?

Thanks
ChenYu

