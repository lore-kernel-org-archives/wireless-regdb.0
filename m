Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VacRE-0000vY-F0
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 02:20:17 +0000
Received: by mail-wi0-f169.google.com with SMTP id cb5so3096165wib.4 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Oct 2013 19:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1tvaXZxgslL8TyXcEWMzu8Lz48PBJ5lXZ6n9eXawrp4=;
 b=Z6DSBkxUHhUcBZ17CnvxW4h6THrbEPA6ELiUIGLRWQtY5lY0TGnP516vz+lOlPr8ty
 fRbc+ScIJLnTTmImWWDcS61P0PgdCgDNyz+skZdrjEEKlWRltsjbkU9zc5fDeKeqD3ro
 ohpZk8CGtINQFD3XvPkWc8STXt3MX7FyMrKf+6gwFmE07dKn9wrhWjDhR5tfbzKqs94A
 6gaxpWLzRjs9SdX+Caz2AS82zOSgLxHeTxdFkicBeeSLJSfeOxH+Q2iZvUKwrIVN+etb
 LX727ZbSY1wnrBp7m2te+SpvfC//T+43yFkOufYmQ/6Vo/wH/VSml3OkvlDv3V8M4rBg pEww==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 03:19:46 +0100
Message-Id: <1382926786-7904-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1382926786-7904-1-git-send-email-mcgrof@do-not-panic.com>
References: <1382926786-7904-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 2/2] cfg80211: fix parsing when db.txt
 ends on a rule
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

If genregdb.awk assumes the file will end with an
extra empty line or a comment line. This is could
not be true so just address this.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 net/wireless/genregdb.awk | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/wireless/genregdb.awk b/net/wireless/genregdb.awk
index 95baf61..13b982d 100755
--- a/net/wireless/genregdb.awk
+++ b/net/wireless/genregdb.awk
@@ -140,6 +140,8 @@ active && /^[ \t]*$/ {
 }
 
 END {
+	if (active)
+		print_tail_country()
 	print regdb "};"
 	print ""
 	print "int reg_regdb_size = ARRAY_SIZE(reg_regdb);"
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

