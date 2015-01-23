Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEcnU-00017r-Br
 for wireless-regdb@lists.infradead.org; Fri, 23 Jan 2015 11:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1422013988; x=1453549988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=ruBAv8Z9CXrxnFbzwCiD0Zt0K6S2Vj0Tdzx9lBP/69U=;
 b=SN/xL6g7kXTO5fBJOkoeesJiYdsYjZ952azeFF+5yQDu4oYJccFKPDuU
 VdP7PzNIDYBVyS7xeYPI6vV7WnK6qA10WAp2Ni4ylYbwbA+m6YxIB7qXe
 x2INKu0b88Lm2LITpBp9luFZSQOm+kBRKaS6qJwRc/qPDdfiQRiHUntuR I=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Fri, 23 Jan 2015 13:52:00 +0200
Message-ID: <1422013920-9779-3-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1422013920-9779-1-git-send-email-jouni@qca.qualcomm.com>
References: <1422013920-9779-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add regulatory rules for
	Tanzania (TZ)
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
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index 3ea53ec..85b4bb4 100644
--- a/db.txt
+++ b/db.txt
@@ -1104,6 +1104,10 @@ country TW: DFS-JP
 	(5650 - 5710 @ 40), (30), DFS
 	(5735 - 5835 @ 80), (30)
  
+country TZ:
+	(2402 - 2482 @ 40), (20)
+	(5735 - 5835 @ 80), (30)
+
 # Source:
 # #914 / 06 Sep 2007: http://www.ucrf.gov.ua/uk/doc/nkrz/1196068874
 # #1174 / 23 Oct 2008: http://www.nkrz.gov.ua/uk/activities/ruling/1225269361
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

