Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D14CDC71130
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 04:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZtWdmn+kqDd5bzH+VB6lwo9p3ZNG5Nm28VFl/TVD/E=; b=36zrHdFjFv5PXY
	KVHYs8klKM/Kal/ymC8peRFpm3PboCXiUAHjgJG46e3gN8Q4d9fo7iQilWVSHJ2BQ/AEryGZHGQvj
	lL/gbvl+dQh6nSQgCVTCkI6TZWsy3pPs626kvOrYDR7DrdmCJzmPwEF2S4KOymou5GvZPx6kOofCS
	ZNMMIAplo0tXmcSyzHemTOtUJJXx9X7Rzuhlhwic+W8pFavakY8cVEBUFW127ESonqsxzKudZP3dF
	OWV7gwupqVJqNf0AaUjoGdCdHrL8pFob7GjnYc7+GN74WF8lOSVL4fmtHLPBLa8O9dQN29ekKOFQi
	yRC0r8eKSzZ7+5G0CqTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ08e-00000004GjT-1P5a;
	Tue, 08 Jul 2025 04:41:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ08d-00000004GjN-0wG8
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 04:41:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4336561461
	for <wireless-regdb@lists.infradead.org>; Tue,  8 Jul 2025 04:41:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6164C4CEF5
	for <wireless-regdb@lists.infradead.org>; Tue,  8 Jul 2025 04:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751949661;
	bh=pZtWdmn+kqDd5bzH+VB6lwo9p3ZNG5Nm28VFl/TVD/E=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=f+4rHUS7q4lKwExqhY5NkyuHAOlDNJajvVyhkWfbFljysGfXjug1uRy4UrurLZWRn
	 gSCHOCFqMe50y2YAYh7TV+OtYSF8XT7GW/dY2O1FYbb4tkFK2EtRmRUg5CPzBbbarM
	 gYw1Giu08dV0Uc5du18jLkTgrorsmqciWQiFDcovDzYXLRhg3+oTVkjTmfAz5BzCuN
	 sDDpaLeEEU6OVWEVztYgxazhMhjkgro5M64RG88QQVvwMcRNHTNUQi0fvyNaSf3zsu
	 inopYeoH1dTuL0wacd6bWGhugAaa9lRZIkZnKhCo+Oi3RCvXnBSkiA6aam4VnLOCSU
	 g1Tz1ltbibC1Q==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-32b561a861fso32959881fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 07 Jul 2025 21:41:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXM9YGL6xs3jHma8J836OO9gJXMAWzjrOB6sxYKDi1cP+dkEj6BuDrIqcKqtHT4piSTJXcsDiip6abdUO+hJA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxrNcTktWAeb/iNPMSRiFuWwkP9QPiu9tl2/K4MUkZMGgaapIyA
	hMrvN3eMvGQTAUVIL9ifLrIWAIqsWJBcZC5eAoaxICtKJC4spka1D4WQtKD0ka5wfFl00yZWWQn
	mKDiVu6TaeocLQurePZLeQxh+q9tiL5w=
X-Google-Smtp-Source: AGHT+IHPmyk/dpxRRRV/ADdX9INgZR8DymrLu4bMgudGKQYLr+i71hUNTjWYpqdF/vslwfuvMCPwjBAHSqLI6oiBoeI=
X-Received: by 2002:a05:651c:2115:b0:32f:1c0f:fb73 with SMTP id
 38308e7fff4ca-32f39b4c69bmr3560941fa.36.1751949660034; Mon, 07 Jul 2025
 21:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <1456091345.1517853.1751948346004@nic.in>
In-Reply-To: <1456091345.1517853.1751948346004@nic.in>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 8 Jul 2025 12:40:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v64awHryO6aPP+Jye_3gxGbT0j71NNnKLtar_Rwue=OmJQ@mail.gmail.com>
X-Gm-Features: Ac12FXzV2zY6rLqWvTwhHF5tzrD46c7UHOUnS_38MRI67px1_6tSimdUJ3oVS7w
Message-ID: <CAGb2v64awHryO6aPP+Jye_3gxGbT0j71NNnKLtar_Rwue=OmJQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] wireless-regdb: update regulatory rules for India
 (IN) on 6 GHz for 2025
To: Gaurav Kansal <gaurav.kansal@nic.in>
Cc: pkshih@gmail.com, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Tue, Jul 8, 2025 at 12:28=E2=80=AFPM Gaurav Kansal <gaurav.kansal@nic.in=
> wrote:
>
>
> Hi All,
>
> One query with respect to adding EIRP values (or max power) in the databa=
se.
> As per draft regulations, max EIRP across different channel bandwidth wil=
l differ in 6 GHz band.
>
> Like, in 20 MHz channel bandwidth, max allowed EIRP will be 18 dBm wherea=
s for 320 MHz channel, the max allowed EIRP will be 30 dBm.

That is basically spelling out the PSD restrictions that other regulations
describe in terms of dBm/MHz.

> How we can add this info in the wireless regdb ? Apologies if i am missin=
g something.

Unfortunately the database format does not support this, so we are limited
to only adding the lowest limit.

Last I asked, the kernel has a PSD field, but it doesn't really do anything
with it. And internally I asked folks working with WiFi to ask our partners=
,
and they seem to handle PSD restrictions within their firmware.


ChenYu

> Regards,
> Gaurav Kansal
>
>
>
> On Jul 8, 2025, at 06:21, pkshih@gmail.com wrote:
>
> Chen-Yu Tsai <wens@kernel.org> wrote:
>
> BQ_BEGIN
>
> I see.
>
> I will drop this for now then, unless Ping-Ke has any more information
> on this?
>
>
>
>
> What I can find is a consultation [1] on May this year. It needs some
> time to have decision then.
>
> Please drop this.
>
> [1] https://www.trai.gov.in/sites/default/files/2025-05/CP_28052025.pdf
>
> BQ_END
>
>

