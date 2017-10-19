Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=sTJn1Z86iRBsyehII3gF7tmyWU/7+wWrfEZ3fFbrcYg=;
 b=KO9xACaf3XE9C9
 Aa9juTkKETiZj+9uNH8t0UgEPzDBsCHp9x017IgnfGSeHK8G15kUMDzWNYPiHIj07fZ9QpQr9MnB/
 /8ZgxmjV/Bl758yKrvPQIiGVhXNXyp540gb5HeaYEqtez+P+mHm+h28xlS/G0anTpL5No4CZXLGjw
 JhqUkmMyDluEOS1Ojx8iitqdFcaXIMbf4QKkhVFkP9oaTO9Rg23kRJjfmrt/Eif9b3uV2TesO/b4r
 WVZrI7BsjjAIzSUxs0zGDuvskwTzNKowCZPQdU8ZcLOF52TIIxCATLwNg39C+9F8iH3y9TpMz3Hqa
 VsEoxr6RYqKVeDfW2c1w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5IWp-0007zl-H1
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 21:39:01 +0000
Received: from mail-it0-f69.google.com ([209.85.214.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1e5IWT-0007XP-O9
 for wireless-regdb@lists.infradead.org; Thu, 19 Oct 2017 21:38:37 +0000
Received: by mail-it0-f69.google.com with SMTP id j140so8754566itj.10 for
 <wireless-regdb@lists.infradead.org>; Thu, 19 Oct 2017 14:38:37 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Thu, 19 Oct 2017 16:38:34 -0500
Message-Id: <20171019213834.23127-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add 5 Ghz rules for
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

[1] http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
[2] http://adilet.zan.kz/rus/docs/P000001379_

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index e48f9a619651..96d8fda44284 100644
--- a/db.txt
+++ b/db.txt
@@ -689,8 +689,14 @@ country KY: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
+# http://adilet.zan.kz/rus/docs/P000001379_
 country KZ:
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

