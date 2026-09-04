Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4F65C79F82
	for <wireless-regdb@archiver.kernel.org>; Fri,  4 Sep 2026 18:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:MIME-Version:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+FVQDqwY4yOK1b7Ca/fCnzSAexkd6ZecfuH5u7/amtQ=; b=ZxUdM6/wcwe0dxHsqsIvCU5IPd
	1A/1hatqXn1f62SgNRr8MkCHZmprnwA6zppjHtHvKdgGoWgVKe71EEsimg+1JxVjWf9ju975tr037
	W78WeQRy2F3UyLCRLfcBIgSs0JM6N0e6VsYV254GKCM6Mc6cYguyRcg/bDugXEH9lAWf7gdv26WlY
	lToAaI+D4BFzcwDZG3N+RkkYPOSFZId5nRKA3IX3Rc9QV1XVffRotaCGvkDNMOsn8i2UAgbvsID33
	Bwu7xTkjy76yrDTUq+Svl+w8/YbgihaDSAL8nwSHlUlzNBSQHqLaAOMTXfLlCGX3MNN2aV6yo8LtZ
	5y4Mv31Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Yg4-000000034gF-00uo;
	Fri, 04 Sep 2026 18:30:16 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Yfz-000000034fR-3xuc
	for wireless-regdb@lists.infradead.org;
	Fri, 04 Sep 2026 18:30:14 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-39682983a0fso1402898a91.3
        for <wireless-regdb@lists.infradead.org>; Fri, 04 Sep 2026 11:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788546611; x=1789151411; darn=lists.infradead.org;
        h=content-type:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+FVQDqwY4yOK1b7Ca/fCnzSAexkd6ZecfuH5u7/amtQ=;
        b=QEf1nbBaXcxqCsMArYTgPNNq7/vsfSFprGkzu/tXBWD8be08yvwqV8IapN36n9bh97
         xWWI5mMMcM4dTX4sba7z0lWkoa00fFn5cPvdGE+ZgGtYSjsly/c1HZ+K+rv0IePdKbTS
         4kZaOGWLNIe213qHQxELZHJSc9A0raMpavuieZqiJCHUFJCgo8iZEfyOY0JiUf7ac+B0
         TXUgtll2U/LxxXfSdgd0lLeg0QYoz5JLi3yIfMa9LE90mIXhW3cR0QSMAh6NzCDm/Rq4
         uBpX6VzKeU1d5urcvfRCVUyJGaau6TPy4PGPaxuEJzZ4wW/868PMorx7syVNiX0JshBq
         IlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788546611; x=1789151411;
        h=content-type:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+FVQDqwY4yOK1b7Ca/fCnzSAexkd6ZecfuH5u7/amtQ=;
        b=BUve+bKasX9QlFeefs7boU8kytCMtTXQdLCcbhvuNekW6zrI8J0I035/A8EUfv7ZiP
         J+1QEg1YU6i8b9Tw5J9CCRlfOoZcTzRbXcHAsNNjZvlXCClN4HQ3VaEtbMKqSYgEj7yk
         wTb4qn5w1VfJOCYxGr6iAeeL/3rLimjyWsrIZOFDTgYrDMg5ik8i4rIdSTsUnu5R+IVO
         xMP5uWBgwY2paisj3wb2Qc8cdofKRVk3bLgF/WubyozFEp4HLGOQOIcC28EZGMjZQXlh
         E466nHnh7kJhZPUQVyL7+zkTl/9Ahhc+8W6V8Awqt+eltf/O2jNNJq1X5OpCBOhtk3N+
         nqRA==
X-Gm-Message-State: AFuF++mvsAlFW32XR35QlHUqatcwgetcx2RQPYIBJ7CGL6FZpf01ACvt
	xiHxwmYb/C/vz3bl+6ewCagRbAsiutgGa/DT+NFVzs20uNETRLpVE5le
X-Gm-Gg: AYBFou3AmvFMBVRWjw2ZdKtBFeU2c7PwkzG05VxSq8GGLWhcNZMZAqr7opsf9/0lMxX
	zD8bKhlp9IVZ2eP26FpuAZ18pjay4DwT5uJlxofZOinDSltFYvC6B0Ixe4ebjGPVBRvXN2sfpE5
	cmjaM4OcNO4Uau1YIG9yKTbZjiGtyCyhaHdEq446S2LkPkYF7Vy8hOMho9FG9bUsA1rdRN/YoX8
	JCeBEZHdCzWBJ2F0ociDKUggGFEecafDfjWmKOrahPp+JJaN0gI22pyuWdkrc8SdMxC2u4Of1Ci
	HA4CPoSFablfDvztmKa4/7LyKWUG5NeyWWYoRrj7w11+S2KNW9aqM2c4VLFfICzcMVkNPW2F+5L
	+seZAoU0Dw4SKyaulRJSsHTRZap/DnQvxm1qvSUzTpZdWE+z4PVdiCKw/chvicugx5CW5zshN12
	cViloe3uvEWbv8mBgliLS40iEQw5Ku/MLIWvqgnswsZMOSAcpVdOsbPpmXIyp9qnb2fZhO6paLD
	6epiqNUWIuSNIQnVjX/ATi0fui1E1vN7ZgwpnrlMRWpQlYjF5a3V1d3i2JvaznfN14fHzfwqWRy
	ofbmzv//errsCf7eixMKSA==
