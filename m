Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF033C48BF5
	for <wireless-regdb@archiver.kernel.org>; Sat, 17 Feb 2024 01:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GfkSvBHz/Z/KjshkJ6+Vt1cr+ClUcSDaN9mCuw1bF1U=; b=rp4qpKJosMa8L6syqXKYDIunuL
	NMHr43lvwslx5MFq/SZH2/IvUSygDsfbjZEFU6oSFWoVxm6qnBRZgCFXNMuDEWGYNrPvqsASXBhap
	AgPzDmFh5n+Yylai2nrMOICIhRm6t7A6RHYkIRlJOxF0BfqqR60amuNw5bsWd0guc0yy6xHJgQLBe
	k0fvabVGsaUafYP5CdVIRAmIXkteW41kt7OqpB4ZIW9312oBPj8LIAO3OPYB8wwyOZV/dpGlBMRrW
	UsAzbCXM/pIN0w4Asl7TuP5hRHREFFi824jcoXWFu+bAcQfG45przGzL4yCkHJwIzjoiXpY+5LFaR
	v82alTZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb9AB-00000004MFf-1Saf;
	Sat, 17 Feb 2024 01:06:43 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb99j-00000004Lr3-3PCn
	for wireless-regdb@lists.infradead.org;
	Sat, 17 Feb 2024 01:06:17 +0000
Received: by mail-ua1-x930.google.com with SMTP id a1e0cc1a2514c-7d2a78c49d1so1329587241.0
        for <wireless-regdb@lists.infradead.org>; Fri, 16 Feb 2024 17:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1708131974; x=1708736774; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GfkSvBHz/Z/KjshkJ6+Vt1cr+ClUcSDaN9mCuw1bF1U=;
        b=ELb8rckSAGZr+l1+wR6oaz1ls8XM38VbHJNXF3JcOuT1ym8zSVtglv8syoIOWBEmKA
         zqFMe9Th+gf25tUjA/LsI8MAeNc3Zon8px0tLgAC8FNucPR91xuF6K2+dDfgXXO5xBhZ
         loOPZHCFE9ca7tb7MtfH8Og5rElMOtStg0tn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708131974; x=1708736774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GfkSvBHz/Z/KjshkJ6+Vt1cr+ClUcSDaN9mCuw1bF1U=;
        b=fCeoSnwmoOGfKKkDU9+gi998taUbL8bfxN9Ht8SG8VUfl8FaXbsmxOEnDcpJghHYKc
         YbKiS6HlU1MX7/ildGa16ICsarvfZrZJpkm6dsq1id3LFnesICGDd537D9vl7w/a5A7V
         IcuUIKcpH6pOZ5u/hRxkiOFTGrFLkhVeL3+ntzeQAgCZzjoFaTcnqougAL0itRl/m6So
         iaZWBm+CwnxSFhR+YJ4KuZki5yisIFDBUbB7TxorNE5tDvFEhf4QTsojcETyuXpxSmCa
         Mqk7yHaWPzHCV61mzfvugkiKXPTL/Az2luXJNhDB9J+wHTzzplsf5mIat8TIO2UJrehJ
         x9uw==
X-Forwarded-Encrypted: i=1; AJvYcCVDbJf/++lwN61mlR7epygNWnVuBAlg+Yg0Wi3hPZCwV9TiX/QmlH6wSMVrkTtgpcANGe6ePyxTzyWnUwQBDpwVPMqph5/PRh2WrfttyhAcfyBZ
X-Gm-Message-State: AOJu0Yx6BUIrrhS6HJVOmuBmw7x5NmP0jA8w1fuOkFDtDyUbyv+Vdt0Z
	YQ0Kto3dsoNHpqY1y/2a8NddL5yqrcqA9lmToYjvHfoaujFI8goHaemuw3pFWI8nwV7VKqpuuo0
	QWNq4of5yt1wrjCS1R54BfZrYcirfEBOy544d
X-Google-Smtp-Source: AGHT+IFdCcYvP8lOwtSY3GcXSP0Gmh5njRyJl5vQwbfw5JqWP4LzL+NMUTerRS3Z9tgWF9EheTY48pQLW2aKXq6W4b0=
X-Received: by 2002:a67:f74b:0:b0:46d:4811:422b with SMTP id
 w11-20020a67f74b000000b0046d4811422bmr8875177vso.8.1708131973914; Fri, 16 Feb
 2024 17:06:13 -0800 (PST)
MIME-Version: 1.0
References: <20240112040217.24356-1-me@ndoo.sg> <170528847205.770636.8573617454652565233.b4-ty@kernel.org>
In-Reply-To: <170528847205.770636.8573617454652565233.b4-ty@kernel.org>
From: Andrew Yong <me@ndoo.sg>
Date: Sat, 17 Feb 2024 09:05:57 +0800
Message-ID: <CA+yTfBAR9jtapt0NfRM7iBasg7eEg2ez6=+oBvcgZpTrCnVC7g@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update and disable 5470-5730MHz band
 according to TPC requirement for Singapore (SG)
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_170615_908702_EACC79C9 
X-CRM114-Status: GOOD (  11.74  )
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

Good day, Chen-Yu,

I've received confirmation from the authority (IMDA Singapore) that
the original interpretation, 3 dBm EIRP reduction may be used in lieu
of TPC support, is allowed.

I'm not sure the right process to cite these communications to the
mailing list; I'll do the following, hopefully it makes sense:

1. I'll send on this thread, but without CC, the relevant emails from
the authority for your review
2. I'll send a separate PR reverting the change with just the relevant
text from the emails from the authority quoted, citing this email on
the mailing list

Cheers,
Andrew

On Mon, Jan 15, 2024 at 11:14=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wro=
te:
>
>
> On Fri, 12 Jan 2024 12:02:17 +0800, Andrew Yong wrote:
> >   - Use original regulation Tx power of 1000mW with TPC for 5470-5730MH=
z band instead of -3dBm offset without TPC
> >   - Comment out 5470 - 5730 band to disable it since TPC is not impleme=
nted
> >
> >
>
> Applied, thanks!
>
> [1/1] wireless-regdb: Update and disable 5470-5730MHz band according to T=
PC requirement for Singapore (SG)
>       commit: d695bf21d1cdf02e64924f452c242f7588469609
>
> Best regards,
> --
> Chen-Yu Tsai <wens@kernel.org>
>

