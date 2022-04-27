Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=TnCW+Yo5tjZLan83gxFzNssLm3UDjxTXJu1tjQMZFqI=;
 b=XPX
 LNLMrEwgTQEo5LOgm3gVTOwuVC5FlzLu2FWqoo3D2DsWN5VM5U7BN3nruVIv4HaVnxlRJPFKzThGZ
 F5QGYVyC6coPk2+vcvK2Jas/DNVOyk2Yzc15n4/Wf/6HYLH0MSo9AitJJkCqUA4DszSx5IixMLUE4
 AtIt0gw7nawr/k0wPuKRjV+F9fdkr4kFbMzLug2X3yTgtmrIeUOAtdCBfsTTUju5sR2JjdmIeuzFI
 4K6eTZihogkU4JNj0hlMJj0jl7BS/T9hAC+eT40JdG96csFT6HNOj0eh49CACHdzLsoW7PuSy94YJ
 /Hubws9/pxGt9lwysk8ftUJIr3ZnmQg==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njYjN-00HJUM-Hx
 for wireless-regdb@lists.infradead.org; Wed, 27 Apr 2022 03:52:47 +0000
Received: by mail-lf1-x129.google.com with SMTP id g19so980527lfv.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 26 Apr 2022 20:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dbperformance-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=BUE+p809jdrq4hSyyVIIa52FDIabmP6fAaeWZ3O/iwk=;
 b=LXAXBXwrKqUk9hcK7R0sbjE4rzV4vP0LOkXb9zAslPwxFVb1kmXpiPB45b0Sjwt0aQ
 YcyvFGiac4ILwftPeZzIZEPvyGf2gUHflr1VMTGeVVQSjauYCsPr7r+AggMM+H1Abw5H
 +Q+VvrBugOm2UxLQBM6kDfcOc68qAbbkNZOTlZxbz8NmCdiWRwq3VKA02Q/4aaTAYqxh
 P9iDYAhzZXbqZTIQj9Tv2PIcfZrUumxcG6JeAdhWlSfJBkjuhg6pR/IpY6Hj4nHB9Iu5
 VT5J+o+Q8Ar7nPL19uHRoMcTjiraNTYzuF29pCmNjsEYzIW5yGgg3q7DBObYC+7zrCiN
 2c6w==
MIME-Version: 1.0
From: Dennis Bland <dennis@dbperformance.com>
Date: Tue, 26 Apr 2022 21:52:31 -0600
Message-ID: <CAPRryQp5b3eknS8vxq4kOGBSiZHn2=jy6E8hrbvACGKxJn1hLQ@mail.gmail.com>
Subject: [wireless-regdb] [PATCH] Regulatory update for 6 GHz operation in
 FI
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
List-ID: <wireless-regdb@lists.infradead.org>

Add 6 GHz operation for FI:

https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN

signed-off-by: Dennis Bland <dennis@dbperformance.com>
---
diff -up a/db.txt b/db.txt
--- a/db.txt 2022-04-08 09:54:37.000000000 -0600
+++ b/db.txt 2022-04-26 21:44:39.000000000 -0600
@@ -570,6 +570,7 @@ country ET: DFS-ETSI
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC:
https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC:
https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
+#  EU decision 2021/1067/EC:
https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
 # Harmonized CEPT countries (July 2019):
https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 country FI: DFS-ETSI
  (2400 - 2483.5 @ 40), (100 mW)
@@ -578,6 +579,8 @@ country FI: DFS-ETSI
  (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
  # short range devices (ETSI EN 300 440-1)
  (5725 - 5875 @ 80), (25 mW)
+       # 6 GHz band
+       (5945 - 6425 @ 160), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
  # 60 GHz band channels 1-4 (ETSI EN 302 567)
  (57000 - 66000 @ 2160), (40)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

