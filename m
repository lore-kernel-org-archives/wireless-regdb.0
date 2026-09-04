Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68271C79F82
	for <wireless-regdb@archiver.kernel.org>; Fri,  4 Sep 2026 18:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e59T5f6DjuSD0sM5+7ad5x1p262o0W4iAoz/V04rVIw=; b=NYUeu7rRSYns2C+1k8ufttuSkO
	zM+bOc3Qxvl3HPBE/FPaXGQpOB47FRqw73NCyZ07V0+VUDTMZHs4NEJz4nVMWmK2T4KLbz/HNUpsU
	toCU1XqVpoXBihsHtwj50S2TJr/OornUI4VFXSnkZK+QuMD+ovrl8JV9hl6Idi5GYnpdU3z3FqEYn
	N90e2sd7Glzx3QPbiXXNtFp4qcTSLMUPKeoFf3e4gkXCbZlaD6XQ6MUQmOAtJCREvZbo3MuvB+zay
	wyoIkXbCKzmQ2QsJxLRBux0Egcu67qa8NHS6T3bnp/psU/YPis2ynxL9hd7U7yPPoUydpFJqwocp2
	T0fw7ArQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2YMR-00000002zcu-26Yv;
	Fri, 04 Sep 2026 18:09:59 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2YMP-00000002zap-0CPe
	for wireless-regdb@lists.infradead.org;
	Fri, 04 Sep 2026 18:09:58 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c250a2bc3b3so163326866b.2
        for <wireless-regdb@lists.infradead.org>; Fri, 04 Sep 2026 11:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788545395; cv=none;
        d=google.com; s=arc-20260327;
        b=H8bIAUhIJjJk5m1FyjQiEm2nIlbUc5BlVeeNW9Nyvs2SzIThasJdvlSxTBNLR3RV5c
         LCA4Nv0qxiu46jPgvxMN1ULuqWudRJJgLeLtX8iExE0N4i0WbmwhJDiVmnCfpdFzzIEt
         6YWXQXbHrGS+0Cg775uhUGWCJIONRJghNUE/l+/lsviRym7Z8kT0f4gey0124o90/aXg
         lsPMiLowq+pElWsXZkP3yOEopwIoXMvYNAtV1j0nTVYx6HeTNzoWrr96HSfKSDs9TJJC
         PE7dkdqYKMY6l7cjgne+N7r1xYqHSnX6F/Lu1dvvlwLr3f58g3VEdzhS3BOTjOICTASQ
         rz4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=e59T5f6DjuSD0sM5+7ad5x1p262o0W4iAoz/V04rVIw=;
        fh=BzVcj3AOSjt+4oCebDOU6fO0kGZQwBEUFf03l6Edbvw=;
        b=ajmJWy72rQz5PIBCfNBrBXlBgy9GMsxoaCoQ5ueKxNvy3EzgOIccmTfitLSknuzavG
         PPw3IwelJS6ztXzaJePUrzr3qU7Ce4iWsWialSiYFPq7hAT3zD2kgPOv7kjoQSHCeVYI
         TF2XByy749e+EAu5s5sMI5sc/eu5l2jYpVNqwZIt9uzOk+qmKdgzIjBPaDRK3bxy0MdR
         AR86lSS6xfa6ucG5k+HQObcPpWMuhn+vUIq3kUZSgfSBVedvvYhlemJuaP+3yH8Z+heO
         tbe+23mn7036Rzs39ZyLRfRRrZw3jkAh4cRw2puyloQGEedXY2VDM9VH6uBIkyYYJ03o
         UeJA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788545395; x=1789150195; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=e59T5f6DjuSD0sM5+7ad5x1p262o0W4iAoz/V04rVIw=;
        b=KHdwVBVmkif9VKcUceQB1o8LBtRes8dtXq9JXG0GjKtc4j78Vu82qa67l2ItjS5j80
         xE4gwhfZGjTwO4bcgXsZhG2YE0KIcSl920NvGql2a3HcMKzTjvJlxKm4nVK+CInJoGoA
         EsKOd8OmsJJW3QIwoVTyOmXSExF81b6KUKvc7ADij6WUtwENqpwrdN5mj8wFZNHwymWU
         dqSEYcGevyIc8dthVTEhTPNg7gJS4BIXHFJn0PETgfZJr1SjJo+NpB6aF1ic6dxUpDrf
         iOiDSvSKKWpx5Im3XKqjOQTCpM/09rClzRbRa025Hu1zqQLsPFrQ5bSezA2kStppCS0X
         oslg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788545395; x=1789150195;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=e59T5f6DjuSD0sM5+7ad5x1p262o0W4iAoz/V04rVIw=;
        b=SD3ucGiGD77/1F6El2/OwnBBkar7VMZH5gOyeb+mRzL8bi4NK1ihk6EXUchSzTT2dN
         w2OkasuNUIVTGRIBz/4r7glTWV5OuIXuyzTCq3kQGqUiwrtDCyD+AHSbLo7JCDvHxr7r
         MrBz2Ju8rahLbB2A34Gv9rHtW0LfGuzMHNNWho/HcB2Z2eff7wUWEceDrAX/HwmaIwHQ
         TmTnDLzx96JfnbtF/oscR43gOXUVHY7frd17DO99ikJkg5Vbah/tH5HuvNw+6gGKHUlx
         QnhqBJKwdR2h5gQnMeCga9zo318dPFz5uW4tO6/QooqFnne+cPKpcF+XXEJixqgOLJEt
         hZCw==
