Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x233.google.com ([2607:f8b0:400e:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpq-0005gE-AX
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:55 +0000
Received: by mail-pb0-f51.google.com with SMTP id jt11so1383723pbb.38 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Zbcj5UGTlUdIgQhKbcl6bgAgyYC86tr8PAa1UhWjwP4=;
 b=WAB0TyduZvQp5NSbHihpw+a3Tco4KAu4ZJ/XdbN6qWSV8aycJP4/ER5vMa66SYLyfq
 PwN6ZKPoTXU34v4yibznuzEgyGK6ESqmfzSY51UBaw740XdaSKBwBKuCerHCm8ddPObO
 Mb8MvHVJVfbHf/WAks5CvgkgO40exmPj7c/0NM/aGt7xTdlCbJLCI08GgGN7L9v8QYbf
 iJaq/pd+rXd1P2ds05Vx6r0pazUCrMI18hIIsJ77+MdK1ONSCj96rktgLmWe/N1od2EZ
 Rc/w+VulfWAL0dg5eY6XwdaqvcmZsAUYHf1A9v84098Q5OsM2gLOH8cFfTvaRIZss0WT sMlg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:28 -0700
Message-Id: <1369966169-23640-40-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 39/40] crda: pass struct reglib_regdb_ctx
	to country2rd()
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

This consolidates the number of arguments.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 reglib.c |   14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/reglib.c b/reglib.c
index 6f076ff..ff05aaa 100644
--- a/reglib.c
+++ b/reglib.c
@@ -298,18 +298,18 @@ static void reg_rule2rd(uint8_t *db, int dblen,
 
 /* Converts a file regdomain to ieee80211_regdomain, easier to manage */
 const static struct ieee80211_regdomain *
-country2rd(uint8_t *db, int dblen,
+country2rd(const struct reglib_regdb_ctx *ctx,
 	   struct regdb_file_reg_country *country)
 {
 	struct regdb_file_reg_rules_collection *rcoll;
 	struct ieee80211_regdomain *rd;
 	int i, num_rules, size_of_rd;
 
-	rcoll = reglib_get_file_ptr(db, dblen, sizeof(*rcoll),
-				country->reg_collection_ptr);
+	rcoll = reglib_get_file_ptr(ctx->db, ctx->dblen, sizeof(*rcoll),
+				    country->reg_collection_ptr);
 	num_rules = ntohl(rcoll->reg_rule_num);
 	/* re-get pointer with sanity checking for num_rules */
-	rcoll = reglib_get_file_ptr(db, dblen,
+	rcoll = reglib_get_file_ptr(ctx->db, ctx->dblen,
 			sizeof(*rcoll) + num_rules * sizeof(uint32_t),
 			country->reg_collection_ptr);
 
@@ -328,7 +328,7 @@ country2rd(uint8_t *db, int dblen,
 	rd->n_reg_rules = num_rules;
 
 	for (i = 0; i < num_rules; i++) {
-		reg_rule2rd(db, dblen, rcoll->reg_rule_ptrs[i],
+		reg_rule2rd(ctx->db, ctx->dblen, rcoll->reg_rule_ptrs[i],
 			&rd->reg_rules[i]);
 	}
 
@@ -351,7 +351,7 @@ reglib_get_rd_idx(unsigned int idx, const char *file)
 
 	country = ctx->countries + idx;
 
-	rd = country2rd(ctx->db, ctx->dblen, country);
+	rd = country2rd(ctx, country);
 	if (!rd)
 		goto out;
 
@@ -384,7 +384,7 @@ reglib_get_rd_alpha2(const char *alpha2, const char *file)
 	if (!found_country)
 		goto out;
 
-	rd = country2rd(ctx->db, ctx->dblen, country);
+	rd = country2rd(ctx, country);
 	if (!rd)
 		goto out;
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

