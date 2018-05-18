Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=/yNIMz4eZBbR+d60bgozJxPj7ZHKsrbz2LSAIfLRDG8=;
 b=jSuN2IQ2eT+WKi
 8Z/zTJzEncI5FyInOimAdeKIkbgzAj6Rhl/sK9NHoon014MUYDVUi04+SaCFwxOg6yyXCm46c+PX+
 esdDcY9ch2w/xJ8uLUoDcJN8Ua8mRFrN1t1JoZ5x8bBZU1NRJRd2xmAPl63ROFa+CsCZ56rKBqXXz
 60ZgDoWbhUpYanf7no5bZV76iuHoP7P+xmDvO9inWPe0vRWZY06HZeHSTcRPGOQ+IRONsg3svPp+O
 9awbHU7Jc4QU6fcuc6jX4XAdqKIyc5uqhf63l1aEnHJm67nq3wvsrK9fQsgE9/kBLmZ0mzJ1ni2I1
 pDfqTObTNihWun1erAdA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJgf5-0004qo-OZ
 for wireless-regdb@lists.infradead.org; Fri, 18 May 2018 14:47:18 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fJgeu-0006XN-99
 for wireless-regdb@lists.infradead.org; Fri, 18 May 2018 14:47:04 +0000
Received: by mail-io0-f200.google.com with SMTP id u23-v6so5294129ioc.13
 for <wireless-regdb@lists.infradead.org>; Fri, 18 May 2018 07:47:04 -0700
 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 18 May 2018 09:47:01 -0500
Message-Id: <20180518144701.25138-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Fix comparison of WmmRule
 with NoneType in python 3
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

Python 3 gives errors as a result of the changes to add wmm
rules since Permission.wmmrule can be set to None:

 TypeError: '<' not supported between instances of 'WmmRule' and 'NoneType'

To fix this, supply compairson methods for WmmRule instead of
using the ones provided by attrs. Doing this means we also need
to supply a __hash__ method.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 dbparse.py | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/dbparse.py b/dbparse.py
index 5cb8b3f13266..5fe752b4ff31 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -32,7 +32,7 @@ dfs_regions = {
 
 @total_ordering
 
-@attr.s(frozen=True)
+@attr.s(frozen=True, cmp=False)
 class WmmRule(object):
     vo_c = attr.ib()
     vi_c = attr.ib()
@@ -47,6 +47,22 @@ class WmmRule(object):
         return (self.vo_c, self.vi_c, self.be_c, self.bk_c,
                 self.vo_ap, self.vi_ap, self.be_ap, self.bk_ap)
 
+    def __eq__(self, other):
+        if other is None:
+            return False
+        return (self._as_tuple() == other._as_tuple())
+
+    def __ne__(self, other):
+        return not (self == other)
+
+    def __lt__(self, other):
+        if other is None:
+            return False
+        return (self._as_tuple() < other._as_tuple())
+
+    def __hash__(self):
+        return hash(self._as_tuple())
+
 class FreqBand(object):
     def __init__(self, start, end, bw, comments=None):
         self.start = start
-- 
2.17.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

