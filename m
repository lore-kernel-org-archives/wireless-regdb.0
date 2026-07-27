Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FA88C53219
	for <wireless-regdb@archiver.kernel.org>; Mon, 27 Jul 2026 09:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ayLJil7EWbB87Q8CnsrfOaNAtvxnoc3bMCWEBAo2eoM=; b=jm89AJmDsmDuuqD9+/IcCcm3fw
	tCc2gSE4RcOyBhhrelVxVMtfMXX/jrkEUCgjvw3sCtXUBbU7ZVVXB4Q/68zPMqnf1+dHDz8HOG8Cj
	UwOsy1BafrLRrPKtpibvIAoptm1hnKP5VSjf2qjM7E1zoa5+7mEjBOln9oL1qUJ4YluWnlzlLzlxE
	zs0e3yaxbAtryPum+6OkzxPTfv+pal3UIAa7goGgdOOD1v1hIRiEfjH0iYaSQSU4+5Lqx9VHbf+Su
	8HVd7cQbx73LqeJkHFdI7ZNyTolNoOd7iDpAsBdfgv+wuvuHY/SLfi6ZvmAmYhllWrlOZSFFfyFjq
	jQiA85Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHBz-00000002HD5-0d4h;
	Mon, 27 Jul 2026 09:00:11 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHBw-00000002HBr-1rRj
	for wireless-regdb@lists.infradead.org;
	Mon, 27 Jul 2026 09:00:10 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-47f707e5d75so1628498f8f.1
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Jul 2026 02:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785142806; x=1785747606; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ayLJil7EWbB87Q8CnsrfOaNAtvxnoc3bMCWEBAo2eoM=;
        b=Z/RKKHczQ1/w22quu2m99c0XH4gkcZ7rDEW4rg+e2zmZsuX9g/KFq5XE382+sgK64D
         dsvNjTXuHBG4S5gz2lb/CWe0c8JjDWyzdpEVpgQRwfRFGt7AuUPo+KkH3igMSOb/LCHx
         II3GvIoEdGIokskBAbqf4ki7YZGOxoH+HPDP/8Lem5Z4cgdHXGz/WovLXlJqa3+GlzJI
         ogiwiFACYW5f6isgeaVqxA8ReNqWQrc6Utxxmj4jFUIB+eKtWuDNDnmr3I9A/oigA8+i
         mATc9ECKQIkFjaO+uw26bOP0qquecxScPhAoKoJC8RRv+B/KUTG6Lvm2F/IlfY8WrJCR
         4rtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785142806; x=1785747606;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ayLJil7EWbB87Q8CnsrfOaNAtvxnoc3bMCWEBAo2eoM=;
        b=RlsPB3smPwIUH2jE8NZ5zq7LSfSaIx+gXGgb7OzwzbPIbC1j3vWk4o24q0OBnIY8Kx
         eXqxItpfpS6AgRi07PM9hJmjk6YzIKsPQtTK5HRTSSS94/1KOg9xA3sghoPcVpErwCMA
         MrQm8vJz665Gq+/1K7GnKeKG7UnURCWPUrPel0xWgE6PAl/lZOvSqXq/R4LOTGRgyPvn
         n8BfaxtRsJCTBnhA1RWMP6pAkQhMrIYwIRaXsGKszM+cO2y73S1Q5zSl2/g9opglfBw0
         aMiAzewYOVIj2d4dN7BSA04SwpLYfxTwOvNXm3OzBzbVzrPscvf4UIYcrrjj80TXKRef
         dsJg==
X-Gm-Message-State: AOJu0Yy8cB48GyMeph+jiHlPx9hOV2XSOlj50Xqi8R301gquwWmeYw66
	2HGY5DcRsKeYsfGdO6UG8wK+RkiC/EJbky78TVD9ILQnVn8dZukE/dup1e4CV4Qa
X-Gm-Gg: AR+sD12/nclZ/zQP7KtOzmjIfMtsfHYlkReFcJv31urkVvsRxmKLQp2nUlhl+9aV0S5
	7QbiKEteu5IJIWGcSrGODeESRs6fQTvd479GEyrPKzc2nGF6izPENQxgYa/hyJEKUG0OM/eJzov
	Z0iKAgTgQH7NlM0PsO2oHuabcggB8QhBRHy+8ouY0jBV1jXBBsbzHAeDo1iXODUQ1LYoo7tiZQS
	HHije0LxwzonnV0sO5Add0+Pa6viMjp8+vZgBTvtbS7aE2paoFyqEaSM7eoUNveNq6tq0FfinwC
	pPQlONCAp3xw1LlMkX4OkAC6dcgw+5HHlEuPXIkpEbCk92vH9GXKCcdWCatO0Or411xMA+ELwg9
	+AIovF4B4Q+CXFSHj09zVpS99nIzjVL7NNQr+HCsmPVFQ5QXBL+4qeZNaZdTxe++d56gMPmKjm4
	wYjCzq6kSCFIwYePLLY8BKYXXHjA==
