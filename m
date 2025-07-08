Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD7DC83F0A
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 11:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T2i29mDJnSXB2gW6vjG0iEU6TSVwxx53lisQx+OOeKA=; b=QnIyuDH8POW+fVvtK4J+RpCh4E
	zQb41LNr6afOoXbfO+VquSUvARc3yfMvr41oX5e01lsYCQJ6fZTmG2gq2WOEf1drFKK5YyS86Ja0I
	jivRrs1Et6ozX+f8g3fB+AQqxerSKkSCQxacQByXW/SLVjIVPBSvBaFBZuiUWSncJljEiVlL5lpZ3
	e7NfcgeMGhZ85usl+G1qDqDTY/WGq5MXkrHPIc9K7zDfO8yxBO/nbGrcyOafdkgxMLTp3cUQEeFep
	KqZU5nG3utACawD8Iapu3yW3fZRprHDpLOuJux64N/XZwtf5yKheckdBUklbrzBwdBPE2K/Aijf8B
	h7Okjc7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ6wg-00000005F1h-1sGm;
	Tue, 08 Jul 2025 11:57:10 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ6c8-00000005D83-3Tth
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 11:35:58 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-b390d09e957so2529526a12.1
        for <wireless-regdb@lists.infradead.org>; Tue, 08 Jul 2025 04:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751974556; x=1752579356; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T2i29mDJnSXB2gW6vjG0iEU6TSVwxx53lisQx+OOeKA=;
        b=dLIODKmb7n16jqczn2c9sBFwQOHIU+q5Alr1Linjo0E11gbKXxNY/Mi9vqvWTVSGbd
         f/sWP4oYJQAQ9JwywmMFiAOByuwIXp2713EFd1xrinweDIQ4DoJMJ9fAvMAr0ugj0LyB
         v3uSj279EVcPnDufUroJyw0wSY9hxN98YbOlHWwfqUu5BgDVTT0KDxrP4khelXsFWhPs
         O06fp3erJkmL/4VkxnIWEdHBCIuPY+FWRrmYE+fljHZnBOA5of5Epw1kmtP0Ho49w3Md
         Yb2jJMxefjlXaVaTqcURSrBe2cTn2yxFhrmxTlQlYyWBYeobU0UwWNfk0ni/9oqeBPN6
         k8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751974556; x=1752579356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T2i29mDJnSXB2gW6vjG0iEU6TSVwxx53lisQx+OOeKA=;
        b=Xaeb9aLC2sH0Py0KyzVeDAVGzgp2ZblN+hnR37MNLzpZJtsHoWlgsJE/DXFh6tLM4N
         I9A0Y0x2nM9j0T4YsofZFcUjXYWUiGrJv62QM5FgzlnWcXqgaczcRWDwju1BFXDaJDBe
         6TVW1VGteUmZz1big0Zf0qDfKxPa5pL1Vcp1vpbDCHpCBMxmbkRXk39CP1v8jZxBwAj3
         lt+9KMZIJkcHSj0SjDicfycvU9CPlkJ/1KAiLh3tF0pOYpDWRNZpEenEdjvIitSBg+BQ
         Sq0bGYXUDW6Z090LZFCHLJuMKMyK5pGDNoPRPrI98J7KZVHKdzdjEZh61LJwfm272jjC
         w6TQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9n2bxbpClkQOwZ4GgZmNxnsze/r5+bY+p9Vuh8cLrCKLNvb1Dwe8PRaIPug5iONTdcQ9YLRvjnndXe8aYdg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIAVZd19zoYWhhW2P+H9wngVjfIafAPTVGiNxX5Jq+TIKICD2U
	gRrZdgJ+kcuJhOOnnbNBFO9kTW4LzAOcRjmYFp0FJVpClWwcfM9iBTrnljVEbg==
X-Gm-Gg: ASbGncuyZS7HLkeqvkrPzNu/G7unxTH48hUavuBA7YObc8zX4WwrpRhZp2PntPNw1A5
	fa3Pz6pJlBpWFEJjyMknlQAc47l6QChfuhrANVRyz81IPr6j5l7t8vULjhVhq9+qHMIiMwNNAmU
	u7Q5YRcQD9nU1jzOXLDyrC7xRJF+hcTlh14nWUGzBpgxW+NlTWYSzibjh62FlbsCY5HcgLi3p1Z
	XH/TJCBu4ayI0NmI8w8wwXdtiULZici/Y6rQmeu5v7yH5FPzg9OJwmuoQR5eQRus/37I5HEmjfI
	ByRauKGdMhjptIpKZFksnEr1TE/EXDWMfNRHlhylWpWf5mJxUwwtjawnAMza/HM4zDXyGnE577e
	jNcoIr25R5B/Nn2o8+LTQRUoYqWc7q8XA3xK2M593GTSa9lg=
X-Google-Smtp-Source: AGHT+IHBcvz1E4nu823DV3u4R52vj198jlZBPLPlpuWBvufn4TptQGtUV0gBNjjnecZFLZCOlhBJEg==
X-Received: by 2002:a05:6a20:7f89:b0:220:7e77:f4f7 with SMTP id adf61e73a8af0-2260c2401efmr27389681637.25.1751974555983;
        Tue, 08 Jul 2025 04:35:55 -0700 (PDT)
Received: from localhost.localdomain (125-231-129-141.dynamic-ip.hinet.net. [125.231.129.141])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-74ce359df4bsm11987658b3a.21.2025.07.08.04.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 04:35:55 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: update regulatory rules for Bosnia and Herzegovina (BA) for 6 GHz
Date: Tue,  8 Jul 2025 19:35:44 +0800
Message-Id: <20250708113544.3557-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_043556_874445_5AFF0840 
X-CRM114-Status: UNSURE (   8.99  )
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

For CEPT countries, ECC/DEC/(20)01 [1][2] decision enters into force
on 8 November 2024; preferred date for implementation of this Decision
shall be 8 May 2025. Update regulatory rule for Bosnia and Herzegovina
accordingly.

 * LPI devices
   - 5945-6425 MHz
   - Restricted to indoor use only
   - Maximum mean e.i.r.p.: 23 dBm
   - Maximum mean e.i.r.p. density: 10 dBm/MHz
 * VLP devices
   - 5945-6425 MHz
   - Indoors and outdoors
   - Maximum mean e.i.r.p.: 14 dBm
   - Maximum mean e.i.r.p. density: 1 dBm/MHz

[1] https://docdb.cept.org/implementation/16737
[2] https://docdb.cept.org/download/4685

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index 12ac14766a69..81ff14ecaac3 100644
--- a/db.txt
+++ b/db.txt
@@ -201,6 +201,9 @@ country AZ: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country BA: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -208,6 +211,7 @@ country BA: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.25.1


