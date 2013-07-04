Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY5W-0003CL-KN
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:11:59 +0000
Received: by mail-pb0-f48.google.com with SMTP id ma3so667780pbc.21 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=BEY2bcO/q0Ittxnsm5TrrxNV7aOeZrR8rp0PKFB50BY=;
 b=etYiuTLNy9eTGUu4Sv007lXIgWzTSjrUkmKmoaUz7wI/hGRM78VQGa5y7N+agmim6J
 1ZaJLxlN+LHrdACjSBOq38WymiySbO6yco0vg9XPyrPcnIjrOyVTtv+n1QqYDXD6UlyV
 n9xzBlsVFY7ADPb9tV9wq3NvL5Dk0w8w7WhKmc3PRQgXr/HB97gh2fDFNE3I6gqh3OTc
 Sli7CwUeKvOgLFga9+8XE371m+6KL9O1/vrwepxYcpnIEfHMJR/aAa85IXyHBYnlOFJU
 tlGhKOT20BHVaxx/QSRjfDd523jih93Tf4IjRqA6lvTIDm1CDTjxErFekEyilKhGjYeg DIGQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:09 -0700
Message-Id: <1372899889-19183-14-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 13/53] wireless-regdb: SA,
	Saudi Arabia - enable VHT80
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
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and update the max EIRP. This also adds
a new DFS 5 GHz band: 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 867b070..8e7fe8d 100644
--- a/db.txt
+++ b/db.txt
@@ -674,9 +674,10 @@ country RW:
 
 country SA:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 23)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country SE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

