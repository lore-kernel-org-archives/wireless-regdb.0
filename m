Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C80C55184
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Aug 2026 12:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emjsfCqiib1hqYDWIUXBBTRh/PpUBt6NWcDAEa8ZQVI=; b=YAinNcsM0XkOjM
	UVdPfRZ1w/MjMDzdsisF53Gx2+K4xp0KIsRENo4M9qQFpxFff9Fk4LyRol4ZnWCCDfjAscZYn/qMN
	02SyhPZ/vO9FpYrDbSlxe6N3DihhewcqrwSFslj+lRKL74BRskRl7Inakc/LRIr47SSPih+2UXTgd
	Qe5oH/XHZGhFDYzDeFcapXTMQAKmvZwLBzWqI0Pc/VUZLvCTQbtxvZiPEtN4Kv6tGTwYN0Q23lV7e
	UGazRPlgaxmA8hrkYFEjtlsYWKmtAvPO0xPGELnxA16EwNQbOCNXs29bs5xQz9jhSL3qwwXgFhynA
	/lhh7wmJzeh0V8Axnrrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrEZc-00000001qjL-0UYa;
	Tue, 04 Aug 2026 12:48:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrEZa-00000001qjE-1t5A
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Aug 2026 12:48:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 24FEB408B5
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Aug 2026 12:48:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09D111F00A3D
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Aug 2026 12:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785847726;
	bh=emjsfCqiib1hqYDWIUXBBTRh/PpUBt6NWcDAEa8ZQVI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=IrwvovdHJLbYPVkHEL6jgnXGkQtjcTPw8YPeAByJg6sfUt27wvJHkrKjCRYr1Pgfn
	 Yf+j2ShBsd3us2jByXlf8tzB6mCrHapXA60G4HtFrBQYB7AgLATu3zL9chZCCLK+mi
	 y+05Dy2KN5knwsjeWaPWlGYX014jlj0X9f+DxsikQW4yChGE2QWdx6ifn6DZ+exCIy
	 Zffdn0qXsfU1F7FfWqP7hF7iNpjMe0iWrC+RSo9gSjWYyHINV8tBflpc6FqgT1VV4u
	 xf/ONFt0t6VEtlw7YTcY5Va1v6Nn2//S4GIApaLznt3WjAJNXn3f/ZLLnoNRiRFDn5
	 k1PmrzWePmGew==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-39c74722e27so12391401fa.0
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Aug 2026 05:48:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RofZXY0lWFxnJZLp4qmtdzp0PvNO4bwFhuxZPsVVPBp2a4to1JJn0cT3OjURQ+gbEg5Jwd+hblbK4wyOtrVwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywk51MNDUsQRJ8KG6pplzuxUQ26RQCk7T8xWUD3vc5qHh/+iMcx
	+W8hitOB6umfNBrI/pHG4CIeCmnHlW6tdcpEPdz+p5xRSfTFDsPiZ/S8Z6mhCnHd3e9gyKjDK2B
	LRZMUnFj9FZ+GpJLFLwy7dpPDCMJapzE=
X-Received: by 2002:a2e:964a:0:b0:39c:7ed7:8565 with SMTP id
 38308e7fff4ca-39fae65bfe0mr6223841fa.7.1785847724445; Tue, 04 Aug 2026
 05:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
In-Reply-To: <CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Aug 2026 20:48:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v66RnAr_yPhZuuandeoE=wSh9tJMdfqkLLudWKpDmDKc4Q@mail.gmail.com>
X-Gm-Features: AUfX_mzqhAFU6N5eXfgE9kEzE3qPSJT4BQo_IW7i366UzdM4ls3Oq_MSoMI1MkI
Message-ID: <CAGb2v66RnAr_yPhZuuandeoE=wSh9tJMdfqkLLudWKpDmDKc4Q@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Hong Kong (HK) on
 5GHz and 6GHz
To: Morgan Wong <pbodq2@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
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

On Mon, Aug 3, 2026 at 9:38=E2=80=AFPM Morgan Wong <pbodq2@gmail.com> wrote=
:
>
> Dear all,
>
> Currently:
>
> # Source:
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> (2.4 GHz and 5 GHz)
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6=
 GHz)
> country HK: DFS-ETSI
> (2400 - 2483.5 @ 40), (36)
> (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> (5470 - 5730 @ 160), (27), DFS
> (5730 - 5850 @ 80), (36)
> (5945 - 6425 @ 160), (24), NO-OUTDOOR
>
>
>
> Update :
>
> # Source:
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf
> (2.4 GHz and 5 GHz)
> # https://www.ecfr.gov/current/title-47/chapter-I/subchapter-A/part-15/su=
bpart-E
> (2.4 GHz and 5 GHz)
> # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20/e=
n_301893v020007a.pdf
> (2.4 GHz and 5 GHz)
> # https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6=
 GHz)
> # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20/e=
n_303687v010000a.pdf
> (6GHz)
> country HK: DFS-ETSI
> (2400 - 2483.5 @ 40), (36)
> (5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
> (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
> (5470 - 5730 @ 160), (30), DFS
> (5730 - 5850 @ 80), (36)
> (5945 - 6425 @ 320), (23), NO-OUTDOOR

Please do a proper patch or at least diff. This is hard to spot differences=
.
And if it's not a patch it's more work.

> Reason for change in 5470-5730 :
> The HK department, OFCA has its own requirement, 30dbm in addition to
> EITHER fulfilling FCC OR ETSI requirement. The rationale behind is
> having the biggest tolerance among major world standards to be an
> international city. The OFCA, 30dbm is the baseline value to be
> fulfilled in the highest priority.
>
> About FCC
> 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> # https://www.ecfr.gov/current/title-47/part-15/subpart-E#p-15.407(h)(1)
>
> About UTSI (same as FCC)
> 27dbm (500mW) without TPC, 30dbm (1W) with TPC
> # https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20/e=
n_301893v020007a.pdf
> (page 17)
>
> A TPC (30dbm), 802.11h edition should be taken instead of 27dbm as I sugg=
est.
> Or a TPC regulation flag may be a good idea to bind with 30dbm together.

There is no TPC flag, hence the limit is set at 27 dBm.

> Reason for change in  5945 - 6425 :
> The HK department, OFCA requires to have its own EIPR limit, 24dbm in
> addition to ETSI 23dbm.
> Therefore, the smaller value should be taken.
> (6GHz in HK requires no reference to FCC standards, unlike 5GHz situation=
)
> WIFI 7 allows 320MHz, the previous value, 160MHz was in wifi 6E era.
>
> # https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.00.00_20/e=
n_303687v010000a.pdf
> (page 17)

You mentioned in your reply that this change is invalid.


So to summarize, I don't see any change at all.


ChenYu

