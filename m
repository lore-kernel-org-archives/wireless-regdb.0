Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91D0BC46CD4
	for <wireless-regdb@archiver.kernel.org>; Fri, 22 Dec 2023 08:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WL/L6yV91Pcri6kImsWABDutafkXNQ13K7WcccGnUwM=; b=PDEyRE2qJCSYxCjFQ9u2mK89wD
	tWa2ZlSUnc+SsY/qKdVqx+NVdP7U1quijRPz9gnoIRDMwSA81kTaT7mIJqaMVMiB1CfS6r6GERzTq
	8emWTOsLmZUZ1mDrdD6IoAZdjsWmMYcwNodcjh/uUf+hs60C5KlcRMBR/e9PVSVfUyQgtq4baZG3h
	wdGiPq7+Dlcy1phzzWk798JratnVZ6aJG+rPTcor9t6E0QsvhVOM2A8ZTPgR4Dm2TiKc4Ldzcij5h
	nLlRMHPn4s9nWdT86tpQVszXn9CHCK5ru9O29qPJDXtSKsP3uJO9mpTu2ukthPzuD68Q7bag/6K7+
	fyCEbvuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGaZu-005GOO-0M;
	Fri, 22 Dec 2023 08:08:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGaZq-005GLJ-2V
	for wireless-regdb@lists.infradead.org;
	Fri, 22 Dec 2023 08:08:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 85C40CE20C1;
	Fri, 22 Dec 2023 08:08:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 705EBC433C8;
	Fri, 22 Dec 2023 08:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703232485;
	bh=WL/L6yV91Pcri6kImsWABDutafkXNQ13K7WcccGnUwM=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=fGilFavidWj48CYvAcePAKhwZFWgStw88m8+rV3KZ3EfhrNjp1Y3l7NLRIEgAexzf
	 p65VurpdPx9AMpDtpPYglfYNf5+TqTqMnggVbJ/5YzEjrxcglKTq7iCgQSbUpBqrkH
	 CTU29LoYtMo8deAxDewuMyrpEWnWpT1+2Y97zi+QSW2XFOMRFoD3wzObLE1DD2O3Dc
	 AWGGedwRsKRKE4N59QVb3O/FyyZ9IsruQ2cdfEp6t2BTimfFCGJBXf7sdOhbuzYqaq
	 70WoBkUHka19P3vBu1rXXofcj+xlAE31qAx8tM2zi3aSWs17zWPYNeHFR3xWbeUvO5
	 FOYze4R6+2LPg==
From: Kalle Valo <kvalo@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>,  Johannes Berg
 <johannes@sipsolutions.net>,  linux-wireless@vger.kernel.org,
  wireless-regdb@lists.infradead.org
Subject: Re: [wireless-regdb] [PATCH v3 2/9] wifi: cfg80211: save Power
 Spectral Density (PSD) of the regulatory rule
References: <20230315132904.31779-1-quic_adisi@quicinc.com>
	<20230315132904.31779-3-quic_adisi@quicinc.com>
	<4cb3e92530d3f4db3b414e2a7536a0f01b765c4d.camel@sipsolutions.net>
	<46343a69-5f27-4ffa-bbd8-5b5e7616dbbf@quicinc.com>
	<CAGb2v66gfifO4oSt7R=EZYNjEOZtovaOLeJPCUZPkyJP1shbeQ@mail.gmail.com>
Date: Fri, 22 Dec 2023 10:08:02 +0200
In-Reply-To: <CAGb2v66gfifO4oSt7R=EZYNjEOZtovaOLeJPCUZPkyJP1shbeQ@mail.gmail.com>
	(Chen-Yu Tsai's message of "Fri, 22 Dec 2023 11:57:46 +0800")
Message-ID: <87sf3u1wyl.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_000815_061643_FC3DC0B9 
X-CRM114-Status: GOOD (  11.09  )
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

Chen-Yu Tsai <wens@kernel.org> writes:

> On Thu, Sep 14, 2023 at 11:15=E2=80=AFAM Jeff Johnson <quic_jjohnson@quic=
inc.com> wrote:
>>
>> On 9/13/2023 7:58 AM, Johannes Berg wrote:
>> > So I'd say we shouldn't touch any of the code under #ifdef
>> > CONFIG_CFG80211_CRDA_SUPPORT any more since CRDA will not continue to
>> > developed with any updates here.
>>
>> On a related note, what will happen to ongoing wireless-regdb support
>> now that Seth has stepped down as maintainer? Have enough vendors moved
>> to self-managed such that regdb is obsolete?
>
> I've picked up maintainership for wireless-regdb.

Chen-Yu, sorry that I haven't been able to comment anything earlier but
I want to thank you for taking the role. And big thanks to Seth for
maintaining regdb for all these years!

--=20
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatc=
hes

