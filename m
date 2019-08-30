Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ePMHVrUmNOuYVIXrREctyOAw71Uyez57CjbqhAfbx4I=;
 b=sROp689DBGTtWf
 RVuPG6m5xDkd2bvfHsgBvSelTq7CjaCgAoy1o6RUiegbZHcQuaLztgQDMUPEEuTp7wm9TdnvJLkjc
 EkSalJ4PkoJMHgl6VV72sZuR8iNO3g6zfL9RVzbABi4PhoT5jeE1AO7jjDeBtvEU7JUTORzCC8axf
 WN8bLVxicneLOhJhdbgu5YKAw7Es8X2b55ALOT57UrnM5QtebWyXzIPICo2+s2ku12iWP5cvABWap
 hp5JLGX8OolSy9AlGHummenK0kDJ/BGC/sI0uDD5xZWDvr10cb5urVcH26Ysl9xOTOppfUpsztblO
 aUpKiBl0ThN4sam5Sp7g==;
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lZx-0006xq-UF
 for wireless-regdb@lists.infradead.org; Fri, 30 Aug 2019 18:24:59 +0000
Received: by mail-lf1-x141.google.com with SMTP id u29so6029095lfk.7 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Aug 2019 11:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id;
 bh=LqizBXax0mkO4gxIZRPwBrd4VcJG7zs6D6D/3vSkVdo=;
 b=OOq1vsLwa1a9i5o5V0tpumZkGA0sCFcj1LWj0yEkSAb4HA83qFOg7UWZHyvv5eJ2vb
 lgSXy3Jb5rsM31PBYmbNQAqASqqodRziCInWPXTs5wB8wee4K9QkN1sbmJwLO8kkl9pd
 lPDLC6bZLtwjqXyN3sF+9e678dZL23DahU1ZbOeZpthGiEZemYjgc6yZjGvqLY5DUJhp
 AC56G+nMIUgKdO+WYrOeEnrffuLyjywDgQwt9ZGyCcinRkZxVs5/ZNf5sqgJNBoK2pWg
 W95/GWYauCNB83WiDHqhpvZdOLzul4fuLOVRH1Jp9e0pJ8A6wsQHbikkkpXarl/uBWwn 6BTA==
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Fri, 30 Aug 2019 21:24:44 +0300
Message-Id: <1567189484-27536-1-git-send-email-hanipouspilot@gmail.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: update regulatory
 rules for Kazakhstan (KZ)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Dmitry Tunin <hanipouspilot@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Update according to the regulatory rule of January 21, 2015

http://egov.kz/cms/ru/law/list/V1500010730
https://tengrinews.kz/zakon/pravitelstvo_respubliki_kazahstan_premer_ministr_rk/svyaz/id-V1500010730/

No DFS or TPC is mentioned in the document. Neither is 80 MHz channel width.

Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
---
 db.txt | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/db.txt b/db.txt
index 37393e6..491598e 100644
--- a/db.txt
+++ b/db.txt
@@ -717,13 +717,13 @@ country KY: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 
 # Source:
-# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
-# http://adilet.zan.kz/rus/docs/P000001379_
-country KZ: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
-	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
-	(5470 - 5725 @ 80), (20), NO-OUTDOOR, DFS
+# http://egov.kz/cms/ru/law/list/V1500010730
+# https://tengrinews.kz/zakon/pravitelstvo_respubliki_kazahstan_premer_ministr_rk/svyaz/id-V1500010730/
+country KZ:
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5350 @ 160), (23), NO-OUTDOOR
+	(5470 - 5850 @ 160), (20), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country LB: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.7.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

