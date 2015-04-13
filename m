Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f51.google.com ([209.85.218.51])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhkZC-00022m-Ku
 for wireless-regdb@lists.infradead.org; Mon, 13 Apr 2015 20:02:47 +0000
Received: by oiko83 with SMTP id o83so13391592oik.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2015 13:02:25 -0700 (PDT)
Date: Mon, 13 Apr 2015 15:02:20 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150413200220.GC3025@ubuntu-xps13>
References: <1428499085-142267-1-git-send-email-seth.forshee@canonical.com>
 <004b01d075c3$f240a620$d6c1f260$@acksys.fr>
 <20150413131846.GA4743@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150413131846.GA4743@ubuntu-xps13>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Support db.txt files
 with DFS CAC times
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
To: Jean-Pierre Tosoni <jp.tosoni@acksys.fr>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Apr 13, 2015 at 08:18:46AM -0500, Seth Forshee wrote:
> On Mon, Apr 13, 2015 at 10:29:23AM +0200, Jean-Pierre Tosoni wrote:
> > Hi Seth,
> > 
> > From my testing the syntax accepted by reglib.c needs a comma after the CAC,
> > so you should skip that comma. Below is your patch with two lines added.
> 
> Ah, okay, I based it off of what you said in your email, which shows no
> comma:
> 
>   (freq - freq @ bw), (eirp [mW]), [(CACtime)] [flags...]
> 
> I thought it was weird that there was no comma, should have double
> checked against CRDA. Thanks for testing and the update, I can't try it
> out right this moment but will do so soon.

I don't think we need to consider the syntax without a comma following
CACtime as being valid, so we can make it simpler than in your changes.
Try the patch below, and if it works for you then I'll apply it. I'm
also thinking about removing the warning ...

---

diff --git a/dbparse.py b/dbparse.py
index b735b6a..baca3dd 100755
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
+            items = line.split('),', 1)
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

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

