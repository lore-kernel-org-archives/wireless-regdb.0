Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC137E93817
	for <wireless-regdb@archiver.kernel.org>; Mon, 13 Apr 2026 04:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZ55bcne6YYxtdmyeMczzi4EcNmeY03UKK68r+gbzEk=; b=UpMUDfKQDbnZDP
	Vk1fmss97w3nxYTlEOsz7l/kjGt7XcemREg6NjPoKSaZMpZIBC6+9DBYaAabj12pyLYrGyFcruQSr
	COrbg3E2K3gv+tRbAsm31Ei76hAx8Aa2+aW+VqtsV7nKB1EhIubg1sFlDeFiihagETlRzW32gGgaO
	6/Oj7rbNB8dOG55w4HhT0QuQwwcT5r//oYedCuZsxbhDCEMLIz0EEE1Vd/ujG1Sw4i142nxr6/xgc
	UD79aeiNRxe4dt65dfwOylVRWRoKKw18SuVuJzB8FM1gOWhmFWM+7uzYZJyrokxaTMFTr6SGyOSQK
	59Uve5FO2u8Kh7EM9OFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9CT-0000000EzBP-0jmj;
	Mon, 13 Apr 2026 04:47:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9CQ-0000000EzAy-0lmO
	for wireless-regdb@lists.infradead.org;
	Mon, 13 Apr 2026 04:47:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C43694054B
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:47:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5525C116C6
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776055621;
	bh=HGZ5SgjgPqdrH+SeM55FflspFPrjr0Tzp5mkoSCTtlU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=DI6UaCLjMldYzMfqF89c03E36vZI6v8kB/nj/aYNM3JHkOeIOjYLJJJErQnF0DsRk
	 2SKtwmBOT6TUH4NK5L/+uVC8zclQrUIP31fUHA8ch3DNGI1CvitM8W/sSyOnaRS1Ld
	 svRd3xx8U3iUo/rGhwvPtMCTsrEiPJxoK7jkDHwJHKHCBe7zrq4rVbXTTk5ZGxBjt3
	 lTuQO2Mcd6Ayf+myaIEOaS/t25co6k+7K8yhTmbCMnT98TQjlcZfegapcGdU2IlQtx
	 R6KG1D53iR6FH7Jz7WQTYVJBjhg1DTbkHLmjl2OXbkFkn52K57QS17mIl6GICOuPPW
	 ZiYnBPrvAnQAw==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3878de20527so30310181fa.3
        for <wireless-regdb@lists.infradead.org>; Sun, 12 Apr 2026 21:47:01 -0700 (PDT)
X-Gm-Message-State: AOJu0YwfqIBIIE4Og4IPKNeN+23M6TeRAL85ps5OTaWwKUHMcKNCGvo5
	MJF8TdguFUjUDhH5Ym7jEMpx1PQzotaHuB1Fe9Qc2p3GoJZ2caU2bj+FOCKwRrXdYJzo2iYg9hh
	fKCAJm1J0Bk+QwDJ8a/stQ+PchocVdms=
X-Received: by 2002:a05:651c:4186:b0:38a:4de2:8807 with SMTP id
 38308e7fff4ca-38e4bee9d54mr33665161fa.18.1776055620005; Sun, 12 Apr 2026
 21:47:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260411222155.299441-1-loukot@gmail.com> <20260411222155.299441-2-loukot@gmail.com>
 <CAGb2v6730-TMbCsxkUTxsiUpXUO0Z3MRXo_WdcpqEpMmwb5=AQ@mail.gmail.com>
In-Reply-To: <CAGb2v6730-TMbCsxkUTxsiUpXUO0Z3MRXo_WdcpqEpMmwb5=AQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Apr 2026 12:46:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v67UAfjo8Onbe8JLpZFoyzZLKDYXec3HV7FEupQ7NF1sNw@mail.gmail.com>
X-Gm-Features: AQROBzA2TGOJfSDUsmVRaSsV3CE3oB9budRizFpLIwmeN2B5IvFRE2CHWj_Zgj4
Message-ID: <CAGb2v67UAfjo8Onbe8JLpZFoyzZLKDYXec3HV7FEupQ7NF1sNw@mail.gmail.com>
Subject: Re: [PATCH 1/5] wireless-regdb: Update 6 GHz rules for Hong Kong (HK)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_214702_361048_8179C2D1 
X-CRM114-Status: GOOD (  21.19  )
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

On Mon, Apr 13, 2026 at 12:43=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wro=
te:
>
> On Sun, Apr 12, 2026 at 6:22=E2=80=AFAM Louis Kotze <loukot@gmail.com> wr=
ote:
> >
> > OFCA published HKCA 1081 Issue 2 (August 29, 2025), updating the
> > 6 GHz WLAN specification for Hong Kong:
> >
> >   - LPI (indoor): 24 dBm EIRP
> >   - VLP (outdoor): 14 dBm EIRP
> >   - Frequency: 5945-6425 MHz (5925-5945 reserved as guard band)
> >
> > The previous entry had VLP power only (14 dBm), no indoor flag, and
> > used the wrong frequency start (5925 instead of 5945).
>
> As you mentioned, 5926-5945 is reserved as a guard band, i.e. the
> device cannot use it. So the rule is correct to start at 5945 MHz.
>
> > Update to LPI with correct frequency range and NO-OUTDOOR flag.
>
> There should be justification for picking LPI over VLP, since this
> is a choice made on the submitter's end. Same applies to the other
> patches.
>
> There was one submission that picked VLP over LPI in favor of outdoor
> usage.
>
>
> Thanks
> ChenYu
>
> > Reference:
> >   HKCA 1081 Issue 2 (August 2025)
> >   https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf
> > Signed-off-by: Louis Kotze <loukot@gmail.com>

Oh, and please have an empty line before your Signed-off-by.

> > ---
> >  db.txt | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 343b256..172029e 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -883,7 +883,7 @@ country HK: DFS-ETSI
> >         (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> >         (5470 - 5730 @ 160), (27), DFS
> >         (5730 - 5850 @ 80), (36)
> > -       (5925 - 6425 @ 160), (14)
> > +       (5945 - 6425 @ 160), (24), NO-OUTDOOR
> >
> >  # Source:
> >  # https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.=
pdf
> > --
> > 2.53.0
> >

