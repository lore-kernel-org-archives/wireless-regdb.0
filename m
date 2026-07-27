Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A51CC531D0
	for <wireless-regdb@archiver.kernel.org>; Mon, 27 Jul 2026 09:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WUTiVGokR0rbKHG+nh9s3ifgbPs3lNZFRWzyUEIYjZo=; b=THtvxsbZJ0GzAvjra+4MOWM48e
	/y8ezi9uB+UJFeHNO7tpBVdj3C0x+t2VhOdi36MRnzr6rWrYnEEs8yfjI3gqvYHdYEUf285wUaC4/
	0PY58z87CGTTJbCBuBLGDo0Bw208InnLKO1PBi7Ycjzq2DHMhjwgUueLnRMQoCOHiC8eR51kxUZFq
	x8HFdD1LBovHQkVk9AKEjBSZ238BQOOojCHfOjwLj3pgmvfmubVEhkiYVQtMP8oZG3QCm3p+kBzrY
	uM3Jff0gsAyqZOTbGJRpKKkV04pHg4R64lluyMa0Kj5lBqBqTOsMjqX6h6iteypJPQwTMxTD9a9OS
	QmsNa+4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHBu-00000002HBm-3PMW;
	Mon, 27 Jul 2026 09:00:07 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHBn-00000002HAU-1lBX
	for wireless-regdb@lists.infradead.org;
	Mon, 27 Jul 2026 09:00:05 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-4728c12ba97so1486326f8f.0
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Jul 2026 01:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785142797; x=1785747597; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WUTiVGokR0rbKHG+nh9s3ifgbPs3lNZFRWzyUEIYjZo=;
        b=bU+/BnKo4dpT5hwrgQq5mBAXB4RNOThYhvW26lZ/IssJUqpHgzHvPGSFnCdoE1j3EP
         XFRIMLsbwUQjhV18jMbYxtD16QYFmD5X3k2XsEFK7T+hoivmBueT1+4pxwOfAwj89l7P
         oRS/GC8kUB0U3GOtpQj2XkomCGiz9VczYdT6LgUun5HurdLBi9xso9a2ebk19JmxCfUn
         2nHQKlvVMw9sIXpLmaLWDxFxw30dGiGs61YUctT30RHjvhf64pk6OS4rrUzdWLX/mJn9
         B4rTHN+TKhue+Aa42IlR1XwexGaR1M3TtIEZyMDHAAG0+jPu8Whwe3lA0jtZvTiYbSv7
         /s4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785142797; x=1785747597;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WUTiVGokR0rbKHG+nh9s3ifgbPs3lNZFRWzyUEIYjZo=;
        b=lbkHkMbnwHf/5tmrc+kPFNAQ8ZD4+DKAWy1Gbx5l4J1YqBd3CFkHJRylqGHRHG/B2A
         TeumkzMzK+wTILbzYqGMG/e32FRNcfwFJPETc0jFlyejlzsqTTPu+moUlHyHEtZHuyW8
         6qxO2LvH4GLneBNKr6lnjU+dAM558lCRfCvE0n50dD5u1Tsd9iX+z4esM8i+QdLx58ie
         Ng+VIh1yr59Y9nSmpR4VzfQTGOqJy2zcEKdiV0g6fi5RQDE7QYLadCYG7ZUPv1LosT7K
         /rKM05V2rZ0PeVjWFWDYo1QMhYlzJtEyLN6aLC2A3QUsM63R2mI2N/JVRc4hu7cS2/8R
         Y7QA==
X-Gm-Message-State: AOJu0YzaztjsN0Qtm/rTT737mcnE2b34wYU++VYM0oS/MmV96SL8tdZx
	Y3tazkqNnLmUM4fdCX+Fog7I44bvTBHBE+HKKEl4vfbERcCDs50NXSgSGCxC7nvP
