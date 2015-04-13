Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp-out05.msg.oleane.net ([62.161.7.3])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhaxQ-00020L-Ug
 for wireless-regdb@lists.infradead.org; Mon, 13 Apr 2015 09:47:10 +0000
Received: from smtp01.msg.oleane.net (smtp01.mail.priv [172.17.20.110]) 
 by smtp-out05.msg.oleane.net with ESMTP id t3D8ooeA022472
 for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2015 10:50:50 +0200
From: "Jean-Pierre Tosoni" <jp.tosoni@acksys.fr>
References: <1428499085-142267-1-git-send-email-seth.forshee@canonical.com>
In-Reply-To: <1428499085-142267-1-git-send-email-seth.forshee@canonical.com>
Date: Mon, 13 Apr 2015 10:29:23 +0200
Message-ID: <004b01d075c3$f240a620$d6c1f260$@acksys.fr>
MIME-Version: 1.0
Content-Language: fr
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Support db.txt files
	with	DFS CAC times
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: 'Seth Forshee' <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Seth,

From my testing the syntax accepted by reglib.c needs a comma after the CA=
C,
so you should skip that comma. Below is your patch with two lines added.

De=A0: wireless-regdb [mailto:wireless-regdb-bounces@lists.infradead.org] De
la part de Seth Forshee
Envoy=E9=A0: mercredi 8 avril 2015 15:18
=C0=A0: wireless-regdb@lists.infradead.org
Cc=A0: Jean-Pierre TOSONI
Objet=A0: [wireless-regdb] [PATCH] wireless-regdb: Support db.txt files with
DFS CAC times

CRDA now supports db.txt files with DFS CAC times in country rules, but
dbparse.py chokes on such files. We can't do anything useful with CAC times
right now since the CRDA binary format doesn't support them, so add code to
parse CAC times and emit a warning that they are being ignored.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---

I'm throwing this out there in case anyone wants to build regulatory.bin
files from their own db.txt files which contain CAC times. If so, let me
know and I can apply this.

--- dbparse.py	2015-03-13 18:17:34.000000000 +0100
+++ dbparsejp.py	2015-04-13 10:22:52.000000000 +0200
@@ -273,23 +273,44 @@ class DBParser(object):
=20
         if line[0] =3D=3D '(':
             items =3D line.split('),', 1)
+            pname =3D items[0]
             if len(items) =3D=3D 1:
-                pname =3D items[0]
                 line =3D ''
                 if not pname[-1] =3D=3D ')':
                     self._syntax_error("Badly parenthesised power
definition")
                 pname =3D pname[:-1]
-                flags =3D []
             else:
-                pname =3D items[0]
-                flags =3D items[1].split(',')
+                line =3D items[1]
             power =3D pname[1:]
             pname =3D 'UNNAMED %d' % self._lineno
             self._parse_power_def(pname, power, dupwarn=3DFalse)
         else:
-            line =3D line.split(',')
-            pname =3D line[0]
-            flags =3D line[1:]
+            items =3D line.split(',', 1)
+            pname =3D items[0]
+            if len(items) =3D=3D 1:
+                line =3D ''
+            else:
+                line =3D items[1]
+
+        if len(line) !=3D 0 and line[0] =3D=3D '(':
+            self._warn("Ignoring DFS CAC time definition")
+            items =3D line.split(')', 1)
+            cactime =3D items[0]
+            if len(items) =3D=3D 1:
+                line =3D ''
+                if not cactime[-1] =3D=3D ')':
+                    self._syntax_error("Badly parenthesised CAC time")
+                cactime =3D cactime[:-1]
+            else:
+                line =3D items[1]
+            cactime =3D cactime[1:]
+
+        if len(line) =3D=3D 0:
+            flags =3D []
+        else:
+	    if line[0] =3D=3D ',':
+	        line =3D line[1:]
+            flags =3D line.split(',')
=20
         if not bname in self._bands:
             self._syntax_error("band does not exist")
--



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

