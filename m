Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4213606A995
	for <wireless-regdb@archiver.kernel.org>; Fri, 30 Oct 2026 21:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=b4fk6jOe;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Vtz3qrU/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=lY/l1/aO9GT8bDZSLqLaJYY9fXdCTCZbR0oyw2U3AJY=; b=b4fk6jOeNsEierb5vnoQE0hT1O
	6w22yTBU6l1w4Iqeg+vJYGbvcYhR4duEmggwOFRvE1h8hTWH0Sr6BqIO2TMVp9j8CPfpOhPjwh9T3
	kcEmtmC9ng+qph4FJVjf92RlJ7yoHA288Dxq7m86G/kyqcV13EWle6k8RGia0RtB2tXCr51EKE989
	ho8AMyl1MJU/BsQIgfF6nCZ+AFVk+mVDyF4dKD9BUl4iizOzwH/qujK7JpnN4UVe57WSwGmgMWFNI
	7d1S5SIqNc1DUBQLqYh0rCMsMqVO1a6BqpoiXvaDMTV8Bxkk39cfgerKHsm3za/yYhEqHxFIzCraL
	9Tx8Q3Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMu48-0000000CbVb-0Qdu;
	Fri, 30 Oct 2026 21:23:12 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMu43-0000000CbVD-1RJd
	for wireless-regdb@lists.infradead.org;
	Fri, 30 Oct 2026 21:23:09 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a59100fa83so10846825e9.0
        for <wireless-regdb@lists.infradead.org>; Fri, 30 Oct 2026 14:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793395384; x=1794000184; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lY/l1/aO9GT8bDZSLqLaJYY9fXdCTCZbR0oyw2U3AJY=;
        b=Vtz3qrU/LrqLrz/cs4OzrfzIDa2xPEOelo+UOsHeuyFJrhPdy5TlWa6va+/p8Ec2FN
         UZW8Jp//suOenSL8c1oI0pPckmFVbOL+BrL54WvS7t9cIDD9J5HvjB0UTj+KPVHu4gFr
         pvcPaLbAogHaPj1p9hgotqSNCuOTxcB/Zt+FZwDBVNn257+GPoJI8G9tOI/E6Dl+0YxK
         8UrQLEMJEFboDT+vlKPCbmE57tbKVntgf8EgwwM214cgh6TSSlzCXX49EnuyxSdh3mMF
         VsBfEFLbh0U+pT9IguT7mgrwccT0VVIm85uQCHLCxoBAj6Ve9k8rfbG0sEnR7h/iw573
         QM1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793395384; x=1794000184;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lY/l1/aO9GT8bDZSLqLaJYY9fXdCTCZbR0oyw2U3AJY=;
        b=RutjiCs0Jdw0KTYPntGFhBFS6FAZ4hA5IYeFy393cGSfYURPDrKVIKkLckZRqTDz9E
         EP4DuWRucOgNFXRdKejN8rNXqWJ4XGMGYw4Q8XnzZcQStkM2dSxQao1dWKScgNLD4yea
         coNynPXeAd2HBQjNAWZckkdIguKllclZlJK9cqZn3Q3D0KzrpaJQpmFCIyekgBJ8sjRL
         pr2eyk1ZT77S5OWmb5c0acRWCoGRVVxPMRQErGnEC5ZfTPsE7U+zG0IVdDe9YUAixKXq
         u6B81ytx3wkcmdQPf5uz+2Sv9N07Z1gp7MEvpRN3ldSdk6MEgDHZw8rNKgLe6KM8gSVs
         jizA==
X-Gm-Message-State: AFq9FYIyCsO1kVLrAryV73kfq6Kea+nzF65jfJE43CUfbEhiszmqFZ34
	P5KPgAN0LzBScppX1VN1RFo/XbMJvIScieTXv5aaiNnii8eSeL81d3x7UrkZpjsj
