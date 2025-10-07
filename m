Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A3FACCA470
	for <wireless-regdb@archiver.kernel.org>; Tue,  7 Oct 2025 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iErhUlP9LkaGfTWDLHYRh3GvBloCr7rImgT7YEPmvUY=; b=fZ2MYn1bRiRy3KUMdTo0L9WCA5
	AfX1IVMmcfGAPDm8LzyG3K11rN9GjGur6CdmcUDwD0BitJ9Sljnt5ebz+qjlGbBsxTSGdc+KFcKmG
	rx2JpwkdXMN7LZ+soYNKC8+zrew6zw7MLP0AMnFX7day+Cu6Mob/Epp9a1KtF/vlx2Ue91lB4op6L
	I4xO01Sa5M4J2mp5F9hysOpE/HGc8IDKMQ9ot0QIF3cbXMua2guTFHAZ0Pifo4YqyZl5FG5W20nBH
	MWiw/gCMITfzCgV43enTF1/jdFU8yIM1hD8gY/k6HZcPY6olP6IK98xCg7MLbBQlKpe1uNdwrjDBu
	6o0UcXDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Gjv-00000002vKK-3YMl;
	Tue, 07 Oct 2025 23:05:03 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Gju-00000002vJx-0RdQ
	for wireless-regdb@lists.infradead.org;
	Tue, 07 Oct 2025 23:05:03 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-7841da939deso6354364b3a.2
        for <wireless-regdb@lists.infradead.org>; Tue, 07 Oct 2025 16:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759878301; x=1760483101; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iErhUlP9LkaGfTWDLHYRh3GvBloCr7rImgT7YEPmvUY=;
        b=KNyCPoZJOjlHl3kIUAeUb7iCnfz9rl5fZGXK6ma/jCDihKpFzH8Eh8QqVoOydUu6yD
         Xn7Sh7x+rlyTz3DkgdJuk09VdfsXadNmrtv1E+5IqAeTgQiV7SEdQ8QN4tGJKdzYu0sZ
         3CcNfzHuCc6UitQOZ0pz/jV1CDenxqJXK2B87lHNd8+1pDJ2bHKSrxngo3R7fPWFGoq2
         xs89/oQWfFantyBoE++0BsLQjepXm5McN+yZv93CNT2DNknmGzyw8cWIfDnqC6QbLKO6
         QDmniRMbGbusLKlWBmugR7nfPha9Sl7nq2SapzkanCl/extv/B9O28nxK4fn8HftVvud
         kY6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759878301; x=1760483101;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iErhUlP9LkaGfTWDLHYRh3GvBloCr7rImgT7YEPmvUY=;
        b=IPvgnE0DwV5ZpyoEycguoLLFq/1LxxQjxgR4ikIpFyx40Cd6vfQhFNqchGmAHiKerX
         tjFd0zkeW9SjehDU2XKiZkL1JSQ6GUjvvOLgjarbeT6J6EfCzYWI2z6amP2Ni8nWJpy8
         umkdyvu6cR4aLJ2P2zr0u7gKp3lRnkRhlP8Qba+I40+tUr+frGxhx462jBGLoCXKbXKd
         aQKivlj0yli9Zaq6bwO1u4uqsO2rCNggbHSqyblw77VGqkE8O4y06r9QdPZ9cFgSK4uJ
         auAECyvf1BLKpLg5cnVEU/YFu2K1jSCVnhediPTvmMOsM3jL5qYI3YdYJ+y3C1gtQD/d
         CUwQ==
X-Gm-Message-State: AOJu0YxYHrl8jBzzFZPPGn6HnKfoOh4pZlpKTrOXOfgES4Ohrfy/opG1
	KOyzNjYYjNomOOL3DRtGujYX1pDAbjeUxJZN8nIqP5Wps6zkxvtebOI0
