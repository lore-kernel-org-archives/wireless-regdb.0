Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=AXnb2PpzkqN/Fsa8SnKT+hK6KU5n4a8vRs9ifX6Nhos=;
 b=beUmTz7jpsbb6T
 xOhT4F8Wj6FqNnnqqdB3xi2z6TPc+dtiDUmZdNTOKjtdUB3D0hI8jXb+NJaVfITNoobXl88952bT4
 cZTIPVW2T0P+8bT1oVxN8avm36ejkjmRm/LYbX0z76OrOU6X6T/cQtEcAMbCm0KqhxRtaqWwtIfPM
 2YAt4hpJeP8rmhzLqhK6g0Bc20so0yrNbEZ2vJ63A6VNCznqroAXbxcurOcBQoBjCiPG8WEYuYvbg
 FrN2NRxdk4aPq7d3Nr0vXAQEHXFbdVvS5Kg+A5zrem/e8aGwyxn3HV6I7ziLghDZBJODyJVzBDuU9
 zC8xeGPipbV+M4HcXKbA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK0iC-00GtwD-Em
	for wireless-regdb@lists.infradead.org; Fri, 05 Aug 2022 17:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1659718928;
	bh=1+Qb+ix8DYrQCOxf2+36kitT4cPxXf5MGa4SyjGI06Q=;
	h=From:To:Cc:Subject:Date:From;
	b=kYgulyfLHsGYOFJC8x6pP3FCYxLSSjzc3j/NZzAaSSBr84aGu+3axeTCG112zb08y
	 nkoOGcCslZAgXeoOaSmtawhTH9rMZOvzJxb8oOFoDxm/Rx+0jAa6U6nHe7mTnvNIxj
	 L4Yj+t+7+EVDbQnA6FRtnKfBVCngu7NHoheQgnLdo1IN4U7omkTL/8wm6am0Yxd/of
	 dp77LNlRlZtX4YWt3OyavI98xQfg4zMKvSKi163BoCuTSZPu6qKJecoZ5hJS3kXatF
	 4C/sApebhpAKL/s6RciA+0Nr983H6ICVTJA4rwMjyVS1Vb9vVn9QNJDdjtybnDvr/D
	 Q6WaRzACby9GA==
From: Seth Forshee <sforshee@kernel.org>
Date: Fri,  5 Aug 2022 12:02:07 -0500
Message-Id: <20220805170207.121080-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update 5 GHz rules for PK
 and add 60 GHz rule
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Murtaza Saeed <mnk.saeed@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

[1] contains updated information for 5 GHz in PK as well as information
for 60 GHz use. Update the rules to match.

[1] https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf

Cc: Murtaza Saeed <mnk.saeed@gmail.com>
Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 16abf2951e77..07cdf4a29e49 100644
--- a/db.txt
+++ b/db.txt
@@ -1362,8 +1362,14 @@ country PH: DFS-FCC
 country PK: DFS-JP
 	# https://fab.gov.pk/type-approval/
 	# https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
-	(2402 - 2482 @ 40), (20)
-	(5725 - 5875 @ 80), (30)
+	# https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
+	(2402 - 2482 @ 40), (100 mW)
+	(5150 - 5270 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5270 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
+	(5470 - 5610 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
+	(5610 - 5725 @ 80), (200 mW), AUTO-BW
+	(5725 - 5875 @ 80), (1000 mW)
+	(57000 - 66000 @ 2160), (40)
 
 # PL as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

