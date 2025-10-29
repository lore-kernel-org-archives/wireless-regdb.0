Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3E0ECCF9E9
	for <wireless-regdb@archiver.kernel.org>; Wed, 29 Oct 2025 10:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=508RUHYtGWt7m+qwKA3ucuo9vF6Sp8x7k1q1kc3KEek=; b=Nh5Dq9k5Fsb5hD/bkhcv0JOPO4
	aLPonjGQ961cMzthQLwdi2D1SUkNSFpzS4DHsfq7Ow/e5bBdtdQhhAJ7tZ0TmE+VGJGqEWkmud3VV
	YBeAPDnwQCTv8dK9QvftaOrF6YrwW74u9tB/Oiq0f6QX1+6jW22kvPvCEHEEvdpMoNddeono7tlft
	S1Z2Qw1pHpca9welZbs2SqKL1Wwa4vL6rSor7CHtCrzTnEOnKdwuAbCH0YhpNXaMeZUeGVmW4P2Ea
	tWeTxxhp2A6gN3jz2RF89nHD4DYTy8jDduxB25k1Zr+CMyZHwjZTtu3jk0qZtp/c3rWekCsYKdS1g
	g2UEsJdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE3id-00000000q4T-2Sbf;
	Wed, 29 Oct 2025 10:47:55 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE3ia-00000000q3D-1kaj
	for wireless-regdb@lists.infradead.org;
	Wed, 29 Oct 2025 10:47:53 +0000
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-58e86d74a92so232074137.2
        for <wireless-regdb@lists.infradead.org>; Wed, 29 Oct 2025 03:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1761734871; x=1762339671; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=508RUHYtGWt7m+qwKA3ucuo9vF6Sp8x7k1q1kc3KEek=;
        b=b7CXUqryDSVIw5CTtdShTuk7sml0KOvEKzxJPv2xvOypkKIW0oXLzOG4IqHwo5EHZS
         A1x9tdQCNDcfBT3/68kY82jYJBgEKIgnaNBnTCTxHA3rG2W7rh4xSrtBWN84fhkHbb/Y
         4mUW5H7/dPbmdx6NwkjqTHioo3pW2MmSPio0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761734871; x=1762339671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=508RUHYtGWt7m+qwKA3ucuo9vF6Sp8x7k1q1kc3KEek=;
        b=RfZ3wmlVHJbAZXysCgFxgG506OqPrZk9Dddo1dE2OY3+j0KW/xaDjaWiln1CGUGRoH
         UAFw6CQaCDXxoQm3GTh1tNB/jGw2ZoykQYzrWC604rb0NqiNwQSFHWQUnCytdaICOIT6
         piePNpleJFT7W3geh65qPd4C/RtottCQcKtpISrwQBF+3pmS+t0UwPEm/MifjV5z6003
         YDx9zHWPFiMIew4BjhUt8NaoyDgPKvauOVffhhDnNisdwrRJIDq3MD95Hg1KRaDV05B6
         9tgGbeWT0w1q3iUL8lh9bjipWdMS+YBf6oj7FLDqoL7wbHX7LMsqIqIp55lrq4M0YMSZ
         PGMw==
X-Forwarded-Encrypted: i=1; AJvYcCXbr9L/5pXyDZ0ISgv15tbz6Q49V2Rg9V9GkaKo2bhShN8qF8ChNgX8kXUCykTSO2ZJPJccsG87f4MxCbE+5A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+IDCOOQE+Np5UXTBTz1smQdJ0SchpynH22FCWDIr1DiXO/ol/
	N3kK1Dqj9/YszKBzQRmI+gAcyzdh+5LkSk9qmdHYbLqEDL5z6ajedL0mpuimJkNSEQq2RFceyN5
	EGD2Y0OySVuGcJ2zY/CJAw7CIbMPyRiekJO1Iyo3z
X-Gm-Gg: ASbGncuoleGPVIu7G4CgqAlwuqezcJjDshisRnwhx8qW7+LP4Vl744JHmFItrlUgY4V
	iITKT/zZR3bWcfFrh6twXllIDoFQE2HY/ywm1JLj8njTRgNV/D/0nRG3aiU5lDAjPiLiCL7iD4C
	fGbDTYEWxceIGP5IAOolDmmmNKEkdBMfnZhj8ZlNRvAI+Cqt1wxYwnX/5sCGxUFqY97jHcRGag+
	rBlxHRu7eVGNai5u3cdREEEv65oB4OW9eht/mEqQ93xF7r0WHbeXmJiS2f+Dty0KmLApQQjMUbn
	ShNuD15l/GNr/sWx5APR9zh6w4uJMssnZMLTXdKSoQ+voPjcZHI4oxC5oIq/L7uMUfy2ibpxWCl
	d
