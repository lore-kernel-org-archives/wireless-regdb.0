Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39D33CF6497
	for <wireless-regdb@archiver.kernel.org>; Mon, 30 Sep 2024 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ORaJDlvQnympO3hAnhO+eW7AqBF+2CEiHEVUGjcCDbE=; b=XhNRLH87egY/SyyGlFv1GG1iEg
	lyYFUOJ73n0/gqZBVl1lrR9deeDesRhMoNNuERyCTEpkrRkhGddDiiJqDPAoKytm3GctebB5+Kxaf
	QheH+ZtgXyB51Bpj/ITDmUGUk1h8xHkrn3+c3xKsWxODK3TTaGOwGlVKYrju9NtLweyJj7QyBIu2O
	fqAE1aay6pbBGNycTp1wATn2RMGZLNLpGXKEs2+fP2fMCW4bkyMIas3hIjgz83xEtN4xr00Mqw94Y
	RZLGUFM4KR3ErO/MZ4kXEer0w0+EK2SXfVteqeObh7gVBxRwNdyrG8Oqn/wsthzkOnUiAcexygPBa
	IwXjBXXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svCMm-0000000GRb9-3SFx;
	Mon, 30 Sep 2024 09:06:52 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svCKU-0000000GR3B-3s3K
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Sep 2024 09:04:32 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-71798a15ce5so3852845b3a.0
        for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 02:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727687070; x=1728291870; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ORaJDlvQnympO3hAnhO+eW7AqBF+2CEiHEVUGjcCDbE=;
        b=SM3s4Pjt8rBaOpl3TybitH2BZYbwiJIh1jmrYZFoY5j4cY56lswTRHY7XNofrT9GZD
         uf1GoOT8EJjjp0Bu5iAKYCMtXA9nizPGJ48t7BNj/wtjZFVrj22GB0Ut0HQ+IGtocJey
         BCECoWAfYSdpmkd331uvUYGqHvkIxnJR/7T7NqbNBTQ4j6IlN3eQRPUU7z/j1DvdgmMD
         wytv+msy3BX/4uEXGUgXYndh8VGHdnbG0ipSRHlXa3c1mxci1sunFoOoii6mSRATuZe1
         C3IYOer+eIDmvdTaQ51PlNQaRJDvby7O1kIDLsZjtqZuJpQLKB+wV5OI2v/NsX0B3vtO
         e10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727687070; x=1728291870;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ORaJDlvQnympO3hAnhO+eW7AqBF+2CEiHEVUGjcCDbE=;
        b=Y0HC8DMrS+zFFlDie1YC92GZgDsRoNx7lC3rtD0BzeVtc14ulxlbSVfC8I8wrnTIdO
         8hda5dd4JslUYCm5+fFVjTyA9mjlkH1GhV9RW+fRuB33bw+ffzkni8Xo8v6m7zE0jrsl
         pzbWqNY0XtxXbSIgnkKN5ITJaS+2qACEEgt6pR24fVDpaa0EJ5aeVOqwrbm0xShIxTN1
         71iENs3jU2ZBsTddV6rAk/9+s+bQRIyGKbuRm/0YOA0/FkolYujjthKVO1C1YdbWCMma
         UTT/6BHUNN8bUSbqdMSX9VJ7Hydam08qbtBy84UnJ0mgWitNTCjfITxe9OFDOLZBWdAa
         nppw==
X-Forwarded-Encrypted: i=1; AJvYcCWE40RI6mqIbgFqOHlKQMeP5jiNSzt5VL5/1o7XhhzGOEjU3lXZJPFFfcFuIJeUafDMrOIMT6xHZsz3iJX7Ag==@lists.infradead.org
X-Gm-Message-State: AOJu0Yys9oVHFAhMtoLEgKBXyCLREjSWK+2IbOxlNcgdlDEDrCFrFwOI
	twmjwYK0o+G4JQOu/L58opU5wyzcjUOg6CzRIEJY3E6Mf3gB+JRroxWRrHwd
X-Google-Smtp-Source: AGHT+IHFIuIoXvob0CtewxlvNmhZkjzGLnRZ9R+TKA/iEfmHDe8pezvMHkONT23eFA43aIx6Y8BTBA==
X-Received: by 2002:a05:6a00:4b53:b0:718:dbc7:2d2f with SMTP id d2e1a72fcca58-71b192af06dmr23961003b3a.5.1727687069546;
        Mon, 30 Sep 2024 02:04:29 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-71b264bc1a3sm5777328b3a.75.2024.09.30.02.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 02:04:29 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v3] wireless-regdb: Update regulatory info for Tanzania (TZ) for 2024
Date: Mon, 30 Sep 2024 17:03:47 +0800
Message-Id: <20240930090347.11085-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_020430_995053_7F983ECE 
X-CRM114-Status: GOOD (  10.62  )
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

United Republic of Tanzania, Tanzania Communications Regulatory Authority
released Minimum Technical Specifications for Short Range Devices (SRDs)
on 2024 [1].

 * 2400-2483.5 MHz
   - 100 mW e.i.r.p.
 * 5150-5350 MHz
   - 200 mW mean e.i.r.p.
     * The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
       in any 1 MHz band.
   - EN 301 893
     * without TPC: 20 dBm when operating in 5250-5350 MHz
       (20 dBm is adopted for 5250-5350 MHz)
     * DFS: 5250-5350 MHz
   - Restricted to indoor use.
 * 5470-5725 MHz
   - 250 mW e.i.r.p
     * The maximum mean e.i.r.p. density shall be limited to 50 mW/MHz
       in any 1 MHz band
   - EN 301 893
     * DFS: 5470-5725 MHz
   - Indoor as well as outdoor use allowed.
 * 5725-5850 MHz
   - 1W
   - EN 302 502
     * DFS: 5850 - 5875 MHz
     * FWA device shall have the capability to reduce the operating
       mean EIRP level to a level not exceeding 24 dBm for ChS = 20 MHz
       (24 dBm is adopted)
 * 5945-6425 MHz
   - 23 dBm for LPI usage
     (should be indoor naturally)
   - 14 dBm for VLP usage

[1] https://www.tcra.go.tz/download/sw-1719952895-Minimum%20Technical%20Specifications%20for%20Short%20Range%20Devices%20(SRD),%20June%202024.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v3:
  - remove NO-OUTDOOR from 5470-5725 MHz, since "Indoor as well as outdoor
    use allowed."
v2:
  - 20 dBm when operating in 5250-5350 MHz for devices without TPC
---
 db.txt | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 956cfd044157..a1408b1da878 100644
--- a/db.txt
+++ b/db.txt
@@ -1873,9 +1873,15 @@ country TW: DFS-FCC
 	# 60g band, LP0002 section 4.13.1.1 (1)(A), EIRP=40dBm(43dBm peak)
 	(57000 - 66000 @ 2160), (40)
  
-country TZ:
-	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 80), (30)
+# Source:
+# https://www.tcra.go.tz/download/sw-1719952895-Minimum%20Technical%20Specifications%20for%20Short%20Range%20Devices%20(SRD),%20June%202024.pdf
+country TZ: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW, NO-OUTDOOR
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW, NO-OUTDOOR
+	(5470 - 5725 @ 160), (250 mW), DFS
+	(5725 - 5850 @ 80), (24), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source: https://zakon.rada.gov.ua/laws/show/z0201-15#n48
 # Although it is allowed to use up to 250 mW for some 5 GHz frequency ranges,
-- 
2.25.1