X-Gm-Gg: ASbGncs8RvZ9zjK3FPwXFwLUUIs5lPLe07cuKwV3q9lW7i1DNUgUt3fdiXgpZKSwXi2
	S1u2xjr7rI4yJqPLZvI1L9LjSsC8103ZBFHoinavomtRGvwVsohpseuuVRFg0YK3INJNSbHzKQF
	3Cm9rvQXTWni4rrH5tdve1p35w61seHCuTSlQgad2OgmPC458PDrHee5DgdocoivYXRKCe5qm/C
	oB5HvcpitsGk8HQzM2EmHx+MZf6vSAgHZeGde82+8mCUI9xIi+hJx2K4Xry2RtGzvUOq8ja5KPB
	TP/4Gpa7UStxeotSzuf0VuUhy6y66GgZqnarSa5R+fDPD6wKESU+8sspMxEokzMPB9cRW5Ycez2
	ePKulxEYqwpQ/Vi3w6lE6f7YowIrj5k1fpktIczkyGYU5BCCeT8932RxDo9PvSP12X0wcq5c=
X-Google-Smtp-Source: AGHT+IGvAJ9A+Bqbg5BqXp6J9ZCiCr+iUd2CSt5143mGGYGW2sQJ3GfysgqIB8fpu0ckb75FsUeAAA==
X-Received: by 2002:a05:6a00:23d4:b0:77f:2978:30b0 with SMTP id d2e1a72fcca58-793859f338fmr1257512b3a.11.1759878300849;
        Tue, 07 Oct 2025 16:05:00 -0700 (PDT)
Received: from localhost (2403-5806-8049--d1d.ip6.aussiebb.net. [2403:5806:8049::d1d])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-78b01fb0548sm16843453b3a.27.2025.10.07.16.04.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 16:05:00 -0700 (PDT)
From: Richard Huynh <voxlympha@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Richard Huynh <voxlympha@gmail.com>
Subject: [PATCH] wireless-regdb: Update regulatory info for Australia (AU) for 2025
Date: Wed,  8 Oct 2025 10:04:50 +1100
Message-ID: <20251007230450.69998-1-voxlympha@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_160502_149859_4B2B884E 
X-CRM114-Status: GOOD (  10.73  )
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

As of October 1 2025, a new class licence is in effect[1]
Update the link and references in the comments to it

Additionally for the lower part of 6Ghz spectrum:
- Allow for EHT-320 as it complies with PSD limits
- Expand the upper range up to 6585 as permitted in new licence

[1] https://www.legislation.gov.au/Details/F2025L01047

Signed-off-by: Richard Huynh <voxlympha@gmail.com>
---
 db.txt | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/db.txt b/db.txt
index 16bcb32..93d709e 100644
--- a/db.txt
+++ b/db.txt
@@ -145,43 +145,44 @@ country AT: DFS-ETSI
 
 # Source:
 # 'Item' in the comments below refers to each numbered rule found at:
-# https://www.legislation.gov.au/Details/F2023C00524
+# https://www.legislation.gov.au/Details/F2025L01047 within Table 8
+# except for 5850-5875 which is found in Table 1.
 # Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
 # The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
 # In order to allow 80MHz operation between 5650-5730MHz the upper boundary
 # of this more restrictive band has been shifted up by 5MHz from 5725MHz.
 country AU: DFS-ETSI
-	# Item 58
+	# Item 1
 	(915 - 920 @ 4), (1000 mW)
 	(920 - 928 @ 8), (1000 mW)
 
-	# Item 59
+	# Item 3
 	(2400 - 2483.5 @ 40), (4000 mW)
 
-	# Item 61
+	# Item 10
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 
-	# Item 62 (200 mW allowed if TPC is used)
+	# Item 11 (200 mW allowed if TPC is used)
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
 
-	# Item 63(a) (1000 mW with TPC)
+	# Item 12(a) (1000 mW with TPC)
 	(5470 - 5600 @ 80), (500 mW), DFS
 
-	# Item 63(b) (1000 mW with TPC)
+	# Item 12(b) (1000 mW with TPC)
 	# The end is 5725 but we borrow 5 MHz from the following less restrictive band
 	# so we can get an 80 MHz channel.
 	(5650 - 5730 @ 80), (500 mW), DFS
 
-	# Item 60
+	# Item 9
 	(5730 - 5850 @ 80), (4000 mW), AUTO-BW
 
-	# Item 22
+	# Item 22 of Table 1
 	(5850 - 5875 @ 20), (25 mW), AUTO-BW
 
-	# Item 63AA (25 mW if outdoors)
-	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
+	# Item 13 (25 mW if outdoors)
+	(5925 - 6585 @ 320), (250 mW), NO-OUTDOOR
 
-	# Item 65
+	# Item 18
 	(57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR
 
 country AW: DFS-ETSI
-- 
2.51.0


