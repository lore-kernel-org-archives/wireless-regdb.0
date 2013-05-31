Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f178.google.com ([209.85.192.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpQ-0005cJ-Gb
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:28 +0000
Received: by mail-pd0-f178.google.com with SMTP id w11so1379931pde.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=UYZEntuKEQQYcL/2GGWqN1WBpawwBba2/aie6OUYNmE=;
 b=ZMN7eXKFex5Sn+ns+caP4cUtuNLYLKUXal/ekwpX9qEQsP0yNBoRlKKLGyfGYvWtpO
 djD1w5HYDD3HjC9oTSjtnDe+lEs8e/4N0TsvE9/lfZwBVSD3BU7bx7oYcAzet9SOQfYE
 1Y3yQLrx5fZa87h+dOLwtQIKFbjytsKvpC/vOTyvLd5VtmAv+HJt5LQCQRl/PlRYu4OB
 x9Y08ILkFUPfYAhZqGr+tv0F2WzWWROtQSubbQl/cLfX2KygKlp0Z6Ca8FGDYkuKVmlC
 YREoGuypByB3dkSMblKYDeVsuyvuWy7/ULZq+8wzAE1NIqILvzy2ojWc/o2W81gtzrzQ mMKg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:22 -0700
Message-Id: <1369966169-23640-34-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 33/40] crda: fix spacing on
	reglib_for_each_country()
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
index 8a31e0d..d89fcd5 100644
--- a/reglib.h
+++ b/reglib.h
@@ -76,9 +76,9 @@ int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen);
 const struct ieee80211_regdomain *
 reglib_get_rd_idx(unsigned int idx, const char *file);
 
-#define reglib_for_each_country(__rd, __idx, __file)			\
+#define reglib_for_each_country(__rd, __idx, __file)		\
 	for (__rd = reglib_get_rd_idx(__idx, __file);		\
-	     __rd != NULL;						\
+	     __rd != NULL;					\
 	     __rd = reglib_get_rd_idx(++__idx, __file))		\
 
 const struct ieee80211_regdomain *
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

