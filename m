Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E345CD4F52
	for <wireless-regdb@archiver.kernel.org>; Mon, 18 May 2026 09:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FNpE3lYGeoeKlcj71cF5XkhLwAuKB/sgpWjTF2ZBW6c=; b=tJ+/dkWLqImW7MlNi6heExwaZz
	4BQ4n+LHJ2DRUc6nHeDCyL8TNuv6iE+ettRVFQO0sNlReZumqjxXDlv1a7oteVJAWY2ZRM4ynLkcc
	H6840AYgm1TJaidQFOdrxbx7KWQUuyGhTnE0oRwgZUUEDGeDuVoNYQ7wYZ7tAPGgTcqHVIGhiQfzk
	WjqA9uSj/GE8K7mHzZyVsO3Fh2A+wBo7mE4Z4mY7H31AlAOJWkJW7/nwm+KIjY06hYDhwG2Pa/xGT
	uR5ICEVlZVO+tJU0yXyLOfroOdszhHnEWHyykiE1xjaxEAioF2wkfpdQKKchyIS/bSU4tNX5v2gkU
	j+kuANHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtqL-0000000EvPg-1B0F;
	Mon, 18 May 2026 09:00:57 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtqI-0000000EvON-0r0F
	for wireless-regdb@lists.infradead.org;
	Mon, 18 May 2026 09:00:55 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-676a89de629so3435395a12.1
        for <wireless-regdb@lists.infradead.org>; Mon, 18 May 2026 02:00:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779094852; cv=none;
        d=google.com; s=arc-20240605;
        b=QB2SqPWxjUI8yA3XVz3dSkvAHgfFE1pwkDirDlUPNWFXr+WADFFLzJKDalW8d8lqef
         Ge7ZZVi+q9uHEQWoLCUOtvxNK6pzxlhte1WjsoFGgsGoFnvXaQ5axCmnMm2bAkgs5cXJ
         guw+qh9LynQGup7XA3/XPkPEL8btG+jORes1axtg/vJRAuPyPSRAVsAkQpxYR5cGbvTu
         d85y/alQpHe+3AYrt6hIxokq/f5yPX+7u9MqH3/z/kkai5CfjQFzwSP5isaFQLNdwYq0
         Z1hmW60LG2zWHqvBKBgskLhu8yA8lovbXnmMnBRiS2JOcl4cKIeHePpV/nDcWKfYSOlS
         fVhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FNpE3lYGeoeKlcj71cF5XkhLwAuKB/sgpWjTF2ZBW6c=;
        fh=LJtrT/mIQHgqOeHGWHnKLDKVH3stCqolxvkfFTzWBKQ=;
        b=Tug+/zQDeZDMZeLKf0Pfogztpmd9HW93xxgzyZg6yCmWxxN5LyDaARHYce3GOCXK6W
         l+xNZxFMntTPwyNl7eT2wTHz7EeCCaX5TaEjJrWm5FaTsMO8xpSlwKn14ER6gjJ/2cqY
         hpGS/+ksJkzBq/4XTNdvgKM1//uUliBIqZHXra73XULTFfa60K3Jx0iAUwtJqNd577zF
         lVVvqXLok0bIb5y8Pbybp3B658s26Y4G8SOop0eTG/skuHhtnww6IPJPpAhKwaZ+ZDsO
         ETjrZDX5loemWTblVskCHTuV+gfmaNzFYgPEOONMLSZLkMuKLpmEisOVBMbmsKBQ6VIM
         +1pQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779094852; x=1779699652; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FNpE3lYGeoeKlcj71cF5XkhLwAuKB/sgpWjTF2ZBW6c=;
        b=bJngJh78VET0DEbog0bM9yJKeOCDYjdfvqU5ctU2abfikqpsrS6wqmLX5fJSuVBDF5
         bgOrE1JE+ju9GDi19y1t1cf6V/y/nfB6bNTxz0W4O/rU8D77mLjjCqMnKnoaSDKYa6Ff
         Kl7vI8v99JatjGZUGqvB7DRn+85uiTUh3jJz/0/FZvQv1nf/C0Y/d+DUVFy/J5i+1cRQ
         ULVNHmMc4IlbKmnTru4+27EBBhoE81OySSjFa0d/QdFYbchXJuh9Ekx228UR8vlQ1TfD
         Tlub+vaqKjdKcvBU+gpqEnvYPL0xskpqox71lPBqiXW4CkW9/aDRTmJMWHG3N1I7LEvE
         9b2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779094852; x=1779699652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FNpE3lYGeoeKlcj71cF5XkhLwAuKB/sgpWjTF2ZBW6c=;
        b=IbKBqjdLwb9mej9izYUHLpNFRGmompZVeLPvqwirQiD3NJu5G+6fnqvTmsb9Lv1DyA
         bHxP6/wvbBoU4FRv+Nh0EoM0t00bCzVxoHWQJtsA4ZExAR0FUmicHQrgrbwNFSoe3mv7
         mkbxBbJsN+S26GxMugFo1ZQ8psL5VLR7F0rSD33L3ar0QAWPydPmD4cq+yOASq9TPLmG
         lDUtdMrzg7pZw4gxg7mGty3eHo7EpF+jTTDHswEoTmyysZ5X+8GsYFN/EtoxOW4rzyz1
         sVCdcCP0uiWdqg4PHI2goreeuYYHejpQaRz8s7ziZdKxeMjjb6IDI654ugcniQRYascv
         V8Ag==
