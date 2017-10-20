Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=pGk6LO+kNCDSOhw3YgChEgJHW8As401rRf1zGewnzpI=;
 b=E4OcDpWNnneLvw
 3I+GWzTn7tpSMF9Ad8ngKDuXq7ynp+1Ds5pLttkVdXgGJ/4zQE5aSJNT90lO9FKDjvNsF3Kjl0Ar2
 E6MO/B661U1TlmWxNbPC/9WRi9fZxhUf8CUlGIQB0g2vl+mQOV1zqcJGXfTy177P7WhvwO6djXTbO
 lQYxLLwYlp1XKR5aqk0GMIDHAvPcEjHE42XHYiyEIG70IGdofTgJOvndCxUu6ic/ijAIozmFiALw7
 hxdgUXhXxIXrDl451/xv/hmpMdVyLXnP65s96uRoLZuhOLxH2H4OGF6cS6aY5R0xOZTqiULkPJiX6
 vOWMJbca4rUnUUNqxgaA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5YtL-0003TE-3U
 for wireless-regdb@lists.infradead.org; Fri, 20 Oct 2017 15:07:22 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e5Ysy-0003u7-5y
 for wireless-regdb@lists.infradead.org; Fri, 20 Oct 2017 15:06:56 +0000
Received: by mail-io0-f200.google.com with SMTP id 97so11195005iok.19 for
 <wireless-regdb@lists.infradead.org>; Fri, 20 Oct 2017 08:06:56 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 20 Oct 2017 10:06:51 -0500
Message-Id: <20171020150651.32424-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Add 5 Ghz rules for
 Kazakhstan (KZ)
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
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Cc: =?UTF-8?q?=D0=90=D0=BD=D0=B4=D1=80=D0=B5=D0=B9=20=D0=98=D0=B2=D0=B0=D0=BD=D0=BE=D0=B2?= <wowz89@mail.ru>
List-ID: <wireless-regdb@lists.infradead.org>

Add rules for 5150-5250 MHz, 5250-5350 MHz, and 5470-5725 Mhz
based on the documents at [1] and [2].

v2: Also add DFS region

[1] http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
[2] http://adilet.zan.kz/rus/docs/P000001379_

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 9d129f2e542b..10c84ee1ca5d 100644
--- a/db.txt
+++ b/db.txt
@@ -691,8 +691,14 @@ country KY: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country KZ:
+# Source:
+# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
+# http://adilet.zan.kz/rus/docs/P000001379_
+country KZ: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
+	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
+	(5470 - 5725 @ 80), (20), NO-OUTDOOR, DFS
 
 country LB: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.14.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

