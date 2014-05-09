Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WigMX-00019Z-Mv
 for wireless-regdb@lists.infradead.org; Fri, 09 May 2014 08:41:02 +0000
Received: by mail-ee0-f53.google.com with SMTP id c13so2400916eek.40 for
 <wireless-regdb@lists.infradead.org>; Fri, 09 May 2014 01:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google; h=from:to:cc:subject:date:message-id;
 bh=SxEzUvsrVrOHZf/CD3MA9i4Td1rmmY/JWHEJ3rUUnSg=;
 b=hRdWQqUEfx5hBgIaHpZURnr6P59i15peHF2CsWv+MmwoTHyd4kqUF/teAh0UAEJAlf
 PYI/4u31D/w+5NemNwxMgQmjXphQd00Us7OBeqf4eB80otkX3CI62RO+etH7mRQ+M0lH
 Kp420sGS2Shvnmes8irikiofo2IGj9dzlUyx4=
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date: Fri,  9 May 2014 10:40:23 +0200
Message-Id: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: add DFS CAC time parameter
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless@vger.kernel.org, mcgrof@do-not-panic.com
List-ID: <wireless-regdb@lists.infradead.org>

Introduce support for setting DFS CAC time
in milliseconds.

Eg.
(5250 - 5330 @ AUTO), (20), (60000), DFS

will setup CAC 60 seconds CAC time.

Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
---
 db2bin.py  |    6 +++---
 dbparse.py |   17 +++++++++++++----
 2 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/db2bin.py b/db2bin.py
index 41d3741..f6c3bc1 100755
--- a/db2bin.py
+++ b/db2bin.py
@@ -7,7 +7,7 @@ from dbparse import DBParser
 import sys
 
 MAGIC = 0x52474442
-VERSION = 19
+VERSION = 20
 
 if len(sys.argv) < 3:
     print 'Usage: %s output-file input-file [key-file]' % sys.argv[0]
@@ -93,8 +93,8 @@ for reg_rule in rules:
     freq_range, power_rule = reg_rule.freqband, reg_rule.power
     reg_rules[reg_rule] = output.tell()
     # struct regdb_file_reg_rule
-    output.write(struct.pack('>III', freq_ranges[freq_range], power_rules[power_rule],
-                             reg_rule.flags))
+    output.write(struct.pack('>IIII', freq_ranges[freq_range], power_rules[power_rule],
+                             reg_rule.flags, reg_rule.cac_time))
 
 
 reg_rules_collections = {}
diff --git a/dbparse.py b/dbparse.py
index b735b6a..d54311f 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -77,12 +77,13 @@ class FlagError(Exception):
         self.flag = flag
 
 class Permission(object):
-    def __init__(self, freqband, power, flags):
+    def __init__(self, freqband, power, flags, cac_time):
         assert isinstance(freqband, FreqBand)
         assert isinstance(power, PowerRestriction)
         self.freqband = freqband
         self.power = power
         self.flags = 0
+        self.cac_time = cac_time
         for flag in flags:
             if not flag in flag_definitions:
                 raise FlagError(flag)
@@ -90,7 +91,7 @@ class Permission(object):
         self.textflags = flags
 
     def _as_tuple(self):
-        return (self.freqband, self.power, self.flags)
+        return (self.freqband, self.power, self.flags, self.cac_time)
 
     def __cmp__(self, other):
         if not isinstance(other, Permission):
@@ -254,6 +255,7 @@ class DBParser(object):
         self._comments = []
 
     def _parse_country_item(self, line):
+        cac_time = 0
         if line[0] == '(':
             try:
                 band, line = line[1:].split('),', 1)
@@ -282,7 +284,14 @@ class DBParser(object):
                 flags = []
             else:
                 pname = items[0]
-                flags = items[1].split(',')
+                pcac = items[1]
+                if pcac[0] == '(':
+                    cac, flags = pcac.split('),', 1)
+                    flags = flags.split(',')
+                    cac_time = int(cac[1:])
+                else:
+                    flags = items[1].split(',')
+
             power = pname[1:]
             pname = 'UNNAMED %d' % self._lineno
             self._parse_power_def(pname, power, dupwarn=False)
@@ -303,7 +312,7 @@ class DBParser(object):
         b = self._bands[bname]
         p = self._power[pname]
         try:
-            perm = Permission(b, p, flags)
+            perm = Permission(b, p, flags, cac_time)
         except FlagError, e:
             self._syntax_error("Invalid flag '%s'" % e.flag)
         for cname, c in self._current_countries.iteritems():
-- 
1.7.9.5


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