X-Forwarded-Encrypted: i=1; AFNElJ9bcVRtVmb4XLsxhzJnOpd3OlBTAgOuUEKw8R5wRUOEBl7eyMIoBFm/yKACoRR9R8HRea2KxoHHF/Z9KEvtBw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5Rnz3RW7JZqGxP4371bdDQ4KVXLtga/OzgC/hcTEDFDaskBfB
	s0St4yDjAtqF08vmFn9o1uq/FJi0FBAGHiRlagMuZnfHlzfg/Ar6X//ScdB4A+ux9fOwcNlUjDV
	gejnVpMn64rO2Y3IeKTSz6eB+Kc3a4Lc=
X-Gm-Gg: Acq92OE7BZihcrLLfu2NZaqldBDa+r0Vn85a/awZl3nBN+tq3tavxj0WAkhHss45yht
	Rh3y9W2TRXzKAO3uBDMuKEqV763+mIkSfHx4qwJwKFclQxdGv+ipAa9jTjaPAwZit3EplyOSQs6
	5dPQYv5jXidrEgsd9lJSyN+lWj31iB89U8SfZ4Hx4KaLXFPvvQX8t4CuLkfyiCnLd929NBoFBdh
	g7269OsNYPTkHjENWyF/IXX1AmKBk32BnOhlmgHXA9pBbpPqBOpY8IpLa/ScPLBnSklaLI7lMha
	h1Tzb6/W
X-Received: by 2002:a05:6402:11d2:b0:673:b696:8823 with SMTP id
 4fb4d7f45d1cf-683bd28aadcmr6943638a12.15.1779094852093; Mon, 18 May 2026
 02:00:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrRpu=-ngPpe2MsmWz0gQq1VVxbr9L0+jUos3o62wPUY-wXqQ@mail.gmail.com>
 <20260518074743.179402-1-maashif011@gmail.com>
In-Reply-To: <20260518074743.179402-1-maashif011@gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Mon, 18 May 2026 17:00:39 +0800
X-Gm-Features: AVHnY4KXHtzi7zm3bUuHzFr8ihDjpZR2CNoduByYfz8_mPayjL-Q9goLSPeL9dQ
Message-ID: <CAHrRpumxeADuUXs4M+ZQstH9rp359xH3PL3X_yb2ojhRhrM-_w@mail.gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
To: Mohamed Aashif <maashif011@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_020054_295386_931A84C2 
X-CRM114-Status: UNSURE (   7.06  )
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

Mohamed Aashif <maashif011@gmail.com> wrote=EF=BC=9A
>
> Update Sri Lanka regulatory domain based on the RTTE Type Approval
> Rules 2020 from the Telecommunications Regulatory Commission of
> Sri Lanka (TRC).
>
> Source: https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-Engli=
sh.pdf
>
> Key changes:
> - Change DFS region from FCC to ETSI (document references ETSI
>   standards EN 300 328 and EN 301 893 as the applicable radio
>   interface standards)
> - 2.4 GHz: expand to 2400-2483.5 MHz at 23 dBm
> - 5150-5250 MHz: 23 dBm
> - 5250-5350 MHz: 20 dBm with DFS (no TPC, 3 dB reduction per EN 301 893)
> - 5470-5725 MHz: 27 dBm with DFS (no TPC, per EN 301 893)
> - 5725-5875 MHz: 24 dBm with DFS (per ETSI EN 302 502)
>
> Note: The TRC gazette conflicts internally by allowing 30 dBm for
> 5725-5875 MHz while citing EN 301 893 (which doesn't cover this band).
> Lacking TRC clarification, we conservatively default to the ETSI
> EN 302 502 limits (24 dBm).
>
> Signed-off-by: Mohamed Aashif <maashif011@gmail.com>

Reviewed-by: Ping-Ke Shih <pkshih@realtek.com>

