Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B14AFD065C
	for <wireless-regdb@archiver.kernel.org>; Wed, 11 Mar 2026 09:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XwwdBQwFVHZe9xp6Z47PDYZq8vGC6EWdk5eO/F39u98=; b=dgptAcbaeh/EjBeITEy2f8lGf7
	VOAR3SGzS+ZDMWr3CFankoIYaENWvFjpspwa7RtVbWLIeJ0NHlu7VthGfyu6GCfFcSlNCXWWJL4C+
	7fH2jD+Fc/LK5yR5SDdlnjTN3KKlVln1pMw8rx74zjxmW9r41aNqbY3y1b7i8j81Nv+wq05TRqnhF
	8EgmvGeVk3CqORD/uJYBPeW9SFG/bsyfJnLhGYVXAIWXOFduf+0OM8vYt4NlJq80ebQJqOLBuhRAO
	0V6fWkQWHHZKImY+5WJqjMnjLAXiowmHAWGqS3KNPQ2AHMz1fIVDq3SPS5wrA7xnjd9C1qyp+5weM
	Uwlam8fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0FQ7-0000000BDNc-1vNB;
	Wed, 11 Mar 2026 08:59:59 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0FQ1-0000000BDMk-27g7
	for wireless-regdb@lists.infradead.org;
	Wed, 11 Mar 2026 08:59:58 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id 188365FDBB; Wed, 11 Mar 2026 16:54:01 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: druth@google.com,
	Ping-Ke Shih <pkshih@realtek.com>,
	wireless-regdb@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	Johannes Berg <johannes@sipsolutions.net>,
	Gaurav Kansal <gaurav.kansal@nic.gov.in>,
	Degrader Snehil <degradersnehil@gmail.com>
Subject: [PATCH] wireless-regdb: Update regulatory rules for India (IN) on 6GHz
Date: Wed, 11 Mar 2026 16:51:40 +0800
Message-ID: <20260311085141.1634383-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_015953_685286_474D8527 
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

The Government of India has officially opened this band for licence-exempt
use via Gazette Notification G.S.R. 47(E), dated January 20, 2026,
published January 21, 2026, issued by the Ministry of Communications
under the Indian Telegraph Act, 1885 and the Indian Wireless Telegraphy
Act, 1933.

Gazette details:
  Title   : Use of Low Power and Very Low Power Wireless Access System
            including Radio Local Area Network in Lower 6 GHz Band
            (Exemption from Licensing Requirement) Rules, 2026
  File No : 24-04/2025-UBB
  Gazette : No. 47, CG-DL-E-21012026-269488
  Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Communications
  URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74eb6f6907934d17d0015ab5.pdf

The Gazette defines two device classes for 5925–6425 MHz:

  1. Low power indoor
     - Max EIRP         : 30 dBm
     - Max PSD          : 11 dBm/MHz
     - Max bandwidth    : 320 MHz
     - Restriction      : Indoor use only (Rule 5)

  2. Very low power outdoor
     - Max EIRP         : 14 dBm
     - Max PSD          : 1 dBm/MHz
     - Max bandwidth    : 320 MHz
     - Restriction      : None

Additional operational restrictions per Rule 5 of the Gazette:
  - Band is prohibited on oil platforms
  - Indoor use prohibited on land vehicles, boats and aircraft below 10,000 ft
  - Communication with and control of drones/UAS is prohibited
  - Contention-based protocol is mandatory for all devices (Rule 4)

Out-of-band emission limit: -27 dBm/MHz outside 5925–6425 MHz (Rule 6)

For now, add a rule for 6 GHz LPI. As the database does not support PSD
information, the EIRP needs to be limited so that transmissions over a
20 MHz channel does not exceed the PSD requirements. This limits the
max EIRP to just 24 dBm.

Reported-by: Gaurav Kansal <gaurav.kansal@nic.gov.in>
Reported-by: Degrader Snehil <degradersnehil@gmail.com>
Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 db.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/db.txt b/db.txt
index e2842db..d54ef78 100644
--- a/db.txt
+++ b/db.txt
@@ -985,6 +985,7 @@ country IN:
 	(5250 - 5350 @ 80), (24), DFS
 	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5875 @ 80), (30)
+	(5925 - 6425 @ 320), (24), NO-OUTDOOR
 
 # Source:
 # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
-- 
2.47.3


