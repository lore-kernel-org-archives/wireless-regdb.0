Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKb-00017j-2T
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:09 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so4117627wgh.5 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=u5Fp+L/S3M+xlDDjrVBHjGKRng10hEZPvBWxFEA+ZP0=;
 b=m0qOGN0woQiHJf5eoS7KlOUcKaztBfKgcBPx7iudf2WksffoBhRw7yE3Z272+mucGt
 acFiOj2ya5CBz2/2adXekRbXWoy1T2iNtdA18mq0Ye6C6j+4QWjFj9MU/dhmFv/ET9za
 Uk0LqTW7EeC7v57qL35rvE5gtDStlV3lM17CNQ+JPggG67zMcVZhNKDAykl/6SFjHsMq
 ArEoxjwc+FAtDcIBQRNeeCyIQGOczK3C+LNn2Dys3eHkbI1xhPgBNkDlOP1+geOmBc+C
 tMPpuVyK9u49BghzQb2t6vT6eEGuQxRKa9cAYcbngj9lylJFAF3Jq/QImec0XAsKS5iK Ouug==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:02 +0100
Message-Id: <1383314598-21240-8-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 07/23] wireless-regdb: update NP's 5 GHz
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

  o enables VHT80 on its existing 5 GHz frequency range
    but makes a compromise and reduces the max EIRP from
    30 dBm to 20 dBm

  o adds two new VHT80 capable frequency ranges

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index db20fd0..e2740a6 100644
--- a/db.txt
+++ b/db.txt
@@ -589,7 +589,9 @@ country NO: DFS-ETSI
 
 country NP: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5735 - 5835 @ 80), (20)
 
 country NZ: DFS-FCC
 	(2402 - 2482 @ 40), (30)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

