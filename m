Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B3CBF8D74B
	for <wireless-regdb@archiver.kernel.org>; Thu, 16 Apr 2026 14:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lM5NgkhPXvkg9j+IXbMQA4w6YCc63o6HG/3AHLRO0rw=; b=lWtoHkBe0s0jSlKGtEKdsJyfnr
	+FTYjMA3olMZ1trFV0QO2lmuk0ip6dy+kzJvoUMRRta2q4wainvHzlo3wjsQCguX0DOVIXGhRlg7X
	r/0mYFEvkXxRt5zUB+SJCJwW/EqPZSS3hCoHFDsjvMykPIIewckbYABI0xPBvFoQdP6WZkhhC1FcI
	fUu+4992DXwsNK9m+h4tPGkWPvpiu3K232/8TFCV3p7PjANHDSDOYYJ/j9lhRN59Gsi1gN1WweviL
	QYb51dnG39YB9xaolpfwE9YhwlCDxfpptK6nHLKEaBB8RT1sgSM0J1YkU8ssVlWV1+yzuQ2FwbdNk
	0HTnjvow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDNXi-00000002YRV-0MQy;
	Thu, 16 Apr 2026 14:18:06 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDNXf-00000002YRA-2AWw
	for wireless-regdb@lists.infradead.org;
	Thu, 16 Apr 2026 14:18:04 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-488b3f8fa2bso6935725e9.1
        for <wireless-regdb@lists.infradead.org>; Thu, 16 Apr 2026 07:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776349082; x=1776953882; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lM5NgkhPXvkg9j+IXbMQA4w6YCc63o6HG/3AHLRO0rw=;
        b=J8aFF/UI/7/1aN3GAPG6Tf9cgko4wfufC69DNqisVy99I6kfrBovDRS1w37HfA4ARB
         w6b4/uybteOx1Yl7L4+0ZU8et1WwUt8PWJyD3qCmB0kxu4hc64jeqPIiEfmxeZtTR7CL
         Q03oHx2VhJbFD1CrjrI5olX1qULgYIR0VIZcoC0T2KqoTcLr3px5FsiyNtipTWmqdlDw
         y8jysJGAH766ZHec5X6BYGd+c5YoqJaLVPys+KawNg5lER7Xhcn7tLCmrSA62fv8R0Tt
         6xMZ4Uy/Db6//6tdtwwcPiW565GONWjLHltGr25VA3AUog/DjMA66LoQOETYgBHM4k9E
         T+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776349082; x=1776953882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lM5NgkhPXvkg9j+IXbMQA4w6YCc63o6HG/3AHLRO0rw=;
        b=f0LW99StJK9/seI989fKFN8Vr/IX2ux3jpVd1OIxSQlu1ZXruZxQWNa+nOl8hb1jG1
         yiXcmSy97uhTm1dSe/YsM/J06lcXdOSr9qt0uitteV0tnsKG7W15mjRtybceDRLmC5qJ
         QehbdDzfBgSatOdf3kTW+9j1oojg4+3u6oV9+nLAYe6W2e2LsRMkU55AQnh7Ftcq2KQ2
         vqevUrqN99F9m3v1T6JUKuM3FFBX2RcGnKo9kcksNAlnRIrAxFu1u6QJ9BQUQX8RpS4u
         h/q9vrOxcEc8mryfNyRWfbUBxbOibSJQh6Wj4syHdpFhy1fVUMGPK42e8BP/K8iej6ou
         Yphw==
X-Gm-Message-State: AOJu0Ywn3f16/D0GeB4TYQsFiNytL4j6F8JTKJvNG9f1rckcw3bNdgJN
	VacLHMy8wuUJggmuKeiNhn+3VC+tj+bUgOR1B8A0WIgU5oalHFt8THiY
X-Gm-Gg: AeBDieufE66Y6/ku4TM55emBMAPtqtBwdAMgjqCbRyogH4Eknn94UhXVm6KIW+6MQLw
	iywDpWD+jYCp/McKnUlw3ZNChy5BMilfHdv8PYO1k2g8jqKOBpA9h7oiRIw59C6sjfHf6YqPQLP
	jcn28JzbC7LwIcpHmN/2g6fly38PB0YsP/4YBRgKRCCiXe7nLRyP7KQ7zec8TeuCsie+lPzVLkm
	1gQ3InBZwRoS6xttVHuXG38X+WRrp1KMipRCKMF0WW7+hYQbIDk1WOe1XYSIDEU5oY7fY5HDUPQ
	28Bse6nfIkFdGq916OWjLXkSlRY3zGv4XERn5iYgvik+fjTxUrvA4Qpz4JfsFuQFd82B7aUeoqr
	QSbniCJWhaZf3suZASTAHs1rKVccGY3Ts8vCbOH6fKnT2z/chATNS32Jk1TWaGi2L3hJD8N0IXc
	w5tSUJNbSAh0yQLPnOTWHPuL2tw1uBbkkf/caH0+CJ2Fh7IDERf6F5WFSAKA==
