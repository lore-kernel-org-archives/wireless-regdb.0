Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A50EACD13CF
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Sep 2024 08:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fBHYtqdNFmbRMMdOEczGdY8Jt3MbUklrVgbDj1ZJqgY=; b=ISyJ+Jmsg0dUBfOM42rG9w9YFX
	F0Y/Sh5HUeUZjn7j1XirSUPlffrE7eQODhSaJqyI1vLynfFMDBOAMpsMYT2jzr6R6lhdNS8bn63jw
	iJ/0q6yF+y9COd7TK6cD2e05lNIr7HgDpbwUmKd5HmIrxL0FJ6FheE+muLimWWUBQgf3IzAG2LUHI
	iwC0Jk81tjZ0QmiipnNLeTBip8IBMfL8gUtfm6JEA9bOVl7G7TyNKDzZ0A0T5waLsec2tEUUdN2By
	IW28bHK7IvY41yNU6gvKBVc0lWUTngaivtZYq/ou1JuPdJJ9PgBm2G7By4SKYrquWpOruvUDGiR+U
	0Fs4eycg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2OB-0000000DUfD-2rer;
	Mon, 02 Sep 2024 08:26:19 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2LO-0000000DTyC-2xZr
	for wireless-regdb@lists.infradead.org;
	Mon, 02 Sep 2024 08:23:28 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-715cdc7a153so2742841b3a.0
        for <wireless-regdb@lists.infradead.org>; Mon, 02 Sep 2024 01:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725265406; x=1725870206; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBHYtqdNFmbRMMdOEczGdY8Jt3MbUklrVgbDj1ZJqgY=;
        b=hk84kgBoIV1jB0xpaPvYcWD56wzEpQpcttLGy62zSZd5vxbgWYzJbK7fdSzhZ9ZxIr
         Hr9/I60k4wpB4CQNK9JetEOTjCLp/GkR4zwk3eKfMtHQ6QYMNa6Spsnrl8eJkrQKJ17a
         /BnGM9mElTdG0okcnl3mn50g39vsxjhhBO9EjTiKKxh3gYa1XjDtDyNMwXHOgW4vUqqS
         aRfpZ2RWkTvo4as8RJ+8Yqz7HwHX1giOH3rzGJBIMVhoS1I113VvW4ZojoNiO7x95aGD
         lz6bTqB2f5n5x22ttbXUCBCGey1Ed822ETLzZ77Wr9mbb8yKkYOh7aY9/hTeOIBgUqwP
         fdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725265406; x=1725870206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fBHYtqdNFmbRMMdOEczGdY8Jt3MbUklrVgbDj1ZJqgY=;
        b=HtznzIYuoes/h7oLt2NZX1O/ImHfviif2fGUDGFPg5umN8tbK1jlxSyxA20z47IWOH
         axhPBclq6soNfCtO8ZSSNif9uAqc+GFUc7CY89PgideoUJzYfXvmKzQm6C//wGTsFI5N
         1ww9G0LCtHFyGSvtAXtMVyMq+VWlx6nOL8vLDmxTCYIWf/Wvx1APinnbiSp564Sq9JM7
         YODa8C0mWV42F7D8zZS+eFI+45HlIwbMO78U0oPscvZaOG3Aaa8G2yseeoGrJH5gSHlR
         wcKUBm3En5lIALkuPOLqUPMQYbk7XYbyEoLMnfMQWPK/nwhrLz6ez9vSP4+I6ad6D83i
         0eCA==
X-Forwarded-Encrypted: i=1; AJvYcCXb5cgAfN6lDtFZEB3XtlJ+An9kTi9S9SdtgF12zFpLxYGhk71JNbCOal4RerugeHU035d70ljUYkJMgTT6Hw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxmBiy/rIAqEdHNR1Ho9Y1O4jkxQn802xPOdAYn7arJc3h8wOu3
	iqQmzTyyKpwT4ixwBXH9/cxjs6Pvg3lLxv3TW9OIiSTAWt9au0+M
X-Google-Smtp-Source: AGHT+IFN1LVZKAOiL+yucTIly4eSo/pCrDR7ephnARiP3qFKI3765q22Js5BjEQfX+qiH3DD1SQvdg==
X-Received: by 2002:a05:6a00:9160:b0:714:1a71:cb0a with SMTP id d2e1a72fcca58-715e101f8camr22541075b3a.10.1725265405654;
        Mon, 02 Sep 2024 01:23:25 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-715e56d8827sm6376370b3a.161.2024.09.02.01.23.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 01:23:25 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 4/4] wireless-regdb: Update regulatory info for Honduras (HN) for 2023
Date: Mon,  2 Sep 2024 16:23:04 +0800
Message-Id: <20240902082304.52326-4-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240902082304.52326-1-pkshih@gmail.com>
References: <20240902082304.52326-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_012326_771925_F91C3662 
X-CRM114-Status: GOOD (  10.72  )
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

Honduras, Telecommunication Commission (CONATEL) modified national note
HND40A on 2023 [1], which Wireless Access System/Radio Local Area Network
(WAS/RLAN) have a general license to operate in frequency ranges:

 * 902 - 928 MHz
 * 2400 - 2483.5 MHz
 * 5150 - 5250 MHz
 * 5250 - 5350 MHz
 * 5470 - 5725 MHz
 * 5725 - 5850 MHz
 * 5925 - 6425 MHz (*)
   - By [3] clause 65, "maximum power spectral density for low power indoor
     client devices in this band is 6 dB below the limit for access
     points (or -1 dBm/MHz based on the adopted PSD limit)."
     Then, 12 dBm is adopted.
   - By [3] section 15.407 General technical requirements, (d) Operational
     restrictions for 6 GHz U-NII devices, (5), "an exception exists for
     transmitting brief messages to an access point when attempting to
     join its network after detecting a signal that confirms that
     an access point is operating on a particular channel."
     Then, NO-IR flag is set.
 * 24.05 - 24.25 GHz
 * 57 - 71 GHz (*)
   - By [4] footer 952, "limits the average EIRP of 60 GHz transmitters to
     40 dBm and the peak EIRP to 43 dBm."
     Then, 40 dBm is adopted.

Article 5 of resolution NR006/23 [2] mentioned Recognition of Standards and
International Standards including FCC, which limits and ranges of FCC are
used due to lack of limits [1], but only newly add freqnecy ranges marked
by asterisk (*).

[1] https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pdf
[2] https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR006-23.pdf
[3] https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6ghz-band
[4] https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - add FCC source references for 5925 - 6425 MHz and 57 - 71 GHz, and
    update commit messages accordingly.
---
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index 0be933c86c8a..c7341b5596dc 100644
--- a/db.txt
+++ b/db.txt
@@ -819,12 +819,16 @@ country HK: DFS-ETSI
 	(5730 - 5850 @ 80), (36)
 	(5925 - 6425 @ 160), (14)
 
+# Source:
+# https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pdf
 country HN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
+	(5925 - 6425 @ 320), (12), NO-OUTDOOR, NO-IR
+	(57240 - 71000 @ 2160), (40)
 
 country HR: DFS-ETSI
 # HR as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
-- 
2.25.1


