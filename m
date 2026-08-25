Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A64A1C5DF9C
	for <wireless-regdb@archiver.kernel.org>; Tue, 25 Aug 2026 02:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UgHoeOjpKMJA7mUZSy6kBez7uuRxoNHSIzfVFhE5H6w=; b=U+i09eotpFaJK/+/QFYjKaSIbz
	ingMb651j+YC99gJR/FglrzrNltLsHHjnnTBhpK5YPxddqxsst7xPwKb2Pvo6vX+t4lP62IWc5ff6
	WVwiejueqp5FJvdRKfswt9tuGyu6jefvbxRlGUjuo2UwfeQ+v3ZL/vdZs+n4+x7CeZQCZbKhRBv0Q
	f2nGmC/woxcLWbsRC/lNuCiaVv+h01GG1pncBAdNQpnNKKikJXQZCxunVI3hO9qKz5twp2fVHuYTJ
	tb/FgV3H//Qof0szZ3O4hLGVeAHfVGpoTNDmoD/3CFjkXv5JQL8IvxOOVqVMnEkOUYuP7TC99zI5Z
	xKg3H1IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wygV8-000000002LV-15RO;
	Tue, 25 Aug 2026 02:02:58 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wygV6-000000002L8-0IHg
	for wireless-regdb@lists.infradead.org;
	Tue, 25 Aug 2026 02:02:57 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-69c108fee7fso6828944a12.3
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 19:02:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787623373; cv=none;
        d=google.com; s=arc-20260327;
        b=sMso3o+d+XQOJX4Sm/faSSTKWy3fc2+vO15+oIaMciXUpSDeQYonSzQPQRrrA1+IdH
         /G/ld58l4tW29JuRtTm3fYdSrIy+JcWNLM/s/cqQke0gPMznm2vA44v6WqFpX1XTPjzu
         kPL40V1AfLq9uIh0sGBBHsvSurO2vM7XYPDTE1zB32A94qQGe7YnYgxVikKOR7EkJDB7
         Aui/SGuRcC4OsU1seUBudRBcux3qmpwKvx1Hyvf/hsulmR4zO6fMdbJgOOBrKFpAcwAo
         i368eNbaPH14L2r8S2wmn50k562fyobHhqDq+vlSRSIlOUJCKGnfuGBuCUh6drS8fNtX
         JiaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UgHoeOjpKMJA7mUZSy6kBez7uuRxoNHSIzfVFhE5H6w=;
        fh=euzvMfu7qDLnQWJjFwvgpvf2JvQz0whR7D4BOA9wDBI=;
        b=cjNRjcf8r7Q1Okfjikllsre1f8WJ7d4Z2XBVch3dnnNKkf+wNeMZIOMFRxhEVhLoEB
         S6hdzzN1jz+64/jwYYqmUGWpKWxiBQHgpKvt+yxd4fBbzNRXWaqFmK8FTjWtIXy0A/Lw
         2byxJMEtk05vgSF73/amCU3Dz9/o2DT1N4qCQIXj8nPiZwATzmdywj1vCKgiUqSGaaGD
         ychK2mx49JHuzi19nixtkafgobXo20qKTV7FtXzcgFYqMcOdhmnA3MzUD4TZp6vo5IEO
         naHC4x3qz7DtpBy1Q4aeHTnyMNF4S2ORpO2XndtlH38lK2WEFYA3oruIzaGsEP6DMdZQ
         D4zQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787623373; x=1788228173; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UgHoeOjpKMJA7mUZSy6kBez7uuRxoNHSIzfVFhE5H6w=;
        b=IQG/chgOOANSChsVm/97VWiGIO5TekQQZIzshq6GXGAfqnbORtYcu9m3uUbCgMhfST
         x4rFRNGskiemeMdCMIIyGOW5gacSp15fHWhnR8TvMz1nX5syfC0jTrhy8nG5e0BgbC6k
         ARBrGfiWcnPNE4HYjK1zPnuoNVj53guMqI+AES959XvZz547s4WiFe7OE2jwDKus8fDo
         tz++X9EsolnKYC7+hSz8bo3zIScSxs45LGux5LVGmExgldzpvlxD2+RTv0+Jdm2RSpJW
         8Dxql0ab0vXoWqkca8cGwnaGsiAU92OjLpt6riVFSUrLb3zpXdepgR1cWIMm0uvchNgV
         xOYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787623373; x=1788228173;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UgHoeOjpKMJA7mUZSy6kBez7uuRxoNHSIzfVFhE5H6w=;
        b=lBs2r58vnVH2J6ApID8pUJO8/OjubF7UW8SIijG2zz4mhgzuxJskaM9vSVn8fH89TC
         gBXo9se6mlVXYkkbql8LFVtxRlz41Ymip/olg51qA8YVJYN3a3fMoixDFCDZ6Zc8FDKD
         QcYmHaWD59c1wrchH3uzvDPU3PXbV/+nNQkZ6brSzBjsYiX5eHe1He5UtbG0cCXvtD9E
         nFC8qHKH9nRZyD7lw76I+LHl4ny6OErb8jrqAdCs2fAEStIixGcyXdoeBsV3kdW1KZOe
         jLecHgoIUne/V4thr+kUNiFNy/sLg/rFgx9jkflEJcIuc7/7VEFkAf2q8cPJIJYav3eG
         xgXw==
