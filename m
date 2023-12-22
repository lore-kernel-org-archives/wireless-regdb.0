Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D83FC46CD2
	for <wireless-regdb@archiver.kernel.org>; Fri, 22 Dec 2023 04:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rK3QV5FW2eBfntsLBe2P/SPQajokhMAESVuG3KspS5U=; b=SEyqXszudWlCOh
	5FtTnlogjzlVolXWkPLoHed40HpRH373TMwlHD8gT6tAklAVAZo9AVEuvn9+0sBX1Z19hjQ5XwQjs
	ptTXlu6vdPHkg0T4S3s6/d98iVz+TfeaWkjqaIMslT5C6BoV3tibGi9B/JDm8bAH779L10nsO422p
	Pn8DzlohNKtEu9NB4Kjwb97yC5JoLgd/i+CTNdkd2oDmQYh0nXWudM40bJc8CcApUnsh7Kj0rHoW0
	idQOicOZys1GcWzL0FWapEeDKYJ1F614cMwjW7dk9TOT4A5TkW53O9Km+4/K3ambieKUYPsyL2nfP
	G0JnQ9T/DD9j/Ix6bKCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGXHX-004qyk-24;
	Fri, 22 Dec 2023 04:37:07 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGXHU-004qwT-0x
	for wireless-regdb@lists.infradead.org;
	Fri, 22 Dec 2023 04:37:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9B39BCE20DB
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 04:37:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D740CC433C7
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 04:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703219821;
	bh=93Sf5U+ax/HRk+BwJgeQ+nPq8WYKTIfEVJzwfeQ/kzo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=gbUCPpN/50ETFFN+HzJSk9MVqQKZopQho0Fc9UFtB8lt7H7h7i5EUGKv6MxRQqaZ+
	 g1Zxv07SbGUggh9thjyx40ib549N+jtNIeQSBKvrc1JZ4PuSzNNQHOv2DjosRz9c3I
	 cRtRAHK6QziKImHb2GwQQOoT+kFmyZEJvX8X640tIl5G7S3YqAlxIxcEWD7f4zSft8
	 IVVUonukVXXOsSJjBR1CXfKIUafGa2RHMK+s8FL9mR0rdYTyAAZcuaCj4Qpug1cTrO
	 AAuXdW1tYSS/17LdVNnJOmUzR810eF19+WYZerxCdM6MAvfQoKaMJTbb1hsP+YGJKj
	 0GkTNz/+HzqaA==
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6da5d410432so1081881a34.2
        for <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2023 20:37:01 -0800 (PST)
X-Gm-Message-State: AOJu0Yy6EteqKD+pPTtNBOojlgjWRL1NfUgMdQ5r1rRW0LVuz4pRR/NY
	8Guj7C64GT/conDG+g60AcvJKvTiTkA3cXP60jM=
X-Google-Smtp-Source: AGHT+IFDRsKnuynTAetWonCteLbZ8vE9qnBiMnVPPpWlCPVJBgyIhGFNVBeEFbLWF7XM5jTTmug1ngQz2npwsuBREIQ=
X-Received: by 2002:a05:6358:880c:b0:174:b61a:431 with SMTP id
 hv12-20020a056358880c00b00174b61a0431mr888692rwb.0.1703219821143; Thu, 21 Dec
 2023 20:37:01 -0800 (PST)
MIME-Version: 1.0
References: <CANz3_EYPnA9q=svHnwmakpv6JGSYfUV7JhOBBgyQwpzXMFz7XA@mail.gmail.com>
In-Reply-To: <CANz3_EYPnA9q=svHnwmakpv6JGSYfUV7JhOBBgyQwpzXMFz7XA@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 22 Dec 2023 12:36:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v64u5946+EnS7aC2V3AzcZjtfYnUU+tOtELo4x-Jj7vpiA@mail.gmail.com>
Message-ID: <CAGb2v64u5946+EnS7aC2V3AzcZjtfYnUU+tOtELo4x-Jj7vpiA@mail.gmail.com>
Subject: Re: [wireless-regdb] 6GHz in Thailand
To: James Clark <jjc@jclark.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_203704_686131_D8CEAB9C 
X-CRM114-Status: GOOD (  12.91  )
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

