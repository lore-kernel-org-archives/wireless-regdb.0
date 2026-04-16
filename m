Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8FFEF8A167
	for <wireless-regdb@archiver.kernel.org>; Thu, 16 Apr 2026 12:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YZxmIH7BOqv86MQHIX29N3iRezpyhAsdnL0ZEZoaw4A=; b=O9W/bcZl4hXjcQSmqTNgXk85kF
	Zby7aaj1Na3TiSC2QjmAZ7sPLE4bygCxwNdmmhYYwq5FoF86THjVJGU0BlN9Jl3LU34TfFzXP7J4V
	KQNHmNdicoM+sDqzdsPrjPUpt7627kbhHD67bWeLSDBmOdRbni4fBSNS+9AGYnPb/5wZwoHcf9rTZ
	xv3mEKAQDHPZP76FcwqenSaL2uRBCxQgSBFpvRo/j8AnXq7a+jzi+e6AbjqO6p2eYmnGqXxfqI5zL
	RX5HKYZly6R1ThIOZ5UM2rkXK9Ij74adrR7wF3hWpINNjquDbaEMVzNjJ9XwI15sJQCl8uIZL/d+E
	QgTNfpQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDLON-00000002PnS-0TkO;
	Thu, 16 Apr 2026 12:00:19 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDLOK-00000002Pn9-1PIK
	for wireless-regdb@lists.infradead.org;
	Thu, 16 Apr 2026 12:00:18 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b9c745e18a0so117063866b.1
        for <wireless-regdb@lists.infradead.org>; Thu, 16 Apr 2026 05:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776340814; x=1776945614; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YZxmIH7BOqv86MQHIX29N3iRezpyhAsdnL0ZEZoaw4A=;
        b=Br3eMcXWh1V/ON0W9A05XLzUfnUVQpjA44MbtdoqdPg4lyNwENTQPn/oAjIc9f3+m3
         Gj35walB7jZWMnL2sfVABoDURehULHBFP9zzC/IMLiHQG18EsPAt5Ec/7iqogO0vt4sJ
         gLY/6TpmVghTX9uudXbQxuEW6bfcZiNYOUTamkystoQbqwlrODKBpI8tHJ/V9V7+qQjY
         tSAsAHMJvbi+KY0dhQVTdeVkvt05VVyyip59np88aqDIU5skgA0+VShUU38tItfF7v5+
         Bba/CCvOQJNJkjvjfwL4kJCzgZ2ODqY1g3vKoJmI15Jy362GPyCFmOeZzrsvmTz1TsJb
         yAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776340814; x=1776945614;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZxmIH7BOqv86MQHIX29N3iRezpyhAsdnL0ZEZoaw4A=;
        b=rDve8+KcxRaJEZIUaHub6ffSgmM+N4hKRZl3J+BYQgViGWJXTV7Ny6QQBj2wsTtXh8
         ttNrGqjMs8GzMAsUCZUGQ1GA13gBUmsyL+VQI/XK+5qsUWnLHw8LKsxW6FRWhfZJuK8y
         vds1VnAPwA7TJJE3CThJDgSAPBmxQxBNOjSLsDEN8WrRNB8xHqrELAD9PBlAUWo1wKpc
         XvhPJa0fubznvRgdc+3gQiF3btqIiK5wCv8FDLItWiqNn4iQvNte9XkYep+Cp7CiPY1f
         ptefkVhZTJGypvhgylOizT3GrfgnzM24SgVW/vXjCbtNiL3yEMAzNCEwRZXUnsygZ/eK
         5Www==
X-Gm-Message-State: AOJu0Yx8DR622WvJ+IBF7Y7yy5sUf+hN65l6E6YQ+HOOm6gZgitGJ8BB
	BC7CYmL9w2JEwJzClZ27eBqUJWzr8f50Rbd+FSoCpIqXv3LkkCy+hTbMYpUkH/NnhdrItw==
