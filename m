Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE916E65D10
	for <wireless-regdb@archiver.kernel.org>; Fri, 22 Nov 2024 02:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3cVe/+wqiGKjm1Oap39KObz1CHDyXgx2KimEm3G9qyg=; b=TiPLM/baYxPrJNpEyt4TbedVOP
	GC2BGYG9XDG9lEJ5qnHgSHIiiVd2Xb5Edm2XHHCrKvk/c74yKmDctp+6z5FtFTIPg7tj4i+hYQpmH
	3gca1jzWPQSye2cpQhmDFzgQ5Gr99hWlaW/2/axYcRq600M+K0Qf0YPgLWBhixpr5Z4NN/RuzTCUM
	TWSoiUVbRDVK+Vz3L6cjF0A2WRBQVHLKKYkFpGQj/P0aWPRVdlgcg3ClnfNiwVch5fJQjuZs+VY3A
	B1Ol/uiOrxsZ8TKNxrXbH5rVcSrnD2c4LwsW/Sc8Rb3Ks50/z5LB2xAiEaaWNfQRXJj6l5PRfst1u
	tklty81Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJdG-00000001Tfz-44XG;
	Fri, 22 Nov 2024 02:42:54 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJdE-00000001Tfa-2mZp
	for wireless-regdb@lists.infradead.org;
	Fri, 22 Nov 2024 02:42:54 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3e5fcf464ecso1091053b6e.0
        for <wireless-regdb@lists.infradead.org>; Thu, 21 Nov 2024 18:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732243371; x=1732848171; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3cVe/+wqiGKjm1Oap39KObz1CHDyXgx2KimEm3G9qyg=;
        b=LThAlts0pzoQRrWInDxg5yDp0AfIVtr5mUzYRibZA2OWSGFSPhBvX00ZDCgRv/UyKL
         aYDp2854rHTNU8+vaoEQU8ctynpDmC9c211rC9A/obDjGLZmBfMt+mbD/3fRglVXLAGw
         QT+zQ5mG70rau+GOz0BS5W6igANlJ7hljmj41XV9zEwEEuX5BckzhjUAFic0ZAl1r+5f
         xPkBA0HVVdWeM0I4BwKmW011781oiTWFUZggwCcsR8fecr3Z5LqZVSlv19J5aUWB9AJa
         b6YJcR1xZn8+kwSennRU2o4B7FFfUXG98HTqWvpnvtaLiMUJpyyV4Ww0589qREji5o5m
         6t9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732243371; x=1732848171;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3cVe/+wqiGKjm1Oap39KObz1CHDyXgx2KimEm3G9qyg=;
        b=SkSJtzJ4mSmfumiznrkJv+gc7deAK2srvlM7vsS4bGcdCKI79zRJit9/3UDutpsSwt
         2oWc5HUhKUGVeFcO2o4Jqm3+H91r0gJpmFhEXngi6c5oTQsJH9xcHlUaALgLCb1wKW2/
         HbFsNp6WfnjaJkDAYtMaGyAzsK8gGCusbaD+tXgq8Gw2Q2Z37bhLBAfqClVugPsy4in2
         I3NMqOqL2yJCt9n1L2Y+dQrLjMlPIlIS4MeeoL3vT3xMIuBK1OLRjKOBA3QOmuktJaU2
         IEG5eYgVSGzBrVm8vRcsho3CQ51rQZt46kM9VwcbjiJ5IfJ4obhxJbbtQ826lk3YFA+d
         +3Kw==
X-Forwarded-Encrypted: i=1; AJvYcCVRYLnyR0fTLMAdIWDBIZcHVyy1gNlNhk/ZteyEdj5lWrTad7vmVW+86KR56WJeolAavPu9xTevlx31jDdcqQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxBMjmkNDLZIeU0neytNgtnwcAcZzoytjltl9JLcJHDKcy0Erc
	OTfNaFqZROAEtaBM6Ij5kY2uLcg6/a1ThOWlDJmn1gwnohxNbBcI
X-Gm-Gg: ASbGncvrJAmOem9qzpfhj2jpCFRvz/ZKDol3awxnEfO6+auq7+dv9mysSGJcqoeXGYj
	QbwXjmydVfSSD4q6AYMpQYlj6LTpqmzM6UaIWJUjMEpC3n6Ax2O7p+MjZA4M071S9hLwd5ZzKfr
	uZs7DsTWK6JqtB5JMr3CR7tNaMizP/U8+EcvGvX+rY3133DtHDLQb51A+kbODj/+XmZb/plXql/
	gz42r5tY/nevEHsR6uZv2NB3AyW9vmgG6E7IV+XIA183MyE2De9ijmwEjg8k9rLWG6Lb9GTeZA0
	u6bB2qnqskA6vdt3
X-Google-Smtp-Source: AGHT+IEx8K4WJ8otuKn9D8sUj1vhbgVHrhJtBgYXgOAjANMqXGM6/sr3oznn2+gh52Ect5OP7AkEYQ==
X-Received: by 2002:a05:6808:30aa:b0:3e5:d5c3:e88b with SMTP id 5614622812f47-3e91586a01amr1432848b6e.20.1732243370878;
        Thu, 21 Nov 2024 18:42:50 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-724de55ae00sm481960b3a.163.2024.11.21.18.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 18:42:50 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Moldova (MD) on 6GHz for 2022
Date: Fri, 22 Nov 2024 10:42:07 +0800
Message-Id: <20241122024207.5535-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_184252_714612_D2B1BFDE 
X-CRM114-Status: UNSURE (   7.17  )
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

Republic of Moldova released STATE COMMISSION FOR RADIO FREQUENCIES
DECISION No. HCSFR1/2022 on 23.12.2022. [1]

I says, by translation, for wireless access systems, including local radio
networks (WAS/RLAN) operating in the frequency band 5945-6425 MHz, the
provisions of Decision ECC/DEC(20)01 apply.

ECC/DEC(20)01 defines:

* 5945-6425 MHz
  - LPI, 23 dBm, indoor use only (adopted)
  - VLP, 14 dBm, indoor/outdoor

[1] https://www.legis.md/cautare/downloadpdf/134846

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index fc70e625e81a..5710545da0b6 100644
--- a/db.txt
+++ b/db.txt
@@ -1222,6 +1222,7 @@ country MC: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# https://www.legis.md/cautare/downloadpdf/134846
 country MD: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1229,6 +1230,7 @@ country MD: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # http://www.cept.org/files/1050/Tools%20and%20Services/EFIS%20-%20ECO%20Frequency%20Information%20System/National%20frequency%20tables/Montenegro%20NAFT%20-%202010.pdf
-- 
2.25.1


