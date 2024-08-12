Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C5EEC52D7C
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 13:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lNduTJ9CC8fqnmYU1wGF3gGCKQbWhPEO76TH3JWDKVQ=; b=SjFUC4K5sUc02lvu3wFiNL00A9
	aETs9jLIqH5nb9AZIckzFoytSDxARlFrRAoNYcaFwsFGIBZPspUdNtDbcvYUElUjel6a6FvQDgCwx
	iSlh0wkvaRT+fOnDZ5w5iqzTHlOhjlS7qkrvL1o0YRHu9aK7Anz5rYai7RcbM6aJWCKElYwl+Rnuc
	kpiDZuIqWwGLp8L3JzmaQq/H6vonNuI/Zia/RCdYTXU/9UcnQR6HoPcxQGs6xZ9IjAOitcLodID6x
	fHXgwjuqeFHIzdnCvvh8adoJr6NSdSzVajIyGQ1+CN+10t5CWA6ZBV5sAdNdyzhbSNwUmSql1hGJf
	gy+E6R1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdVZ1-00000000W5s-0gC2;
	Mon, 12 Aug 2024 13:58:23 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdVYM-00000000Vvt-1PCZ
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 13:57:44 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-691bb56eb65so41035307b3.0
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 06:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=up.edu.ph; s=up.edu.ph; t=1723471061; x=1724075861; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lNduTJ9CC8fqnmYU1wGF3gGCKQbWhPEO76TH3JWDKVQ=;
        b=Ldd76/0kEZSTDb/qntQBypgbXYAT+Qkp8laSiyfpedgRkTp0WUAOU9v0ZQdouAbxq0
         T/2ekRfAXIRuBi8byIABlrdgDpYRwukknVAmqjT7PLQaUB8Q9tIJAX+XPjfI1WNN0w3B
         Nwiq97p9sMLDkaPW1i0cS07rcuu4+GfFyrektyf2XZvKq9YzWjExLdaKpOJD6ybOi7/9
         y5rNROGCYzCw3vjOn5Jc1AG8/nYQ1fT1Cr4N4tm7/Tug0fhSWkW5ZAdBbRbbMuqeeQBN
         rwMEs9aLqeE55h+qIbB6qwP6hQUM2AAd4t6lWoQpHtdeQDTZXI5H/JZOViimNiiY/Cfz
         FcKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723471061; x=1724075861;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lNduTJ9CC8fqnmYU1wGF3gGCKQbWhPEO76TH3JWDKVQ=;
        b=dtWANX+jNO/LiH3hfcTiNzNLo9Cc3mfKh5qxFlMOtahpMvTUmA6+/5OTzMSe23Ogsr
         rio+7N/z7z/qgnr1W9s39CLiZ+MY2eJHizvXoi4jUDnxkQfnjENgCefb9AVpxhVP+MaK
         buen4UPIe5kVLyD8SKqxRJcZLkAGFy4guAfgOZR8SNOjqq5GkROrdS4VZykEUMy/TmuZ
         dZgxeP3CyevT07OAyj2rfSX733prGyolsosOx8YU7Vn8VXTx1gp8H2ZNhDrHXqiVFjiY
         XBfZ4jcIREch1gWY92pIZqBEoBsLXT4FH0us5AJ8c+n/oIabmgse9jq5ERpLlRN1YM2s
         uO6w==
X-Gm-Message-State: AOJu0YxF/B9RiNrNVbztZzpxbJCempqASfiSZnIFLstv+5uSc1e84mHr
	VVItPn2kvZ3H6SFEYUbAxlp/yUos5/IdVo98RgEtClvDw8Pu5i3rByP6N2Gg5+q30X+ecSrxrNB
	8G/b8SB15bQnmDoWgIlAMjh3g6FSH4FfQvWafKrLCRsYuKXRIWP8l0A==
X-Google-Smtp-Source: AGHT+IEv3zIN1Mx8QyftqMoo0Zm5me5odUUYdAG++ZeXRvY7+7Rr3p2dsai4Pwgl9pO0x2uhCE+xiqhSJ6n+607i8c0=
X-Received: by 2002:a05:690c:480d:b0:69d:8337:e54f with SMTP id
 00721157ae682-6a975f91de4mr4687277b3.39.1723471060664; Mon, 12 Aug 2024
 06:57:40 -0700 (PDT)
MIME-Version: 1.0
From: Gacel Perfinian <gcperfinian@up.edu.ph>
Date: Mon, 12 Aug 2024 21:57:27 +0800
Message-ID: <CAJ5pLOZ-LfP8_ZNeh63_C8LNcx9kwK97AAa6gYQSQ+ge21Qydw@mail.gmail.com>
Subject: wireless-regdb: Discussion of MGWS/60GHz rules for Philippines (PH)
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_065742_417060_48F2C9E1 
X-CRM114-Status: UNSURE (   5.40  )
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

Hello,

I have noticed that in reviewing the database, the maximum power for
MGWS (60GHz) is set to 24 dBm. The relevant regulation [1] has only
authorized to accept MGWS devices, however it never stated what maximum
power should MGWS devices have, nor the explanatory document [2] states
the power requirements. Looking at the latest revisions [3], it seems
that it was never specified, at least for HIPERLAN/RLAN devices.

The entry was committed as part of a rules cleanup (9dc0800cdd7a) [4],
but the conversations [5][6] did not state where the 24 dBm value was
derived from.

Gacel Perfinian

[1] https://ntc.gov.ph/wp-content/uploads/2016/MC/MC-01-01-2016.pdf
[2] https://ntc.gov.ph/wp-content/uploads/2016/MC/Explanatory-MC-No-01-01-2016.pdf
[3] https://ntc.gov.ph/wp-content/uploads/2024/MEMORANDUM%20CIRCULAR/NTC%20MC%20No.%20002-07-2024.pdf
[4] https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git/commit/?id=9dc0800cdd7aeeae273b983973a1749f73008291
[5] https://lists.infradead.org/pipermail/wireless-regdb/2022-December/001401.html
[6] https://lists.infradead.org/pipermail/wireless-regdb/2023-June/001440.html

