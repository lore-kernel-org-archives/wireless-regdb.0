Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 157B7C48260
	for <wireless-regdb@archiver.kernel.org>; Sat, 17 Feb 2024 01:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5wrksPjyjBXXfdC6zCRuDBRWDpaXwCOZ9x27jZO7r4s=; b=ZpvFo5u2grHyI6THIIDw3gTUnN
	uZbKk1TNYAmA5xdQxbQhvr9Tkc+3t+tSiZeUy7fSeGNUgK+aI6QmOhA65NUz1KbT30F1zwoWVDiEV
	HqJXHLBuWSbqcTrskb9vuDUUGg3f0W3VkdMJUMlVL3ogAU1j3j9/vddNZHrIYdimn1DWg8aGBIgP6
	/ga9H6qxIEB+BM+YtF8QQROTyEl2mPLvwhd0pbd29ZDMAA+sKF8TGSnwR/CtTvmrWW7XUftdNVCAn
	bQit3EIcFB6BCyBdxyjKMeZ9Qzrqis0zQGYT6ApX/B+OuzYO/04tMAhNxr6OKEKUHEcx30UIS2qyI
	RZpSNQew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb9m9-00000004QwN-1fYG;
	Sat, 17 Feb 2024 01:45:57 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb9m6-00000004QvO-3YfF
	for wireless-regdb@lists.infradead.org;
	Sat, 17 Feb 2024 01:45:56 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6e12dbc7843so1179419b3a.3
        for <wireless-regdb@lists.infradead.org>; Fri, 16 Feb 2024 17:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1708134354; x=1708739154; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5wrksPjyjBXXfdC6zCRuDBRWDpaXwCOZ9x27jZO7r4s=;
        b=KMHeyJ9SZyX9swZpjVeYNeW1KFNJ8ZeCMcb+uSgOZzXhbFS4jQpoAvtRPYHHMCVn1h
         GGk7c6IE1wosblZRKmkt3r4qvnciBklEs6/6KyZl/YFJ0+Y3XCXzeJceDkScOkp/HWQ4
         RmYCLzmC9huRzkgv1LZOppmXIeUDpC7eoJM/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708134354; x=1708739154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wrksPjyjBXXfdC6zCRuDBRWDpaXwCOZ9x27jZO7r4s=;
        b=f/Twk1UE3JKFFMNoU6PaxG9QDahj8knimEFfRj6aTKjGc1H/1EdNqcdzrkJZaZ24Qk
         BDTJ42h/+xgTjQzOFHzR31Brh5NfvTx74xclhDqXL3d29QiqVYQBIv+gv8pO5gW9CTX2
         wjsmmrS+gGbi2HECXsf7Ae8/6MMGnltnVBM56Hv8ElaD7m2kS02jIiyKiCwqElQzl2LA
         CTqSp6ucqAL8ytD7B3hZdfFNzA5O0DMszjd76DxHNB8AMmj5bjj7/tLzM9pObge+9F0J
         r69cTzB3+tZiRZgwWKKrueCjcr44ZkDFVQTbHDe6hLfW4RXQ7UTr+LSKr6zBlH8QKzVD
         I10w==
X-Gm-Message-State: AOJu0Yx6Z6oSVW3BKxEltW4OJDqDZSYDaeq75vq+uLLoZOfaks33x2of
	YlSPjGxAQBlaiSt/JHrMHX6Qh1/wGL1EwW/hkGa10LBaLNWv58ccoDl6n0/EYg==
X-Google-Smtp-Source: AGHT+IGNMqnsYPReE72SCZFBuoTiLwBDTsRvsL2TFYJ0zGca1vTRYromtAEL/GXerpFq7q+75rlCOg==
X-Received: by 2002:a05:6a00:8010:b0:6e1:1e08:d08 with SMTP id eg16-20020a056a00801000b006e11e080d08mr8950692pfb.23.1708134353765;
        Fri, 16 Feb 2024 17:45:53 -0800 (PST)
Received: from livaq3plus.. ([2401:7400:c808:b52:1829:e776:2919:ee9e])
        by smtp.gmail.com with ESMTPSA id s194-20020a6377cb000000b005dbd0facb4dsm530515pgc.61.2024.02.16.17.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 17:45:53 -0800 (PST)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH] Revert "wireless-regdb: Update and disable 5470-5730MHz band according to TPC requirement for Singapore (SG)"
Date: Sat, 17 Feb 2024 09:45:42 +0800
Message-ID: <20240217014542.12971-1-me@ndoo.sg>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_174554_911439_5B877C58 
X-CRM114-Status: GOOD (  13.64  )
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

Singapore's regulatory authority has confirmed that 3 dBm EIRP reduction may be used in lieu of TPC support:

> Dear Mr Yong
>
> We refer to our email of 17 January 2024.
>
> RLAN operations at sub-band 34 and 35 is allowed to transmit at ≤1000mw eirp with TPC and DFS employed. IMDA TS SRD Table 1 sub-band 34 and 35 can take reference from either ETSI EN 301 893 or FCC Part15 §15.407.
>
> As stated earlier, FCC has pointed out that the TPC will not be required if eirp is less than 500mW.
> However, as the latest revision of TS SRD has just been published in Sep 2023, we will consider making modifications to it in the next release.
>
> - IMDA INFO (IMDA) <info@imda.gov.sg> on 2024-01-26

> Dear Andrew
>
> We refer to our email 31 January 2024.
>
> Kindly be informed that IMDA does not issue addendum documents. You may wish to cite this email to the maintainer.
>
> - IMDA INFO (IMDA) <info@imda.gov.sg>	on 2024-02-07

Related wireless-regdb email/thread:
- [[PATCH] wireless-regdb: Update and disable 5470-5730MHz band according to TPC requirement for Singapore (SG)](https://lists.infradead.org/pipermail/wireless-regdb/2024-February/001517.html)

This reverts commit d695bf21d1cdf02e64924f452c242f7588469609.

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index ed76600..15b439d 100644
--- a/db.txt
+++ b/db.txt
@@ -1594,7 +1594,10 @@ country SE: DFS-ETSI
 # 5725 - 5850 MHz: IMDA TS SRD, Table 1 Sub-band 35
 # 5945 - 6425 MHz: IMDA TS SRD, Table 1 Sub-band 45b
 # 57000 - 66000 MHz: IMDA TS SRD, Table 1 Sub-band 40
+# Note: 500mW for 5470-5725MHz bands per FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz as referenced by IMDA TS SRD
+#  AU and BG regulatory domains use the same interpretation of cited FCC and ETSI standards
 # Note: The transmit power for 5250-5350MHz bands can be raised (by 3dBm) to 200mW when TPC is implemented: IMDA TS SRD, Table 1 Sub-band 33a
+# Note: The transmit power for 5470-5725MHz bands can be raised (by 3dBm) to 1000mW when TPC is implemented: IMDA TS SRD Table 1 Sub-band 34
 
 country SG: DFS-FCC
 	(2400 - 2483.5 @ 40), (200 mW)
@@ -1604,8 +1607,7 @@ country SG: DFS-FCC
         # Since 5725 ~ 5730 MHz belongs to the next range which has looser
         # requirements, we can extend the range by 5 MHz to make the kernel
         # happy and be able to use channel 144.
-	# 5470 - 5730 requires (unimplemented) TPC per legislation
-        #(5470 - 5730 @ 160), (1000 mW), DFS
+	(5470 - 5730 @ 160), (500 mW), DFS
 	(5725 - 5850 @ 80), (1000 mW)
 	(5945 - 6425 @ 320), (250 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (10000 mW)
-- 
2.43.2


