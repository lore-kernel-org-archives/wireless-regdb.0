Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x235.google.com ([2a00:1450:400c:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFF3-0000Ia-E9
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:26 +0000
Received: by mail-we0-f181.google.com with SMTP id t60so3963869wes.40 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ms7QdzCTKsGzVF4ygEv1qedlmtl+VIVH+/12mmArNzI=;
 b=sl3jbuMgH+JXZpxYm33ENUd+YdY0+KaGg9mxK7oTnRxfaWzkhxhy/94d2fxN9K8AUu
 nksB/VLek1hLFYevaXiS3j58SfDLiv+yFGgDSdfctLe/97/TIxqyFWifMkfacGsJtUq3
 R5MGALxwZvM/1OkzBve2ncPH3VeXf7psmIB+3nmmUyb6J5afDsElo/25f2aGhYblWXW8
 BP/l1fy6v6VYJjIMGj/wGgPbUvBM7cGC/rF+kdxnBXuytq7jb1UL6wd5E6EPB+ISnt7o
 mibtJvxaALCLT1dCKIOtQmpttnzpirUy7vzwIX7QcjsfTSe69n1gUCKOe4v/OVSx9+9I brCg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:52 +0100
Message-Id: <1383314275-20960-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 02/65] wireless-regdb: enable VHT80 for AM
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
index 4c22199..d08281f 100644
--- a/db.txt
+++ b/db.txt
@@ -30,8 +30,8 @@ country AL: DFS-ETSI
 
 country AM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (18)
-	(5250 - 5330 @ 20), (18), DFS
+	(5170 - 5250 @ 80), (18)
+	(5250 - 5330 @ 80), (18), DFS
 
 country AN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

