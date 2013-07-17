Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHLP-0005u5-UR
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:56 +0000
Received: by mail-pd0-f181.google.com with SMTP id 14so1303116pdj.26 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=BCGEPaqNpOHtMaObfPwc7N2M9jWXPjkeOnsA6fhoEpk=;
 b=hWDqPdCLtfvKDqsr+PeLJ3qoomiG6jNx/ICNIMj0JkvkYDMyUsByAymvMBsvOyede9
 DmTuIHBzzCA9F3swvMgXnyhswGqY/9ztNKYrKXeuXo4NWHuNW6Jp9tbZ7Hk6c4BKI1yH
 0dCORSpRBqPVnzkBVYB4af9NOji5jKVqdC0Pquz90tN/gyfyctXun3slfdTDcJCeJNol
 nlDwtPAM3Bnx1yeEh4yke53D4esw6yBiNYqcdw2/AZfaSXHByEp/azC+uzc346fm7+/z
 gIMws0j4i9jzUMyi6kPo97unSMuWRKpD2MvnEbTQB2OqE0HZKWTXgUnsGp0YV8PEcx5W 9RQw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:58 -0700
Message-Id: <1374027522-18488-10-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 09/53] wireless-regdb: MX,
	Mexico - enable VHT80
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
index 4b1cf8e..570a951 100644
--- a/db.txt
+++ b/db.txt
@@ -550,9 +550,10 @@ country MY:
 
 country MX:
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 23), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country NL: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

