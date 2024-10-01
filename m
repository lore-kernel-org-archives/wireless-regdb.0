Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B4DCE7CFE
	for <wireless-regdb@archiver.kernel.org>; Tue,  1 Oct 2024 09:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GhECsh9SXPJbb2DBAQsETsqoslX5T2N7DNUpqx5aA0U=; b=0Ibb3w1Utl94uGtAmiMszUBCpA
	eF5iljVfA0BMk/7rubZzNqvCWQ+pRVNgY6i7HBI3KzTVIkr7kVowYTECtcXu+Cn2UzWy+crMPQx7z
	vBBCyl9p4VrgA7gPb+cfpXLqgRZCwU9B1BLVmi+N+jDe8ebXvAPynJR4F9aou8TbotBggViBuwgDl
	UyMxGU4795Uq7K/QEOKKX0MOQfijPw7/5QlFl8GUmfExL40TrpF/+WK9DyAFpwzzxp8ffqn4K/2oJ
	m+mhxpkKKBW2KTTeyTVrIevsm9LaYyua64uZuNRSATEji1wy75PoECIwOpNCe/0SjHnaepj8gsACv
	Wayqv0JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svZEY-00000002Ebr-2w08;
	Tue, 01 Oct 2024 09:31:54 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svZED-00000002EYn-0ys1
	for wireless-regdb@lists.infradead.org;
	Tue, 01 Oct 2024 09:31:35 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-20b93887decso14997825ad.3
        for <wireless-regdb@lists.infradead.org>; Tue, 01 Oct 2024 02:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727775091; x=1728379891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GhECsh9SXPJbb2DBAQsETsqoslX5T2N7DNUpqx5aA0U=;
        b=Q3wmE6a9O5Xx/9oBINebl9olNp1vdrKBf/vnF4i25fYmKPZyBIc8hQptavySJq8QVH
         MehmH+v5dyTl/JRiwqIjOZ2epNllhRNS5AVCiYxOZvnpsCJncdzw2n833k0yt72LexxN
         N9rnlIrVn/teCayjEIUtG1xxF0qtU5UHgDvTcJOX8yB0H7KAzc8OR6Fy0aSlnzj9EPBe
         rr3lMroHeIyggRhyrcMkgit38nshg+DdvVphvWBqsFbryp9qDG+Lvo167mkQtxS+cemg
         NtVGQ8poqu6ZnglzapE0C3vcNHz0Zd7pmUkuD/7BOjvHLuenoa1LJxz240FmFcJIs1Pr
         LHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727775091; x=1728379891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GhECsh9SXPJbb2DBAQsETsqoslX5T2N7DNUpqx5aA0U=;
        b=lx97I3Bk7ZHkpm5IIdBHOq/WyJSZQrkuLF96adMajvYVpXuN5qZCnKPVD4obACvkcN
         jaafjM9TgvVspU5kp3T7pkGr51zsogqbKMWJ0/runbqa96zdjsInmfIr6mbMmEOM+Va0
         F5q6RlakGGayWKQ0J+tTXhtvNNntuMb9MmzPioqj/IfNWxAXMtBy4aA8oCW7lLgOPIVe
         M6AMrm4JVRVzfrNP1uJismSxcYcwje89sA5vVePrrZTtgTHbjabn483M2jRMaZPN6V4L
         XRi++/+kw/CldjSHh8ZpBUgX5q6IuCkiQvR2yIYQJDyJt96KI03Xee8enfLiB24MUvU/
         meEA==
X-Forwarded-Encrypted: i=1; AJvYcCWLWnby8KZmDBfWcl2QLYKbzl4ZOBFEeC07lJJeXsg4d2oE/RaTCQ5m2HqvbO2JqlPhvzS5Ha4MS/2OIgNb4w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxORQVRrNJhyH6zfG93uyGTfWgl4p534aQzet6NC3Z8jSiAQO9J
	w0GBAiW+//uzQXBytx6ZMrwnD/5JpTgjvankaL4CXehsM8gh8WAo
X-Google-Smtp-Source: AGHT+IFmuHzLYLpeKWWe8wJDYszHycY+4m2zBeWjQ3iZyVDCjr4EIFMT0TZf5XxD2UPt5cSXtbj0Ng==
X-Received: by 2002:a17:902:e5cf:b0:1fa:1dd8:947a with SMTP id d9443c01a7336-20b37b91636mr197262625ad.46.1727775091547;
        Tue, 01 Oct 2024 02:31:31 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-20b37d68906sm66102625ad.38.2024.10.01.02.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 02:31:31 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 1/2] Revert "wireless-regdb: Update regulatory info for Serbia (SR) for 2024"
Date: Tue,  1 Oct 2024 17:30:48 +0800
Message-Id: <20241001093049.37515-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_023133_300614_09D46699 
X-CRM114-Status: UNSURE (   8.11  )
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

The country alpha2 of Serbia is RS instead SR, so revert it.

This reverts commit 388c80ccba39d4ff4957a5d153c461aaac53e22e.

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
sorry for the mistakes.
---
 db.txt | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/db.txt b/db.txt
index adda839f4cf4..54310fb5736d 100644
--- a/db.txt
+++ b/db.txt
@@ -1765,14 +1765,11 @@ country SN: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-# Source:
-# https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvrdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
 country SR: DFS-ETSI
-	(2400 - 2483.5 @ 40), (20)
-	(5150 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
-	(5470 - 5725 @ 160), (27), DFS
-	(5925 - 6425 @ 320), (23), NO-OUTDOOR
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20), AUTO-BW
+	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(5490 - 5710 @ 160), (27), DFS
 
 # Source:
 # https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucion-de-frecuencias-t-0408-2023/
-- 
2.25.1


