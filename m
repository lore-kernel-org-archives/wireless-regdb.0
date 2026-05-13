Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72FA1CD37B6
	for <wireless-regdb@archiver.kernel.org>; Wed, 13 May 2026 05:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xPYfQTaQpsO8YGeU0DeTS1sOK2i6ZmZ51fA1r6cE+5I=; b=ne8kM4qsnOO8nU+NrHuHX/4YYq
	y2IgqAwCc5IbpW5T7pn+MpfQzSXrECGurGKP472dSLgTbgdK2EH9BXGVZozX6eM1YZH0BY8RHjndZ
	TCx75QUwo2EckPSRbgQjfK2hb8CDDhtuGt3TXjGREw2QrW35zv77zwaA///FJ90MUoG+oH+IOrhYv
	pbkZwh+SEkc3D74C1wxOqorB9hfYKzQ/NxDuYjrVwLPQB4tcArGcop2PiFVz8BjBsbs3x3zX0Ng0Y
	FWxWcBVcuR3oY1OrRZUvbt3CVkf/RxNtuS5cxXJWKU1uM0tIORFtAtNSsLMnTd/hkNJFM+5XTz/uo
	Fr+mxH7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN2c5-00000001OWO-1WU7;
	Wed, 13 May 2026 05:58:33 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN2c0-00000001OUy-1U5l
	for wireless-regdb@lists.infradead.org;
	Wed, 13 May 2026 05:58:31 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-682714e8f9eso842870a12.0
        for <wireless-regdb@lists.infradead.org>; Tue, 12 May 2026 22:58:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778651903; cv=none;
        d=google.com; s=arc-20240605;
        b=GLpk+gIzoUZA5CGlK8B5H4uMjrsXRiLo/wQ5gtL4pHujZMi2LB8U6hSPaHgN+O9u7E
         VbRQTf42hC3tLR7ADSGzJcLF7yOXD6Ij6VEQeNxzsOwf+BO9a/3XlPHqLPkmgzJaAyFQ
         qH5EP7i9LhJZ1IYL7uSvgR+1587LjvN+K4jWwqtmkgdCWBGiVfJu3Vfg2IsP7FCNcZKr
         oE96t+XDknpguhwjJLUF3lRaK9La2Djx9ofQKNeQ7RDZx9VeYNinXaQPMHp8beedEVoI
         TnTm5N1rBRBBPFKm72E2xXp5QzYV/f6MHR9TLRkKckf3oGjaJJbdZHro2icYdZqfeEwl
         9ZiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xPYfQTaQpsO8YGeU0DeTS1sOK2i6ZmZ51fA1r6cE+5I=;
        fh=Dgnk/V22dn20QkU4zS1J3+lksvozn7fstxj8xyFgTgw=;
        b=Oqp252nX/Ur+xI6/Tg8yzqOUlTJBpq8bJpQXORRVzz870kxslauHuQ/mlYIGysh3ld
         oxcGiv4ATSKYjrszQlndjkEkpaOSMfwxWBDJWcLoV25DWs0Tjf7VKY8SqjdwtcFcTiuy
         zpxwCDXtbLPvHbOAHixNio+c+N97w6hhZeZyHmk8C9XgzgznATGm2iJcTj3nbf7NQ0wX
         goExzjLg5Gsb0RA+97+AcDmxYn1QBhor5jNXc4/Fg5zwon91QJ/ueQpL3IETYc3SG1wZ
         urQnMC89ygHt3SbjxSAzAGsPmShaZyAhXKYRGcPJVcuIrvceB1OXLTWlCryQTBfn1zoc
         ohfQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778651903; x=1779256703; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xPYfQTaQpsO8YGeU0DeTS1sOK2i6ZmZ51fA1r6cE+5I=;
        b=AGAOUvaN86d6Z+suPLHLzZ6Es6N+VHjPXNZcbvDb8lUiuULxC1FkygOq643ls/JAOU
         nzGgGb/TsEYXUpalhRbHHDCphYxkyjqUMT7YMSWFlk9h7e/LKVMDYKXD8OKf7C8NykjC
         uw+SUyBDkGujHYnKil0L5OujlhGRYtqKYIpVIW0pcEL0TiekXFVuMMRLoRyKlQUDpe68
         U0EioWw62G2hBqkRqD3UyRs6GjRo5bg9H2wv1XayBe5+nDWcS9XzC26O//U5foYAjUS3
         B6ROugEbv5b7FsSz4RKV4WDLSiQDKLXF2Elo91q8Gb1nolTHvqSFWPSHsabOFRaoSSrj
         2QXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778651903; x=1779256703;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xPYfQTaQpsO8YGeU0DeTS1sOK2i6ZmZ51fA1r6cE+5I=;
        b=nvijNgo3R4M4TnyoC42TL43j1c7c0K/CTPgbTVRMpMGjKMfwjKbD91lQpMAVadK1LF
         tIZzA5a6BTd3+toGG2wEBBZuKLZmljdgeFTWcOmLBfJwQ8+Cy/LRDruxJLJSpgcZGQOB
         H68zTmeMKHzKUz5jq2aDtsWfR+PwF91t1zQiaiXIpcxPErmToARZ4GSMWedwdVb13ceY
         WI8i+MVgJDXtbg+xpt41zL8GVsVlRoWUOcXTb9CeCGT4yAPNWUW+x1gaNvX4xqFdocoD
         lC3xoA4jPg6NNRnyvga6A5SNMradrcL5FoAX/mYp8FAt/CB7kAaOQUnAninkRjDHQg0h
         5yDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8AQCxlOY/ZXzbi3xv01Wq9JLQEALrH+xQ0xELPE3cgJWjSR4kYCNXwXypRu8aITo+RzOuPJVc8OsOBUlorxQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxr/pFAnxQUHYC8h93lhFzt3rggW5B3XZ1uEOEUOzcVGOROQLA9
	1bYEQovOveAWDJc5I5pnpo3tafn/mtwtQkFH8TehaMa7yRcRROjRtkUWQII0pxAg0vLM4X/WXTN
	4xj+8fMbTy9llo+a8OhVzMKX+zQUaCm8=