X-Gm-Gg: AR+sD11aJ7n0RPOXRaoc+CQYh8mqGcgrw2Kjmj5dn0b6cHt98VSAejLNgP+AdT9LUkB
	sMJ695bkcRx3Ka04z2wUJ6Rb4xp9woez9IY13v3d1CTU5LRb0CoVCW8i485IkV1Bi/xwdo0jche
	PuD+wlhdUzJ8uG6hod7yUM4jH+0aEQKzwF6CwMx8Rhq7BhG9YHYnJsZJ9IyKyDLnOJCjGmlohrO
	iLRT+Tj0/OGYP9eQggoIGCmJYdS17pSlKec4cVx540zVOgEb2fajCSZUjaVCPyLm+JHIAXAFJx7
	QyqAJfbuZzJ9xH+hTcn4v+UJGaxnJTULSjQwWnhy1IdX9dIIfMNRMRwn1raz8zcghyDiVZGvg8+
	pWHyV3BFrZT5PQYdoVPANY0NmmRkswJqb2ZrVFPOH2IptnLDQVBHsT9HyODXVPIM5qK5Nh3ZW0E
	4TWqbSLu/O+5CmOGfKkt8o6xXo1Q==
X-Received: by 2002:a05:6000:250c:b0:47f:5289:d5e1 with SMTP id ffacd0b85a97d-47f9feb51b7mr9389059f8f.37.1785142796876;
        Mon, 27 Jul 2026 01:59:56 -0700 (PDT)
Received: from localhost ([102.128.173.0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85c6f076sm47865865f8f.34.2026.07.27.01.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 01:59:56 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH] wireless-regdb: Remove DFS flag from 60 GHz band for Togo (TG)
Date: Mon, 27 Jul 2026 10:59:53 +0200
Message-ID: <20260727085953.356259-1-loukot@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_015959_483835_59776929 
X-CRM114-Status: GOOD (  11.15  )
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

Commit aad0c26 ("wireless-regdb: Update regulatory info for Togo (TG)
for 2022") added a DFS flag to every band in the Togo entry, including
the 57-66 GHz band.

The source regulation, ARCEP Decision N° 226/ARCEP/DG/22 of 30 December
2022, Annexe 2 section 9 ("Dispositifs de transmission de données à
large bande"), states for the 57-66 GHz row:

  57 - 66 GHz | PIRE de 40 dBm et densité de 13 dBm/MHz | Des
  techniques d'accès au spectre et d'atténuation des interférences
  doivent être utilisées. | Les installations extérieures fixes sont
  exclues.

Unlike the 5150-5350 MHz and 5470-5850 MHz rows, which explicitly
require "des techniques de sélection automatique de fréquences (DFS)",
the 57-66 GHz row requires only generic spectrum access and
interference mitigation techniques. DFS is not mentioned. There is no
radar service to protect in this band, and ETSI EN 302 567 does not
specify DFS for it.

The same commit also set DFS on the 2400-2483.5 MHz and 5925-6425 MHz
rows. Those are left as they are: the decision does print "(DFS)" in
both, so dropping the flag there would go further than the source
allows, even though DFS is a 5 GHz radar-avoidance mechanism and reads
oddly in those bands. The 60 GHz row is the only one with no basis in
the text.

Drop the DFS flag accordingly, and normalise the missing space in the
bandwidth field on the same line.

Reference:
  https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinant-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-faible-puissance-et-de-faible-portee.pdf
  (Annexe 2, section 9, page 21)

Signed-off-by: Louis Kotze <loukot@gmail.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 72f7900..c6217fa 100644
--- a/db.txt
+++ b/db.txt
@@ -1962,7 +1962,7 @@ country TG: DFS-ETSI
 	(5150 - 5350 @ 80), (20), DFS
 	(5470 - 5850 @ 160), (27), DFS
 	(5925 - 6425 @ 320), (23), DFS, NO-OUTDOOR
-	(57000 - 66000 @2160), (40), DFS
+	(57000 - 66000 @ 2160), (40)
 
 # Source:
 # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
-- 
2.55.0


