Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFA4DC25B7E
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Jun 2024 09:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeCT4dDUeJyvapnDuA3HXSIwNXPr2QvbJ+rafkaWVNc=; b=trN//0BWuA1hVw
	w0fpNROn9UzPRewPLiEmhD9gG8Rs2fgaxhHQLr2PymqUx2IcimqeJ9tmedPd0aJFFguRo/s34yqJp
	r6WrMyi0V7duZfELEQ2dVAPt8P1uLxnuCt1qO561mJQFsU7lux8QtvZKrWzcyGshv+QHvP9W0Wobb
	kUBXqtlfNO4hb0lOyn6ura/qOgbJQufkUXiBGVFq92Ybq0OBvi9xy1+6lZ3o0lCmywUfnXF1tfBii
	zCzSWfAUZqycsLsLvToHl1e3F6A4iee9ZxLCC5WtxOD3RGb7BwpvMR+oaJQIuDsb6QWLHfUvt4MQC
	hd7TIz4UNxMw5Q7N3oWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEQnk-00000001vLI-1LfK;
	Tue, 04 Jun 2024 09:49:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEQng-00000001vKx-1O4o
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Jun 2024 09:49:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 260D560F1B
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 09:49:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE8F8C32782
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 09:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717494590;
	bh=i9WJOAP6ErRW8I87gS3tgrcxNTYxqU3BYox9LVFDh5c=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=swZUxvTwjS+TP5F/3bJ7dEE0dulfu0Nskq48igVvbiIuNqxP4Mzz+I2zbOPj9wfW3
	 9wldhutkdK7mWfFlWchW0aqHtrTItQ5Nlr8Sg/EWHWdKFDs3yQjVlp9e+t0vSqaVM3
	 OOjPHwyoiAtZvAP6GUOrTyd7UE8jUuHUWqzAbnFc4qmMS3flSIKRUQNKD4z2RiOwfg
	 defMOEX7tTWGjyIqhj1jL0wRJz8HJsBLXC0aTBkhUUbxaveaxyRp+WBRGaKMCnlrw5
	 7VQNbns4sP6nMg5nIAuAh3PXvYe1VpS9o2UXBjBxQcGLU4bJN6XIkMqAs+ZwwGv52W
	 g3Aw+x03BUTxA==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2e96f298fbdso55394701fa.1
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Jun 2024 02:49:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX73zDDl7ARow8wRzStRtITQuLSRwWzqmrWNeMaBm9tl/apj/SONfZwPEqIU3MxPe2rOv9YKgNbDaMHl2Z867E3LkD+EehTGUblZshOJyFluLOq
X-Gm-Message-State: AOJu0YzziimE71ltAeq59rdYepexoUwY+RBS/PnsJ5xRJMs9G+aBtZ4v
	FDCnw+Rb3PUZ6mGB7gUtQ9N5N79R7gHjqCfLxuY0vswiuwPiKWLiDh9tVonkV8i8BxILpi8R994
	DFebeK23yDN8tBeIbKJ4eqaCtSDY=
X-Google-Smtp-Source: AGHT+IENPzGi8f6N03iIQSrlvxbuHk+91oLEXsqKPAhfDP5z61AsIWZSfpAnG7GgQPflPnsHQ3l/SZfjoMKQlmzCsDc=
X-Received: by 2002:a2e:9290:0:b0:2ea:59a1:2810 with SMTP id
 38308e7fff4ca-2ea951de677mr75010031fa.48.1717494589218; Tue, 04 Jun 2024
 02:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240603060558.98791-1-pkshih@realtek.com> <20240603060930.99039-1-pkshih@realtek.com>
In-Reply-To: <20240603060930.99039-1-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Jun 2024 17:49:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v670CH3oNhwasHM0Vke+Gg+kSkf7hYL1ofE+dsui-L7_rQ@mail.gmail.com>
Message-ID: <CAGb2v670CH3oNhwasHM0Vke+Gg+kSkf7hYL1ofE+dsui-L7_rQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] wireless-regdb: Update regulatory info for Morocco
 (MA) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_024952_521759_066C7DDB 
X-CRM114-Status: GOOD (  15.44  )
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

On Mon, Jun 3, 2024 at 2:09=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> wr=
ote:
>
> The publication of the Decision ANRT/DG/N07/2021 of May 2021 amending
> and supplementing the technical conditions for the use of radio
> installations composed of low power and short range devices [2], which
> ANNEX 5 defines p.i.r.e. conditions of 5925 - 6425 MHz are 200 mW and 25 =
mW
> for indoor only and indoor/outdoor respectively.
>
> [1] https://www.anrt.ma/en/lagence/actualites/wifi-6e-now-authorized-moro=
cco
> [2] https://www.anrt.ma/sites/default/files/decision_a2fp_-vf-_mod_07.05.=
2021.pdf?csrt=3D14818568393101165775
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>

For the changes in this patch,

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index adfcce15e3a7..59d7549ce604 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1133,10 +1133,13 @@ country LV: DFS-ETSI
>         # 60 GHz band channels 1-4 (ETSI EN 302 567)
>         (57000 - 66000 @ 2160), (40)
>
> +# Source:
> +# https://www.anrt.ma/sites/default/files/decision_a2fp_-vf-_mod_07.05.2=
021.pdf?csrt=3D14818568393101165775
>  country MA: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (20), AUTO-BW
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW

Note: this range requires TPC, so it should be removed.


ChenYu

> +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>
>  # MC as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 8=
93)
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 4=
40)
> --
> 2.25.1
>

