Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5ECFF885D
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 07:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ay0YrL7KdWQZJLtovQfJUXj+JpmdCsK/vViiNlHAeCI=; b=pwsP9yJKG4ivpRS6jXXNo4ACUv
	BmmFDor/bGDkDn8MW5nBt0zhNi2wN3rffp6aJB/ns72eqwyRy5MEleQdUlG0WrrRPbKD5fiiMp7N6
	kvQ/KP7rWL5AfIVuxvSW24AorwVyA5534KnnKti749SBRLQtuo7rP+BKs/cjmjRYFOqr1SNpvIgDr
	OQNFJOuV7Jhsb5OSjciASi/PjbVo/fX7PxiAmdDIZIypWAqDskRpF4/nxvN94mh+Nd6VIHmqzSX0+
	G9jQyJwG2yXdieLdNSg4B5xYfOxhH3MydoMsf90vDw9vWoZknp1vINzPzjugWTab64rT0kGDxkWb9
	TuIJS7Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHd7n-00000000nkf-2N87;
	Tue, 28 Apr 2026 07:44:55 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHd7l-00000000nk5-2XvM
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 07:44:54 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-48984d29fe3so133775915e9.0
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 00:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777362292; x=1777967092; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ay0YrL7KdWQZJLtovQfJUXj+JpmdCsK/vViiNlHAeCI=;
        b=RaWMtV/HA0Cs5u2U2xmh6W9CWxIDMafARHFy+MysrtINANdU+bTC/l6HTyrMTvgALt
         Ygbzc/nIgvoUV9SSFcVTDnVnSoucF6kmeDeGw2/83fy0cbDgXAgLLKbiGmk8tvycVbTG
         5YSZ7xqx0iY3QT/QBWoKlEcD4UjzRWvJQnroGl6b4JW0qGhIcXz+HvQf2mvCdzWf4edP
         DykN7qVJmqRe9f/nzmToXKWEAIhpWFzT/ANaRIh3fawLCaz5ohpJkZtO+tn1P9VnDdRp
         WvChmL/ZOq8t3gZzwU6EQ0aXQwg8b64UJN08BWh5fXrcDc1iht1XrTCfIIaAA8psV4uT
         5KBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777362292; x=1777967092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ay0YrL7KdWQZJLtovQfJUXj+JpmdCsK/vViiNlHAeCI=;
        b=mIUBZcEv71CEEW/PkviyYztaqoznIOkicKwmme9Id8LxPfaoIZmRTc43cRgf4XRiBP
         M9FY0LH2RJFAbBQYyUONmO1es+kO2XM2iZsg8H0Q8ikA6ypFtKdmyi7jGPcne3dk2O5n
         RuNHWAgCd7Ir/rOBL/CamoSxHp++UBjy4uCIJgOFmK1QKcVcOgVCtEQyhSR2gS/RUmsB
         DLgoBergBtK/ExWmVaCBfjtMDvynEkRpnqz7GRBq/OtM7iSv2TBtt6THwybMe7o62jYH
         XHp8oqll28EkTmd1YwBEcB9vVvVi9iade+12imnieQgAxrPIPTvnkLYQxDpVZ+aPsZbJ
         zzaw==
X-Forwarded-Encrypted: i=1; AFNElJ8wv8MtFvW8SOQ1O/aMltJC49JfJaTgCQdIekBldhEvFLl+o2iseLClyIR0gzcq3Ze9ylJhn9c6ICFxSY9zfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKPotqMSzfr91pP+2OEEKvIMfuEdyxZkQ0Ay8UHcLnQUSiANPv
	EHbvPUcJNhawgyohVhq9pP8453bFcbjNGk/EclD8X8c7JfywL1eeS7nyLa2REo407w4=
X-Gm-Gg: AeBDieurMgsq487uaxHQL6mDgELP3vOkogDiunoCuNzxyhZnRY4K0wHAh2D//jnB/u5
	5xT5h8An7Ms1dsd+5E4m5lgU2cuag/nf1RdV6fzcK8+jAI5DZCyYXuFwYhqdtXQsY9me5naUGzR
	afapxABZdGEgk2Kqg+xYo/sBOkFMlCOvWl3Ib28cw7eUjU8Kb6CBTWFzY/1hRMZXUJsM3576x/u
	9GS8XrfP0NtNu6B3jcwjSyt1YRjH2DiodNrsQ69/et8tGF84ebOBmE9tmJw1pDKv6SavWBVVS8x
	1WF6tBams2Vg/zwVURAQnwBfMmmD2+WFCF7VxSZ2vK6uxzIUVGmePaA7CKrznCLe60J2RT3vFaI
	KWKDtHJXAH5VDE+6kxZTvQniWB9TjFrLTEVXd+Fpe4wXRjqKyvmP4TpAhXQFRA2ltmsYan2wpLB
	IB/90gqnTAbfNwFy5EsgaBuhoRYFx4UahnUYoblP6rFO/uFoJjUAF6nIUtuK3J
X-Received: by 2002:a05:600c:5494:b0:488:ffad:6728 with SMTP id 5b1f17b1804b1-48a77b05c77mr33023525e9.19.1777362291622;
        Tue, 28 Apr 2026 00:44:51 -0700 (PDT)
Received: from localhost ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4463fa89140sm4167809f8f.27.2026.04.28.00.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 00:44:51 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: K900 <me@0upti.me>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	Valeriy Kosikhin <vkosikhin@gmail.com>,
	wireless-regdb@lists.infradead.org,
	linux-wireless@vger.kernel.org
Subject: Re: [PATCH] wireless-regdb: allow 320MHz channel width for Russia
Date: Tue, 28 Apr 2026 09:44:47 +0200
Message-ID: <20260428074500.ru-320-review-resend@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20250708-russia-320-v1-1-53641e8dd417@0upti.me>
References: <20250708-russia-320-v1-1-53641e8dd417@0upti.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_004453_650209_B1A2F02E 
X-CRM114-Status: UNSURE (   7.24  )
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

ChenYu, thanks for the ping on this one.

Cross-checked against SCRF 22-65-05 (which added 5925-6425 MHz to the
2007 spectrum allocation, Appendix 2):

  Section 2 ("Devices with direct sequence spread spectrum and other
  modulation types") for 5925-6425 MHz specifies:
    LPI: max EIRP 200 mW, max PSD 10 mW/MHz, indoor only,
         with automatic power control
    VLP: max EIRP 25 mW, max PSD 1.3 mW/MHz, indoor only

  No channel-width restriction is specified for this category. The
  only width cap (less than 20 MHz) applies to the FHSS subsection,
  not to DSSS / 802.11-style modulation.

  SCRF 23-68-03 §3.1 later replaced "automatic power control" with
  "LBT mode" globally in that appendix, which the 802.11 CCA mechanism
  satisfies.

320 MHz operation at the 200 mW LPI cap gives 0.625 mW/MHz, well under
the 10 mW/MHz PSD ceiling, so the wider channel stays compliant on
both EIRP and PSD limits. Per regdb convention of encoding the
spectrum allocation ceiling and leaving per-standard equipment
certification to drivers, the bandwidth widening is sound.

Reviewed-by: Louis Kotze <loukot@gmail.com>

Note that the patch base predates the recent RU power update (commit
6873bfe in wens/wireless-regdb), which changed 5925-6425 from 100 mW
to 200 mW, so this needs a rebase on current HEAD before it can be
applied.

Regards,
Louis