X-Received: by 2002:a17:90b:582d:b0:399:e97:8d5a with SMTP id 98e67ed59e1d1-39b2627fe18mr11352035a91.25.1788546610758;
        Fri, 04 Sep 2026 11:30:10 -0700 (PDT)
Received: from localhost ([122.179.130.175])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-333959d5f69sm8000538eec.0.2026.09.04.11.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 11:30:09 -0700 (PDT)
Date: Sat, 05 Sep 2026 00:00:06 +0530
Message-ID: <cab32383bff0af2e4b31a86422d20d71.ankitdange37@gmail.com>
From: Ankit Dange <ankitdange37@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: wireless-regdb: IN DFS ranges result in DFS_UNSET and prevent mt76 CAC
Content-Type: text/plain; charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_113011_988258_C1F75787 
X-CRM114-Status: UNSURE (   8.22  )
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

  phy1-ap0: interface state COUNTRY_UPDATE->DFS
  phy1-ap0: DFS-CAC-START freq=5500 chan=100 sec_chan=0,
             width=0, seg0=0, seg1=0, cac_time=60s
  DFS start_dfs_cac() failed, -1
  phy1-ap0: interface state DFS->DISABLED
  phy1-ap0: AP-DISABLED

The failure is immediate; CAC does not run for 60 seconds.

I added temporary instrumentation in mt76. During a transition from
working non-DFS channel 157 to DFS channel 100, I see:

  DFSDBG: region=0 dfs_state=1 prev_state=0

The relevant mt76 enum is:

  enum mt76_dfs_state {
      MT_DFS_STATE_UNKNOWN,
      MT_DFS_STATE_DISABLED,
      MT_DFS_STATE_CAC,
      MT_DFS_STATE_ACTIVE,
  };

Therefore the runtime values correspond to:

  prev_state = 0 = MT_DFS_STATE_UNKNOWN
  dfs_state  = 1 = MT_DFS_STATE_DISABLED

The relevant mt76 function is:

  enum mt76_dfs_state mt76_phy_dfs_state(struct mt76_phy *phy)
  {
      struct ieee80211_hw *hw = phy->hw;
      struct mt76_dev *dev = phy->dev;

      if (dev->region == NL80211_DFS_UNSET ||
          test_bit(MT76_SCANNING, &phy->state))
          return MT_DFS_STATE_DISABLED;

      if (!phy->radar_enabled) {
          if ((hw->conf.flags & IEEE80211_CONF_MONITOR) &&
              (phy->chandef.chan->flags & IEEE80211_CHAN_RADAR))
              return MT_DFS_STATE_ACTIVE;

          return MT_DFS_STATE_DISABLED;
      }

      if (!cfg80211_reg_can_beacon(hw->wiphy, &phy->chandef,
                                   NL80211_IFTYPE_AP))
          return MT_DFS_STATE_CAC;

      return MT_DFS_STATE_ACTIVE;
  }

Since the regulatory state is NL80211_DFS_UNSET, mt76 returns
MT_DFS_STATE_DISABLED before CAC handling.

I also instrumented the later MT7915 radar initialization functions:

  mt7915_dfs_init_radar_specs()
  mt7915_dfs_start_radar_detector()

These were not reached during the failing CAC attempt.

The observed flow is therefore:

  country IN
    -> DFS-UNSET
    -> mt76 returns MT_DFS_STATE_DISABLED
    -> radar detector/CAC is not started
    -> hostapd start_dfs_cac() fails

I reproduced this with:

  channel 100 / HT20
  channel 100 / HE80
  channel 52 / HT20

Non-DFS channel 157 works normally.

There is also an existing OpenWrt report with the same symptom:

  https://github.com/openwrt/openwrt/issues/20699

My questions are:

1. Is it intentional that India has DFS-required ranges but no
   DFS-FCC, DFS-ETSI, or DFS-JP region?

2. If NL80211_DFS_UNSET is intentional, how are drivers such as mt76
   expected to perform DFS CAC?

3. Is mt76 expected to disable DFS when the regulatory region is
   NL80211_DFS_UNSET?

4. Should the India regulatory entry be updated, or is there another
   intended mechanism for selecting the appropriate DFS radar profile?

I have not forced DFS-FCC, DFS-ETSI, or DFS-JP locally because I do not
want to select a radar profile without regulatory justification.

I can provide complete "iw reg get" output, "iw phy" output, hostapd
logs, and the temporary mt76 instrumentation patch if useful.

Thanks,
Ankit Dange

