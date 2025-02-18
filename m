Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E574C021A9
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Feb 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rbrSE3b4myrVtCz0ihbcW84Qx58kmQ2pCGkaTwMhnFQ=; b=FZCZaX2GebiRhEtAoZtqHr1Ycb
	lqzoqWlMUQYOblhoZ/SfxNWu0Xis8WrbKbrPexRkLd1wm7DUbDMBxEQPp729aQRo3LAZ8/+O/WuEs
	VwpMjQ8QwhOZM8CwXVdcLlctI/ZHSzkFyIwEyw7xn+T6o3whKLSEQMgPRQ3ic8hYKgdzMCSdN756G
	Kq8O1tmUvcc50AhXYZoFvPxNKwqqfwbS/FHXIHPq0ZI72OlBKfyI5ZQBtGA1p3F9WgrM94q1B4HLH
	pTR07CEjzKdtZPg0bkAVWyLXcTsTiOr8qdYR0Mad1sTNe0UL1Z8pfr2aPuqn1ryd5+W3nNZSolZJ9
	FizHakxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkDsr-00000006ZtA-0iar;
	Tue, 18 Feb 2025 03:02:53 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkDso-00000006Zsn-3TGn
	for wireless-regdb@lists.infradead.org;
	Tue, 18 Feb 2025 03:02:52 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-abb8e405640so283407266b.0
        for <wireless-regdb@lists.infradead.org>; Mon, 17 Feb 2025 19:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739847769; x=1740452569; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rbrSE3b4myrVtCz0ihbcW84Qx58kmQ2pCGkaTwMhnFQ=;
        b=ZdVgOeiOjxNInXSLYuLMukzx8g6q8FjQcVkwlNCTW9I58Raali50eVtH7HFNLOYsCo
         5lDvm+adw4IMeWtII0rjUonhdySRp8MiCJe77++/W4Sb77VKrYQKg0ayliUTQsAhZebk
         kHIdluCP0772qF3q5Lh5mOVkvL9ZtqafiIESsacN/zugd/eFl1dxR8nxMAv/n0JWwlZo
         rODrMeZMnboTapLKpbcFD3qNcc5LrMvqYdTRKiU9eBWEfPZItWaBSfwvJY1KQhWd5aBG
         nK3uGF/y2Y34QR2gRZX3E41lbEFAw9NRll8xgF4MCgR2xPqtDh6k80nZsCi8DQkZ0p/F
         VdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739847769; x=1740452569;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbrSE3b4myrVtCz0ihbcW84Qx58kmQ2pCGkaTwMhnFQ=;
        b=HN+dFs6uhOToF4/KGU3jQMlNGlkqgZbkn0eXpaqCrkRXSePH/bZgE9/SndMx8wVD7p
         3qK+SiUI2SVREojPV5GACzEqZGLg32UfOZqkDkd9EVoxR87+yMA4SdAmUN6bPAk77TsQ
         znFhiLXE8minsrxlFdDigWWXxniNn1XoRgblNVtmSZCfQyHl70jHryHADJ5PMNTLB0py
         od4//DjJFqDl+74gPXoiUf1Y8+HQ+0o65n7K14lkUQhgq7kRbLn3nOS+XAd11Ni3wOgk
         R5FIfEU2Nw7NpzOLwPVLrJ4vMJoAofBqKMH6fNOG+QhP2ytAT9Lrx0awPpbXJXvugn2z
         YBbw==
X-Forwarded-Encrypted: i=1; AJvYcCWwoTK+3sCaAD/q5XGZwWAnx/8uuD7LhNuV7w2IwPKrplJefLbc6bq0jllq/i4SJW8r9DExUDbKev2NVLb2IA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwpI9EExmDa4tYUo+b8l7IlP2An6JlkyVOpGPzmk/GJWrGsM66M
	trrxppwjRAbOJmyIszVb8ErZXsad9WDHnOHPVUebd3Jz5LfUYgPA5EbF/kUdRRkEfZMNtWbonu4
	rXjZbpi3rHCP0ITFyuaH+vdBy8oI=
X-Gm-Gg: ASbGnctpMclHgUPBrqzLrrTl+SuZhjTQIXHw5umCAh0ZpJulFk6aaC7Fxc4baol6dEz
	aLBBlrVVksmkuWYfk4n//c5hBXjsPl+7FZ9EmZ3+VDk8isjGAv8K5rVd+mt7N6Qf9+iAot4kU
X-Google-Smtp-Source: AGHT+IGQOuA3vSVfLjXQFCQLYawVRj5ioZOIZ0Nt4+/MD22rqWQc3SHuQqmcvKVrg2+GMaGILtSNiFD+6kS1kuiIoLk=
X-Received: by 2002:a17:907:d08f:b0:ab7:da56:af95 with SMTP id
 a640c23a62f3a-abb70921219mr1160197366b.2.1739847768894; Mon, 17 Feb 2025
 19:02:48 -0800 (PST)
MIME-Version: 1.0
References: <c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir>
In-Reply-To: <c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 18 Feb 2025 11:02:37 +0800
X-Gm-Features: AWEUYZk-d4cFmEZ_LVY9v90r5Qq-m7sMi2NWFaSsR_SUjLlH1iOEdXURLn_2H0M
Message-ID: <CAHrRpun-cZJj29+0XFkzOzZMqpd2gCZCbaLhOWEKLCAjuFtQ-w@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Iran (IR) on both 2.4
 and 5Ghz
To: Mobin Aydinfar <mobin@mobintestserver.ir>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_190250_865512_D73CC9C0 
X-CRM114-Status: GOOD (  13.13  )
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
> Hi. I checked the wireless-regdb for Iran Wi-Fi frequencies and It
> doesn't have any source. I checked the local regulatory docs about WAS
> and looks like the regdb doesn't comply to it.
>
> The official link is
> https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
> which is inaccessible from outside of Iran.
>
> A mirror version is hosted by me:
> https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
> (The relevant table is in Page 8, The document is in Persian).
>
> A translated version of mentioned table is here:
> https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
>
> I'm looking to update the regdb but I don't know much about Wi-Fi
> frequencies, So I sent this message as a call for help.
>

I made and sent a patch [1].

[1] https://lore.kernel.org/linux-wireless/20250218025957.13818-1-pkshih@gmail.com/T/#u

