Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f171.google.com ([209.85.192.171])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpD-0005aC-Of
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:16 +0000
Received: by mail-pd0-f171.google.com with SMTP id z11so1387499pdj.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=wbcKwsgSd5ySZSbEXjlJhOaml3/BakKxsGg6/maqXlY=;
 b=AyaWBY0jqnnRpsneyULkOt6GfUGMsuRfcK07hrN7epVmjqy/rXBuRY5DKylCDYBcIi
 I3ThRuk30ObvejXBaUaUo8NpyxPxsa4i7XZxRvdIACNH0RIvAtT63mbQpTS6AWTrBkXd
 0OeNO/arBs+cGYTcJpmJEgOdot2dVtDzZ5MjCSL840/fKgsVrnNNCrsH6FngdF0wgvZQ
 fazsieVJfFecS/6Cmb+U72KstQZ2RdEYtXfOGsqqZ7CulNnAuhbg+00KeLoBqu/FmyL9
 oXgBtGhGI4pQmwmTy3bxcmb/6nO+7SmZqX0SXEKCk1gIwAVZUA6g55fvMwXHaaBNce0c FhTw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:19 -0700
Message-Id: <1369966169-23640-31-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 30/40] crda: rename is_valid_regdom() to
	reglib_is_valid_regdom()
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
 crda.c   |    2 +-
 reglib.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/crda.c b/crda.c
index fc7a25f..2a601eb 100644
--- a/crda.c
+++ b/crda.c
@@ -170,7 +170,7 @@ int main(int argc, char **argv)
 		return -EINVAL;
 	}
 
-	if (!is_valid_regdom(env_country)) {
+	if (!reglib_is_valid_regdom(env_country)) {
 		fprintf(stderr, "COUNTRY environment variable must be an "
 			"ISO ISO 3166-1-alpha-2 (uppercase) or 00\n");
 		return -EINVAL;
diff --git a/reglib.h b/reglib.h
index b7c5d08..8ed94d9 100644
--- a/reglib.h
+++ b/reglib.h
@@ -52,7 +52,7 @@ static inline int reglib_is_alpha2(const char *alpha2)
 	return 0;
 }
 
-static inline int is_valid_regdom(const char *alpha2)
+static inline int reglib_is_valid_regdom(const char *alpha2)
 {
 	if (!reglib_is_alpha2(alpha2) && !reglib_is_world_regdom(alpha2))
 		return 0;
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

