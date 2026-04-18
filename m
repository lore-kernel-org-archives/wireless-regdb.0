Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47AB6F99C8E
	for <wireless-regdb@archiver.kernel.org>; Sat, 18 Apr 2026 20:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DYfz71So192CtDWsRXP572ejQwzAsIuGlbdbkOsubxg=; b=XnXK5yluFbDQ5yLbCZtTkjwHNb
	UiPKD7dvQxzHE3QsE8HkFy9iOS/Ozk/zSKD67jIyha3aMNMsCvSPuPnlV1L3fhl8zHSsOTf5hsK1K
	mkuUIsJn94n8VDa7DBavXciQG/56+bgICWbubMqM4wpq29xpaKBwH4fY6deIY48UYfJtk1VrPofpv
	h8BXLedDB71Dvd6Ue+7N11UhCJ7C+j2GnzGx2KofFwk65BYjR5eX9ta5j/7VNRZzXTaDnuiOvg72i
	VLczifZwgWqYIQ17KQEH0mQTIHr1bGI4E52T6IxJ7MlFJSdW47QuakuWEgSDi8I4NYbGe+66wRUim
	XUULcGag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEC6m-00000005CLQ-41qV;
	Sat, 18 Apr 2026 20:17:40 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEC6k-00000005CKu-2wzN
	for wireless-regdb@lists.infradead.org;
	Sat, 18 Apr 2026 20:17:39 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-43d7e23defbso1116870f8f.0
        for <wireless-regdb@lists.infradead.org>; Sat, 18 Apr 2026 13:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776543457; x=1777148257; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DYfz71So192CtDWsRXP572ejQwzAsIuGlbdbkOsubxg=;
        b=BclUOJEVhQIr32invq4N2jSIP6Sc0WqaMlKself/sqQkLE9zUNvFSd1nDl804rRHSg
         Lwv8aEwqGqAuC0jAG0rdMVNGOXZ1wDHpA69amTpUfBsBkLCGeuw4M/cdIwPLmeeJgKmF
         cZKtnk7e1YMGGlcGJZYOO1TPu90rtuhhxKfZdeRLo/S/8WuzvxZ1gIRolnkLOHunVklu
         CUJ/Qy0Z0Ib/DL/mDdhBVfkqjaz8lhgfPX/biyaMVCiq5tcF6KZyChDfFIEbrxj86WuT
         V2SZxuIHTaQ3mYpXUUzq4yMrkEPBllF3aa/+Ncsv6VxHdfMqbmiFUuR1N9TomLisPuuC
         dOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776543457; x=1777148257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DYfz71So192CtDWsRXP572ejQwzAsIuGlbdbkOsubxg=;
        b=rx9HTJcU09pmq8wVIFvi57BgbW/ZA7BhesMXchnHcrB0JSYDD4Hwy6Qj/migk06m92
         gnwbXTIjGku0ULj+iovakmtBkWwSxCURw3bzxX5xOlcj6SlLIXqcIv8Z2zIgSG3HbEbh
         /trgpbpN+QMqpMqwygaljGCEXXoMFe61JMnKLfg9vG0FlaZJaKGvCqyHanA8CC3wHGg/
         AFeP7CpadxaWo+FiqEtf2cTPwY53cg0bfQQDd4+lb9lFPQlmvWJLFFuA/nINAQnBCHQ5
         zXSlhqlui7V8rAqQJGNLATgdx8zQI+be5hrlE2UM+yAF2L+HG275NkCpQdgIEqBQVkW8
         fjog==
X-Gm-Message-State: AOJu0YzXVbi8hkSWi+PJXoEALL4QRtrgpDwyeYzIv5+kFu99NZtGFs9y
	rzdKQyRU/igMEUFS+84UXMsWtGpKTjwQwNSbfcybIDE79iORlVoomUEm
X-Gm-Gg: AeBDies2Kx73LWqC16d0Oy8tJKIznI0qN6cRpnrF5e1v78nP71GFfKYaYl/u8pPyjP/
	yQ77NujK29Kj32Lr7pUsQmhpZzNowS6mr4+r4L52gh6/3gl9ZRHkMg5u7GPUHiP2yBQ4XIwc5Vp
	xbVSl3mqVZmY/4vJ5H4c/B7ufGqykMrfRSSX2kBmYLgvztGHz1GNcL1OT2UJEWOAo/puVRDfRbV
	UbSPRi7/NbFpZ864Hymuws56UwJq5a/R68B0VhfhJoQlNfyursmPe/SAOLrRQb5QaaYqOVSNiAx
	NAyW3tL0YrOKDjZOkGNU1FolUnVcSyJV5wlH/SusWJYYXX3ZaSlajLYvNzi3g6w83SSuwvu+Ob4
	mXOCoeMaZ8xsEIk1GZriZbqSfBjq46Yzhbyv18LLUy3nScBPnKFZqrcuBCYTtwQa0l30k1WKAXl
	uyQLsb0VEKLV1pZuRs4IkrUMl4YajjFqTO19UET3lHdh9L5fghko5x/ldm8G3J
X-Received: by 2002:a5d:5d0b:0:b0:43d:1c4a:37c with SMTP id ffacd0b85a97d-43fe3db3c6dmr11579488f8f.4.1776543456581;
        Sat, 18 Apr 2026 13:17:36 -0700 (PDT)
Received: from localhost ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4cc07bbsm16482405f8f.11.2026.04.18.13.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2026 13:17:36 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org,
	vkosikhin@gmail.com
Subject: Re: [PATCH 3/5] wireless-regdb: Fix 6 GHz LPI power for Russia (RU)
Date: Sat, 18 Apr 2026 22:17:33 +0200
Message-ID: <20260417070000.ru-v2-plan@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <CAGb2v64R7SCed2FXgL-6w0Qm65Wsvjp-rCr-YHtxQjHWQq2G+Q@mail.gmail.com>
References: <20260411222155.299441-4-loukot@gmail.com> <CAGb2v67DTq4tRgaPqG3WU6d+6mHdxdhcCvdX1QKd5ByKoF+=Xg@mail.gmail.com> <20260417060000.ru-analysis@gmail.com> <CAGb2v64R7SCed2FXgL-6w0Qm65Wsvjp-rCr-YHtxQjHWQq2G+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260418_131738_754016_122F6876 
X-CRM114-Status: UNSURE (   8.98  )
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

On Thu, 16 Apr 2026 at 16:27, Chen-Yu Tsai <wens@kernel.org> wrote:
> The most restrictive one. Basically we cannot give the user device
> any chance of violating the limits (or any other restrictions).

Understood. Thank you for the clear guidance -- I will apply the same
principle in future audits.

> A full document (such as Valeriy's reply) in the commit log is
> probably too long. Please try to make it more concise. You can also
> provide a link to the other reply on lore.kernel.org to provide more
> context.

Noted. The v2 commit message is shorter and links to the analysis
thread instead of inlining sources.

Valeriy and I have coordinated off-list. He agrees with the
most-restrictive rule for 5150-5350 and is happy for me to send v2
now for the two unambiguous bands. He will follow up separately with
a source-URL update after the lawyer review he mentioned earlier.

v2 summary:
- 5150-5350 MHz: unchanged, stays at 100 mW
- 5650-5850 MHz: 100 mW -> 200 mW
- 5925-6425 MHz: 100 mW -> 200 mW
- References left unchanged in this patch (Valeriy's follow-up will
  replace the eleoscompliance.com/cntd.ru pointers with the SCRF
  primary documents)

v2 sent: https://lore.kernel.org/wireless-regdb/20260418201717.2152301-1-loukot@gmail.com/

Louis