X-Forwarded-Encrypted: i=1; AHgh+RpmZxym0FvTENI+6Ia8VXWpDEr3l4+mX9GTb25gc41KPsnLzblMybFChipuTzVeLaT89L7T5IDhNMB6PsfQGg==@lists.infradead.org
X-Gm-Message-State: AFuF++minYdH/q9KwLVMuq3/euBuZxcNz7Q2DpsC4076aI9rdvs0uf0S
	qEtaUbAWwKLFF2P/nBLbxIurifbXep8Wz/VyYwwRKo4yKT1R3ygWWMk8oxHzIxyDPeTe3oFADK7
	Rh1239gmjeQE7d5JXHBV4zRmhRc8G9dg=
X-Gm-Gg: AR+sD102noMDsRf6I6KCWdv9ji5SZn9iHtzSzglR+ngslKsIALwJmmJHySXGNT4+DEj
	Kx42dxGG0a7Use+hE5iwmnSr+JCo3rD6kGl86wAuXouCgfHbKKyujAd/pGU6KbHi9DcC2mA7uDt
	yceyZ2qO064pe1B4drNbeqOQh+TizfXMeXYEsyFgSij7sZCbYAhjigANpctaJV9gmS8HLhwevI+
	00ajmMaRlRfnJ5PQY/LuZfjsRLFR6ryarm0wlyp5P87dRPvymNJQhPNTZwhaQHoFcxEIG+aboAl
	jpCuY3NjnTR67Fv9CKUhskZPuxXT4DlpOwY8/jWh8s4Ivw==
X-Received: by 2002:a05:6402:3224:b0:6a1:fd14:8832 with SMTP id
 4fb4d7f45d1cf-6a582b75aeamr28112975a12.12.1787623373188; Mon, 24 Aug 2026
 19:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260824070730.2089862-1-wens@kernel.org>
In-Reply-To: <20260824070730.2089862-1-wens@kernel.org>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 25 Aug 2026 10:02:40 +0800
X-Gm-Features: AcwNN1WCqIAYuLFHfMK8FerJDJO31a9qqA0CLcZEfBDzqQFP_HA8mVYap7UD_0g
Message-ID: <CAHrRpukiMAvgozT0bVidjrHZKxuXX7hc2qYy3fR-TA8W+ihFoA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: allow 320MHz channel width for Hong Kong (HK)
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	Ping-Ke Shih <pkshih@realtek.com>, Morgan Wong <pbodq2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_190256_154761_B30CA153 
X-CRM114-Status: UNSURE (   5.58  )
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Chen-Yu Tsai <wens@kernel.org> wrote=EF=BC=9A

>
> There are no restrictions on channel width. Allow 320 MHz channels on
> the 6 GHz band for WiFi 7.
>
> Reported-by: Morgan Wong <pbodq2@gmail.com>
> Link: https://lore.kernel.org/wireless-regdb/CABzKGg0YEm5PfW9YtEM0G1SYY6R=
D80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com/
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Reviewed-by: Ping-Ke Shih <pkshih@realtek.com>

