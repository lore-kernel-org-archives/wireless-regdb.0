Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D22CF397B
	for <wireless-regdb@archiver.kernel.org>; Fri, 20 Sep 2024 01:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cSfZImcSqa+uFEx0KKNiivLbTp+IhV4+X3Qg5DK/KEo=; b=XoCTSZsDVgaLbDeN4zgXIJjWP3
	PfwjRs38I7uAJ9AnZxD4NAJjKe33m/uOeAm+rtjXgfSvIhvIJoondxzTAjQEqAsMB2PxYBsRtq+bQ
	L+jLzBRQrh7wRAU60Wg54a5fP31gGGS63OVPUIsMIiVjNwvX7NTuX8RabKvm75vtbgmpyuq4aDedq
	AcqzRKh4SBv3fW51JYdvrfjs1vqIkh/Kk+bGlMHTsX5uwGZDBAN30DV4tpL9yHI0w20gPgaIbGiwA
	8cEtGDR5iMSZE38fdBCmVJ61G04IXkx1A6DtQEC0kOU3wIZFbz+D/Zhrz+NjV+YjAyZ6I0zoo3Ueg
	pnR1Aq/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srSJ9-0000000BFei-009o;
	Fri, 20 Sep 2024 01:19:39 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srSJ5-0000000BFeN-0ctF
	for wireless-regdb@lists.infradead.org;
	Fri, 20 Sep 2024 01:19:37 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2068acc8a4fso15677415ad.1
        for <wireless-regdb@lists.infradead.org>; Thu, 19 Sep 2024 18:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726795174; x=1727399974; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cSfZImcSqa+uFEx0KKNiivLbTp+IhV4+X3Qg5DK/KEo=;
        b=OCoCB47CCfH/cHUlMj6GEapygGs/0JwEjkVi3pNnnV7gkCAvwCUJ+8YgUPztxHPQ6T
         jm2AZdYp3eFBRkg3Jo1a4A0iVA6iaqzI3waYYeJrTds+kHC7L0WESQZmKzgLJSBRaZB+
         h5TT+XjmrvGZ2DroyPkFbRiYoJ+qrDoRh69Y7f1avEzUQgMxZ4TRxPzUQfz9U31xfp2a
         TB595Yr2pV34FOxm8Y7X1cZePLCARFmB14b6lgV67BjV6sHZYH+yuigeSDtak7KdMB8U
         nYvAzpWYmravembs2BbjiSlHB1mzBoi8DObM2zbIliA2JPhGv/sokkdljGAtOI6A7M+x
         DdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726795174; x=1727399974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSfZImcSqa+uFEx0KKNiivLbTp+IhV4+X3Qg5DK/KEo=;
        b=hOuSwu87xmnAeIUWlW8jJlBmzQRrChHnAo2s5HIgp/7qcoVZ45obI1x9ZG7Hvqqy9h
         1x5Uw/HOFF3QHNyw9ussWd1/AOIFdLuasLywhfLKkzyRaA15V3wqOzHv56CESMEEQ+oR
         7rTDtleZ0cC/HrgI4hsSzCtpyqE5DI7EuJjyFScmey5zThccXGclGSQB8EIhLa/SGwf/
         rAK4kH6haJ4aa0rnU+FxVdcSbDOlX4/iVoWvmT70YDB9WwF7IVjKPELFkZVa6l5+LtdU
         uw/NcR31428pwW7uUuHdu7bjENi7M8J1Uw1ndCpVUJhjvUaU49Pu6ZYLHz68hrxOZH4Z
         QQlg==
X-Forwarded-Encrypted: i=1; AJvYcCXgxu1i152dHJXps9fHkQ2S2Q//jhgcm8QaR+qnS8y1uEeDeur3hWuGn3CUA3p3Lje3I2EThE+1nwb/uzmaag==@lists.infradead.org
X-Gm-Message-State: AOJu0YyzO6mQk+OA2lMOCMiUH19Or27N9pmJk6T7upe5fL33d57X/4gb
	A946Sdu4c+Wf3v2P1+jhywTGzb8RbCAXTLnXWOI6Nlj9KfJ2MH7d
X-Google-Smtp-Source: AGHT+IFbgQrbxYjwtQn0sQCBm9qIarBXdG348D1rj614PsAJTWsBJwFjDKLNQ4QMe+lnoYHvL+5pZA==
X-Received: by 2002:a17:902:ef48:b0:205:8cde:34c3 with SMTP id d9443c01a7336-208d8423fdamr17208735ad.54.1726795173485;
        Thu, 19 Sep 2024 18:19:33 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2079472fb5csm85672215ad.252.2024.09.19.18.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2024 18:19:33 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Tanzania (TZ) for 2024
Date: Fri, 20 Sep 2024 09:19:01 +0800
Message-Id: <20240920011901.5038-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_181935_215755_7406BD93 
X-CRM114-Status: UNSURE (   9.78  )
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
 db.txt | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 9a55f6b8cc98..5ef3236d26ae 100644
--- a/db.txt
+++ b/db.txt
@@ -1860,9 +1860,15 @@ country TW: DFS-FCC
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
+	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
+	(5470 - 5725 @ 160), (250 mW), DFS, NO-OUTDOOR
+	(5725 - 5850 @ 80), (24), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source: https://zakon.rada.gov.ua/laws/show/z0201-15#n48
 # Although it is allowed to use up to 250 mW for some 5 GHz frequency ranges,
-- 
2.25.1


