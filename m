Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43365C021AA
	for <wireless-regdb@archiver.kernel.org>; Wed, 19 Feb 2025 00:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=65jUrLBN/LLKjwx7RNV0Qdqfa/uMv6KZrrsG3GDWlyQ=; b=4GP+QOn63jwr9BiRwo4r9EBmIT
	z+1QDI173gCZY8qnIMthzo1vAqVhittCim/oMx6S08QVu1lnO18PSn6xHaIGciRS0JRFT6FxVoJO7
	+cItFifiePjAvs1tc2VafXhzTjp5lu+m3/aDs1MYH2hL6gg551vOfmn7VqKHeWp6xhnWipjzR60iM
	x9IeO0WTvefSEJlc3qrchbAogo3ynrf8wm9x2D3zHUF2rHwzyAr7QpCcZ5Sc5++Ln5LuyqM3MNdC9
	WcZ3tf3EpGAjuGruetI9B3ECi39L0AnKH5TGlVwUByiCuyDqgIFdJOy95DHapQ8Ps6VuIA3ZzgOhN
	PdWyuS3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkXtq-0000000ALki-1GTL;
	Wed, 19 Feb 2025 00:25:14 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkXtn-0000000ALkF-1QRo
	for wireless-regdb@lists.infradead.org;
	Wed, 19 Feb 2025 00:25:12 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-abb75200275so507291366b.3
        for <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2025 16:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739924709; x=1740529509; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=65jUrLBN/LLKjwx7RNV0Qdqfa/uMv6KZrrsG3GDWlyQ=;
        b=jkcqwfS8PlX8Z6bGJMDT9IVaND7tkhmuG4IAggvpIUVWk+z45WVfv4VCfgySFAHPF2
         PG/rUQtOlr02MA2vp4O6vGygo4LVWROa7ruuF10nIbqNw1n330B/9jsQZ7rP1Bneo+gc
         yJnynMUCmqCwlMD5z4i6WKqPlqmbCEQYWCV+nc22tP9m5/gHZwa9I2Pbi6txLslosWBO
         gdx5vsjG2AvkO5JK6QFno8lfODb1BaBn/tZH6XB143WeO8U5boHplvP6x0auMvGmPgJ8
         ychOaCKgPhK03tXHc6E+soi4OqKJrrw/92kzbzPhPUX+Pk5NjKj3cJLPzxR8ntNXxXr4
         6oxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739924709; x=1740529509;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=65jUrLBN/LLKjwx7RNV0Qdqfa/uMv6KZrrsG3GDWlyQ=;
        b=Ke41DzIMhOYY4BdKRT+BvVxrjOxYqwyUOpF54q6xtNv1nMx00bLfsEFWoZ8ljnpQM6
         bpNhOm8X0A+o2kS0AhyP9adulC0guIIbhGoAPCDXDu0/3tAl49zzAwF8kHChEpkvL5lA
         dNCKnWSeoTVze5ye5uSeZUIzFBn8yErwDf4mTFVnMrLQedeBpIsY9NTE6q/5KimZkWak
         5Sm3Rv2mZvkI8uHQSQL1tk4ig74eu5KCfNBxlOeOUFlQdqfY5unRcmpBVn0BjYpj5jCn
         1MD3Z+8t2JtnpWowTQDo2S7Puxg7T+o2/TqFZaOrHONSfZGlCuaBThAYh6pzYlOxRybT
         Ew8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVfNj7yMAaCejjQKNH2k8dA0kJALQIOYLszc8gtlWIIucS/I1iBTxG+imk5/d+OYC+fhBBudf1vrOWchmrsyw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy25mtaekMD0WTY5KR1FQjYVQ1hkp37VAlTiZTMMCXAFH2GQFTX
	j4vN3N4Ni4WcIiN2JRzKToWvXvB3/pYz6k9G8B2Ana/Oh8BJppbUksBSsWXuBsynuN8IrHugxd0
	+gjXiRrvGEmcfAQQSdS1pIlIKnQ0=
X-Gm-Gg: ASbGncs6/HubPvek2RaIjYvaZn6E60sTkuQ2sfEXrjmDNXOG0PZvjNjcwaz2E9g7eC+
	Ht7LHUA/y+Kd+SgCkqEsyI2+VjW0H9kJVCkpZpBUe59XAnC+xAoBmkzkfm5LuzIeBheLySjEC
X-Google-Smtp-Source: AGHT+IH/eRR+jHwglhsHt7CzzanpkgEslZqXG2/Nd6MIcEZbE9Rc6okmt7/3o1ZBvkjMnyoEp1P+NF9j/633VosvxnA=
X-Received: by 2002:a17:907:7b8b:b0:aa6:7737:199c with SMTP id
 a640c23a62f3a-abb70b1f29bmr1591523566b.15.1739924709310; Tue, 18 Feb 2025
 16:25:09 -0800 (PST)
