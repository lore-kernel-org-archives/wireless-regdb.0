Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73ADDC41535
	for <wireless-regdb@archiver.kernel.org>; Fri, 22 Dec 2023 03:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gFPeOCAMesn1NlrBwarB04PMIaol9Lci2GAUf+VOa8=; b=1JH7Uzw6frv7fW
	J7ei8Jpx03AyuCO3rM5LDyGkuZW1csUL1dUBDedL4d1FTBs00yHz+byqlkcf/5e6tv7MI6J23wRjv
	zVuslwPNG45KfWYQEKuALswvHPmMPTzurWN/RPE2Elz0mgB7pU38WjGHcvWHB+lKLCjgCBDUOzbKw
	QcdU12fkiaRayF6pHdFgxgp6RyzOo4n5imJj+XxGT+TzeCvvZm/i979P5KKuqiyFTJrFNOihhkbbH
	bKEKlpikBFR41Q2YWf5Jm7lM8DqbII8KmlwHYQ+oLrnbEkDSuFtafzUL9zfLpFUzYsc5p4/GPXgFH
	2WBJzWl5FQ1bXmDaYHlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGWfj-004nr9-1w;
	Fri, 22 Dec 2023 03:58:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGWfg-004nqD-1d
	for wireless-regdb@lists.infradead.org;
	Fri, 22 Dec 2023 03:58:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id EE689B82175
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 03:57:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 544D7C433C8
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 03:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703217478;
	bh=4gFPeOCAMesn1NlrBwarB04PMIaol9Lci2GAUf+VOa8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=eG9t7kI0hKQdTTku/pbYgD/VJelBVec4HG9oJMd3HPX4cq0YAHLbHApMJd6ER2qIS
	 CE3odjvBVF9mJA3MJiWJPludYzzZewZq+IWyYQfNGReWEjT9LrLx8voKkH41hqncFT
	 wDUVRvxa1x5f9isP2HjgdpFkOlkv89BKeFX5nMPQLzA2phetxTbtFRjRbDhdQheSwj
	 lfkQUtXqdMa/bDRRLGze/NIHnnp4kWZsoY5YmhgHwlCVYBSKeoyxvTJ5nRuYOmnp9Z
	 H+MXvb9Sg6+7XYNnlhZvf8tBtYsVm6qfMhKZniEKx/1WR6jOzq/aJ6tAb9v1zANwGL
	 nq23uzYk2tYTw==
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-203fe0e3fefso901396fac.2
        for <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2023 19:57:58 -0800 (PST)
X-Gm-Message-State: AOJu0YwaGXANShakA18AOi3K3uNDYUaQhUMGLeh6loLZa9fd/jEVOgJA
	S75n0g9RHFZuAKhziTflTwI8pt2gv+k6g4350Zk=
X-Google-Smtp-Source: AGHT+IGxo3lwHna/VlB+n8WhrB+emS5+bMFz8m74UAplvKSOAyRTG6iz4nTM2PCNU0I7xcLXbEXcb970m8+pWGr7dwc=
X-Received: by 2002:a05:6870:71c8:b0:204:437f:af80 with SMTP id
 p8-20020a05687071c800b00204437faf80mr657294oag.85.1703217477597; Thu, 21 Dec
 2023 19:57:57 -0800 (PST)
MIME-Version: 1.0
References: <20230315132904.31779-1-quic_adisi@quicinc.com>
 <20230315132904.31779-3-quic_adisi@quicinc.com> <4cb3e92530d3f4db3b414e2a7536a0f01b765c4d.camel@sipsolutions.net>
 <46343a69-5f27-4ffa-bbd8-5b5e7616dbbf@quicinc.com>
In-Reply-To: <46343a69-5f27-4ffa-bbd8-5b5e7616dbbf@quicinc.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 22 Dec 2023 11:57:46 +0800
X-Gmail-Original-Message-ID: <CAGb2v66gfifO4oSt7R=EZYNjEOZtovaOLeJPCUZPkyJP1shbeQ@mail.gmail.com>
Message-ID: <CAGb2v66gfifO4oSt7R=EZYNjEOZtovaOLeJPCUZPkyJP1shbeQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v3 2/9] wifi: cfg80211: save Power
 Spectral Density (PSD) of the regulatory rule
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_195800_685319_75FF44E5 
X-CRM114-Status: UNSURE (   9.48  )
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
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

On Thu, Sep 14, 2023 at 11:15=E2=80=AFAM Jeff Johnson <quic_jjohnson@quicin=
c.com> wrote:
>
> On 9/13/2023 7:58 AM, Johannes Berg wrote:
> > So I'd say we shouldn't touch any of the code under #ifdef
> > CONFIG_CFG80211_CRDA_SUPPORT any more since CRDA will not continue to
> > developed with any updates here.
>
> On a related note, what will happen to ongoing wireless-regdb support
> now that Seth has stepped down as maintainer? Have enough vendors moved
> to self-managed such that regdb is obsolete?

I've picked up maintainership for wireless-regdb.

ChenYu

