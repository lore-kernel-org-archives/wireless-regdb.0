Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f170.google.com ([209.85.192.170])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnM-0005K3-5F
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:20 +0000
Received: by mail-pd0-f170.google.com with SMTP id x10so1387906pdj.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=EKecU8m8I3S+aiNJHXD3uidnCE9mpsx5yXpdg4giF8o=;
 b=kbPI2d0ZuXiIBp8uvOC5c3CC0Bs8OJYRYkVOEKMvrmzVVLSr9vxx358pI5VMX8cMgs
 ktRmNVw7llfA8+7d7KWgHdpTcDjenj0ROSDCUzjE0pxSpW0qQSpiU7so35SknfJMqp2B
 +e31rYJ0RNGov0ShzyQVuSDpWM4R5HZE3DVLIMIOLmMHZE/6UH6iegAwwBFgISAG41vi
 HwS+c9py4H4w/4FtxMSIT4oXIn35t5xm5NF6REDUCG2UmLWdNbNCuRb2T0VdLSQ+B6Tj
 s4yxu/AYOrfO/QDZK/qI628GGg29A2DIXNvXCjRhAdVYZ6tzQ7TiE3J7QjSjXUnht6kQ 1RWQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:54 -0700
Message-Id: <1369966169-23640-6-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 05/40] crda: remove unused BUG_ON() from
	intersect.c
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    7 -------
 1 file changed, 7 deletions(-)

diff --git a/intersect.c b/intersect.c
index 59fd007..7352e73 100644
--- a/intersect.c
+++ b/intersect.c
@@ -9,13 +9,6 @@
 /* Intersects regulatory domains, this will skip any regulatory marked with
  * an alpha2 of '00', which is used to indicate a regulatory domain */
 
-#define BUG_ON(foo) do { \
-	if (foo) { \
-		printf("BUG\n"); \
-		exit(-1); \
-	} \
-	} while (0)
-
 /* Sanity check on a regulatory rule */
 static int is_valid_reg_rule(const struct ieee80211_reg_rule *rule)
 {
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

