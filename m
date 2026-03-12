Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 010B7FED2CC
	for <wireless-regdb@archiver.kernel.org>; Thu, 12 Mar 2026 06:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=enYO94w1cNShnLJdTYwD60QDPyXy1KtTBcZfqrCdw8A=; b=hBsOF9+pZBKvkFK+TMxHbmpz8O
	rzi+wcw1lmLBdzJiYaJx/J7wREc1lQ7Tt9S9SEhtI9NYTHc6Vj+gpygGlIjDdEyusFNtNbLA1opsH
	nj2C2aoYxD1Hjv1DaC6BR48uiDmEBjKU+uvjt827A3SiWqqADXQrtwELWJLJVp6KujSVSGLCd1JvX
	L9ayjYwhRL3nHnheZnAnhxcAjaHDbmCYIzysACPJ9lJlHPgcKf2U9pQDgNi8eC71uusRCP5GKx6bs
	YSfmNI4fv0uFqYJBQ6Fp8Lw22G47hGCjMGrfwbXoUJzVkl/tOjJHW1keukatWex4eGby8K+9HzGfo
	e60FaSNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Zct-0000000DTvY-211E;
	Thu, 12 Mar 2026 06:34:31 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Zcp-0000000DTvD-41ub
	for wireless-regdb@lists.infradead.org;
	Thu, 12 Mar 2026 06:34:30 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b96dc65b886so306653466b.0
        for <wireless-regdb@lists.infradead.org>; Wed, 11 Mar 2026 23:34:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773297265; cv=none;
        d=google.com; s=arc-20240605;
        b=GISw6uadKYXDHIuHeefcwpjMN74R3QZaIPmlFvApIHSapTci2YA7zMQOEbBBm3BLiS
         6tRguf1OJAJehLNPDFNpFPXnp3pRFaE1WOBBm9GQu9QCt+W79fnaEagZi3oLx7bjNTKA
         lI6k1IK2o3PzBN2Dwjm9xFq9t5Pcf9TVgM3c1WB9OEAPy74fhh8M5sSGZs0lNQZ2ACjE
         GedTZEDOBwxVUVK5vFUBjOwKvXtGchvsoJ9iwbRFhox3rsP/mzH/RGxW8gkGB4fxEusM
         BI6df6L57WiIlRKFb/aN1d28W0jM1ybwLClIsxFtR801yKE6Fmq2B7PuyRoTe3bCliAe
         qO9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=enYO94w1cNShnLJdTYwD60QDPyXy1KtTBcZfqrCdw8A=;
        fh=gCqODF6t6cjERgeaatwLuSgRo+SlTqtexRjEDe0TcYU=;
        b=hF0C0+Yh3w3EwDqJESjeAicAsM04uFiEL8aZYqalAag/tEofAXLwglj/8nPBxiT3he
         PQPsH6BCsnRQTJOFypXw94v6UeyHGMO/sApsjFEIg2uF08nD2TgYHPi/AD6sns7aMmOt
         kEvUF3ygCRMT/oZBPLhByCoDtD05yGlwgPJc8oZStMf10Hnzq+Vs8llWRcZc5lCjyyvg
         ToqOG7/416b7HdWGigo4ahsP5Hu8mSjXSkEoh6SVGFIpvw2WLoDY2T7bNvCeZO7YcwVX
         SehEdizupRoVobxJo7toooIcdv7lrNHyCNtQuadhsk02Kp+AJW+z11oUxsrK1a6oxfcF
         B/zw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773297265; x=1773902065; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enYO94w1cNShnLJdTYwD60QDPyXy1KtTBcZfqrCdw8A=;
        b=ceE/xNIyjBLRRDvs5qZ+O0MKAkZXimiKJ77WLvKVyV6d9hmLnaj7NCa8FiHMMGSv4g
         yj4a2YfY3+w62WJr8ZL4ZtyNLa9hNXrhgQjIgSFgZs4/tDRZCMMHud6a5qB/I8yCPwZI
         sMDgFFOmZRYwEZ92o8PwQxtdYmqajfVOMVX3Td5Ai+lRaASietdTPxc+QwWJqV/vortb
         wBzKwn4uYdPc/X5BTvVU7i5MYNtW4TdkurTiZAak3/ABV9A0gYk0IS1jzvc/dKnSGA6r
         ZPrpQbh7WzbaZBRUBhNBT+8FgGsUINd/X++PEe2XfeWCegviHUMtDtp4yDhCcvvhD3kD
         sNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773297265; x=1773902065;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=enYO94w1cNShnLJdTYwD60QDPyXy1KtTBcZfqrCdw8A=;
        b=KuxAt2g9eXQnyuokNNR/7vT5FQGu6zno4WNAMHcgzaLh40s3KzNMyPoasLM6UrGNIp
         VViQI7Eu8+OuFP+3bSnED6cEePIjUoxPoArqcDGAZCzI+/LTSS0jdnVc3S9iNVtnIKtj
         /3iBCWarE3ag/j5n9x2XprgDDkW71N3Az91xCQmsDID8RUTKIjHt10AmLEUXjS7kE0PR
         jGsm6/FFz4rXyOEwa52b8UXbVgO+vDXE/EG5Z4542UP7GnR/rm00RTiUDkPD3B8vOIfn
         VMy6a6W/8MQ4VcU5p4T9LgaAbPIlQj9GXGoLVilRfkCmiM60eoQsHAoqCtWkGBs3Yy4n
         x8LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZCT2qkKZ/323hw4626o+4hpR9lnQKAeRJ/5cpHBpOWgDW6vFkSu8iR5CUFO9cmrKnHK/jKBEaNtJaEzatXA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzI3igO8QT+EqCZiTVV+yUgReYKVkI0YXh0/oghmAALDn8POD3T
	uORDL5KzlgUF5PRkqJJRBJkHKpGxcx07N5DI0i1HdDEmuFomA1H3nWLYy/Y8yF67XC4FobeCcDi
	lOjrayJ5gSoHsuVyhvsA/GfUOkb3iukA=
