Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f169.google.com ([209.85.214.169])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YfpsJ-0007Mb-PK
 for wireless-regdb@lists.infradead.org; Wed, 08 Apr 2015 13:18:36 +0000
Received: by oblw8 with SMTP id w8so86336636obl.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 08 Apr 2015 06:18:11 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Wed,  8 Apr 2015 08:18:05 -0500
Message-Id: <1428499085-142267-1-git-send-email-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Support db.txt files with
	DFS CAC times
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
Cc: Jean-Pierre TOSONI <jp.tosoni@acksys.fr>
List-ID: <wireless-regdb@lists.infradead.org>

CRDA now supports db.txt files with DFS CAC times in country
rules, but dbparse.py chokes on such files. We can't do
anything useful with CAC times right now since the CRDA
binary format doesn't support them, so add code to parse CAC
times and emit a warning that they are being ignored.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---

I'm throwing this out there in case anyone wants to build regulatory.bin
files from their own db.txt files which contain CAC times. If so, let me
know and I can apply this.

Jean-Pierre: This is working fine in my testing. Could you give it a try
with your file(s) and let me know how it works?


 dbparse.py | 33 ++++++++++++++++++++++++++-------
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/dbparse.py b/dbparse.py
index b735b6a..c740eac 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -273,23 +273,42 @@ class DBParser(object):
 
         if line[0] == '(':
             items = line.split('),', 1)
+            pname = items[0]
             if len(items) == 1:
-                pname = items[0]
                 line = ''
                 if not pname[-1] == ')':
                     self._syntax_error("Badly parenthesised power definition")
                 pname = pname[:-1]
-                flags = []
             else:
-                pname = items[0]
-                flags = items[1].split(',')
+                line = items[1]
             power = pname[1:]
             pname = 'UNNAMED %d' % self._lineno
             self._parse_power_def(pname, power, dupwarn=False)
         else:
-            line = line.split(',')
-            pname = line[0]
-            flags = line[1:]
+            items = line.split(',', 1)
+            pname = items[0]
+            if len(items) == 1:
+                line = ''
+            else:
+                line = items[1]
+
+        if len(line) != 0 and line[0] == '(':
+            self._warn("Ignoring DFS CAC time definition")
+            items = line.split(')', 1)
+            cactime = items[0]
+            if len(items) == 1:
+                line = ''
+                if not cactime[-1] == ')':
+                    self._syntax_error("Badly parenthesised CAC time")
+                cactime = cactime[:-1]
+            else:
+                line = items[1]
+            cactime = cactime[1:]
+
+        if len(line) == 0:
+            flags = []
+        else:
+            flags = line.split(',')
 
         if not bname in self._bands:
             self._syntax_error("band does not exist")
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

