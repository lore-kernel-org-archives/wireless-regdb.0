Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 077D7C4829C
	for <wireless-regdb@archiver.kernel.org>; Wed,  7 Feb 2024 05:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xxf9BZ05eugzo3w+caVoORK19gvB+NfmrX9pjihd4/w=; b=taRkuM/6oaSz4nn06Mui2Sc0Jo
	2Mgux/w6C9uKjj5oLPuPRVe9/eSI1eqJ2QEh7ZH69WmftQ06UKzMVm/FtipJDe8qQVoK6och4TU8q
	wKJItDjxk2+4vl6hv3awu/FyM5bJDXMJiZnqbQrN/lgK3WzCpHOesg9F8+oSR6jJ1rKqzgpVBYHP5
	AOTakBC3+I6NBY47vt6nvy7yDEyFmNwcwtZq9Wltcg0G0HMaH2+1zeNoWaQy7vQyTRNJVw3rpLpwL
	dqbm9WK8jK8RkqFicDSwrpIEHT/L5pU0xY58fn0t5cZWxCSu0wthYlDMC1W5S+/zxObYD1x2jNkFN
	TMV84HJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXarx-00000009m5t-1KYh;
	Wed, 07 Feb 2024 05:53:13 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXTv7-000000095nR-2bZk
	for wireless-regdb@lists.infradead.org;
	Tue, 06 Feb 2024 22:28:03 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40f033c2e30so55232365e9.0
        for <wireless-regdb@lists.infradead.org>; Tue, 06 Feb 2024 14:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707258479; x=1707863279; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxf9BZ05eugzo3w+caVoORK19gvB+NfmrX9pjihd4/w=;
        b=cwJ9uY+ZghVvkYBx2BkagEZgiLHQ5yIi0yeiUfgCmJqNVZ7za7VaP1igLL3tp2/ZKK
         3PwXgWE25ri2GIq92IHrizImwkbM3zHkb46BZ2UI55oUJ7OeJYFRRBIkRoGy6YKMgabk
         bPipdJwWyslKkNRuWytTC++uICqBJU6L+TBGbgM06IzpLtQaMSb8bEcyV7QH8WjhZmbo
         FUi0fR1jAxuO9/GkF7beK5OP9X0a48gatn1SnWTUjZ0eLUzAhODdZ5iMCUmAPF/PKHb7
         na6/mmMSSh42ri47SsUCLNGhSbEVaaOE+6VGfd+KtU/376L2DfsV94ZJ5bMgaRrChq5s
         NjSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707258479; x=1707863279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xxf9BZ05eugzo3w+caVoORK19gvB+NfmrX9pjihd4/w=;
        b=iiZnRa2dl/6fS7hxiWKstsynVDk8Jxd5AZUcKT0m7wXnlQ5jk9WM5dsUM3J9lIuq5q
         AMmmekeV2AFEH8oL5TfIFlwhIpHailwQmSHoXJYsca1osxEdlGSJavSQOpPcQUgWHn/g
         4CBR9i8J0ITzHihGoh4/T+Qr8W9Fuy8OfpFed1+28wKCTYH41wv5su02iGa5nEwesUF5
         uMv8jmEvrJtP61GKWHY1UBqB+0B0XqNpeKvaR+Onowf0zhAvDtBQBaeqM54EclBOcnbr
         jyNb8asYrN8VGf5bQCP0cKGif5LFY85F6WLTWivOTTMW7D2+n7qRcFRJDi/GOsJlSvLf
         x6Ag==
X-Gm-Message-State: AOJu0Yz9Ub/dPKlnlfdhDz71MonnvDwVT5EPvpFJhfNiFMXaXoWUA0Mb
	ZYmx/kYiWcolF3ITsR39oYOcxvBT9I3o/C6C4r+Miz4TkJh4pYDA
X-Google-Smtp-Source: AGHT+IH3FPwE6qZI4lePimpdihTCu2+4M+goAsWCLr1gg5WBXKJQIG5AopZ+Ybd6K0rzvVEmXu2YjA==
X-Received: by 2002:a05:600c:1e1a:b0:40f:f069:8d13 with SMTP id ay26-20020a05600c1e1a00b0040ff0698d13mr1551786wmb.9.1707258478726;
        Tue, 06 Feb 2024 14:27:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXLWt2bHc3pItp0Kj7IueMD5EQlloPokpWmQMwW1zM+SjrL5Y9jYlVFOyeNqvWMRj7oTUx0vZhEFXshjHYXibuMFeAhUW/MF4A4YufmckIKB47o0ufoKm4ViDNtgCxrd01k112UZdUAMQcpB9LkAWqFnA2FWCpI40Q=
Received: from nz.home ([2a00:23c8:a613:101:d819:14c3:eb30:3865])
        by smtp.gmail.com with ESMTPSA id bi24-20020a05600c3d9800b0040fed19162bsm2247380wmb.28.2024.02.06.14.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 14:27:58 -0800 (PST)
Date: Tue, 6 Feb 2024 22:27:57 +0000
From: Sergei Trofimovich <slyich@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org,
 Chen-Yu Tsai <wens@kernel.org>, Seth Forshee <sforshee@kernel.org>
Subject: Re: wireless-regdb key change broke crda tests after 37dcea0e6e5
Message-ID: <20240206222757.238a24f8@nz.home>
In-Reply-To: <455bafff0d609eb182ba30a5fbf319888e0e961d.camel@sipsolutions.net>
References: <ZcIXGjzrZrXPCBcp@nz.home>
	<455bafff0d609eb182ba30a5fbf319888e0e961d.camel@sipsolutions.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_142801_707320_08A4D882 
X-CRM114-Status: GOOD (  13.60  )
X-Mailman-Approved-At: Tue, 06 Feb 2024 21:53:11 -0800
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

On Tue, 06 Feb 2024 12:47:35 +0100
Johannes Berg <johannes@sipsolutions.net> wrote:

> Hi,
> 
> > "wireless-regdb: Update keys and maintainer information".
> > 
> > Both `git` `master` version of `crda` and `wireless-regdb` still fail
> > `crda`'s `make verify`.
> > 
> > Should `crda` key the key update as well?  
> 
> Maybe?
> 
> But perhaps the real question is if you should still be shipping crda?
> It was last needed for kernel 4.15, and even the newest stable kernel
> based on or before it (4.14) is now EOL ...
> 
> After that, we had the regdb loaded like a firmware file including the
> signatures, so the whole crda isn't needed any more.

Great point! `nixpkgs` uses `crda` only as a `hostapd` depend and
looking at modern `hostapd` it does not use it at all. I'll spend some
time removing it downstream. Thank you!

-- 

  Sergei

