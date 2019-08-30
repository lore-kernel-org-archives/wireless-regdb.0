Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ePMHVrUmNOuYVIXrREctyOAw71Uyez57CjbqhAfbx4I=;
 b=tyebrdkZt2sYPw
 gw6LQcLMjijdnl7fyTq+ALzBCWWSDlrcsiSWc3gPOZwnSetnYBctWEBL48OyrEe5UPcmHJJoVNT9Y
 bQiussqkazWa2CX9J5qgUXrVZzIbAVd2Fg+JbJUNaUd9kKWTWcFIhegXV+xj/DEO5XQXytP4F1Qke
 4KTANAi1QzAjXO5YR0lCpZSW/OVR8FBo7XYn4uejzfwQj9LE1vU4/c0+vffzUoQhFLnavF1U2UtZD
 wNVaABWKfLQ+19xQ0pJR4oXc69WG6L38QIkKFMvxHU/U6DXr/Pckv5uQ1BNaNM5pweMv59KDfAY/3
 EBf64lo/w2YfaZbZzlrg==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3kCg-00047d-Ap
 for wireless-regdb@lists.infradead.org; Fri, 30 Aug 2019 16:56:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id e27so7091936ljb.7 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Aug 2019 09:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LqizBXax0mkO4gxIZRPwBrd4VcJG7zs6D6D/3vSkVdo=;
 b=nkQ4Em09M/EJ1BWGTo3sxQANyOOs8LboG1LQh66nOapSCQ1YakZhv/IbA8g9ZaPHBg
 sYucTURCONeFJakGGyFcE7repjibY04K7FVtdOdhB8N04pMERv8eyKJPAI/8SwLzLYGn
 1fv/fYzgOiPpLPNswHMoMIb03fuNaaMy0PRUU6nhZjgHzhmwmAjZxBzVzyBmxniWKrqu
 JTBg43qyBex+QkAusLI/KVD8qf1qJMvBYCvmREiLDxIkQ72OgjtZ2cVXPZZKrTUi9+Re
 SOUVNg8DVETR/Z3U2mEcgdSM4RbEeS8FTxU8dfQ5RWbVDrOt98l0RsY1frDtU9lUFFJp MO7A==
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Fri, 30 Aug 2019 19:56:35 +0300
Message-Id: <1567184195-24992-1-git-send-email-hanipouspilot@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] =?utf-8?q?=5BPATCH=5D_wireless-regdb=3A_update_?=
 =?utf-8?q?regulatory_rulez_for_Kazak=D1=80stan_=28KZ=29?=
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

