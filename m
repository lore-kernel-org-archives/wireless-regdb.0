Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 900EAFCD0C3
	for <wireless-regdb@archiver.kernel.org>; Wed, 18 Mar 2026 06:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LlC4k9fcBpkR2TeWfp5WdwMkkhT+G6+tLfuISegqKHk=; b=3hpv2D3+81HMeI7cayJgjbgiiD
	Hs0CAz8lGbOrOC/sU+gKXFJPdKuAvERnsUir82G17qFr/mAmW4fuylh3dJfvCymObu/pLfTjOyU4w
	AiMjE9QFl4BdSdEAsy3+PQJnZE+vnErQHKlwI5Slix/EVn7NTLhuaIb6Pnox11uRAAH+UKwFABqaJ
	UkUfmYG3VrbHYRaWbV9mpQRD92qSaryAk8Ap9/QUpkar+u5ONpHw4SRIjGaKg05BtuNBk7WZduJcP
	aSLYX0ExdVbogDlEd5N5XhoV6ww1wcsIYDIOIHFoaEOdEE+ZqGrAj4vmlsVMQ5UTJg0iYPyE56/Hs
	A6MKAuAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2kiA-00000007tG2-3iuL;
	Wed, 18 Mar 2026 06:48:58 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2ki6-00000007tFh-3sId
	for wireless-regdb@lists.infradead.org;
	Wed, 18 Mar 2026 06:48:57 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-829b8b6c4d0so5230089b3a.0
        for <wireless-regdb@lists.infradead.org>; Tue, 17 Mar 2026 23:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773816533; x=1774421333; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LlC4k9fcBpkR2TeWfp5WdwMkkhT+G6+tLfuISegqKHk=;
        b=XbdNUKivdd/9UOmo2JOkPgsewN1uS501g5XlJkwWilFqV/SMi/3CR4CFHWMQy93qD2
         1uW2W0iPMr9qkiY+5NAeZ+qvm6sFrUTculHmjmJlhIwcRieggfPvvdTqV2orfRc6Fbw+
         62zMxHO91Nwszi8jNDSWwT3xctduTz5adCVC3sVSETVBRKCYyZFGppiYNt/g/at9B2rK
         tsGXI53EyOi/vL9o0c4sR59/jYI9TJpXdVigYqNDBKdWSWgvSNKfAXqRJ3vNN5ehuo02
         PLP62c4BPNr59vIUumcZ60YAf5F0XIHzAjs1EzX92y+yzwGbnw4pcmkY56GsMb7l8a18
         +9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773816533; x=1774421333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LlC4k9fcBpkR2TeWfp5WdwMkkhT+G6+tLfuISegqKHk=;
        b=QnOGp6EhhdnB27bUO1JZ07Via6ymGcvgeiut+o7MnoPvIVmCEQ+R7lrc853uyiGChE
         20kDsJStRXYyV9XbhKnAAn+urPA4TdXmxIh/ONsK2ZAyESMuk8fuYYKu7eIIMizvCemq
         Nn/W9A8ZrZJgY1axbNofPHeuE+iYDbQurT0UJDxKMhIpHd7L2YJDt6RygWLG84zrcuut
         2E+LlcmwlH3qFOi1nKxVPJDkCo7S/wypOa1rqRCPDdHKXa1curBIJaGJdSF5T/YMzX6T
         Lf3gc8wV/nbb46X4ICWQVTw7yedh3WW9AaIlvNbglDebs5nyGc4YeUMP0EU9a9FEXIZN
         EbVw==
X-Forwarded-Encrypted: i=1; AJvYcCWl6TC2d0DWJ49bgX9EiRDkVb2Orb+h8G4Z3NotaPFaBp+aRV+Z8gwSSjgWq8sxLH147+bOHAbCxMVbngG71Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwexKK0wmgIiB5gxKZ1sAmGTxgc22nCaMfHpRfcEJqbzzy1NqAB
	6k9Dmb5+x11YDATOZjzmcawvXiFmGNZo/I//KyX1/abLWONEyydxRF7l
X-Gm-Gg: ATEYQzw3pnrYuxjFDmCN3SFmGm39qQoawNqp2pGNmYiZB4L7oqLHoaDoveZ11Tqh/Cd
	03/2ldXR4ihn14HDtd0Kd2KJ58LQ0TarfBl9Qin82H4/VSqslxgQbKh6+gx3leO/WGEbRy5mASI
	pA43F9OzLAH3FA5cRhhPU+SxJTGuxO3tPD2YYUECzZs+o/5nETSoHnrk2FdCSTWpHXL9PenvFIF
	eEpgWhFHswI6zU/3ekuqemwKqs74gDTvkvGk1ODYWiDjHj94VjVklwT/5Yy2JECWbRntVcDIbzT
	OpAY74DjZGiHvo8ZubeA/gOEe7olTAOoRNiWJnhavOFAtnFEk3lxFW84HEwC59AbAwg39xsRsLT
	DJmvFiv62VNX19UMyw+M14Jv/4zdz7taT9A+mxOdIeKNO8Qu/Ll+KIkMiOrSqQVcL97Nt9NEWei
	vGmaERxlzBPz9H93l6eYquMiYxDbhyenss3HhHywViYKt55yRtTYlRVd1ry9/I6+q30EZcDDmAv
	RmEkYUlnw==