X-Google-Smtp-Source: AGHT+IEDHQYUr3yUS537R0XnX3QsrqoL6zbVsQm078qe5Qm+U2B7RvoN+4ZvyzO2Bi4ozoYEif249PETQfPhnHjPTBA=
X-Received: by 2002:a05:6102:512b:b0:5db:33e2:1e1a with SMTP id
 ada2fe7eead31-5db906c7927mr270324137.7.1761734870477; Wed, 29 Oct 2025
 03:47:50 -0700 (PDT)
MIME-Version: 1.0
References: <20251029012429.68658-1-me@ndoo.sg> <CAGb2v64omSs0uVL00n7vGRF_-=qb8xLCjdnyWRq_Caukf2ntXA@mail.gmail.com>
In-Reply-To: <CAGb2v64omSs0uVL00n7vGRF_-=qb8xLCjdnyWRq_Caukf2ntXA@mail.gmail.com>
From: Andrew Yong <me@ndoo.sg>
Date: Wed, 29 Oct 2025 18:47:32 +0800
X-Gm-Features: AWmQ_bki6ZRBv2B276xYm3W6fj98b7-xdtKtov3wVDjWgQYzAM_RquLVDN2OPiU
Message-ID: <CA+yTfBB57CA5c=bKdOjPWYR7F9Nq38Bao3+Q3LKYjOYJJ8WfxQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Malaysia (MY)
 for 2025
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_034752_531224_0D5B26C8 
X-CRM114-Status: GOOD (  18.11  )
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

Good day ChenYu,

Indeed, the commit message is also largely the same, there was
actually no differences relating to Wi-Fi class assignments, just some
moving around of the table rows because of changes to other unrelated
class assignments.

I just wanted to at least get the reference updated so that the next
person who comes along doesn't have to check against issue 2 of 2025.

I should have mentioned that on the new patch thread to save you the
extra comparison, sorry!

Andrew

On Wed, Oct 29, 2025 at 2:22=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Wed, Oct 29, 2025 at 9:24=E2=80=AFAM Andrew Yong <me@ndoo.sg> wrote:
> >
> > Malaysia Communications and Multimedia Commission announced CLASS ASSIG=
NMENT NO. 2 OF 2025[1].
> >
> > With reference to class assignments on pages 9 and 10, and Power Spectr=
al Density (PSD) limits on page 20, update the following rules:
> >
> > 2400-2500 MHz: Align previous 2402-2482 MHz rule to class assignment
> > 5150-5250 MHz:
> >   1. Align previous 5170-5250 MHz rule to class assignment
> >   2. Mark as NO-OUTDOOR
> > 5250-5350 MHz:
> >   1. Align previous 5250-5330 MHz rule to class assignment
> >   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calcu=
lated at 20 MHz channel width
> >   3. Mark as NO-OUTDOOR
> > 5470-5650 MHz:
> >   1. Align previous 5490-5650 MHz rule to class assignment
> >   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calcu=
lated at 20 MHz channel width
> > 5725-5875 MHz: Align previous 5735-5835 MHz rule to class assignment
> > 5925-6425 MHz: Increase EIRP from 200 mW to 250 mW (remains within PSD =
limit of 12.5 mW/MHz)
> >
> > [1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignme=
nt-No-2-of-2025.pdf
> >
> > Signed-off-by: Andrew Yong <me@ndoo.sg>
>
> I applied it on top of your previous patch. Conflict resolution shrunk
> the patch down to just the URL change.
>
> ChenYu
>
> > ---
> >  db.txt | 16 +++++++++-------
> >  1 file changed, 9 insertions(+), 7 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 1d17271..dc72989 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1450,14 +1450,16 @@ country MX: DFS-FCC
> >         (5925 - 6425 @ 320), (12), NO-OUTDOOR
> >
> >  # Source:
> > -# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-sig=
ned_19012022.pdf
> > +# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignmen=
t-No-2-of-2025.pdf
> >  country MY: DFS-FCC
> > -       (2402 - 2482 @ 40), (500 mW)
> > -       (5170 - 5250 @ 80), (1000 mW), AUTO-BW
> > -       (5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
> > -       (5490 - 5650 @ 160), (1000 mW), DFS
> > -       (5735 - 5835 @ 80), (1000 mW)
> > -       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> > +       (2400 - 2500 @ 40), (500 mW)
> > +       (5150 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR
> > +       # 5250 - 5350 MHz regulatory limit is 1000 mW, but 200 mW reach=
es the PSD limit of 10 mW / MHz at 20 MHz channel width
> > +       (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
> > +       # 5470 - 5650 MHz regulatory limit is 1000 mW, but 200 mW reach=
es the PSD limit of 10 mW / MHz at 20 MHz channel width
> > +       (5470 - 5650 @ 160), (200 mW), DFS
> > +       (5725 - 5875 @ 80), (1000 mW)
> > +       (5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
> >
> >  # Source:
> >  # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
> > --
> > 2.50.1 (Apple Git-155)
> >
> >

