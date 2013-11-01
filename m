Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFG-0000JG-GA
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:39 +0000
Received: by mail-wi0-f172.google.com with SMTP id ez12so1106720wid.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rRJVXu4rKlQvx53zT/9oyU84OrcW74GQ86e+qMpaNpI=;
 b=NyrUVShE6cIbHYBdEgj7valbzekA0TbqutnHnPclKfmBPh5I95IuZUyxae/Z3FwGEJ
 Sc8olBnLRch847p1bs2T2gqPn+ttPTkb6ylZkuUubHjrq0kD4oYbwlgqL0kLR7PJ2crW
 ozoF7OQTqbw9W58HWCLOp/Qp0PD0Ubnge8NejJYTLJZcjijvYxNjCxCfdUYn/CXClqb3
 3xb6rtABAVHGtYtqNmH4zTmY4cIw8ftDsMdWaZoe7jLMOuV0kk5RbiMnQrOwWEG5qO4k
 AebX70DOs5z4FOh4QDsxNStPHnvIR2V6R0Q3MY9FLmMu6CqwYWuXBEgE6W/qUC0qXV16 5AEA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:59 +0100
Message-Id: <1383314275-20960-10-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 09/65] wireless-regdb: enable VHT80 for BO
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
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ef0a155..572d34f 100644
--- a/db.txt
+++ b/db.txt
@@ -124,7 +124,7 @@ country BN: DFS-JP
 
 country BO: DFS-JP
 	(2402 - 2482 @ 40), (30)
-	(5735 - 5835 @ 40), (30)
+	(5735 - 5835 @ 80), (30)
 
 country BR: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

