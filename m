Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4426DCCF9E5
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Oct 2025 02:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QRasVuptSb2E4fyxHvpuoBQu98CkUiF1wClK1J/dHaA=; b=nPONT7HXzLLdgIsWi/9Iv5qLy+
	m6LlPJxTj9653IWS4dQPX1w6jJU5xCRVlrg++4PH73dSoMBxdmXsmt78MMicJLLDeYCOrmjmOleBz
	C/7lccJ1ITWxKelAlkZ1pPev0Gx9c1dX+bUblMPQgW3qxfRWnDCmPhTwX0U3QVXly80ejt4Jmkp2M
	MCce1Du60AmYy/+hSCVZS4BtJwaHBFdJMc7bMEg3oaMtXim/CP4+sqwbJhnEhCiCRJVz90fYCqVL3
	VAnAK8r8WuwGV/EpzhLkWIcKyDgJMkrWD3PEegjlXMaVNLLjgCR352/eSK486fz9wv9Q06B/JQC90
	vJjIZ31Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDZHI-0000000F7Ch-2jWE;
	Tue, 28 Oct 2025 02:17:40 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDZHF-0000000F7CF-1RWV
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Oct 2025 02:17:38 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2699ef1b4e3so9060865ad.0
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Oct 2025 19:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1761617856; x=1762222656; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QRasVuptSb2E4fyxHvpuoBQu98CkUiF1wClK1J/dHaA=;
        b=B2mnOPODi+/LV4E3TPWc/dv5rna0QeaYYsJhy3iRpopDgVG2oMrAd8AfU7XEYfPy0B
         19/8e9XLsFIwgeLZT4Cz4RUQr403KbVWyL3PwppPkximd8KvIfZJNWGieYe+TkcLEm6o
         BIquV0qTFr073vSAZ46V82mUsgYUcTFzxFLsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761617856; x=1762222656;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QRasVuptSb2E4fyxHvpuoBQu98CkUiF1wClK1J/dHaA=;
        b=LhTHpKd2v/YZfCx3B3Dvt7c1p5+wXZlV2tt3bvnMe7X9uEVkV2Zv4Oc0GhKr/pHUUi
         q6SxC3m6j5O5cAlO+MLrh4Y+DyBfqPjUKxA6/YCMIjAwTjD+Pjqsz8BoJQA0B+pN4STZ
         FeLIqWiLNwJrl+hBXtDBhHJOfdQD+PS8GvPUmmsVUcwApdsRIYv1vsS9Cpu49i1UTbHV
         YvURvnczzgpLQnw6istx6J+qVX73ikAaRsSzKBh552V4cTx0EvoHhu+O2IJDX6TMTM1p
         ZFqrvbz+ymxUJMGrcChwPfuouH0p0EYJDfMJKSgdLrPZo1FOZMzM6/rFmv1wLpoZqLNO
         4ReA==
X-Gm-Message-State: AOJu0YzvX8VsfHlp0TcT4knQen+d1hDvxrTxh9ZQXibPBTI6SzSPkaWF
	F/ZawcFuw34KWEki/F5BisrXu3MMiL8gYvv09iL6f7su3YuDnsDl2VBGFBArc+zxFMcCOGDzH1d
	PPV0=
X-Gm-Gg: ASbGncuvOSPtkb3wlzObpubFSuiIcKoXo8W3U42P0ujXMIYDfckRAQqY7IczGnKXVRs
	h2zm1phh7ZkpAB3GvvEifWHPF9+md7yBWNjQ2Y6qfx3URUl3qKIp13Hf4v9ysyDW6Dd0aV3OaA0
	w3x8KdyQUrkxxPvHo9kBStLKD+YWr97NBlro9fmnyL6hdIltYvpG4m0yKc0kApTpVgpYe4praO8
	vPt55kcopZ8tFviCxQVMi6lq/HxinBybwrsBttdxzYuANXl48U9YOj6qQBYR4Lb8jCcSl/J6sW3
	kIYGrxOUmzysXLk8wv2Opg6xvxg9ix5ren7YJn80sWpObEjkeIqAROAZ4zV1u+q/piZxIMc2uOL
	tWCy4hm471QSOBbMoql4Z8tFbxVJeoFs41FKW2h0JBPPrhOBxL8ZQA7FcbasaJBZUdzQIvalM2E
	JMmDu+QOhVxGCfRzrLHoD/7PjQq6laJB17U0gLFuM3BZBAxHmoO62smuv9oLb2JPcq5ij5oU93Y
	MEjmp56hXKgHuZ7
X-Google-Smtp-Source: AGHT+IGk+Wit2trGW8g8fX09WMk6GWWnCwQJjT+X3SY0eLq9QqZdoKZdreJc06GRHhdMrN/SRXXxDQ==
X-Received: by 2002:a17:903:240b:b0:258:a3a1:9aa5 with SMTP id d9443c01a7336-294cacb1186mr12847195ad.0.1761617856337;
        Mon, 27 Oct 2025 19:17:36 -0700 (PDT)
Received: from localhost.localdomain ([121.120.74.142])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d40ac9sm98147485ad.71.2025.10.27.19.17.34
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 27 Oct 2025 19:17:35 -0700 (PDT)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH] wireless-regdb: Update broken link in regulatory.bin(5) manpage
Date: Tue, 28 Oct 2025 10:17:29 +0800
Message-ID: <20251028021729.45098-1-me@ndoo.sg>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_191737_384597_B4E73A13 
X-CRM114-Status: UNSURE (   8.61  )
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

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 regulatory.bin.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/regulatory.bin.5 b/regulatory.bin.5
index b1862cd..5448aca 100644
--- a/regulatory.bin.5
+++ b/regulatory.bin.5
@@ -45,5 +45,5 @@ and
 .BR crda (8)
 .BR iw (8)
 
-.BR http://wireless.kernel.org/en/developers/Regulatory/
+.BR https://wireless.docs.kernel.org/en/latest/en/developers/regulatory.html
 
-- 
2.50.1 (Apple Git-155)