X-Received: by 2002:a05:6000:200e:b0:47f:9441:51b5 with SMTP id ffacd0b85a97d-47f9fc8c064mr9559643f8f.5.1785142806213;
        Mon, 27 Jul 2026 02:00:06 -0700 (PDT)
Received: from localhost ([102.128.173.0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85c6f076sm47867170f8f.34.2026.07.27.02.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 02:00:05 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH] wireless-regdb: Update 5 GHz rules for South Africa (ZA)
Date: Mon, 27 Jul 2026 11:00:02 +0200
Message-ID: <20260727090002.357376-1-loukot@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_020008_501834_40777734 
X-CRM114-Status: GOOD (  11.00  )
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

ICASA has substituted Annexure B of the Radio Frequency Spectrum
Regulations in full twice since South Africa's 5 GHz rules were last
touched. The operative table is Notice 1822, Government Gazette 48643
of 18 May 2023. Notice 1822 section 1 recites the chain itself:

  Notice 279, Gazette 38641, 30 March 2015 (original Annexure B)
  Notice 386, Gazette 38754, 30 April 2015
  Notice 781, Gazette 40436, 22 November 2016
  Notice 737, Gazette 45690, 21 December 2021 (substitutes in full)
  Notice 1822, Gazette 48643, 18 May 2023 (substitutes in full)

The 6 GHz row already cites this notice, added in b7bced8
("wireless-regdb: Update regulatory rules for South Africa (ZA) on
6GHz"). The 5 GHz rows were not revisited then and still reflect the
2015 table. The current table's 5 GHz rows read:

  5150-5250 MHz: 23 dBm e.i.r.p., WAS/RLAN, SANS 301 893
  5250-5350 MHz: 23 dBm e.i.r.p., WAS/RLAN, SANS 301 893
  5470-5725 MHz: 30 dBm e.i.r.p., WAS/RLAN, SANS 301 893
  5725-5875 MHz: 25 mW e.i.r.p., non-specific SRD, SANS 300 440

All three WAS/RLAN rows list ECC/DEC/(04)08 under "Additional
Requirements". That decision restricts 5150-5350 MHz to indoor use and
requires DFS and TPC on 5250-5350 MHz and 5470-5725 MHz, but not on
5150-5250 MHz.

This reverses 99ebbaa ("wireless-regdb: Update ZA rules for 5490-5710
MHz"), which dropped DFS and the TPC deduction from that range in 2015
on the strength of the Radio Frequency Spectrum Regulations 2015, the
instrument current at the time. ICASA has since restated both
requirements, and rejected an industry objection to TPC in the reasons
document accompanying Notice 737:

  "TPC and DFS are not new requirements as they have always been
  requirements within the prescribed performance standard SANS 301 893"

Changes:

- Add DFS to 5470-5725 MHz. The entry currently permits 1 W across
  5490-5710 MHz with no radar detection, in a band where ICASA
  requires it.

- Add NO-OUTDOOR to 5150-5250 and 5250-5350 MHz, per the Notice 737
  reasons document section 6.6(c): "based on numerous interference
  complaints caused by the unauthorized outdoor deployment, the
  Authority maintained the position allowing only indoor deployment in
  those bands".

- Raise 5150-5250 MHz from 20 to 23 dBm. Same document: "the Authority
  updated the power limit to 23 dBm in accordance with the prescribed
  performance standard SANS 301 893".

- Lower 5470-5725 MHz from 30 to 27 dBm and keep 5250-5350 MHz at
  20 dBm, taking the figure that applies without TPC. The three
  resulting values match DE, FR, IE and NL, which carry 200 mW, 100 mW
  and 500 mW for these bands under the same ECC decision.

- Align the band edges with the gazetted limits: 5170 to 5150, 5330 to
  5350, 5490 to 5470, 5710 to 5725. This yields no additional channel
  at any width; channel 144 still does not fit, needing 5730 MHz where
  ZA authorises 5725 MHz.

- Add the 5725-5875 MHz non-specific SRD row at 25 mW, as in DE, FR,
  IE and NL.

For a device this makes channels 149 to 173 available at 14 dBm, adds
one 80 MHz channel at centre 155, gains 3 dB on channels 36 to 48, and
costs 3 dB plus radar gating on channels 100 to 140. No channel is
lost, and the 160 MHz picture is unchanged.

The 2.4 and 6 GHz rows are untouched.

Reference:
  Notice 1822 of 2023, Government Gazette 48643, 18 May 2023
  https://www.gov.za/sites/default/files/gcis_document/202305/48643gon1822.pdf

Signed-off-by: Louis Kotze <loukot@gmail.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 72f7900..2489d07 100644
--- a/db.txt
+++ b/db.txt
@@ -2190,9 +2190,10 @@ country YT: DFS-ETSI
 # Source: https://www.gov.za/sites/default/files/gcis_document/202305/48643gon1822.pdf
 country ZA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (30)
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	(5725 - 5875 @ 80), (25 mW)
 	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 
 country ZW: DFS-ETSI
-- 
2.55.0


