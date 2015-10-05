Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjBCV-0006Wg-Qg
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 19:13:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1444072411; x=1475608411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=S1dQjyxCeRlluXmGAfrVWxz3D/mIc6LNjynBX4D8QlA=;
 b=amJqPUSWeiY2qCTRImpihv1TiysEBSFJQUzPiOUd19l/pFbxw4ACXOiM
 4bICvKZxVCOPzpqkvLrrvriPDJLaYv/i8iFSFdnqsoHEmw57gNX0yHpOV
 /yVVFnF4x2cz1GhZY/4JNNQoFzWO0/tkb/7hC9b0KdPKF75d8fq5A/lcN E=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 5 Oct 2015 22:12:01 +0300
Message-ID: <1444072321-20728-5-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
References: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 5/5] wireless-regdb: Update regulatory
	rules for Malaysia (MY)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is QCA's regulatory team's efforts.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 7917263..bb8346a 100644
--- a/db.txt
+++ b/db.txt
@@ -827,9 +827,10 @@ country MX: DFS-FCC
 
 country MY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 80), (24), AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5650 @ 160), (24), DFS
+	(5735 - 5835 @ 80), (24)
 
 country NG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

