Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x229.google.com ([2607:f8b0:400e:c02::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzBXg-0007Wd-Ha
 for wireless-regdb@lists.infradead.org; Tue, 16 Jul 2013 20:08:13 +0000
Received: by mail-pd0-f169.google.com with SMTP id y10so1041625pdj.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 13:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id:x-mailer;
 bh=SnYk/qyeYVM8ZqV6qgrsS7hmtIxvDf2LElR+EH+gf/8=;
 b=TYZaR2jq6HzURqYj4JVaoFJyhoJzjKxy6RbQzaoLLCUauDpf3jowB4XnS5jTViB7JX
 vlVAFg4s2fVy8aheC3D6g4X4jranRLHcb6pNNFCejd6ElARo1mwhaNuEUELOaIbUcXiI
 XBDH0qLbYrJTSP70JxaSviFJG8rWa1CujqqnO9k2DULTeku3uBTU6d7oI4pzFo/Mtntz
 lMWl2sBN8UQ+nwqOWy/97aRi7lrU9K2PIfl0Lqbb/idTUs/qtkUgs9nOV1cVZfjCl7Kz
 /rbSwEigxiKQTvC2PNlLjXT3YXWgtCV3Tb6ZhlkkLXKxRBA7D9coFqjsC/k+TdEQ3Poi 6GVQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 13:07:44 -0700
Message-Id: <1374005264-7650-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC v2] wireless-regdb: ID,
	Indonesia - enable 5 GHz and VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, pstew@chromium.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

Pursuant to:

http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf,

provide a 5GHz rule for Indonesian regulatory domain. QCA has
also verified VHT80 can be enabled. Patch originally posted by
Paul Stewart <pstew@chromium.org>, I just modified to enable 80 MHz
bandwidth.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---

This v2 changes the bandwidth to 80 as was intended with the first
patch.

 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index 0ebb934..8356d5d 100644
--- a/db.txt
+++ b/db.txt
@@ -380,7 +380,9 @@ country HU: DFS-ETSI
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
 country ID:
+	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
 	(2402 - 2482 @ 40), (N/A, 20)
+	(5735 - 5815 @ 80), (N/A, 20)
 
 country IE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