MIME-Version: 1.0
References: <20250218025957.13818-1-pkshih@gmail.com> <7c909df2-2651-497c-91c2-624a7e3db43f@mobintestserver.ir>
In-Reply-To: <7c909df2-2651-497c-91c2-624a7e3db43f@mobintestserver.ir>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Wed, 19 Feb 2025 08:24:58 +0800
X-Gm-Features: AWEUYZlVZBxj6AnTShq8nRpf9OMSgEmG2Ug6PpgLVdF15aiALjJJO9rGTHrKMhg
Message-ID: <CAHrRpu=kD7TdyKfD+MNFjFv2jRqfOS5wPzCsKa2O4hFnu8n80w@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=D9=BE=D8=A7=D8=B3=D8=AE=3A_=5BPATCH=5D_wireless=2Dregdb=3A_Update_regulat?=
	=?UTF-8?Q?ory_rules_for_Iran_=28IR=29_on_both_2=2E4_and_5Ghz_for_2019?=
To: Mobin Aydinfar <mobin@mobintestserver.ir>
Cc: wens@kernel.org, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_162511_399616_7CA03741 
X-CRM114-Status: GOOD (  18.32  )
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

Mobin Aydinfar <mobin@mobintestserver.ir> wrote:
>
> =DB=B1=DB=B8 =D9=81=D9=88=D8=B1=DB=8C=D9=87 =DB=B2=DB=B0=DB=B2=DB=B5 =DB=
=B0=DB=B6:=DB=B3=DB=B0:=DB=B3=DB=B8 Ping-Ke Shih <pkshih@gmail.com>:
>
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >
> > Decision No. 4004-01DEC-CRA, 8th Edition - February 2019,
> > Radiocommunications and Regulatory Organization.
> > General radio license for the use of parts of the frequency bands
> > 2400-2483.5 MHz, 5150-5250 MHz, 5350-5250 MHz, 5470-5725 MHz, and
> > 5850-5725 MHz in radio access networks. [1]
> >
> > * 2400 - 2483.5
> >   - 100 mW e.i.r.p
> >   - 10dBm in every 1Mhz
> > * 5150 - 5250
> >   - 200 mW e.i.r.p
> >   - 10dBm/MHz per 1MHz bandwidth or -6dBm/25kHz per 25kHz bandwidth
> > * 5250 - 5350
> >   - 200 mW e.i.r.p
> >   - 10dBm/MHz per 1MHz bandwidth
> >   - DFS
> > * 5470 - 5725
> >   - 1000 mW e.i.r.p
> >   - 17dBm/MHz per 1MHz bandwidth
> >   - DFS
> >   - If TPC is not used, the maximum radiated e.i.r.p. must be reduced
> >     by 3dB.
> >   - Outdoor use only
> >     (Since NO-INDOOR flag is not supported by current format, don't add
> >      this entry.)
> > * 5725 - 5850
> >   - 4000 mW e.i.r.p
> >   - 36dBm in every 500 kHz
> >   - DFS
> >   - Outdoor use only
> >     (Since NO-INDOOR flag is not supported by current format, don't add
> >      this entry.)
> >
> > These information is from [4], Mobin Aydinfar shared the official link
> > [1]
> > (inaccessible from outside of Iran), a mirror version [2] and
> > translated
> > version [3].
> >
> > [1]
> > https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968=
f-0050569b0899
> > [2] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
> > [3] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
> > [4]
> > https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f=
1afe@mobintestserver.ir/T/#u
> >
> > Cc: Mobin Aydinfar <mobin@mobintestserver.ir>
> > Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> > ---
> > db.txt | 9 ++++++---
> > 1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index d56ad32d31c9..0189355dff17 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -934,9 +934,12 @@ country IN:
> >     (5470 - 5725 @ 160), (24), DFS
> >     (5725 - 5875 @ 80), (30)
> >
> > -country IR: DFS-JP
> > -   (2402 - 2482 @ 40), (20)
> > -   (5735 - 5835 @ 80), (30)
> > +# Source:
> > +#
> > https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968=
f-0050569b0899
> > +country IR: DFS-ETSI
> > +   (2400 - 2483.5 @ 40), (100 mW)
> > +   (5150 - 5250 @ 80), (200 mW)
> > +   (5250 - 5350 @ 80), (200 mW), DFS
> >
> > # IS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301
> > 893)
> > # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300
> > 440)
> > --
> > 2.25.1
>
> Thanks for the patch, I should mention the document date is February
> 2021, Not 2019.
>

I did copy and paste from Google translation. I will correct the by v3. Tha=
nks.

