Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D7B2C3DA64
	for <wireless-regdb@archiver.kernel.org>; Fri, 19 Jul 2024 03:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w8Ek5UHiySv/ZikAPTG6HoQfahyzn35bBCuiqUBISkM=; b=yQ+bGMDGv3VA6fTLCKEjepZJmV
	4ibWXN7jZypTROMgqUPNXsEpRFIYygb2XheaQmizQdxaP4DGO8+aAE70zHV1rt9I02NZlS93oNUYT
	21BdaHI/F3qsODxXpGNOOE9+XsW7yHS8QRJ9Y3lQMLENR64zO2LfxclYkOUHWeiInkwpYh00AJLNl
	6O1KxIrC3XKZThX/9HuDnWY3v8DtRcnoQEpTPOavvXgwWwMc06F6nkwhj/B19uOqA25y6JVzZuHf4
	3imCbzJpWDrdamra4b26bCILfPDjLoaUPjjsnkC8jfDckMOHtiDwVNrFUVhNsahnX/EYZmzPI5DDf
	hluzYrdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeE4-00000001PjK-1D4u;
	Fri, 19 Jul 2024 03:24:08 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeE0-00000001Ph8-2hy5
	for wireless-regdb@lists.infradead.org;
	Fri, 19 Jul 2024 03:24:06 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-2610623f445so394976fac.1
        for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 20:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721359443; x=1721964243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w8Ek5UHiySv/ZikAPTG6HoQfahyzn35bBCuiqUBISkM=;
        b=fDRea1bl7zjy++nouM48q3/HyyarZw6zSh+j/YJgEDQNXSa3F4/OLuN+IUNi2/nU50
         NfmsHOgqW0i0PtI2RGFLoOTM7PVz9UBZ1NbyEp+sMIHFKip1WNBm7aVaiD7uWDqIspfm
         J8wH9O+nSl4Zb/GZkAtfsjiFL6rDDMuTyETBfc//zX/uI9xpAyaECh/k5FCMRAU+xe/b
         fmFKtA1VxnjrmglDJFoj1iV5McWz+XMmL/fQHGlKwWhreYpWZPkaR2sFJTRMch5mJjEz
         WCq23i3xU43Z14yDoP0KtntrVOa4eRPluK7LhAKaXFzauJcSzUfGPbk9ETQhksCK2sSc
         Ss7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721359443; x=1721964243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8Ek5UHiySv/ZikAPTG6HoQfahyzn35bBCuiqUBISkM=;
        b=gYCZLxm13JPu2ySDLAsHTh9b0okmfvnDbo6VCYpuWxxblSOd7UYqxOhBZio3CEU2fw
         gboTWZxOROmmuzjLfCByL5lyGcQfniK41u3KEYVRlRxzlbtO/O2YFrtpNZ/5k1HFZvcp
         RuVZwZKWKfQ84DfPHYW7lDtA5wrC2wUT0xgBh3K/wwese37/z6mKMvtBZ51iQufqlZTU
         m/Uh6PrisDQewR9nEQ+vx7CAdfLyTZbbRDcJ+o98k8/+XIVG2FFRiZYVGxE2kFOlQd1v
         jMNP5vInfmC2lkiEzqo0Cp/nITLfvJ7Xyl2QI+veZeaND5unSKXcY/KNyDC+Qb9Nfr6o
         MfQw==
X-Forwarded-Encrypted: i=1; AJvYcCWgRlqhY5OUwrpH0d3DehTjTI7cfFW8gwUga3fCgwOg3P7PBKV++qHTAJxfiJfv24dGs//NFAPl9NyXHwOQjh9r7A21XCpcHhJRuFW8DbAv9m8K
X-Gm-Message-State: AOJu0YxbWOFz0EoP8XURVbL772KvblTNbwDCNskFONEp3g+ONRlcLVxz
	AXyPE+GsXlndacZL3EuilcNyntfpR+otAms1fPXee7iggrVwseS6VzfQ3b4n