X-Gm-Message-State: AFuF++k467VGGY3s9S7LMuPRtMe0ehIVypSH5k5c3gQ/3ZWRUlX6NpXY
	LYsBGMkC39rqEdX7xEmsuKflqiCdmABdXHr18liFFB2t9hsnNViTtuvriKtp/vEx9+g3051DNh+
	FPgU+gZFn/8KM0kjQmg+oPB/hDoVkpdacLDyF
X-Gm-Gg: AYBFou0ctD3jRzp5E3YZEe9z+xrC3B+MyvoOOCoLgVAJKIPSSqDQ8KNx43+je4lxKde
	VADcbl1qfJDy6f5QiYlOGAvLKfS45sY2vd9edExKZQfU77SAhhfaMFOR0xOgz6zsDxdPWkEf2pA
	IF+89l1XZoZXeCQbF12/URaa7bWbmI07T9CWciJVQLeEs7huhKjCVCruU2WzLWnWKtDxovfajQI
	fDCa+EZQaoEODE8A5aSSpyXDSXBowQGIlrEE66f7/ZE3kCAYy+sflQ5fgcCB8ecX3hIjARJX5l5
	TyOAYJJhkBTt9PIGrdMEM4CHUqWkmD65Cq+9pHQb8mbPYRNXFogJSdCEZOnhO6VtyOw0wUsOWKr
	jd1ZeZul55NIePWqgO9FhD6fzjCklM0DMkK0PcfdC1/wHGKRPKAn1dLZsTroOU0WsCmFWJcgzVG
	ezJQ==
X-Received: by 2002:a17:907:3f98:b0:c26:19e3:e988 with SMTP id
 a640c23a62f3a-c2619e3ef32mr190660966b.40.1788545394779; Fri, 04 Sep 2026
 11:09:54 -0700 (PDT)
MIME-Version: 1.0
From: Ankit Dange <ankitdange37@gmail.com>
Date: Fri, 4 Sep 2026 23:39:42 +0530
X-Gm-Features: AcwNN1XpRrOS7DkTO7IJPrREexmDOLcloLYcUmK-ZhlOdXvM-UE8dIh9FZ1wa_g
Message-ID: <CAJ+EMqqfT5-Wm+YY9XUUoqVTe01VHN7U++GbYosYTHS1jxH4rg@mail.gmail.com>
Subject: wireless-regdb: IN DFS ranges result in DFS_UNSET and prevent mt76 CAC
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_110957_131603_A0F553D8 
X-CRM114-Status: UNSURE (   5.93  )
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

I am seeing an immediate DFS/CAC failure on an OpenWrt 24.10.0 based
system using MT7915E/mt76 with country code IN.

Environment:

  Device: YunCore AX820
  SoC: MediaTek MT7621
  Wi-Fi: MediaTek MT7915E
  OpenWrt: 24.10.0 r28427-6df0e3d02a
  Kernel: 6.6.73
  mt76: 2025.01.14~8e4f72b6
  wireless-regdb: 2024.10.07

The India entry in db.txt is:

  country IN:
      (2402 - 2482 @ 40), (30)
      (5150 - 5250 @ 80), (30)
      (5250 - 5350 @ 80), (24), DFS
      (5470 - 5725 @ 160), (24), DFS
      (5725 - 5875 @ 80), (30)

The DFS frequency ranges are marked with DFS, but the country entry does
not specify DFS-FCC, DFS-ETSI, or DFS-JP.

On the device:

  iw reg get

reports:

  country IN: DFS-UNSET

When I configure channel 100, hostapd reports:

  phy1-ap0: DFS-CAC-START freq=5500 chan=100 sec_chan=0,
             width=0, seg0=0, seg1=0, cac_time=60s
  DFS start_dfs_cac() failed, -1
  phy1-ap0: interface state DFS->DISABLED
  phy1-ap0: AP-DISABLED

The failure is immediate; CAC does not run for 60 seconds.

I instrumented mt76 and during the channel change I see:

  DFSDBG: region=0 dfs_state=1 prev_state=0

The mt76 enum is:

  enum mt76_dfs_state {
      MT_DFS_STATE_UNKNOWN,
      MT_DFS_STATE_DISABLED,
      MT_DFS_STATE_CAC,
      MT_DFS_STATE_ACTIVE,
  };

So the runtime values correspond to:

  prev_state = MT_DFS_STATE_UNKNOWN
  dfs_state  = MT_DFS_STATE_DISABLED

The relevant mt76 code is:

  if (dev->region == NL80211_DFS_UNSET ||
      test_bit(MT76_SCANNING, &phy->state))
      return MT_DFS_STATE_DISABLED;

Therefore the observed path is:

  country IN
    -> DFS_UNSET
    -> mt76 returns MT_DFS_STATE_DISABLED
    -> radar detector/CAC is not started
    -> hostapd start_dfs_cac() fails

I also instrumented the later MT7915 radar initialization functions, but
they are not reached during the failing CAC attempt.

I reproduced this with:

  channel 100 / HT20
  channel 100 / HE80
  channel 52 / HT20

Non-DFS channel 157 works normally.

There is also an existing OpenWrt report with the same symptom:

  openwrt/openwrt#20699

My questions are:

1. Is it intentional that India has DFS-required ranges but no
   DFS-FCC/DFS-ETSI/DFS-JP region?

2. If DFS_UNSET is intentional, how are drivers such as mt76 expected to
   perform DFS CAC?

3. Is mt76 expected to disable DFS when the regulatory region is
   NL80211_DFS_UNSET?

I have not forced DFS-FCC, DFS-ETSI, or DFS-JP locally because I do not
want to select a radar profile without regulatory justification.

I can provide complete iw reg output, iw phy output, hostapd logs, and
the temporary mt76 instrumentation patch if useful.

Thanks,
Ankit Dange

