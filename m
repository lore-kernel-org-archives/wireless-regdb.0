Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=8H3qmfdq5FwsnnrU1bDZd4NhfAz2QLYdtDm/hVZdeWA=;
 b=ONS8hFERMSH1mQ
 Ryw6g5RvDgQ8QQzVRM0cwATPoBHBWUGtIJ6O4QC3fI8wQ/I3VMupNDURagbjX3/oUKJg1APDppHkN
 0f7SEpErxJ5kuc8/UQRCl1ZT1acTHtfYvMrfYEATgUN1Ql7y8soQOsWs+BnjhLwnUEmM/hdjjb5oK
 d4s//Z0DlCWIk913TPRAXLtQfjhLSH6Xb30/cwGrODO/wuS8PnmB9jZp7L+nhIkmIrfq06ebi3RSy
 /6mdzacjTRG/C81eT+TF5xkBweoJuiDY1CrdcTCtqr+ep+FMxCzGv6DubwvAyyZKI5JBU228tXJbk
 sJboVxPx9nuK5JRBkkew==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJj0e-0006tz-Oq
 for wireless-regdb@lists.infradead.org; Fri, 18 May 2018 17:17:42 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fJj0S-0006V5-N2
 for wireless-regdb@lists.infradead.org; Fri, 18 May 2018 17:17:28 +0000
Received: by mail-io0-f200.google.com with SMTP id n21-v6so5609584iob.17
 for <wireless-regdb@lists.infradead.org>; Fri, 18 May 2018 10:17:28 -0700
 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 18 May 2018 12:17:25 -0500
Message-Id: <20180518171725.28828-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Fix iteration in
 create_wmms() for python 3
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
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

The iteration in this function is over countries.itervalues(),
which is not compatible with python 3. Switch to iterating over
contries.values() instead.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db2fw.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db2fw.py b/db2fw.py
index 269325604ea3..0c0f030c0c63 100755
--- a/db2fw.py
+++ b/db2fw.py
@@ -29,7 +29,7 @@ def create_collections(countries):
 
 def create_wmms(countries):
     result = {}
-    for c in countries.itervalues():
+    for c in countries.values():
         for rule in c.permissions:
             if rule.wmmrule is not None:
                 result[rule.wmmrule] = 1
-- 
2.17.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

