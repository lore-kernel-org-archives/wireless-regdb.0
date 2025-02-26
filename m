Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26627C021B8
	for <wireless-regdb@archiver.kernel.org>; Wed, 26 Feb 2025 08:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gRvVQwWhE3RVeyvBkj6Yo+xtUoKhFPz7MreHypfvjQ8=; b=fr8zgYp6TK+j4ZBlXY54c7JRj1
	6X+fnaJhxtFByi1Ec2Gn1GsKGMv+7rY6Wc+exNryCc9lfVu7jygWiGgNC/Rl84ql2t2+N0Y7Um5GS
	i+TsJu+eVp3C9Q4FhUluRTUZtdGXN0NjRxBvSMmkcKI5cOF2c3BGjqNS/QRYRYk/viiIuuujnTvEz
	BNNAMrhUzaV3DTEESqihLElPO98X1iRSy4kbYCFHC2i5qqsg/k31cGjdnjuSGcIU/8U1WyBaB/1sd
	vqOTm/gtjfnNv5UEb8g/xyhr6S0RASJowwGhqds2rL4YKBRbxqgZgvltgTMm+Um1iDsmG7+qinMwi
	eZ1RTFNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnCOW-00000002npv-3TT0;
	Wed, 26 Feb 2025 08:03:52 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnC85-00000002jVs-0Y1V
	for wireless-regdb@lists.infradead.org;
	Wed, 26 Feb 2025 07:46:54 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-38f6287649eso5068200f8f.3
        for <wireless-regdb@lists.infradead.org>; Tue, 25 Feb 2025 23:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740556011; x=1741160811; darn=lists.infradead.org;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gRvVQwWhE3RVeyvBkj6Yo+xtUoKhFPz7MreHypfvjQ8=;
        b=a2JR375gi+fGlUH9VEaKAlB/W4/KC6bOcse14nkmYwSQJiw/qET1MS1d+Ca4ultxq1
         viUNa8GRtPB7dGtpBEVO7drvUrqg/kUfeJUiVCdrcKsBM/FrMKjZ4rq71b9HrIkJNijc
         Bi15qUfzwHjHVjdb2qG3EebDqOsT7uuonlAVXW6kF4t7q8ZSIZZ56DcENSSb1SGpxTbn
         4bRkDoXOm7OedOmFfL8f7DpzGLtRKLGXHDMoWzG/yPgAzP1rot44zQqVKU4hhwQWhLVS
         V3JKyvLJrTqzosd+ssOukHAYfOSVIMspnDAbpwoXYMqTq2jSh9J5SJ5XmSCyXx3Cid4D
         77kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740556011; x=1741160811;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gRvVQwWhE3RVeyvBkj6Yo+xtUoKhFPz7MreHypfvjQ8=;
        b=rGwHaa3RxrTUHwtaN4wOfb7srq8/6csgLKU9JxlGUE3UbZlFP0j6LdU5I5a+2KEeTG
         CLszwCrvmEVoVqsjCHTJhuCL8ftQ4W9x8gejPIpltfgT9PZGMPn5DOe9yVZf+UhL4f+Q
         JblFjgApZ36su4JPgCDqBk0WlOuaaE7EhOtyDltcW3mszKITuBcXybyRylKAxBBkDZuz
         4iFR4ndhDbZNFRnN4qpHDqVz9QGOtlnZdOlpYIWJKCh99V6YUaKlAKx05GRtNLS8ZO8F
         +eUR6kVliLFzkw3vak7gd/9w35kAjFRjRap+AgPZjPgjcq9keyKK77bMFnA3MFcBJWHL
         ZevQ==
X-Gm-Message-State: AOJu0YxRjjb1RkEgvpbXTzV+wdyuYDi8iAaWVR1SDhIi6ue3hSIusRzT
	tui3BLOCL07o83Qpy3edQab+PsOdLgdgusYooGoOCwr7pRZtI7o=
X-Gm-Gg: ASbGncvjt7N3RVCi0kzZEEx76sbFtQjwfO8ktBN57Sw0JEzJWnoW2j/K/sT000Kw88P
	EQ4yvnwZmy3hNHHa+vnfJUl1ZJLALHV1JDzhxRGOfSbQYpUFaGzJOBc/+xZd3ZzeDyA7jdbEcia
	Dj3i67j/nRG0cnk3lPEzK0EpEerqWoOADjCGm6vp+Gz0Hix8LrSt+ZPxPsPEgnJe9dH7cPU6Hcy
	iNzNl4UYO9BK/mFrsF/hTxm1+aWEczix2tuUzQRbTPpBChHfaqOAzZmi8JEJUtCymSv3DyCWE2Z
	LRbH7RR3LGHjstTDglYTp8vqj29Y/CzANc/YfJM2s57hGtZO7zfWR+1lwM++JF4zU3y0mvSR51/
	I2flYAEcjoQNN
X-Google-Smtp-Source: AGHT+IGTyaetv25p95cdeaw6HFL5WFafxLFjudHA4bRs5ToLFc+FrvV2+hkhLObGrAD+nJHy6Ks7Lw==
X-Received: by 2002:a05:6000:4021:b0:38d:d0ca:fbad with SMTP id ffacd0b85a97d-38f70799a67mr18789352f8f.14.1740556010905;
        Tue, 25 Feb 2025 23:46:50 -0800 (PST)
Received: from winhome (cpc112753-pert6-2-0-cust678.16-4.cable.virginm.net. [86.18.22.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd8fcca2sm4640859f8f.96.2025.02.25.23.46.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Feb 2025 23:46:50 -0800 (PST)
From: <rmandrad@gmail.com>
To: <linux-wireless@vger.kernel.org>
Cc: <wireless-regdb@lists.infradead.org>
Subject: wireless-regdb: Allow 6ghz in the US
Date: Wed, 26 Feb 2025 07:46:50 -0000
Message-ID: <000201db8822$98f28da0$cad7a8e0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AduIInOm5OAeUzeORjOSV3pwYv+NMA==
Content-Language: en-gb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_234653_171542_6479E746 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 25 Feb 2025 23:54:58 -0800
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

Allow 6ghz in the US

https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-u
se-of-the-6-ghz-band allows the use of 6ghz in the US namely section
59 https://www.federalregister.gov/d/2020-11236/p-66 with absolute radiated
power of 30 dBm for the 320 megahertz channel

based on this remove NO-IR flag and allow 30 dBm max power

Signed-off-by: Rudy Andram <rmandrad@gmail.com>

diff --git a/db.txt b/db.txt
index 803f1bc..bc2b4fe 100644
--- a/db.txt
+++ b/db.txt
@@ -1953,7 +1953,8 @@ country US: DFS-FCC
 	(5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
 	# 6g band
 	#
https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-u
se-of-the-6ghz-band
-	(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
+	(5925 - 6425 @ 320), (30), NO-OUTDOOR
+	(6525 - 6875 @ 320), (30), NO-OUTDOOR
 	# 60g band
 	# reference: section IV-D
https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
 	# channels 1-6 EIRP=40dBm(43dBm peak)