On Sat, Dec 2, 2023 at 12:06=E2=80=AFPM James Clark <jjc@jclark.com> wrote:
>
> Thailand approved use of 6Ghz band on 28th April 2023.
>
> The regulatory authority in Thailand is the National Broadcasting and
> Telecommunication Commission (NBTC) [1]. Their regulations have legal
> effect when they are published in the Royal Gazette
> (Ratchakitchanubeksa) [2].
>
> The relevant announcement was published  in the Royal Gazette on 28th
> April 2023 [3]. The technical content is on the 4th page of the PDF
> labelled =E0=B8=AB=E0=B8=99=E0=B9=89=E0=B8=B2 1 =E0=B8=88=E0=B8=B2=E0=B8=
=81 3, in section 2.1. It approves the range 5.925 -
> 6.425GHz with EIRP 250mW, 12.5mW/MHz  inside buildings (=E0=B8=A0=E0=B8=
=B2=E0=B8=A2=E0=B9=83=E0=B8=99=E0=B8=AD=E0=B8=B2=E0=B8=84=E0=B8=B2=E0=B8=A3=
)
> and 25mW, 1.25 mW/MHz inside and outside buildings
> (=E0=B8=A0=E0=B8=B2=E0=B8=A2=E0=B9=83=E0=B8=99=E0=B8=AD=E0=B8=B2=E0=B8=84=
=E0=B8=B2=E0=B8=A3=E0=B9=81=E0=B8=A5=E0=B8=B0=E0=B8=A0=E0=B8=B2=E0=B8=A2=E0=
=B8=99=E0=B8=AD=E0=B8=81=E0=B8=AD=E0=B8=B2=E0=B8=84=E0=B8=B2=E0=B8=A3).
>
> The date of effectivity is given on the first page of the PDF. The top
> right of the page is the publication date =E0=B9=92=E0=B9=98 =E0=B9=80=E0=
=B8=A1=E0=B8=A9=E0=B8=B2=E0=B8=A2=E0=B8=99 =E0=B9=92=E0=B9=95=E0=B9=96=E0=
=B9=96 which is 28
> April 2566 Buddhist Era (2023 CE). This line "=E0=B8=82=E0=B9=89=E0=B8=AD=
 =E0=B9=91
> =E0=B8=9B=E0=B8=A3=E0=B8=B0=E0=B8=81=E0=B8=B2=E0=B8=A8=E0=B8=99=E0=B8=B5=
=E0=B9=89=E0=B9=83=E0=B8=AB=E0=B9=89=E0=B9=83=E0=B8=8A=E0=B9=89=E0=B8=9A=E0=
=B8=B1=E0=B8=87=E0=B8=84=E0=B8=B1=E0=B8=9A=E0=B8=95=E0=B8=B1=E0=B9=89=E0=B8=
=87=E0=B9=81=E0=B8=95=E0=B9=88=E0=B8=A7=E0=B8=B1=E0=B8=99=E0=B8=96=E0=B8=B1=
=E0=B8=94=E0=B8=88=E0=B8=B2=E0=B8=81=E0=B8=A7=E0=B8=B1=E0=B8=99=E0=B8=9B=E0=
=B8=A3=E0=B8=B0=E0=B8=81=E0=B8=B2=E0=B8=A8=E0=B9=83=E0=B8=99=E0=B8=A3=E0=B8=
=B2=E0=B8=8A=E0=B8=81=E0=B8=B4=E0=B8=88=E0=B8=88=E0=B8=B2=E0=B8=99=E0=B8=B8=
=E0=B9=80=E0=B8=9A=E0=B8=81=E0=B8=A9=E0=B8=B2=E0=B9=80=E0=B8=9B=E0=B9=87=E0=
=B8=99=E0=B8=95=E0=B9=89=E0=B8=99=E0=B9=84=E0=B8=9B"
> says that this announcement is effective from the date of publication
> in the Royal Gazette.
>
> There's an English language reference confirming this [4]. The WiFi
> Alliance countries page [5] also lists Thailand as having adopted
> 5925-6425 MHz.
>
> Please let me know if you need any further information.

Can you send a patch to update the database?


Thanks
ChenYu

> James
>
> [1] https://www.nbtc.go.th/Home.aspx?lang=3Den-us
> [2] https://ratchakitcha.soc.go.th/
> [3] https://ratchakitcha.soc.go.th/documents/140D100S0000000004200.pdf
> [4] https://cetecomadvanced.com/en/news/thailand-nbtc-notification-wi-fi-=
6e-and-wi-fi-7/
> [5] https://www.wi-fi.org/countries-enabling-wi-fi-in-6-ghz-wi-fi-6e
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

