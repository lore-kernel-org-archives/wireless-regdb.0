Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=LFn7Hiv4MIsQnataFMemQYYa09wPOZ+5hJYQ0xgvTo8=;
 b=svdRT8eMvsu9Ms
 L+G5cfyVBNY7+ljSXppzfQYc7hVSX0jkRnYNa6uG2DUiGjOZSAKUGxCo5TYT07fJGbBCgmcaU+7MP
 WsEHhU/GPNsCUoM5LQpC/mKIvlkLAJgHRHLg9bXTLxg53n49D01RU+YXsRS6voKi/Z5DDGDtqx0wp
 NuSoErBUvfKo4j59+1xjsVxB9Va+C06Tflim9Aq8XAD+1KvTKOH5n10jcH9HtkFK1ouaAloE14u8Q
 S1BV/dH0n7tirsj7x2mUixs6fkWB8NIus5z3g3+Us/28FGVWEtF8+6+mYqqIAxjc3PmjgBpEKgBGP
 sJSPMY6WcJvq75nsELhA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJgeo-0004pA-2M
 for wireless-regdb@lists.infradead.org; Fri, 18 May 2018 14:47:00 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fJgea-0006SH-0E
 for wireless-regdb@lists.infradead.org; Fri, 18 May 2018 14:46:44 +0000
Received: by mail-io0-f200.google.com with SMTP id t9-v6so5297236ioa.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 18 May 2018 07:46:43 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 18 May 2018 09:46:41 -0500
Message-Id: <20180518144641.24995-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update rules for Panama
 (PA) and add 60 GHz rule
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
To: wireless-regdb@lists.infradead.org
Cc: Michael Chen <michaelchentejada@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Updates are based on the information in
http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index ed461a35b770..e3bbd374d096 100644
--- a/db.txt
+++ b/db.txt
@@ -963,11 +963,15 @@ country OM: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+# Source:
+# http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf
 country PA: DFS-FCC
-	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (36)
+	(5150 - 5250 @ 80), (36), AUTO-BW
+	(5250 - 5350 @ 80), (30), AUTO-BW
+	(5470 - 5725 @ 160), (30)
+	(5725 - 5850 @ 80), (36)
+	(57000 - 64000 @ 2160), (43)
 
 country PE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.17.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

