Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFA-0000Is-7i
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:32 +0000
Received: by mail-we0-f177.google.com with SMTP id x55so3958447wes.22 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ef7ixrP9KwM1KLyH7KQwKZ7xusfTkwworsEMrgrgBNo=;
 b=qqFuJ7b6IL6z3rYvakg1Rn55Y/yHolYlwvroAljmdlm7TKKJgDC6JVK0u+2qU0WqWS
 49cD3JuHt6x6cWEDHcPrEt9llmihTqf2HAB9O1ZIxDurZN+L1YS4a+YWNRJd7jHc5N0r
 orMlwL7d8+ngQ5BbbQVyoz0Q6UfZFSGNbllBawGOrMEJSQ7Ngckyh/jL2C60nrJSntBY
 sgHCUhhnnREnnEKMNOwBP2cBLJUIdGlUnTQKmkJgoGbHVwCgDMeuKsEi4ilX7EU7l6Zl
 zAW/kDxrTlHiIfARMsopeg5a83XXQ9VkKa1MdnL37DMUzXXDKDVoTA5ZyDVobVezKsTm 10jA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:55 +0100
Message-Id: <1383314275-20960-6-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 05/65] wireless-regdb: enable VHT80 for AZ
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

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 993b8f1..2f62549 100644
--- a/db.txt
+++ b/db.txt
@@ -69,8 +69,8 @@ country AW: DFS-ETSI
 
 country AZ: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (18)
-	(5250 - 5330 @ 40), (18), DFS
+	(5170 - 5250 @ 80), (18)
+	(5250 - 5330 @ 80), (18), DFS
 
 country BA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

