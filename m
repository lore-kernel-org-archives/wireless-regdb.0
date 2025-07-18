Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08E18C83F1A
	for <wireless-regdb@archiver.kernel.org>; Fri, 18 Jul 2025 03:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fZhWe6L6AhfJrwGhwFLKFNsEK6ObzckPkOzEe3ygmyQ=; b=YroBc75bDLBYVGxzadlMp8/Qmj
	p0u5gJZn/LFjal3YBqXR9Af/fg6u6E5r111fez4LrbCtAyWC2H2fuNK9jaqk2iAMfZ8zU00p0iWr9
	sCkVW0X+AZH8tpnoJcR6JpHnqj4QCJfhHEi7t5Z/2E0PeF/AndsOcCc2FK27PzCeZkK/pnU1ibI4c
	2ftWyYWNT26kgJWL6ljXL2K3yc+OP23cC+itIITZ6hprfVl727//H8qHfYK9KrZ87kWiQyh8PXt8B
	lcD4lvKp4WNOBMYPvPUxju4JrAt8vi4nhZw4JUnPZxw1iPKL6oigoaYaciu90yNURx501ay7fnNRp
	TQ/Tc4Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucbSg-0000000BaAt-2zVW;
	Fri, 18 Jul 2025 03:08:38 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucbSa-0000000Ba9g-2e63
	for wireless-regdb@lists.infradead.org;
	Fri, 18 Jul 2025 03:08:37 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-23c703c471dso29605845ad.0
        for <wireless-regdb@lists.infradead.org>; Thu, 17 Jul 2025 20:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752808111; x=1753412911; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fZhWe6L6AhfJrwGhwFLKFNsEK6ObzckPkOzEe3ygmyQ=;
        b=j2NTPaVvUr2aqHkG3szoMMke5BVpfGsh8ht2sJ63aU3AkFLqeTpS1NFeDkQfrLRqim
         zEL3I8xQbjN3bnupak+4qw1i2dcMBoqRWZNdkxeY1YtLeNKF5XphglREL8U3875AfYGl
         J3C7k+7VI9J+ge9WQcpjJ6dvhobm9PFvSAUJ5sAnVI7iJQvVJlTaqeb1wSVBo30p+IoX
         b+tAvEpp9oi/YlbOIPilyPgJZWeJRvxVDzQBSs25+VLNZsWBiNAIDV9Fv0hDxgcEw22O
         +/uzy76dJGgDMGHkTdv/4RmN13x+MFUTBSvZQKLVYd2sniS0HOTxqe/AA6971DPUD3rE
         8RcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752808111; x=1753412911;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fZhWe6L6AhfJrwGhwFLKFNsEK6ObzckPkOzEe3ygmyQ=;
        b=NWpXtKihvRgovvfx5IpVnQiobb1IVmrYdHZeKUF3csmUCoH3bqcTHi4R4gbi5l8wYB
         mBs/SJlTMtWPhXLh0QDtPpaxzC/eXz/vTLe11rOPutRFGVSHGWeAwm4Ui2c1FBafXYLf
         U0sud2Gku2+uhFWozv3eGTGLZE97ErdJcBdnWNzdN4EkygESAgI2xVolwDzFbNGmqJVs
         t29eOFMMsTxCCbdLfJOgXrGmU+oJGw0UaR7IDme/bJ2+AWM1dwZv+7fhW0r6Hb3e35oj
         azfect6AYMg0Ms6vP6/yj015Fi3cRq2CwT0zJsvMezzCEU2t6VMmPY/oZWPHeq2bNWpJ
         zVeg==
X-Forwarded-Encrypted: i=1; AJvYcCUaiKOBrghhUxcQTpThUGhp/Q+sZa4jiFTsQiESb05iWhSfuCli4J35qRmknngawsSpjiGMnbN/Nc6Q9JScKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxSldMoYCzyg+9902bXTiQlvf335BuOiSOsyQoS3WsoeWe09pfQ
	4J6ynPoKfGMTxQ3CwiRQ7nDcMotsZ6LaeGjkI+KRxmYOUhIs5GcBKVUu