X-Received: by 2002:a05:600d:13:b0:485:3989:b3e4 with SMTP id 5b1f17b1804b1-488f47ce3fcmr37951635e9.6.1776349081454;
        Thu, 16 Apr 2026 07:18:01 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f5813954sm51737345e9.3.2026.04.16.07.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 07:18:00 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Valeriy Kosikhin <vkosikhin@gmail.com>,
	Louis Kotze <loukot@gmail.com>
Subject: Re: [PATCH 3/5] wireless-regdb: Fix 6 GHz LPI power for Russia (RU)
Date: Thu, 16 Apr 2026 16:17:49 +0200
Message-ID: <20260417060000.ru-analysis@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <CAGb2v64q6L43iZYusUuJ5h1yvZKzpAKYbOa8d1OL+9puJ6Mxvg@mail.gmail.com>
References: <20260411222155.299441-4-loukot@gmail.com> <CAGb2v64q6L43iZYusUuJ5h1yvZKzpAKYbOa8d1OL+9puJ6Mxvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_071803_596920_227B5138 
X-CRM114-Status: GOOD (  13.83  )
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

On Mon, 13 Apr 2026 at 07:03, Chen-Yu Tsai <wens@kernel.org> wrote:
> This page doesn't actually contain any useful information.

You are right — the eleoscompliance.com reference was a secondary
source and not useful. I have since obtained the primary SCRF
documents (shared by Valeriy Kosikhin) and verified them directly.

> I did find https://www.gccorp.com.tw/en/?p=2173 using the document
> name you gave, but that also mentions that "automatic power control
> system" is required. I assume that is TPC, which Linux basically
> doesn't have. So we still have a problem here. If the rules were
> based on FCC or EU regulations, then we sort of adopt a 3 dBm
> reduction in the limit.

The TPC concern is resolved. SCRF Decision 23-68-03 (September 27,
2023) replaced the phrase "With the use of an automatic power
control system" with "With the use of LBT mode" across all entries
in Annex 2 of SCRF 07-20-03-001. This is a literal text
substitution (clause 3.1 of 23-68-03). There is no TPC requirement
in the current SCRF allocation, so the -3 dBm reduction does not
apply here.

LBT as required by ETSI is satisfied by standard 802.11 CCA (Clear
Channel Assessment) — the mandatory listen-before-transmit mechanism
in the 802.11 MAC layer. ETSI EN 301 893 clause 4.8 establishes
this for 5 GHz RLAN, and EN 303 687 for 6 GHz. Linux mac80211
implements CCA in the standard transmit path.

(The SCRF text actually says "LBT2 mode" — Valeriy traced this to a
clerical error where a footnote marker "2" was merged into the term
during a copy-paste between SCRF decisions 21-60 and 23-68-03. There
is no "LBT2" in any technical standard. He has reported the error to
the SCRF.)

Verified SCRF allocation values (from primary PDFs):

  2400-2483.5 MHz: 100 mW EIRP, no restriction
  5150-5350 MHz:   200 mW EIRP, indoor, LBT
  5650-5850 MHz:   200 mW EIRP, indoor, LBT
  5925-6425 MHz:   200 mW EIRP (LPI), indoor, LBT
  57-66 GHz:       40 dBm EIRP, indoor

The current db.txt has 100 mW for all three 5/6 GHz bands. The SCRF
allocation shows 200 mW. For 5650-5850 and 5925-6425, all applicable
Russian regulations agree on 200 mW — these entries do not reflect
the current regulatory limits.

For 5150-5350, there is a complication: the SCRF allocation says
200 mW, but the equipment certification rules (per-standard Orders)
cap power at 100 mW for 802.11n (Order 124) and 802.11ax (Order
321). Only 802.11ac (Order 129) allows 200 mW with TPC.

This raises a question I would appreciate your guidance on:

When a country has separate spectrum allocation (200 mW) and
per-standard equipment certification rules (100 mW for most
standards), should the regdb encode the spectrum allocation ceiling
or the most restrictive equipment limit? The ETSI model puts both
values in the same standard (EN 301 893: 23 dBm with TPC, 20 dBm
without), but Russia has them in different bodies of law.

Full source URLs are in Valeriy's reply in this thread. My v1 was
incomplete — it only addressed 5925-6425 and used an inadequate
reference. Valeriy is preparing a comprehensive update with lawyer
review. We are coordinating on the scope of a v2.

Louis

