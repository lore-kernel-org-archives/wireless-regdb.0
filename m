Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BCE6C3DA49
	for <wireless-regdb@archiver.kernel.org>; Fri, 19 Jul 2024 03:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X2aBN439CgxyqsWC/FKZX/cRexlSuHG40IikgmWyCH4=; b=ovCMruz7i1QWwVO/79P8shq2Te
	wPnm83tkaU+V5i0fqzfbnIpGAZpg9ROy3nxBtidRmiUXLO13n0im+sX8ospB/9xVXgBzOK1Li4ezz
	cJlTCmZ0sCbp1tc4qxWvdTiBTdAd70VrxTBRWP1QzcuxIXLaFqxRjuG18TkzgRN39t2475GbO2k50
	9mqSbzY2AFpe53TtiqT4STYE9udCytj7C9a9AHnz7K2lfsYzY3mCHF+huAz2+NG8Y0kWBqZywEGOr
	Lek4a1YFeWNXj2TI2co0bysuFJ7zokwsKidvTDWbG+/oc5ZyXicG4W3ihpI8uR5uIL5FetBc+Q12q
	sa3B1LKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUdxv-00000001O2u-40wq;
	Fri, 19 Jul 2024 03:07:27 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUdxt-00000001O2F-1FSA
	for wireless-regdb@lists.infradead.org;
	Fri, 19 Jul 2024 03:07:26 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5a108354819so526719a12.0
        for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 20:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721358443; x=1721963243; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X2aBN439CgxyqsWC/FKZX/cRexlSuHG40IikgmWyCH4=;
        b=IzO+Ur6A+dIgl7utQQBpHK4+dXRigMtJvM+dgxZCT1/Z4QjJopqYZs2VSwc+yJQhdc
         8itS489Ax2XzKLGyerCmV8vPSfMbgF4EzB+LgpTtK1S5UNmnsQf63zZRlpqtGIawfNqm
         SHriT7SW7uJeNewxhJDO93H4yMhJ/wDEkhGUF/R9GJFuftlWLppXXVi1R0zFdVlIw8CN
         Xux8LztzXgPlV6olhKbdQOKXkiaWS8+jLuLRat+wZsPYX55+g/vjn9cMEvIloMNnDQSz
         R3qNPePTJmdI64doaJJl2bjXMO6QfrcXu6hRC0c18t93IsnJP6FDI+q1105BHeC9IkU6
         nUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721358443; x=1721963243;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X2aBN439CgxyqsWC/FKZX/cRexlSuHG40IikgmWyCH4=;
        b=rEO68ut/GGGobUg2cQSc9Rbd6ygB8G+snaCfVA2TtEsWSL/7NZ6OTqwp4t68+DCmiM
         K0ytc7xGWN4QyKfIQd/a87TSBSUfzg6dvDu9TdXXKvDqnoOqgCDbW8aK5dbIeokA1rxr
         TZblvtONBhd9fKa/A4XWuPB7yitkz1251Qag/mANXB9RszjiorRdTwUdfzYqvtcuXWJ/
         PlAxX+zYgN/GnhyNNpTR6nksWTbAhZakUtmwZoj5VGWtCSsT6dfMJjqS5hba9rMGw6Iy
         1SnaZ7D3zbef8RCfxDTNJQ5MCaprCV39OODKABRgQUH6wFN1EZiHELpt+CKhiSTz2fRU
         8nJw==
X-Forwarded-Encrypted: i=1; AJvYcCWXqKEHWqaboGQJleXowUH/d/5d+FJYVPe2OxZo+LkQITd8P9OsaiTeK3+JkxVuoL2acqxmtXhqhJfB5Et/MsZNIt7gUAfXLMbl+esQ8d7uVLQk
X-Gm-Message-State: AOJu0YxBLxatUJvqVjQhJ4St7h3iLgfGXEoNIZEyb2QtZ897DGXumjrA
	vXs3eQbtyLOEB1e1hHnKCUb8gTJKs82bSZQxGFT/Ep1pdIntMdpHakbH/5LFWCe8hi0GVhG4RWu
	KB6YFVGyXHO2QaeZte8tQhspL29OVTjIa
X-Google-Smtp-Source: AGHT+IEJE61cAf3fLd8YLQ+hDm+7GTnb8etkVZpYIxtEOSpYiChPVVa/B3u7xEdF2li1npL4Zce3tmzzq8pJ0ASkkxk=
X-Received: by 2002:a17:906:b798:b0:a6f:61c7:dea7 with SMTP id
 a640c23a62f3a-a7a01158645mr422794566b.18.1721358442926; Thu, 18 Jul 2024
 20:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240705060613.28909-1-pkshih@gmail.com> <20240705060613.28909-5-pkshih@gmail.com>
 <CAGb2v64mLd+jhwL2EXZ=zTJZ2VuMXTa==NvAqib=xQrNg-ufkQ@mail.gmail.com>
In-Reply-To: <CAGb2v64mLd+jhwL2EXZ=zTJZ2VuMXTa==NvAqib=xQrNg-ufkQ@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Fri, 19 Jul 2024 11:07:12 +0800
Message-ID: <CAHrRpunYADgM3NcrSC38GPzqGwUBePA84zLMM5u91kz81ZsU5w@mail.gmail.com>
Subject: Re: [PATCH 5/5] wireless-regdb: Update regulatory info for Togo (TG)
 for 2022
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_200725_357813_9181BEE9 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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
> On Fri, Jul 5, 2024 at 2:06=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wr=
ote:
> >
> > 5925-6425 MHz
> >   - LPI
> >     * EIRP 23 dBm (200 mW)
> >     * EIRP density 10 dBm/MHz
>
> The document you linked to suggests it is actually -10 dBm/MHz,
> which kind of makes it useless as the total e.i.r.p for a 20 MHz
> channel would be 2 mW or 3 dBm...
>
> And the PSD for LP being lower than VLP seems like an error.

Since it looks like an error, I keep the power limit as I made, but
add some description by v2.

Thanks for the review.
Ping-Ke

