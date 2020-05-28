Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ToYZEbmikMiQ7jRSTWnnAfuRowvvAIqtJjsttAL5J5I=;
 b=A+aLqZolupF0Uk
 t6NuupyDbW2zPUygTZ5IoX7dCagVbvBtRNYO14RmdxTJFdCMCmMs5+bz0lJ4LUeoaj0CZiS6kj4Sp
 /u56UEvIm69FHF7OBc6Dh6Lac3B1Z+M4EX/7nAt9GR4IfMsNjaEPtdT8supHGrCrTe6rpCaeZKDWc
 7yy13/kO1BLTKuPMKRRTLczzF33q1+dxtLvcyEuwweSg44z0TPMBo0Ke+EKILqTvla81fZhKK4Dm1
 fUv7D1dcHbLb/zyeYB7On47TZqUcgEuCsdnjAQPBufIPbboZwL52AHBoK4pfbl/NOdjSo9eybJ+OY
 i/uvcyecVQA4CtgDvKTg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePjC-0003dW-7w
 for wireless-regdb@lists.infradead.org; Thu, 28 May 2020 21:06:16 +0000
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1jePj8-0002NE-0f
 for wireless-regdb@lists.infradead.org; Thu, 28 May 2020 21:06:10 +0000
Received: by mail-il1-f200.google.com with SMTP id p20so370090ili.16 for
 <wireless-regdb@lists.infradead.org>; Thu, 28 May 2020 14:06:09 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Thu, 28 May 2020 16:06:07 -0500
Message-Id: <20200528210607.16154-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update regulatory rules
 for Egypt (EG)
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
Cc: Ahmed Kamal <email.ahmedkamal@googlemail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Update the rules to the frequency ranges and power limits
documented in [1], and update 5GHz rules to comply with
EN 301 893.

[1] https://www.tra.gov.eg/en/industry/importing-of-equipment/Pages/Regulations-for-use-of-Wireless-Networks-Devices.aspx

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index ac3248350956..699bce9fb9d8 100644
--- a/db.txt
+++ b/db.txt
@@ -516,10 +516,11 @@ country EE: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
+# https://www.tra.gov.eg/en/industry/importing-of-equipment/Pages/Regulations-for-use-of-Wireless-Networks-Devices.aspx
 country EG: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
+	(2402 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 
 # ES as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