X-Gm-Gg: Acq92OEpE8Df9ieTbrnzAShZSvTR+vmIwuLCjGDaib/TlgJwYvlSS4I8gOjQRIe5PzA
	fjbPPLWMqyXkYZSHnvXbl+gJ22AnYf0gov49us89JSOfJancpsu1UptPDc7Tl1+UL5Pyx6YO2te
	QIeB10bLsHLh37d+VLODvO19lrKFinHwrUvuurFRcq/uhCnUeesj9v5fR4fww6GT1SisCaYHIlD
	XLK3G+7MOeVc4IfiLM9rZpH6CbvB70jwMHFmDC3BVc04GvWPjvd29dNb4Fz+uv6J9k4ao/bFk47
	dyBUprk=
X-Received: by 2002:aa7:d1d2:0:b0:67b:7e67:7f5f with SMTP id
 4fb4d7f45d1cf-6823178d120mr617278a12.9.1778651902949; Tue, 12 May 2026
 22:58:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260506154129.64112-1-maashif011@gmail.com>
In-Reply-To: <20260506154129.64112-1-maashif011@gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Wed, 13 May 2026 13:58:11 +0800
X-Gm-Features: AVHnY4KILArNhlrjf5gI3ll7WyjNVRgluRg1OFx4rYpYI1uxvVwfCYKfxDtejqY
Message-ID: <CAHrRpu=Ku=cK2Hd8xzJr82iPkj4Jzp57ch9wEE1KsoCiExbhbA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
To: Mohamed Aashif <maashif011@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_225828_624781_497EFB73 
X-CRM114-Status: GOOD (  13.97  )
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

Mohamed Aashif <maashif011@gmail.com> wrote:
>
> Update Sri Lanka regulatory domain based on the RTTE Type Approval
> Rules 2020 from the Telecommunications Regulatory Commission of
> Sri Lanka (TRC).
>
> Source: https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-English.pdf
>
> Key changes:
> - Change DFS region from FCC to ETSI (document references ETSI
>   standards EN 300 328 and EN 301 893 as the applicable radio
>   interface standards)
> - 2.4 GHz: expand to 2400-2483.5 MHz at 200 mW (was 2402-2482 at 20 dBm)
> - 5150-5350 MHz: 200 mW with DFS

TPC is not supported, so 5250-5350 should be 20dBm (100mW) as description of
ESTI EN 301 893. Since we can extend adjacent channels, add AUTO-BW attribute
to them.

> - 5470-5725 MHz: 1000 mW with DFS

By source, 1000mW is only for outdoor application. Should be 500mW.
Then, it also satisfies the limit 27 dBm defined by ESTI EN 301 893 without TPC.

> - 5725-5875 MHz: 1000 mW with DFS

I think the range should be reference to ETSI EN 302 502, which EIRP level to a
level not exceeding 24 dBm for ChS = 20 MHz and 21 dBm for ChS = 10 MHz.
Then, this rule should be 24 dBm.

However the source points to standard EN 301 893 (wrongly?).

>
> Signed-off-by: Mohamed Aashif <maashif011@gmail.com>
> ---
>  db.txt | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index fdc2c13..d265176 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1058,12 +1058,14 @@ country LI: DFS-ETSI
>         # 60 GHz band channels 1-4 (ETSI EN 302 567)
>         (57000 - 66000 @ 2160), (40)
>
> -country LK: DFS-FCC
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 20), (17)
> -       (5250 - 5330 @ 20), (24), DFS
> -       (5490 - 5730 @ 20), (24), DFS
> -       (5735 - 5835 @ 20), (30)
> +# Source:
> +# https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-English.pdf
> +# Sri Lanka RTTE Type Approval Rules 2020, Table 6 - Wideband Data Transmission
> +country LK: DFS-ETSI
> +       (2400 - 2483.5 @ 40), (200 mW)
> +       (5150 - 5350 @ 160), (200 mW), DFS
> +       (5470 - 5725 @ 160), (1000 mW), DFS
> +       (5725 - 5875 @ 80), (1000 mW), DFS
>
>  # Source:
>  # http://lca.org.ls/images/documents/lesotho_national_frequency_allocation_plan.pdf
> --
> 2.54.0
>
>

