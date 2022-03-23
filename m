Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=fyJPMMJbF8GDfCZ3doFUPIzrc9xxLuvsG8RFbS2l6ik=;
 b=Xx9fZuvJ/Xc23b
 MoiFxCpueLGXM6EtLzDbb/UO/HiCdY7aVxKZEnaI2NncgXZrpW3af/cuVz/92n6TtwtdO6rcYfTIY
 aDmmY3o3VHLsSm6d4E+trxQnxV/wKUAoItjPSZ/wVcS7S3nRFfqbCaUdhRJbx7KceEAIsmYecwU4U
 FX/KqM4whpCrorKBGj7sPvoSn6Kd30pe+mW5zShWNZV8HkLGeQKLfKszlaFeiXNRW/ROBuLQ58h9q
 GPjlzAlRcupWtIg8EK3/7f9jMv03sL1/3AvE3U3U6qtWBKb99wgXzRMQB3B5ZCXmemvXhXi70xAyO
 L7wANxmWbz5Tq1/kkXmQ==;
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX6rR-00EkJN-Vy
 for wireless-regdb@lists.infradead.org; Wed, 23 Mar 2022 19:41:39 +0000
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-de48295467so2794854fac.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Mar 2022 12:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7CUKoQqqtzrjMgIuYVrIVsqW153Ub0tNPj/H249Q6ig=;
 b=FUK2t5UiH/LbhG0gnBokE7UeYtdE3PCNock02ICrHilTNWPQhDUE7rRKAu60Djit83
 1FGr84X/6FrdSrFaqBCMgx1AfTA6Ol96kw6Ul7R74QDh8rvoJ+UeMdEcSIf097Y2gUnp
 K0HKHystMRzFSWBt+HfEn+fkOZAIjjuzcoQZkYTRvT+OVYIkMSbvOu+piUARk9u+bS6K
 Bbx4eG/iUy+p6o7gwDeX0lUNk6WoUVRtvxe68hJid4X7nXAICFvLFef7hOzr9wzSrDEj
 co2BsPukhQ59j6e0WEmqpgLeBrekJeYHWKCV+PeLiOKXnIXZvbWrr0EyjObizFZmMoBO pNAw==
From: Seth Forshee <seth@forshee.me>
Date: Wed, 23 Mar 2022 14:41:34 -0500
Message-Id: <20220323194134.169332-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: add missing spaces for US
 S1G rules
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

The rules lack spaces in the frequency range definition, which works
find for building the database but causes problems for some external
parsers. Add the missing spaces.

Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d45ec082e7c4..5f2168d21222 100644
--- a/db.txt
+++ b/db.txt
@@ -1619,11 +1619,11 @@ country UG: DFS-FCC
 # set out in 47 CFR § 15.205. TODO: reenable and specify a safe TX power here.
 country US: DFS-FCC
 	# S1G Channel 1-3
-	(902-904 @ 2), (30)
+	(902 - 904 @ 2), (30)
 	# S1G Channel 5-35
-	(904-920 @ 16), (30)
+	(904 - 920 @ 16), (30)
 	# S1G Channel 37-51
-	(920-928 @ 8), (30)
+	(920 - 928 @ 8), (30)
 	(2400 - 2472 @ 40), (30)
 	# 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
 	(5150 - 5250 @ 80), (23), AUTO-BW
-- 
2.32.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