X-Gm-Gg: ATEYQzyBDEfmrvdLoCcG5t+sYC/qbYM3OEwRZh9X6h8d4RB11tlfL7KvHo+dHFvkiCI
	mhJkiOFRtk4Bu/tNmjz955Y+XSnls+HuAgahH5IhcZzbiPXjSeNkiaN9ckiYiriXc0LTtBbYb99
	f87ijxDOc5ace4WQur/V4Ae8nugULsVGpLz5/56nCULy+MfpQbzMPtctViYAZ61TDnM3hMRRk8R
	em1weOTHhpS8KwiHZ5eQm5XdmmX2F5ZDd5noZxI0NDYb8I9qdSHLvgybbiDWRC7nur9ZdLFoKeP
	JRn9FNz3MYv0d07g9Pyh
X-Received: by 2002:a17:907:928e:b0:b94:3ae3:6af7 with SMTP id
 a640c23a62f3a-b973ffccc90mr127641866b.17.1773297265162; Wed, 11 Mar 2026
 23:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <20260311085141.1634383-1-wens@kernel.org> <CAHrRpunHZhCfBwueaXQS46SA5JzAbbW5DVL2MF+m2tKvKyMZAQ@mail.gmail.com>
 <CAGb2v67+CMC=6Hvn50RRzHxa1Syi+gj4WOpE3LJhNyrxxe5Hrw@mail.gmail.com>
In-Reply-To: <CAGb2v67+CMC=6Hvn50RRzHxa1Syi+gj4WOpE3LJhNyrxxe5Hrw@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Thu, 12 Mar 2026 14:34:14 +0800
X-Gm-Features: AaiRm50tHRGwz7Ypnkixa4Tj1yo7hEyyeez1d0NAzC2NnlzASaC6_zXqClmfRWE
Message-ID: <CAHrRpukDg-o1Qa=CD5BrJ7Vffi05G2aOmRtRnx1TLiD6DRQOvQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for India (IN) on 6GHz
To: wens@kernel.org
Cc: druth@google.com, Ping-Ke Shih <pkshih@realtek.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
	Johannes Berg <johannes@sipsolutions.net>, Gaurav Kansal <gaurav.kansal@nic.gov.in>, 
	Degrader Snehil <degradersnehil@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_233428_053914_6802B7BF 
X-CRM114-Status: GOOD (  16.82  )
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
> On Thu, Mar 12, 2026 at 2:17=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> w=
rote:
> >
> > Chen-Yu Tsai <wens@kernel.org> wrote:
> > >
> > > The Government of India has officially opened this band for licence-e=
xempt
> > > use via Gazette Notification G.S.R. 47(E), dated January 20, 2026,
> > > published January 21, 2026, issued by the Ministry of Communications
> > > under the Indian Telegraph Act, 1885 and the Indian Wireless Telegrap=
hy
> > > Act, 1933.
> > >
> > > Gazette details:
> > >   Title   : Use of Low Power and Very Low Power Wireless Access Syste=
m
> > >             including Radio Local Area Network in Lower 6 GHz Band
> > >             (Exemption from Licensing Requirement) Rules, 2026
> > >   File No : 24-04/2025-UBB
> > >   Gazette : No. 47, CG-DL-E-21012026-269488
> > >   Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Communic=
ations
> > >   URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74eb6f6=
907934d17d0015ab5.pdf
> > >
> > > The Gazette defines two device classes for 5925=E2=80=936425 MHz:
> > >
> > >   1. Low power indoor
> > >      - Max EIRP         : 30 dBm
> > >      - Max PSD          : 11 dBm/MHz
> > >      - Max bandwidth    : 320 MHz
> > >      - Restriction      : Indoor use only (Rule 5)
> > >
> > >   2. Very low power outdoor
> > >      - Max EIRP         : 14 dBm
> > >      - Max PSD          : 1 dBm/MHz
> > >      - Max bandwidth    : 320 MHz
> > >      - Restriction      : None
> > >
> > > Additional operational restrictions per Rule 5 of the Gazette:
> > >   - Band is prohibited on oil platforms
> > >   - Indoor use prohibited on land vehicles, boats and aircraft below =
10,000 ft
> > >   - Communication with and control of drones/UAS is prohibited
> > >   - Contention-based protocol is mandatory for all devices (Rule 4)
> > >
> > > Out-of-band emission limit: -27 dBm/MHz outside 5925=E2=80=936425 MHz=
 (Rule 6)
> > >
> > > For now, add a rule for 6 GHz LPI. As the database does not support P=
SD
> > > information, the EIRP needs to be limited so that transmissions over =
a
> > > 20 MHz channel does not exceed the PSD requirements. This limits the
> > > max EIRP to just 24 dBm.
> > >
> > > Reported-by: Gaurav Kansal <gaurav.kansal@nic.gov.in>
> > > Reported-by: Degrader Snehil <degradersnehil@gmail.com>
> > > Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> >
> > Listed regulation in this patch matches official URL page (translated
> > by Google translation).
>
> The PDF actually has an English part which is nice.

Oops! Indeed! I opened the pdf and dropped it into Google translation befor=
e.
Check the values again, and the result is expected.