X-Received: by 2002:a05:6a00:1590:b0:829:8af4:5eb0 with SMTP id d2e1a72fcca58-82a6ae088edmr1787175b3a.26.1773816533523;
        Tue, 17 Mar 2026 23:48:53 -0700 (PDT)
Received: from localhost.localdomain (125-227-180-151.hinet-ip.hinet.net. [125.227.180.151])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-82a6b541cdfsm1508764b3a.1.2026.03.17.23.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 23:48:52 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Add regulatory info for CEPT countries FO, GI, IM, SM and VA listed by WiFi Alliance
Date: Wed, 18 Mar 2026 14:48:34 +0800
Message-Id: <20260318064834.103731-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_234854_989764_37391D2A 
X-CRM114-Status: GOOD (  10.31  )
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

In commit 5a8ced5ad313 ("wireless-regdb: Update regulatory info for CEPT
countries for 6GHz listed by WiFi Alliance"), the following are skipped as
they do not have corresponding entries in the database yet.

     - Faroe Islands (FO)
     - Gibraltar (GI)
     - Isle of Man (IM)
     - San Marino (SM)
     - Holy See (Vatican City State) (VA)

Look up the CEPT decisions [2], and add entries along with decisions [3],
[4] and [5] for 2/5/6 GHz regulations.

The 2 GHz band by ECC Decision (11)05 [3], which the adoption of ERC
Recommendation 70-03 [6], the regulations and the frequency bands to be
used for Short Range Devices (SRDs) are included in specific annexes to
this Recommendation. By ERC Recommendation 70-03 annex 3 (WIDEBAND DATA
TRANSMISSION SYSTEMS):

 * 2400-2483.5 MHz
   - 100 mW

The 5 GHz band by ECC Decision (04)08 [4]:

 * 5150-5250 MHz
   - 200 mW
   - Indoor use
 * 5250-5350 MHz
   - 200 mW (due to TPC required, -3dBm, 100 mW is adopted)
   - DFS, TPC
   - Indoor use
 * 5470-5725 MHz
   - 1 W (due to TPC required, -3dBm, 500 mW is adopted)
   - DFS, TPC
   - Indoor and outdoor use

The 6 GHz band by ECC Decision (20)01 [5]:

 * LPI devices (adopted)
   - 5945-6425 MHz
   - Restricted to indoor use only
   - Maximum mean e.i.r.p.: 23 dBm
   - Maximum mean e.i.r.p. density: 10 dBm/MHz
 * VLP devices
   - 5945-6425 MHz
   - Indoors and outdoors
   - Maximum mean e.i.r.p.: 14 dBm
   - Maximum mean e.i.r.p. density: 1 dBm/MHz

[1] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
[2] https://docdb.cept.org/document/category/ECC_Decisions?status=ACTIVE
[3] https://docdb.cept.org/download/1535
[4] https://docdb.cept.org/download/4501
[5] https://docdb.cept.org/download/4685
[6] https://docdb.cept.org/download/3700

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/db.txt b/db.txt
index d54ef78e0da8..e2afb145ede5 100644
--- a/db.txt
+++ b/db.txt
@@ -731,6 +731,13 @@ country FM: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country FO: DFS-ETSI
+	(2402 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # FR as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
@@ -801,6 +808,13 @@ country GH: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country GI: DFS-ETSI
+	(2402 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 country GL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
@@ -976,6 +990,13 @@ country IL: DFS-ETSI
 	(5725 - 5875 @ 80), (25 mW), AUTO-BW
 	(5945 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
+country IM: DFS-ETSI
+	(2402 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # Source:
 # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
 # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018
@@ -1855,6 +1876,13 @@ country SK: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
+country SM: DFS-ETSI
+	(2402 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # Source:
 # Regulation N° 2004-005 ART/DG/DRC/D.Rég
 country SN: DFS-FCC
@@ -2072,6 +2100,13 @@ country UZ: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 
+country VA: DFS-ETSI
+	(2402 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # Source:
 # http://www.ntrc.vc/regulations/Jun_2006_Spectrum_Managment_Regulations.pdf
 country VC: DFS-ETSI
-- 
2.25.1


