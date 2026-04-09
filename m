Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A1ECEA3C5D
	for <wireless-regdb@archiver.kernel.org>; Thu,  9 Apr 2026 13:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8RPjn8cPWu5YMQiBsMD7wCihitc1J9BlIwflo80tDi4=; b=ogSTNIwX7greeIpfGAUi/yIql/
	4HODWFgwev+/Y/8eq0PkZugZNLOEfmlJ7lTMoRatSID8334WhIbQ+Xa4DLtEcyqM0S/Y2vzcwaOT4
	cvUR/xKMJCaFltpf2tUihJ1JX0sMMe6s9d2Kb8nmvFFQ1VrM6a7n7RbJNr67LUSo/FLkhvYk1eXDX
	0tJ00dv657PDPC8J6vzPXHdUOZJ3ASGno2K+iz9bOLaalyuMRWzOOaITA9CpS0mhQovrgQVtwccCB
	QY7JiB6FZSZLInYnzqQQqP5cdzRWDBjFNWpqwx8wcxeA0PUmcgCBj36suuKRJb7OCi9rsq9pdyB4d
	N0Ax/0Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAp0U-0000000AQQQ-2O8M;
	Thu, 09 Apr 2026 13:01:18 +0000
Received: from mail-yx1-xb12e.google.com ([2607:f8b0:4864:20::b12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAni4-0000000AICg-29fi
	for wireless-regdb@lists.infradead.org;
	Thu, 09 Apr 2026 11:38:10 +0000
Received: by mail-yx1-xb12e.google.com with SMTP id 956f58d0204a3-64eee7b83cfso485735d50.3
        for <wireless-regdb@lists.infradead.org>; Thu, 09 Apr 2026 04:38:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775734687; cv=none;
        d=google.com; s=arc-20240605;
        b=A+ftSb6Jo1mZFO4I4ud4APJ0KM2qbqdfKB/6eo9YXzd+AYz5wTBgBCBp9d4mc3Xe79
         PV5ePINKihg3/gAVbLkJ2x3EqL0o0c4kbIniocgmkW7a9aIPBOlx4Jsk8ulfIXX/8vcf
         T8uCTpJYLo+wgAT11cLxhms0+smoCYXYLBev18CEwcUgb34KEYCXGD+TPkqdgu0ECH47
         aTbij+dZkP96ya/0WlluCoPRq6ZDBBuhXOgdj0xQeFufu8BAksFInKEe1XkOELAXF14t
         wGNFns06pWJgRYSlPJaoShe4e/eeufsDvQlp5ePrPca15Q9865oaUZDag+w3bBBkGnfW
         8eHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8RPjn8cPWu5YMQiBsMD7wCihitc1J9BlIwflo80tDi4=;
        fh=PPKQIUTjC7lK7+J3GthuV0w1yR5vkNQdfuv7BwbfMjo=;
        b=Ynp5CJxHSHkVuJYiIVZagqlW4JvtcLVuBhcHIBfdPK6Lo3NwcSzhDENIpCN9fbuubx
         d19zomBCm28u+BuWPyiI4yT+GieuIbsQ2EYCDLc8LYKLTR2rv73DQewxBXdtj+sbfSE0
         efUaDjEZCaT7czlQQxE4Wth/w0+GYZzwaAVKdIUIL1Oi+e4ASCG+QTMsyz6nxEhXzMR1
         /xANcoNzWah1SpbLuUErQu5khr9N9xXcZjlbcROrJF3eEDqIVA1cIEzMd6WhjFGQqnw+
         mIv6SOCrTgQ2lk1ku96fT4PadB721pDKIXyqLkWdIQXNuYP9YxBluxdL/5AUmmkQlNlV
         bX4g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775734687; x=1776339487; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8RPjn8cPWu5YMQiBsMD7wCihitc1J9BlIwflo80tDi4=;
        b=Drz/lCwaZUmcG/5YwxXsGrZE/ou+DNeqfJyvQZvsBPx3nng3dFrb7PsO2KjrfA7qq5
         +bGzSKYTg1/2/eASUqEQZjb12/x8UpI50524Y8ETOgGP2QAUhY46UDuJV0qA8SLvEc3+
         bVfyKjQKu8STwfFXQgqRsaP5ubRUqHK8hVY+6rY2wef0i4iNXIARkwb7ALGQEFw2Y2yi
         OR2ZwQ9f5vtxs4gep5fSwoIi13IKXeE6K4KeJWPlPKWwzMrSFCgCmj1wX65LnxFcAll1
         I0n41G/8SqjCb9Gw0BjKPhOVxwKYliao+gb00vu1/iZFsUfuf+tJJxSgdgE9swrcypII
         ieBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775734687; x=1776339487;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8RPjn8cPWu5YMQiBsMD7wCihitc1J9BlIwflo80tDi4=;
        b=c67VTrfnfGrwf7QUnt33f7Wj9VGk+OMe+xP9KvuNJls4a7FxM1QXMyIjPn0Nc4uVdQ
         sG+RusHbpXL9Khqut+bnG5AuEtapn2T08k34r69wJQi9wZhi70UYj0YFirodKxhYzHmV
         kEcphryBO3aEA0PVXGT8hCTeliT4I3wsjIO2N2Zv/y/zV6PoRo/NujouKVK5EmR3JDbu
         iNZfcBSE/1FxEiDgqp+YfVOqb6ZDOokYZD2pE65ZEJHCGFevTgmoiEZPmwMk3Eg1uXuN
         r9zuZXTN8kbVa+ANH1dcuGaJigz+I6lrWhOV+Yd1H1CUSS42uuUYyNUgWfxg82JSrzqQ
         /1pg==
X-Gm-Message-State: AOJu0YxPN95lkGKoWkuSsGI8umuK3tVHuLMoKP0CvkJTEDD/Y2YSzYlu
	nofCHvQeeREdjp2xpRJ1aNShte0ejXQQlWVEDmVOBHf8g5YKS/VxzFyZOAKbo7H8B6SytnTvL1V
	wUL3AR9IVYpkbI78ngbo317srb2Iq191cLdKcxo0=
X-Gm-Gg: AeBDievQX/ixbAvfcyXbUuiu1mcB5oriQPSHRU7ajsXAGKBJ86LtEjeJcyMod03UVZv
	2aV+ZgxVsPvcwFSCV04X3DDSdTo6WfNM0xldKPoZLKiVtrb0SqweeHYXdaryGr0Q4MCjmh73Ozg
	lVU1FXgNV4dT/eN8g1AZzqoHi8unie/xY3A44XTi0/IlJsNRAV9eINPi/mekcFjnqlc9HuiW1DI
	kTPhc+ioJ7PwIqdF+b40U/yIpnwaxm4JlPmzFF9eg4aZr3UiDbbyiVgvtDGh7ZdAQSRQTUb6Fov
	hRHQCTYJAQ==
X-Received: by 2002:a05:690e:130a:b0:64e:da69:f2d1 with SMTP id
 956f58d0204a3-65048824706mr23083589d50.35.1775734687008; Thu, 09 Apr 2026
 04:38:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcSecJ7nDo+-JqGri80m8yn_cp9UfajHqLQDPYup7Zh7QVj7Q@mail.gmail.com>
 CAMcSecJ7nDo+-JqGri80m8yn_cp9UfajHqLQDPYup7Zh7QVj7Q@mail.gmail.com <69d78ec9.050a0220.88061.60ad.GMR@mx.google.com>
In-Reply-To: <69d78ec9.050a0220.88061.60ad.GMR@mx.google.com>
From: Louis Kotze <loukot@gmail.com>
Date: Thu, 9 Apr 2026 13:37:56 +0200
X-Gm-Features: AQROBzD7cWy4TLymf9MWJ5Dx5HKX3AZV1XQGw90H1cTIxb0bm1lo5_E8Dgateis
Message-ID: <CAMcSec+=PinFFtkjy2YWbxFwZBqw34xKvCPKSLnKUd=NnU55tA@mail.gmail.com>
Subject: Fwd: Delivery Status Notification (Failure)
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_043808_668003_D0F6D261 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 09 Apr 2026 06:00:30 -0700
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

Hi maintainers,
Please have a look at the following request:

ICASA (Independent Communications Authority of South Africa) published
Notice 1822 of 2023 on 23 May 2023, amending Annexure B of the Radio
Frequency Spectrum Regulations, 2015, to allow licence-exempt use of
the lower 6 GHz band (5925-6425 MHz) for WAS/RLAN.

The notice references the ETSI EN 303 687 standard and defines two
device classes for 5925-6425 MHz:

  1. Low Power Indoor (LPI)
     - Max EIRP         : 23 dBm (200 mW)
     - Restriction      : Indoor use only

  2. Very Low Power (VLP)
     - Max EIRP         : 14 dBm (25 mW)
     - Restriction      : None

Currently, the database only contains the VLP rule (14 dBm). Add the
LPI rule (23 dBm, NO-OUTDOOR).

Without the LPI rule, clients connecting to indoor access points
advertising 6 GHz at LPI power levels experience repeated association
failures due to regulatory mismatch ("regulatory prevented using AP
config, downgraded"), which on MLO (Multi-Link Operation) setups
causes the 6 GHz link to fail and disrupts the connection.

Reference:
  ICASA Notice 1822 of 2023
  Amendment to Annexure B, Radio Frequency Spectrum Regulations, 2015
  URL: https://www.icasa.org.za/news/2023/icasa-releases-more-spectrum-for-wi-fi-services-in-the-lower-6ghz-band
Signed-off-by: Louis Kotze <connect@prolificstudio.co.za>
---
 db.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/db.txt b/db.txt
index 343b256..778ac21 100644
--- a/db.txt
+++ b/db.txt
@@ -2180,6 +2180,7 @@ country ZA: DFS-ETSI
  (5170 - 5250 @ 80), (20), AUTO-BW
  (5250 - 5330 @ 80), (20), DFS, AUTO-BW
  (5490 - 5710 @ 160), (30)
+ (5925 - 6425 @ 320), (23), NO-OUTDOOR
  (5925 - 6425 @ 320), (14)

 country ZW: DFS-ETSI
-- 

Thank you and Regards
Louis Kotze