X-Gm-Gg: AYBFou1vcpl5amvjb3QEsenc9IEQq1XlPSCSO5HrNa/0uqBQdqPbx2hvxKY2iLrxEm4
	WE5djhOEqXZx+xEpZDmswZJeqOAnlOWHDxeFokKOzvRYsQQZWgNs84yO6bUmb4P4uUOuf6jr3Zj
	7i2OuIwVX/yJ4/aXNsC+Ar7gvl8rQIH7ShcQnGfIafPRY/YSWx8OPWK8ke5pFrIxAwrdoyDIGz0
	7C5npMgM98Ak39Aoyt9mw3Zz2rLFa+QAtQlcN16ECCr4w1nZyP56WdjmabsaU1bMqzsQ7BGfccY
	UeZw7j052yRveGq8eOaP2H+AOL4MVldgdR5kZkJcf+3ux+yKL3QKpqUG/kTvx1VdFbXGoI52H3i
	I1gPYoOyDYV8m6VRkhe2gJSXnAwGHEZNlGbehld9mL20yyWTPcDRQNLxv3Nim0MUu5KKdGnOzC9
	PSIEMkY2WODAhwZXmTKjNRysodXnpjjy1C7uB9zer2I3cssy8CrNzxN1F1C1ZPZFaK5MW2QCa2D
	Pn4sxWDHz3nObn6hCWA94VncFW05yTt7DUAB74ZZxDHoS1oduUhoqSv+ym3jduRwyf2HCZaHHwz
	Ygn1XWj/BOm1Q74fH20MCaq2OjU8x0Na4+LNvt7gIg3HTvmQNzG9ZTpvhw2wmIYqVReXSmIhFsZ
	Cr0/4+IDfmBE9Xr3YeF7AROTktS+/ljG6sFZiBc+EUlo=
X-Received: by 2002:a05:600c:8709:b0:4a1:9078:911 with SMTP id 5b1f17b1804b1-4ac181e75b7mr86458555e9.31.1793395384275;
        Fri, 30 Oct 2026 14:23:04 -0700 (PDT)
Received: from ahmet-f ([176.220.65.136])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abf7146621sm88691595e9.13.2026.10.30.14.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 14:23:03 -0700 (PDT)
From: Ahmet Duran <ahmetdur10@gmail.com>
To: wireless-regdb@lists.infradead.org,
	linux-wireless@vger.kernel.org
Cc: Ahmet Duran <ahmetdur10@gmail.com>
Subject: [PATCH] =?UTF-8?q?wireless-regdb:=20Update=20regulatory=20referen?= =?UTF-8?q?ce=20link=20for=20T=C3=BCrkiye=20(TR)?=
Date: Sat, 31 Oct 2026 00:21:08 +0300
Message-ID: <20261030212108.24494-1-ahmetdur10@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_142307_389555_D178A126 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The previous reference link for the Turkish regulatory domain is dead.
Update it to point to the current official regulation document provided
by the Information and Communication Technologies Authority (BTK).

Also added a fallback search link to the BTK regulations page to ensure
the document can easily be found if the direct URL changes in the future.

Signed-off-by: Ahmet Duran <ahmetdur10@gmail.com>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index fdc2c13..528a9ec 100644
--- a/db.txt
+++ b/db.txt
@@ -1703,7 +1703,9 @@ country TN: DFS-ETSI
 
 # Source:
 # Technical Criteria for Radio Devices and Systems Excluded from Frequency Allocation, Sept 9, 2022
-# https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
+# https://www.btk.gov.tr/s3/web-btk-site/7708c26c-5161-4919-8b3d-daa31d4ac8fb/2026/03/0965cb2b-c346-4626-85f6-fa06fb722be5.pdf
+# Fallback search link for the latest version:
+# https://www.btk.gov.tr/en/regulations?search=Frekans+Tahsisinden+Muaf+Telsiz+Cihaz+ve+Sistemlerine+%C4%B0li%C5%9Fkin+Teknik+%C3%96l%C3%A7%C3%BCtler
 country TR: DFS-ETSI
 	(2400 - 2483.5 @ 40), (20)
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-- 
2.56.0


