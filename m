Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjBCc-0006bh-RC
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 19:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1444072418; x=1475608418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=0URFByvRvbGoh4QtyvZwjyVia2zYTvBIfRY1mkl3wqY=;
 b=Ank2QkZ6CCdUJjF64aDuIOLiEOr+j47AnEqowPxfgqbh1ojvNgesg68r
 o72hKocMuZfdCgkrVo/V2px8WRgkN6JmrwKqzxRf/WjMcgVOku0NXRC6+
 ngPyusujBnyjXd5S6RyWyObAWAP7zeoDo35gkN9ayIBIYhEkOD93p47sy Q=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 5 Oct 2015 22:12:00 +0300
Message-ID: <1444072321-20728-4-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
References: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 4/5] wireless-regdb: Add VHT channel
	bandwidth for Ukraine (UA)
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
 db.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 93242ec..7917263 100644
--- a/db.txt
+++ b/db.txt
@@ -1138,8 +1138,9 @@ country TZ:
 # disputable definitions there.
 country UA: DFS-ETSI
 	(2400 - 2483.5 @ 40), (20), NO-OUTDOOR
-	(5150 - 5350 @ 40), (20), NO-OUTDOOR
-	(5490 - 5670 @ 80), (20), DFS
+	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW
+	(5490 - 5670 @ 160), (20), DFS
 	(5735 - 5835 @ 80), (20)
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

