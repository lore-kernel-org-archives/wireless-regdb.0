Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from dub004-omc4s27.hotmail.com ([157.55.2.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YR2Nb-0000qP-0r
 for wireless-regdb@lists.infradead.org; Thu, 26 Feb 2015 17:37:43 +0000
Message-ID: <DUB408-EAS1652BC7618FD5CCB9A287D4F0140@phx.gbl>
From: =?iso-8859-1?Q?J=FCrgen_Vogl?= <juergen.vogl@outlook.at>
References: <DUB408-EAS367CCE6240821ED3A644E56F0140@phx.gbl>
In-Reply-To: <DUB408-EAS367CCE6240821ED3A644E56F0140@phx.gbl>
Date: Thu, 26 Feb 2015 18:37:18 +0100
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="----=_NextPart_000_001F_01D051F3.404F8380"
Content-Language: de-at
Subject: [wireless-regdb] WG: [PATCH] wireless-regdb: Update Austria (AT)
	regulatory rules
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

------=_NextPart_000_001F_01D051F3.404F8380
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Linux-Team,

just a little Update of the Austrian regulatory rules =96 because it looks
like the current ones are incorrect.

Sources:
https://www.rtr.at/en/tk/Spektrum2400MHz
https://www.rtr.at/en/tk/Spektrum5GHz

MFG J=FCrgen Vogl

------=_NextPart_000_001F_01D051F3.404F8380
Content-Type: application/octet-stream;
	name="0001-wireless-regdb-Update-Austria-AT-regulatory-rules.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="0001-wireless-regdb-Update-Austria-AT-regulatory-rules.patch"

From 063f2f7771794478c7246fde7db89ecd2ab99208 Mon Sep 17 00:00:00 2001=0A=
From: Juergen Vogl <juergen.vogl@outlook.at>=0A=
Date: Thu, 26 Feb 2015 09:20:55 +0100=0A=
Subject: [PATCH] wireless-regdb: Update Austria (AT) regulatory rules=0A=
=0A=
https://www.rtr.at/en/tk/Spektrum2400MHz=0A=
https://www.rtr.at/en/tk/Spektrum5GHz=0A=
---=0A=
 db.txt | 14 +++++++++-----=0A=
 1 file changed, 9 insertions(+), 5 deletions(-)=0A=
=0A=
diff --git a/db.txt b/db.txt=0A=
index 7c6ca5d..d329e17 100644=0A=
--- a/db.txt=0A=
+++ b/db.txt=0A=
@@ -1,4 +1,4 @@=0A=
-# This is the world regulatory domain=0A=
+=EF=BB=BF# This is the world regulatory domain=0A=
 country 00:=0A=
 	(2402 - 2472 @ 40), (20)=0A=
 	# Channel 12 - 13.=0A=
@@ -78,10 +78,14 @@ country AS: DFS-FCC=0A=
 	(5735 - 5835 @ 80), (30)=0A=
 =0A=
 country AT: DFS-ETSI=0A=
-	(2402 - 2482 @ 40), (20)=0A=
-	(5170 - 5250 @ 80), (20), AUTO-BW=0A=
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW=0A=
-	(5490 - 5710 @ 160), (27), DFS=0A=
+	# EN 300 328-2=0A=
+	(2400 - 2483.5 @ 40), (100 mW)=0A=
+	# EN 301 893=0A=
+	# FSB-LD061=0A=
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR=0A=
+	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW=0A=
+	# Sub-Class 54=0A=
+	(5470 - 5725 @ 160), (1000 mW), DFS, AUTO-BW=0A=
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567=0A=
 	(57000 - 66000 @ 2160), (40)=0A=
 =0A=
-- =0A=
1.9.4.msysgit.2=0A=
=0A=

------=_NextPart_000_001F_01D051F3.404F8380
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

------=_NextPart_000_001F_01D051F3.404F8380--


