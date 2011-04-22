Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from slowthinkers.net ([82.95.180.34] helo=imap.slowthinkers.net)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QDHIl-0001Uk-5b
	for wireless-regdb@lists.infradead.org; Fri, 22 Apr 2011 14:25:43 +0000
Received: from slowthinkers.net (base.slowthinkers.net [192.168.0.150])
	by imap.slowthinkers.net (Postfix) with ESMTP id 3BD9920FA
	for <wireless-regdb@lists.infradead.org>;
	Fri, 22 Apr 2011 16:25:34 +0200 (CEST)
From: Anne Marcel Roorda <marcel@slowthinkers.net>
MIME-Version: 1.0
Content-ID: <19547.1303482334.1@slowthinkers.net>
Date: Fri, 22 Apr 2011 16:25:34 +0200
Message-Id: <20110422142536.1669422DE@imap.slowthinkers.net>
Subject: [wireless-regdb] Update regulatory rules for Netherlands (NL)
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

  The rules for using frequencies in NL are located in the
National Registry of Frequencies "Nationaal Frequentieregister"
available at http://appl.at-ez.nl/nfr/main_nfr.html.

  The 802.11a ranges can be found by searching for RLAN.

  5170 - 5250 and 5250 - 5330 are listed as for indoor use
only.

  Patch below.

@@ -497,8 +497,8 @@
 
 country NL:
        (2402 - 2482 @ 40), (N/A, 20)
-       (5170 - 5250 @ 40), (N/A, 20)
-       (5250 - 5330 @ 40), (N/A, 20), DFS
+       (5170 - 5250 @ 40), (N/A, 20), NO-OUTDOOR
+       (5250 - 5330 @ 40), (N/A, 20), NO-OUTDOOR, DFS
        (5490 - 5710 @ 40), (N/A, 27), DFS
 
 country NO:


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

