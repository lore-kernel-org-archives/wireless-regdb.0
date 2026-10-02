Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 360A9CA5FE0
	for <wireless-regdb@archiver.kernel.org>; Fri,  2 Oct 2026 10:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NvsDI9OStdZYXScGSi/orF65l/6sbhTFh+TJKJ7Fcqo=; b=cCdZcoJZmk8frgkp98u1jqnq8K
	NIe44GABjuLjoJISZqz1mze2vMNDHJaPaR17vqjnlXV1zIkB/3VbGseIKAQHlZSMmk/3mmlGzaO4V
	NObbON+bX2ZGspRQj5i6Aw2FB869JMSzQZVwQHPKJBHsbPc5VJ0q6KH6zmkD6moO0aKYnhaFXuPuy
	+DdZ7zBz2bOoXggB29huRNlUPoWSOQZdiDrffMpRBs0eCXINqsam1JpNmnq/WYnpPnqtF0CA6XJXF
	/a48r/pwJhQ1spAN5qbbKUSSL1jO7iUxwJyidgOTJqV2c8TXuqZxC6AL7G1VNcCWjKaxm0T47kHIn
	q3KJ/aRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCalL-0000000BMmo-0ZTO;
	Fri, 02 Oct 2026 10:45:11 +0000
Received: from mail-vs2-x29.google.com ([2a00:1450:4864:3a::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCalJ-0000000BMmO-0lPb
	for wireless-regdb@lists.infradead.org;
	Fri, 02 Oct 2026 10:45:10 +0000
Received: by mail-vs2-x29.google.com with SMTP id ada2fe7eead31-7b42f1cbcf3so4046992137.1
        for <wireless-regdb@lists.infradead.org>; Fri, 02 Oct 2026 03:45:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790937908; cv=none;
        d=google.com; s=arc-20260327;
        b=DDreoQtPXAqSxngr0e9QKxtGDsBOXw7P3CFfRwMNB6Or7iMmAZ1oB92E5YsWKy3JIo
         IWY9imb0EaQ+rroDjdY1iZcOivLH4k6UADk4gySFZHYx8FOjCeg1OTNuh8IxpnKa4Q6k
         gS8O1qLwh/9jZ3pMPehL2DKoErZurt+cCL3lbnQKFgi11lR3Fiql9wh1vTGWg9UXy+Pg
         vI33mnUgTgSi2q09z5Iq7fQr71nXYQiNa8vEhvh2ZXtLSwe6T32Myjg7MLbDFXAayaRN
         uz50q75AE2/E+emZtdxyiMGooAVS0xXxVbHItJor8wuWahSeAX9GdFK3IqQuMzkBMfOM
         /8XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=NvsDI9OStdZYXScGSi/orF65l/6sbhTFh+TJKJ7Fcqo=;
        fh=SB+iNamqw04pSbLtNx3lJQeGsQjT1FLlR/rGwc0pBlI=;
        b=CmuTeVEMcAcc2tfRrjIzj40qnnqSZWuvJGoPiwbDMnYP/GqQxqWKfVl6BYH8+mHukR
         VQ1sOirUB+EHXETIoFbv9m5q+42Q/cWSP0v+gyZHM1yf8WHYd1FMScu/WWnOu2L/w+2q
         5GEsEKByF2aLp2H/Zg3BX4HnCgkq6pnBOxGQBWF7tSL7ta40Zfp9G0lZfdJDzLl7uWW0
         Vw7b3gQhRLG3fN5jN7Dk5gLiFumbO0e32CJh3NGt11PuhXolRKfJAN6JZQAShrwauXhg
         3NpkTqAjZ3PjF+wfWhvlQW0R1D5yiC9aDlWLtYGhdzjFjwDH1lQL+TVov+rRC+kZdkfO
         xKiA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790937908; x=1791542708; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NvsDI9OStdZYXScGSi/orF65l/6sbhTFh+TJKJ7Fcqo=;
        b=TLegNwkDKgg/ubW6z19QsWybqlJjrFRgRnRNjKbBBBQCNE7Kn/TeXY54KMfV/VjuRd
         bnB0V7lxvIOfKtJqZPHx8VTfVL9m0NlmlKVmDep5veKvlX2d0NTr38028LpFvqqjTIaF
         /ZuuswVyhoT8+PjzHfBq81spDduybgdoT0u/Y9VtbdRnLqrFWpCU9I42Y1lOU8lYRgyE
         2c+W+FvS3cALimnFBNKfWpnA7np2P2BqMkcJTL5ExpL6Ia/hTwK2g/1w3A+G4p2bX3Dv
         vDCwfVkray78QHbFtfxRhFJuYh3DqczatebOtGnCnBym5jW8bXYUJ00lR2Fwd/x62oRt
         PWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790937908; x=1791542708;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=NvsDI9OStdZYXScGSi/orF65l/6sbhTFh+TJKJ7Fcqo=;
        b=BBuZChV36pTsCnfwsu3Q+d1DxfbQaKvibiWi8cBVPOkScR+wYvWhoEiZT55xF8P1l8
         imwGww/hGSjAN9cZmfCEqD2hFpESikt1f0FkAb7uITA5QFGDSde0hVI9Csw3n6VZI4Eq
         Y2Rs897AgyRb+Ae5bnRq4GEriaAVewcw3lceg47zJjzmxEgpc5mPn0aAjGWiJuaUfIyi
         yePfl9GEEgJ/nHv5rUtN4CeKKvpLo4QJQJiih4bR0N+xnvF5Wv8PTZg3j2bPaQMvfwsc
         cEZPb2SqQ8c/EamPZGc3s8gQwX2UP8bcVaYGfBfyFTn1b58DonnTHaQ5BH8ybSPklLgA
         XKGQ==
X-Gm-Message-State: AFq9FYL1c04xR5Wf9/vrfvgGcPc8nfbQlkW7XthruLtfZciUO9JE9RlX
	hD/CzH/7/g2VXdAGg1K6W35zEaF3NGGain51HZcQ2NQ2O/2cmYVF+t2eWi9EimM35T950go2Bdg
	7irrC1y0gYBBvjl+bI3OEBh3PEr70kRITUxM02aym/Q==
X-Gm-Gg: AYBFou3HZqVApWunisgBcSO2ePR+MFk7rC40upTLLOVlVLrI/trL4fmTyybgcmBGUo4
	PIWxN1PpQs/Z2oxl+kWmQGyPTPHtUKHLrjQfRI9KNoBeIYbNKCxOazNgWKy/SBBqIwcpwbc68PZ
	GPnwX5w6HutdrLIHtWBeRd9vv7kgS2xC5G5O2sn2Syt6KhDuHsLtC4249Rawn8PxOWAoJpHj0w2
	KQO54cJKaVbKUegfRIFo+bIzTHCG/YKX5vT26Ryx/6VhJYygIud3Z0RS6mMqs3JjHCcUfihIwHM
	0vHnfrgM6sa0hSGBJh+Yq2eg0M2/s+my/5rGjwmvsU3fEejk3tTdr0w=
X-Received: by 2002:a05:6102:5121:b0:7b4:6e46:4cb6 with SMTP id
 ada2fe7eead31-7c0f498c5fdmr671089137.6.1790937907743; Fri, 02 Oct 2026
 03:45:07 -0700 (PDT)
MIME-Version: 1.0
From: Arttu Pitou At <arttu.pitou@gmail.com>
Date: Fri, 2 Oct 2026 17:44:35 +0700
X-Gm-Features: AclHuK8ZZ3xv2ZvObBYo4EhsiYKzhiCNdOaHfYxeOUlh-c0TKMy_rwUMjJOXN9E
Message-ID: <CAFnd8PdQA-1WHd_w4ODdXnN-+XiQDfLr4FNMYNXXHzOZY56XPA@mail.gmail.com>
Subject: wireless-regdb: Cambodia (KH) entry omits TRC-approved 5725-5850 MHz
 WLAN band
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, info@trc.gov.kh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_034509_238210_7D89A351 
X-CRM114-Status: UNSURE (   7.53  )
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

Hi,

I am reporting an apparent omission in the Cambodia (KH) regulatory
database entry.

The current wireless-regdb KH entry is:

country KH: DFS-ETSI
        (2402 - 2482 @ 40), (20)
        (5170 - 5250 @ 80), (20), AUTO-BW
        (5250 - 5330 @ 80), (20), DFS, AUTO-BW
        (5490 - 5710 @ 160), (27), DFS

There is no rule covering the 5725-5850 MHz WLAN band.

However, the Telecommunication Regulator of Cambodia issued Type
Approval Certificate RF-TA-2022-1104 in 2022 for the Astronautics
AFS6460 Connectivity Module.

The certificate explicitly lists these WLAN Tx/Rx ranges:

    2400 - 2483.5 MHz
    5150 - 5350 MHz
    5470 - 5725 MHz
    5725 - 5850 MHz

Source:
https://www.astronautics.com/wp-content/uploads/2022/11/Cambodia-RadioCerti=
ficate-AFS6460.pdf

I encountered this as a real interoperability failure rather than by
auditing db.txt.

An ISP-supplied Huawei HG8145V5 access point in Phnom Penh operates on
5745 MHz (channel 149) and advertises a Country Information Element of
KH.

On Ubuntu 24.04.5, Linux 6.8.0-139-generic, using the in-kernel rtw88
driver with an RTL8821CE client, the sequence is reproducible:

    CTRL-EVENT-REGDOM-CHANGE init=3DCOUNTRY_IE type=3DCOUNTRY alpha2=3DKH
    CTRL-EVENT-CONNECTED
    ~5 seconds later:
        nl80211: kernel reports: Channel is disabled
    ~55 seconds later:
        CTRL-EVENT-DISCONNECTED reason=3D3 locally_generated=3D1
        CTRL-EVENT-REGDOM-CHANGE init=3DCORE type=3DWORLD

The client then reconnects, receives the KH Country IE again, and the
cycle repeats approximately once per minute.

For example:

    10:10:18 COUNTRY_IE alpha2=3DKH
    10:10:18 CONNECTED
    10:10:23 Channel is disabled
    10:11:18 DISCONNECTED reason=3D3 locally_generated=3D1
    10:11:18 REGDOM WORLD

    10:11:23 COUNTRY_IE alpha2=3DKH
    10:11:23 CONNECTED
    10:11:28 Channel is disabled

Channel 149 at 5745 MHz falls within the 5725-5850 MHz WLAN range
explicitly listed by the 2022 TRC Type Approval Certificate.

I am happy to prepare and submit the corresponding db.txt patch.

The certificate establishes the permitted WLAN frequency range, but it
does not state a general Cambodian maximum EIRP for that range, so I
have deliberately not guessed a power limit for the regulatory
database entry.

If there is an existing convention or source used for the KH power
limits, I can incorporate that into the patch.

Signed-off-by: Arttu Pitou At

Arttu Pitou At - =E1=9E=A2=E1=9E=B6=E1=9E=8F=E1=9E=96=E1=9E=B7=E1=9E=91=E1=
=9E=BC
Edu | AI & Cloud Architecture | DevOps | Cybersecurity
Phnom Penh, Cambodia
Website: https://working-draft.org

