Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63D22C52D7C
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 11:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RbwMlkchHA0z0t8maefqSpdlphNEJ7DMeVyk4xgd3m8=; b=q+m39+eABQnqpYa+j5KuhiahZf
	LVGV7kCZYEtESF45heZw+Xf3nZj9OwIfxbTwGae0kjNdksmhI20cqfWLY+mOnkWuv/G8uuWkwhAne
	nujbY99AI3TF0vZYwOWKLWOZh33r5Pe5qMEMAlialh+vIBGZt6SeYE7S7h1VS61ldhxFoVi64y6xL
	hkvp79trK9/5RlzqL1n0POPj5x4sab5qmqGKQ/TunAk/GBRo8f/Cn2VlToFnGKC2gC0rPwTCmHu+r
	UbRVU26kM2/CzTeiWZsdJdVWhJenA5ZU4YHCmMnlxhZz6jaiCYriPavHibCmfhoL/riwmg1bF7Lqx
	zzHfahvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTNJ-000000009TN-1oCu;
	Mon, 12 Aug 2024 11:38:09 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTB2-0000000087j-3etI
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 11:25:30 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5bd1a9bdce4so2148398a12.3
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 04:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=up.edu.ph; s=up.edu.ph; t=1723461926; x=1724066726; darn=lists.infradead.org;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RbwMlkchHA0z0t8maefqSpdlphNEJ7DMeVyk4xgd3m8=;
        b=h7Txs4JG5KRpzQjYC/ekbQwpXGG617SY2VenPsJlmqWkA8OGzzBuAiUHXOfkGlKvWl
         3L1Roz/PKukv1Xk5aBRfaCTdvo2p1SU+y4jggSFUJasscHf7ShtkSKh4J30WqGvBvxVf
         lBVuCxBWeXaxv60rjoiq5di4f3wfcgqg7ceaXiJQ/k4AJrAY5Q4JZ/m/yMpFFmetqHlV
         TGgelG25IVHeTiiOfoTb1IS5qnTj2ERvzhQLoyKsFTFzyg/Bs0362CQ5pxTDktPbLD3o
         Ys9adrCdCPtYWxed5H1mahdAbtHnMEEEE6VCsOfdX4SDgSIGrGwZS47rXCsOfpBXhiJA
         KDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723461926; x=1724066726;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RbwMlkchHA0z0t8maefqSpdlphNEJ7DMeVyk4xgd3m8=;
        b=iAUAXmBjjYDLIFGX/qtrS9YqSKVWILhErylPpyJ+nSdMkzioKkpdCJJHBvNHZFxNXO
         tsZiq2sU7Br8cI3glCfbCTv3EuJ8wwTbsRuuMaRDxqSP68HJjYcB+A2aI62EfOoNoVZg
         x1lW9v1I4eA47iJr0xZG7h5I/S+uLWe73Dq1BFXBbbr2j6UalP3eQLI01uzbjG3psGoJ
         kNlhrgbfsljXmFynKp2otkfuMu/R6HfJsWfbV+X6r3UM50Ez4KFjcgx1T9WW9e/K7gIR
         qb4Ki43FRgAcChraf+KXKD4XTrhLhMjwwj44WQPxbcvyAkxjmhq/5zPuy2XFKdkhUkCI
         4cHg==
X-Forwarded-Encrypted: i=1; AJvYcCX1upReh9TPxeIJ8hqQd5wGpfUYAcE/OtFTbuIVYmmN1Cm5SklLfZy2ukOoL1E66Gk1v8JCDyGfZh+oMdXE4uYQZqZypzfDJzOtDnSglfFocj2V
X-Gm-Message-State: AOJu0YxKVh91AtkCgwAElxlpDtnoDwom61yXy8cCBVgj5OcOIFr6eT7O
	0eN9k+ymXX9/a8iySLfF8mVVg+h9Y0tlJw+4LS0zb8fjYyhuU3Irchs8SgxzgEbklNShII38Asb
	DShlTPk7rSrZ0U5kiV+4cbluRWgcICCET6WMA8Q==
X-Received: by 2002:a17:907:e6db:b0:a7d:3cf6:48d1 with SMTP id
 a640c23a62f3a-a80aa5dd57dmt589857066b.32.1723461926198; Mon, 12 Aug 2024
 04:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <20240806061203.1839-3-gcperfinian@up.edu.ph> <CAGb2v67fQiYAq7C-eT98L-tx4DoS5AN0UyfaB+hFkpOQy4Z3vQ@mail.gmail.com>
In-Reply-To: <CAGb2v67fQiYAq7C-eT98L-tx4DoS5AN0UyfaB+hFkpOQy4Z3vQ@mail.gmail.com>
From: Gacel Perfinian <gcperfinian@up.edu.ph>
Date: Mon, 12 Aug 2024 19:25:14 +0800
Message-ID: <CAJ5pLOZ0mBWjZ2zSwwsBj1TsLXc+R__1bGsUgNUpZ8an9K8WEw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Philippines
 (PH) on 6GHz
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_042528_947993_30E59D49 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 12 Aug 2024 04:38:07 -0700
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

> Could you use the value and unit directly given in the referenced
> document? So 250 mW.
>
> The database takes both. You don't need to convert the other ones.

Can you clarify if this is just for the new entry or for all of them?
The documents has always stated the requirements in mW eirp but the
old entries were in dBm so I thought there was a reason why these are
listed in dBm.

Gacel Perfinian

