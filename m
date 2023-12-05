Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
 List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date
 :From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=PgdpSNq+7mSpQnP6US9O1j9BoPgqpPUrob3Ayo0buDI=;
 b=YAoeQ2ift31Gx7
 +HqyTE8t90CnRnjP5L7ML7lMG+asLCac6nW5baiWMr71fHexHxQi7R+fLE9qlPammc2eeqCWkFDKz
 /fXUEuYXz/5tp/uejh3SdFJ2aqBih/nleUVYo7+8EIO6tNoOp8Ff22JzGOqNc9/OScIngFaZMOrFI
 L5dtPDyQYYg6Frc+18SUAa+7V8cAOhSOGzPJunCRVrlXS+g8/KqTW7VZeV7KRbQhStNS9jA+drZOx
 os3xgCIKB0pEO0q5EapHqjuLiP3yhosqVlOLZRbPpALH3bAjY/5Athhifid2FNhoW9GGU28R40YVn
 hFcjFfS7CgnPDnH3DAfg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rALVu-0065WJ-1q
	for wireless-regdb@lists.infradead.org;
	Tue, 05 Dec 2023 02:50:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org
 [100.75.92.58]) by dfw.source.kernel.org (Postfix) with ESMTP id 44713614E4
 for <wireless-regdb@lists.infradead.org>; Tue,  5 Dec 2023 02:50:18 +0000
 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10C58C433C8 for
 <wireless-regdb@lists.infradead.org>; Tue,  5 Dec 2023 02:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701744618;
	bh=ULpntSrxY40uh1Zf8syjVkac9wphSqfByi5sZ3iJ2qw=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=TNHLE38Rf1VN6YiHq1WYAbFFWL8oEptdItLUpEwGRKt8E5G0aqbm9hrUBYTJe8t5u
	 OstFfMddoJHYY1XN6iBWrbM7QvVEMnGX3gZso6tqz1c0N8mxpscwHvqqf1CBSIR0WX
	 TV880oI96NzBiWDNz4+GvUqRB4LO1X2NtFl4/tvm8sIv5fHYxaoNMgEt983VqwK1Nd
	 L1BYf+/ErBn97kB1n2cLEQqEJBX2Igmn+X4h+HciYat4jcHLQE9TjvbkTEn8/vzfAt
	 4xmNCuhzCtBaD1RG19Fi6SkYUnIEpnnQBB5nUtjapITAS8w4Ugkj/JqtnWkfRpDRFA
	 Xh6E+wRtNkJZA==
Received: by mail-pj1-f46.google.com with SMTP id
 98e67ed59e1d1-28694702c18so2021256a91.3 for
 <wireless-regdb@lists.infradead.org>; Mon, 04 Dec 2023 18:50:18 -0800 (PST)
MIME-Version: 1.0
References: 
	 <CAE+BM3=Neb_g3QPMiGjpmkkpUK6wupM1FX06DyZOtDnQgBz_YA@mail.gmail.com>
In-Reply-To: <CAE+BM3=Neb_g3QPMiGjpmkkpUK6wupM1FX06DyZOtDnQgBz_YA@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 5 Dec 2023 10:50:06 +0800
Message-ID: <CAGb2v673ZhHiCDGCbTLVqQqaJLr2xTvJYQwtLTJUFwTKBJa9SA@mail.gmail.com>
Subject: Re: [wireless-regdb] Add extra check in regdb scripts
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Rusty Howell <rustyhowell@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

On Thu, Sep 14, 2023 at 12:16 PM Rusty Howell <rustyhowell@gmail.com> wrote:
>
> From 434588b8f06f78a3188909c298a6f6671dab7b3f Mon Sep 17 00:00:00 2001
> From: Rusty Howell <rhowell@control4.com>
> Date: Thu, 7 Sep 2023 12:56:47 -0600
> Subject: [PATCH] Add same check that kernel uses to check reg domain
>
> The kernel will reject a regulatory domain if the max bandwidth is greater than
> the span from start to end. We should catch this error when compiling the
> regulatory database.
> ---
>  dbparse.py | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/dbparse.py b/dbparse.py
> index 5f7e082..1e87813 100755
> --- a/dbparse.py
> +++ b/dbparse.py
> @@ -218,6 +218,9 @@ class DBParser(object):
>                  self._syntax_error("Inverted freq range (%d - %d)" %
> (start, end))
>              if start == end:
>                  self._syntax_error("Start and end freqs are equal
> (%d)" % start)
> +            if bw > (end - start):
> +                self._syntax_error("Max bandwidth must not exceed the
> range from start to end")
> +
>          except ValueError:
>              self._syntax_error("band must have frequency range")
>
> --
> 2.25.1

It looks like this patch was incorrectly line wrapped (by Gmail maybe).
Can you resend?


Thanks
ChenYu

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
