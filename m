Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKk-00018y-IE
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:18 +0000
Received: by mail-wi0-f172.google.com with SMTP id ez12so1114491wid.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IKVIuDFnt0lXVTIcroDlmJ4gMYKMwur+xaDI4xZPBVk=;
 b=nVvomXHMZ9rzEDKgm4p4x3tC/4E2D/qwIFG/p8iJtPb6jSvFhEaELDQwuUGr/h5zzh
 jws0zYqfES7JCwvf5aC1oZrCdbudh20qbYOMym8a4rrHuDH4mjS9RMTKDyhbZpaSOJTJ
 dWm66IV26Iycu+68CT2Ccx8byAo25vaIEvys1Sx/BU8ASUlttvOPo3iu+pdzAp9BeTp+
 VM4jMbgUU7nyMuI+ePdXFyhi+uY8iuw9iCULYiiw4Ivgn3K3qY7ncuLagAfUFSgINAFE
 Aj28GcukARShIOkcsVJWZ8Y7YJ2zhRU5K/JXFxxxusm76j969B6CkcmFqPT3ZgMGUlJ5 rlvQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:06 +0100
Message-Id: <1383314598-21240-12-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 11/23] wireless-regdb: update RW's 5 GHz
	rules
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This:

  o updates its existing 5 GHz frequency range to enable
    VHT80

  o adds two new 5 GHz frequency ranges with VHT80 support

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 908a369..983fdf9 100644
--- a/db.txt
+++ b/db.txt
@@ -691,7 +691,10 @@ country RU: DFS-ETSI
 
 country RW: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country SA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

