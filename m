Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:References:Cc:To:From:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=1fCbZUau22y8K9Ho5mbsfwoGRL77jRibBMvThMxdFKY=;
 b=CwvF+uqLybowaI
 qtg5LjBuoM5pg3S4VQYW/6zqc90ujlQEVwAhx/m6pjN3Bsuz4mYYq0d2UxjpTJLnTGLkop/ITswMv
 g9OKSNe0pLIybiDsMp28LXrh4RwD4+aI4kkMdlGP13GV1LMRaccRUYAHUB3a+hOioncuH1V9gni4V
 l5Xkx3MMr+CrH4IhleAPGwpCsuXgtScDKA48I+P5gXBoUe4wAAyznfsUoKDTmdt1Y5slcc83hy79N
 G9rricA+OrcXyvHbKZVKMFs0JBd3S6KUzlmAT9ScFi/VehZt9C1qJIL+wQF92dwhbuj8s6E9EfTEa
 HuH3HqlcSBzb9m0ga8/Q==;
Received: from forward100b.mail.yandex.net
 ([2a02:6b8:c02:900:1:45:d181:d100]) by bombadil.infradead.org with esmtps
 (Exim 4.96 #2 (Red Hat Linux)) id 1rDiaC-00HPtc-2Z for
 wireless-regdb@lists.infradead.org; Thu, 14 Dec 2023 10:04:46 +0000
Message-ID: <a0480e18-7b67-4e16-983e-c8f888c97261@16depo.xyz>
Date: Thu, 14 Dec 2023 13:04:36 +0300
MIME-Version: 1.0
From: Kirill Matvienko <me@16depo.xyz>
References: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
Content-Language: en-US
In-Reply-To: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
Subject: [wireless-regdb] [PATCH] Update regulatory info for Armenia (AM)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Source:https://www.arlis.am/DocumentView.aspx?DocID=181829

Signed-off-by: Kirill Matvienko <me@16depo.xyz>

---
  db.txt | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index fdc2c13..0708039 100644
--- a/db.txt
+++ b/db.txt
@@ -80,8 +80,8 @@ country AL: DFS-ETSI

  country AM: DFS-ETSI
      (2402 - 2482 @ 40), (20)
-    (5170 - 5250 @ 20), (18)
-    (5250 - 5330 @ 20), (18), DFS
+    (5150 - 5350 @ 80), (100mW)
+    (5470 - 5875 @ 80), (100mW), NO-OUTDOOR,DFS

  country AN: DFS-ETSI
      (2402 - 2482 @ 40), (20)
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