X-Gm-Gg: AeBDiesQbXouTlC2eQy5FY8nitlUvh5PF86cMCW3ZpuyTo84ka+RiUEn2SzAg943ak5
	tpP6tFKX/+vFTWK860mNhwBbZH2OlMUymbuhOv7Gjk7KigEXqAPenCbMG8kqLc2ZK8amCWyg3md
	5poyrS6JPIHHWJZpg3cBUJLbHStcdD9AMXhB7HtGP/2cwskmmPI+lmjTmeiZ3F2SWenfGa6KML4
	i3sIRvVasroZb4Z1d+lv3igvF6lGTwEmE89NedJoC6tJtMnWomRFQA7i/LbtCvBAC15noz/R74H
	njJIogGFdF+jAWRfrYeNQWlLtvDW64hw2uYyj5K9sPDMHCN8TFMstXO0u167O23kRvQM/CU0H9q
	OE+ol2x53w2SXS4Die8HJtpn3D79kt286fWLm6qbwbrCPde3QFPIL6Clg1mvrDUefD6wCKblbuo
	WNvSpKqogcKDlCRNYFg1NZmTp+e6FsmBN2cp/1M2jQTONATy41AN/S+mJV3Q==
X-Received: by 2002:a17:906:6a07:b0:b9c:bf69:8b54 with SMTP id a640c23a62f3a-ba31881bedfmr95264566b.18.1776340813775;
        Thu, 16 Apr 2026 05:00:13 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba17341a95esm162040066b.3.2026.04.16.05.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 05:00:13 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update 6 GHz rules for South Korea (KR)
Date: Thu, 16 Apr 2026 14:00:01 +0200
Message-ID: <20260416120001.979135-1-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_050016_412254_37ABC826 
X-CRM114-Status: UNSURE (   9.66  )
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

MSIT Announcement No. 2026-9 (February 10, 2026) revised the power
limits for 6 GHz indoor WLAN:

  Lower band (5925-6425 MHz): 1 W (30 dBm) EIRP, indoor
  Upper band (6425-7125 MHz): 500 mW (27 dBm) EIRP, indoor

The previous entry used a single rule covering 5925-7125 MHz at
15 dBm, which does not reflect either the current lower or upper
band limits.

Split into two frequency ranges so that devices operating in the
lower band can use the higher power limit. Add AUTO-BW to both
ranges so the kernel knows they can be combined.

MSIT Announcement No. 2024-22 (May 30, 2024) sets the maximum
occupied bandwidth to 320 MHz for both indoor and VLP categories.

Reference:
MSIT Announcement No. 2026-9 (power limits)
https://www.msit.go.kr/bbs/view.do?sCode=user&mId=108&mPid=103&bbsSeqNo=83&nttSeqNo=3186355
MSIT Announcement No. 2024-22 (technical standards, bandwidth)
https://www.msit.go.kr/bbs/view.do?sCode=user&mId=108&mPid=103&bbsSeqNo=83&nttSeqNo=3175810

Signed-off-by: Louis Kotze <loukot@gmail.com>
---
Changes since v1:
  - Split into two frequency ranges with AUTO-BW per Chen-Yu Tsai
    review, instead of a single conservative rule at 27 dBm.
  - Add MSIT 2026-9 as primary reference for power limits (replacing
    CAICT secondary source).
  - Add MSIT 2024-22 as primary reference for 320 MHz bandwidth.
  - Send as standalone patch rather than part of 5-patch series.

v1: https://lore.kernel.org/wireless-regdb/20260411222155.299441-3-loukot@gmail.com/

 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 343b256..6b56ddd 100644
--- a/db.txt
+++ b/db.txt
@@ -1136,7 +1136,8 @@ country KR: DFS-JP
 	(5470 - 5725 @ 160), (20), DFS
 	(5725 - 5850 @ 80), (23)
 	# 6 GHz band
-	(5925 - 7125 @ 160), (15), NO-OUTDOOR
+	(5925 - 6425 @ 320), (30), NO-OUTDOOR, AUTO-BW
+	(6425 - 7125 @ 320), (27), NO-OUTDOOR, AUTO-BW
 	# 60 GHz band channels 1-4
 	(57000 - 66000 @ 2160), (43)

--
2.53.0