X-Google-Smtp-Source: AGHT+IF2ZZqGNPieXSKfz9ZikKCJfaWa+px68rTgyyBHI7zz6hWZRiNc/zSLpEEsmXqXQESxsDEyAQ==
X-Received: by 2002:a05:6870:f216:b0:260:f827:243c with SMTP id 586e51a60fabf-260f827439emr3102002fac.12.1721359443424;
        Thu, 18 Jul 2024 20:24:03 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-70cff59fd9csm279160b3a.173.2024.07.18.20.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 20:24:03 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 5/5] wireless-regdb: Add regulatory info for Namibia (NA) for 2023
Date: Fri, 19 Jul 2024 11:23:26 +0800
Message-Id: <20240719032326.7353-5-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240719032326.7353-1-pkshih@gmail.com>
References: <20240719032326.7353-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_202404_712412_3D196170 
X-CRM114-Status: GOOD (  11.09  )
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

From: Ping-Ke Shih <pkshih@realtek.com>

COMMUNICATIONS REGULATORY AUTHORITY OF NAMIBIA released NOTICE IN TERMS OF
THE REGULATIONS REGARDING THE SUBMISSIONS OF INTERCONNECTION AGREEMENTS
AND TARIFFS on 3 April 2023 [1].

* 2400-2483.5 MHz
  100 mW e.i.r.p.

* 5150-5350 MHz
  200 mW mean e.i.r.p.
  Restricted to indoor use
  The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
  (ETSI [2]: 200mW (23dBm) -3 dBm to be 20 dBm; DFS 5250-5350)

* 5470-5725 MHz
  250 mW e.i.r.p.
  Indoor as well as outdoor use allowed.
  The maximum mean e.i.r.p. density shall be limited to 50 mW/MHz
  (ETSI [2]: 250mW (24dBm) -3 dBm to be 21 dBm; DFS)

* 5725-5875 MHz
  PTP/PTMP: max mean e.i.r.p = 4 W
  Mesh/AP-MP: max mean e.i.r.p = 2 W
  (ETSI [3]: The FWA device shall have the capability to reduce the
   operating mean EIRP level to a level not exceeding 24 dBm for
   ChS = 20 MHz and 21 dBm for ChS = 10 MHz. 24 dBm is adopted; DFS)

* 5925-6425 MHz
  - 23 dBm (200mW) mean e.i.r.p
    Restricted to indoor use only.
    Mean e.i.r.p density for in-band emissions = 10 dBm/MHz
  - 14 dBm (25) e.i.r.p mW
    Very Low Power (VLP) indoor outdoor use.
    Maximum mean e.i.r.p. for inband emissions = 1 dBm/MHz

* 57-66 GHz
  40 dBm (10W) mean e.i.r.p
  23 dBm/MHz e.i.r.p. density
  Indoor use only

The EN 301 893 [2] specifies reduced power limit of 23 and 27 dBm for
5150-5350 MHz and 5470-5725 MHz respectively for devices that don't
implement TPC. Also reduced TPC requires being able to reduce TX power by
up to 3 dB. The DFS applicable frequency range are 5250-5350 MHz and
5470-5725 MHz.

[1] https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
[2] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[3] EN 302 502 https://www.etsi.org/deliver/etsi_en/302500_302599/302502/02.01.01_60/en_302502v020101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - join to the same patchset
  - 5150-5350 and 5470-5725 only reduce 3dB due to TPC
  - 5725-5875 requires DFS
  - fix wording in commit message:
    * '5725-5 875 MHz' --> '5725-5875 MHz'
    * '10 dBM/MHz' --> '10 dBm/MHz'
    * 'Maximum meand e.i.r.p.' --> 'Maximum mean e.i.r.p' (drop extra 'd')
---
 db.txt | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/db.txt b/db.txt
index b5e40e038d77..4eaeaae616d8 100644
--- a/db.txt
+++ b/db.txt
@@ -1355,6 +1355,17 @@ country MY: DFS-FCC
 	(5735 - 5835 @ 80), (1000 mW)
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
+# Source:
+# https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
+country NA: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (20), AUTO-BW, NO-OUTDOOR
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW, NO-OUTDOOR
+	(5470 - 5725 @ 160), (21), DFS
+	(5725 - 5875 @ 80), (24), DFS
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
+
 country NG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5250 - 5330 @ 80), (30), DFS
-- 
2.25.1


