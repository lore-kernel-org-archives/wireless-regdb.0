Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=dxsUQfl2Pb1Sq0GHnDjXtgQEOfhbszRS6Uvw01f2N5Y=;
 b=HWakrCr3IK1lrO
 +1MNaMHZrK13Il8CZHEzIfUt8Jg6gTuPHE5XZjt9m5Mmx4gWS40d9FO/C0A1ybhTbZlojo0UL0lUm
 R8YuigdsgUHAzz6fSrMxiaggCaCa4L6DmcJAhIHu7PVJtC9/VXkyI17Px3JDDBFdJ0qV7lKB6D0ok
 e7+3BSew98bsFSD1/dlppiNOc7ShKOJgN3ZIYPBhlCu/QvbyoQX7aiNInLy4p5a8zQ6Wc33ntiIcW
 GaRWE9Iaf0K48X7l9RToJYvqGZ+UQKMUID3wugYYYAyo8PKnBq1FDD/l7k2xRvFG+xLUUf3a4XDAL
 WI9928yZeRpExWUsPJcQ==;
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBCLc-005AlW-RA
 for wireless-regdb@lists.infradead.org; Wed, 04 Aug 2021 08:33:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1628066025; bh=XvqZG4OZOMKZ3OCyYeCAI3eOAwCQRcikbumRB+Ngy6M=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=BbjE1jT+KNAIUMvUucaBZoWdAL0i8qwx2cAhAsSgpPUZcn4s0QgY1Ywe99y3qRAs2
 LEqPXc81kEYqrP2YVxfBi+4LNx7qfZS1+41HfsQj/A9vFKcSUl3oDIJqAOy5gaSg0I
 YlC3fw/McNV+PkztutEPNtTlQsSQ1duMn7sSA59s=
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Date: Wed,  4 Aug 2021 10:33:37 +0200
Message-Id: <20210804083337.8833-1-bjorn@mork.no>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Norway (NO) on 6 and 60 GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
List-ID: <wireless-regdb@lists.infradead.org>

The Norwegian regulatory authority (NKOM) has updated the existing
regulations.

WiFi 6E is now allowed with the same restrictions as in many/most
EU/EEA countries - i.e 200 mW indoor and 25 mW outdoor, Using the
DE entry as a template for now, until this dual entry can be
described in the database.

The update also extended the 60 GHz band to 71 GHz.

The official announcement of the regulation changes:
https://lovdata.no/dokument/LTI/forskrift/2021-06-29-2312

The existing reference in the database has been updated with these
changes, so no new reference is needed.

Signed-off-by: Bjørn Mork <bjorn@mork.no>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index debd878f83c7..e7b11cff28b2 100644
--- a/db.txt
+++ b/db.txt
@@ -1198,8 +1198,10 @@ country NO: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
-	(57000 - 66000 @ 2160), (40)
+	(57000 - 71000 @ 2160), (40)
 
 country NP: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
2.30.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