X-Gm-Gg: ASbGncuT8RVoJcmOMDMTyOpaBAN7xHqTPkUmi1r9Lcq4V6PNpV432nv5a6Czdiae5Oj
	mgUW5FMtHLde+M+dIZ8TKimMQSVzYCUSDe5lGTRmxQjOnJMDwNVwU6Pt9tD9OrcHf9bIDT9+7PD
	he8FjU2dBUwkhppAinjWaym8hEP9TdwSSWwC6IWyPkDfzsouvOlMSzM2SIGLP5CXB3JhZLxtGzL
	sSxlQdSvDBoi0O4iGMK6eQKEtwhhBfLPtBRWMa5foaNwdF8g8OW3Nl8f24rFPB6Fo1lW+xehdhO
	OskOgVZolk5L6FSoAJOOmdHMAuKhEY/Y29pVwtOK+MENDjfHEbIvCEGM6qoEqySm7ua0S8w1up+
	0hO7ZVSBuCFqrfJczuq2AVJqR/uFx7Tc90WGiaQoca5emJScsTEF6F6FDNNCenAP4ohBNds9u1r
	U=
X-Google-Smtp-Source: AGHT+IE32zSesFR5yx8CzcP6NzH5hPVNwTYxDFRCPAfFDhbRLtF1Fyo91AOzuSP8ptQXZu4TzpJFXQ==
X-Received: by 2002:a17:902:d64e:b0:237:e753:1808 with SMTP id d9443c01a7336-23e38f8edadmr20795005ad.20.1752808111047;
        Thu, 17 Jul 2025 20:08:31 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-31cc3e5b46csm275324a91.11.2025.07.17.20.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 20:08:30 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 1/2] wireless-regdb: update regulatory rules for Botswana (BW) for 2022
Date: Fri, 18 Jul 2025 11:08:09 +0800
Message-Id: <20250718030810.17213-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_200832_676754_044176CD 
X-CRM114-Status: UNSURE (   8.59  )
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

From: Ping-Ke Shih <pkshih@realtek.com>

Guidelines On The Use Of Short-Range Devices (SRDs) In Botswana released
on February 2022 [1]. The pages 20-21 describe:

* 2400 - 2483.5 MHz
  - 100 mW e.i.r.p.
  - EN 300 328
* 5150 - 5350 MHz
  - 200 mW mean e.i.r.p
  - EN 301 893
    * DFS: 5250 - 5350 MHz
    * for devices without TPC, the limit is lowered 3 dBm
      (reduce 5250 - 5350 MHz to 20 dBm)
* 5470 - 5725 MHz
  - 250 mW e.i.r.p
  - EN 301 893
    * DFS: 5470 - 5725 MHz
    * for devices without TPC, the limit is lowered 3 dBm
      - Not required for devices that operate at a maximum mean e.i.r.p. of
        27 dBm when operating in 5470 MHz to 5725 MHz
        (keep 250 mW for 5470 MHz to 5725 MHz)
* 5725 - 5875 MHz
  - BFWA is limited to 5725 - 5850 MHz
  - PTP/PTMP: max mean e.i.r.p = 4 W
  - Mesh/AP-MP: max mean e.i.r.p = 2 W
  - EN 302 502
    * DFS: 5725 - 5850 MHz
    * The FWA device shall have the capability to reduce the operating mean
      EIRP level to a level not exceeding 24 dBm for ChS = 20 MHz

[1] https://www.bocra.org.bw/sites/default/files/documents/Annexure_3.3.2A_SRDs_Guidelines_Feb_2022.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index 81ff14ecaac3..d2414810442b 100644
--- a/db.txt
+++ b/db.txt
@@ -368,6 +368,15 @@ country BT: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+# Source:
+# https://www.bocra.org.bw/sites/default/files/documents/Annexure_3.3.2A_SRDs_Guidelines_Feb_2022.pdf
+country BW: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (250 mW), DFS
+	(5725 - 5850 @ 80), (24), DFS
+
 country BY: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
-- 
2.25.1


