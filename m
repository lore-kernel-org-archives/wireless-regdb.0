Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f180.google.com ([209.85.192.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEp9-0005Zr-IE
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:12 +0000
Received: by mail-pd0-f180.google.com with SMTP id 14so1383179pdc.11 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=ASR0mb8ZjUopiWhJ9ybh2F9dgbHUuTBAX1yxVinZp3M=;
 b=SMB5DPBec3YmWD5sTU80ImBF/a16/utCTTG1JFADBeiUr2MYoND06fh2zjSBiztmlS
 SM+5mwJDwTC7PSdai5ZiKC3sg8OZlPhvF43iJfkpTQGA1uzISlZ5K7tadeMHwPy83Toh
 8wQKxX8GuseDK0ognQ8xiinCoX9FOWqpPLWquTBNNMPLw01VfluiB6n2sDlQTOvcoNke
 ZnhBo0+wUDpVBq+c+dVm6g6w8YYWmnG4rkVqoYarH2+Gq45KNLScEZ+lICcdjUO0S6Gu
 P+Dxtv3R7DjjhSPld07NHGr/4qL7LyPpGix3BBA5oWJG4oNGRkFLNq6tEEJKi6jQ3YDG i/iQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:18 -0700
Message-Id: <1369966169-23640-30-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 29/40] crda: rename is_alpha2() to
	reglib_is_alpha2()
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
 reglib.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/reglib.h b/reglib.h
index 41827cd..b7c5d08 100644
--- a/reglib.h
+++ b/reglib.h
@@ -45,7 +45,7 @@ static inline int reglib_isalpha_upper(char letter)
 	return 0;
 }
 
-static inline int is_alpha2(const char *alpha2)
+static inline int reglib_is_alpha2(const char *alpha2)
 {
 	if (reglib_isalpha_upper(alpha2[0]) && reglib_isalpha_upper(alpha2[1]))
 		return 1;
@@ -54,7 +54,7 @@ static inline int is_alpha2(const char *alpha2)
 
 static inline int is_valid_regdom(const char *alpha2)
 {
-	if (!is_alpha2(alpha2) && !reglib_is_world_regdom(alpha2))
+	if (!reglib_is_alpha2(alpha2) && !reglib_is_world_regdom(alpha2))
 		return 0;
 
 	return 1;
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

