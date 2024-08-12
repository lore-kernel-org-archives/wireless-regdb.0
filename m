Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE689C3DA7F
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 07:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrc4w6NzMIorQSqX29KVGNKClOXVy1B6d/ZvQOZrXtU=; b=bBl5EmGNqdpaPy
	xBeLjTL7Yycvb6inlkKedLpLlz8iF6aiBKNRTTpzBV3YFMSb/fR2BxL9SvAQDM1s/3DDLHfo3KkNU
	Ly7A0xIU96ibHKeqR0OihVeHK7guxSWV5BOmsmodxylBi/yNH79vL+7l/Ac14mPNjvjP7pLQyZ/AR
	61sg2rhDZuZvSSbaK4BgrxELTqA2qJ6wiJH5fLR2Mj49DG0yhuJ+Cx8c7oiyD6+0CPYZ8kQYPyNGD
	brHh6W4iXYurFZB8bBkwgMiTMdZm5mspXE/pwpZptNKqiMKRVK5JfhNTRu9wwJKF6DLeIrIgpiQxG
	lMNAmT/lOnnNlBg9Zh/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdPXq-0000000HAhG-22eR;
	Mon, 12 Aug 2024 07:32:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdPXo-0000000HAgw-0UMf
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 07:32:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F1CA561059
	for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 07:32:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A28C0C4AF0F
	for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 07:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723447962;
	bh=Ju1FGjM6mz3LNrXveCN++QOdMRmYgYgVkZVwCsHwak8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=VK69YRfmilND8LwolMZcZgdTcvF1dsHbL5u/ngBlLIbrrqIK7zQs5CIaYzoLXSPMv
	 shiZCytRib9pBoUOA1Kv5w47oxMCHULhaKStQgDR1PcmYLgKijtjDgFxykHR2phpNH
	 DBaps2xvHnRLyQJL5pxHLGJoJEtHZFK/5u4F09stSWEGEN0smoeNoFTtX9T9hFrKOb
	 WEsPwNg+dwyrY0FuxSl5FVComisN43nHUYkQ2/NKTLdma0QjXvud5Ga42YHoRq/NYO
	 r2U8mPJz0EVL8hmRfXe96A43R59WjjEBhSmmZtuLWeFPyOAj33m6NpxgyryZhfdhIS
	 69eXD4qQ/d8OQ==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2f032cb782dso41300111fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 00:32:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV7WxHOTtKrjKFo5Ctvpdc2OacBRhCDAfkFErlgg+HcRMmkdIfV/2fRnII/EOWgi1yMbiD60aqHxQL/7yUtqtEcMQN/+x0Il73aDmqkUQaRmwvY
X-Gm-Message-State: AOJu0YxLhgwVZ0ydSw2izyzIcdGEpgVfTrM5Lwv1/FYCatTRe/UTLLXp
	lykG21Kx17WlrWRxPqiXjC2lLOQDhRFEG5Kydw8S6pw0Q1v7iroredkW5Tzlbe8FxIkFRdAsn79
	qjarmg2oFkc5QUQ1r0vwjaxDs4wg=
X-Google-Smtp-Source: AGHT+IFqkjG6Ys+8GTIUaiER0bjHiehOt1U7JVGVOev4e5lA8T293MoltHVl90ehDHXSQVwIywogC2bb9vLL638q11I=
X-Received: by 2002:a2e:a98b:0:b0:2ef:2bb4:45d with SMTP id
 38308e7fff4ca-2f1a6d0027bmr58956981fa.9.1723447960788; Mon, 12 Aug 2024
 00:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240806061203.1839-3-gcperfinian@up.edu.ph>
In-Reply-To: <20240806061203.1839-3-gcperfinian@up.edu.ph>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Aug 2024 15:32:26 +0800
X-Gmail-Original-Message-ID: <CAGb2v67fQiYAq7C-eT98L-tx4DoS5AN0UyfaB+hFkpOQy4Z3vQ@mail.gmail.com>
Message-ID: <CAGb2v67fQiYAq7C-eT98L-tx4DoS5AN0UyfaB+hFkpOQy4Z3vQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Philippines
 (PH) on 6GHz
To: Gacel Perfinian <gcperfinian@up.edu.ph>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_003244_264603_41DD4CD6 
X-CRM114-Status: GOOD (  15.87  )
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

On Tue, Aug 6, 2024 at 2:39=E2=80=AFPM Gacel Perfinian <gcperfinian@up.edu.=
ph> wrote:
>
> The Philippine National Telecommunications Commission has issued
> Memorandum Circular 002-07-2024 [1] on 05 July 2024, amending
> the allowed frequencies for HIPERLANs and RLANs specified in Section 2
> of Memorandum Circular No. 03-05-2007 [2]. The amendment has been in
> force since 22 July, 15 days after publication in The Philippine Star
> and copies furnished to the UP Law Center as mandated by law.
>
> The amended frequency table allows HIPERLAN and RLAN devices to operate
> on 5925 - 6425 MHz band for up to 25 mW (14 dBm) eirp for indoor and
> outdoor use (excluding UAV/drone use) and 250 mW (24 dBm) eirp for
> indoor use only.
>
> [1] https://ntc.gov.ph/wp-content/uploads/2024/MEMORANDUM%20CIRCULAR/NTC%=
20MC%20No.%20002-07-2024.pdf
> [2] https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/Me=
moCirculars/MC2007/MC-03-05-2007.pdf
>
> Signed-off-by: Gacel Perfinian <gcperfinian@up.edu.ph>
> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 4eaeaae..27f1e43 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1481,9 +1481,11 @@ country PG: DFS-FCC
>  # NTC MC 03-05-2007 https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRu=
lesRegulations/MemoCirculars/MC2007/MC-03-05-2007.pdf
>  # NTC MC 03-08-2013 https://region7.ntc.gov.ph/images/LawsRulesAndRegula=
tions/MC/WDN/MC_03-08-2013.pdf
>  # NTC MC 01-01-2016 https://ntc.gov.ph/wp-content/uploads/2016/MC/Explan=
atory-MC-No-01-01-2016.pdf
> +# NTC MC 002-07-2024 https://ntc.gov.ph/wp-content/uploads/2024/MEMORAND=
UM%20CIRCULAR/NTC%20MC%20No.%20002-07-2024.pdf
>  # 2400 - 2483.5 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, =
Section 3.1; NTC MC 03-05-2007, Section 2
>  # 5150 - 5350 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Se=
ction 3.1; NTC MC 03-05-2007, Section 2
>  # 5470 - 5850 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Se=
ction 3.1 NTC MC 03-05-2007, Section 2
> +# 5925 - 6425 MHz: NTC MC 002-07-2024, Section 1; NTC MC 03-05-2007, Sec=
tion 2
>  # 57000 - 66000 MHz: NTC MC 01-01-2016, Section 1
>
>  country PH: DFS-FCC
> @@ -1492,6 +1494,7 @@ country PH: DFS-FCC
>         (5250 - 5350 @ 80), (23), DFS, AUTO-BW
>         (5470 - 5725 @ 160), (24), DFS
>         (5725 - 5850 @ 80), (24)
> +       (5925 - 6425 @ 320), (24), NO-OUTDOOR

Could you use the value and unit directly given in the referenced
document? So 250 mW.

The database takes both. You don't need to convert the other ones.


Thanks
ChenYu

>         (57000 - 66000 @ 2160), (24)
>
>  country PK: DFS-JP
> --
> 2.45.2.windows.1
>
>

