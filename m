Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFl-0000Si-JF
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:10 +0000
Received: by mail-wi0-f170.google.com with SMTP id ex4so1195602wid.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+KK58z58Ol6/clwu92r0GEk2G6VfvM4mbsj1evzkPBo=;
 b=C9wPvxtp8svQoMezmLPIEK4QwPrF7WlAEFeb/gE83VtvqBzLt3DD+jorIqD7gJJAcA
 fq9QpEvKL01MTRJHxQU4M353NhGnHtb/I49uOUhNAWvA6qz8NkVBUJDwSJqQd3fWsiX7
 HfdYOY5iMxRqQBDTGcrlLU2nuqR0qyia/mPlfFkz8lQYyAcVp5w8qZ8FnUG77V9hNZ20
 ZQlU5/wkgMxq5ZyBu+LOcRCZuR/w2A20yGFsYxyypxQicRVuC8bIwZAJ04D1RpDd5a93
 wJX3a9/5C+s2Kz737ul2NgR2xwsBQrHYm1lS03HtlNTHYQEut8SzrWWjA1HwYb9Fbb17 +6kA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:12 +0100
Message-Id: <1383314275-20960-23-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 22/65] wireless-regdb: enable VHT80 for IN
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
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index ec9abb2..1b03d74 100644
--- a/db.txt
+++ b/db.txt
@@ -394,9 +394,9 @@ country IL: DFS-ETSI
 
 country IN: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5735 - 5835 @ 80), (20)
 
 country IS: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

