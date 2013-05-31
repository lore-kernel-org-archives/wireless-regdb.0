Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEp5-0005ZF-NL
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:08 +0000
Received: by mail-pb0-f47.google.com with SMTP id rr4so1386974pbb.34 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=ddGE9LYygvEVHFahnnt/Bu1lIartK8IlfZh+QIfmryo=;
 b=VE1m8LQkML3tcR/qZxkaCv4HXOnBw5vVnbETS7WVaDnGXDP3O1L33wUFn1fbLiWv8g
 J3VHQ8Y+9mTIcQLvKuGd5INZllf+0tU/ybGELFvebOfdkNaJcUV7vub0G0rQg00vL4Ba
 YoFAyeeM3vzwSycoO+sYFamRB30ktpOVczAq4YjIUuq3Tg7/s3sOjZ5cdfXImNHBpT9j
 kuiEXj27peox4dUEvJDmKoXdbZZmrmNOQvOGvXuH7guEiKv0hHgWi/Ta4QJDo2gdi7Sr
 whtNb3wjcba2/KI6WLuvcEuPTK1tkUCuJewgZVYwfActz39evMDHdM4UaVvbfq7cU/f8 fJUw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:17 -0700
Message-Id: <1369966169-23640-29-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 28/40] crda: rename isalpha_upper() to
	reglib_isalpha_upper()
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
index 98aadcc..41827cd 100644
--- a/reglib.h
+++ b/reglib.h
@@ -38,7 +38,7 @@ static inline int reglib_is_world_regdom(const char *alpha2)
 	return 0;
 }
 
-static inline int isalpha_upper(char letter)
+static inline int reglib_isalpha_upper(char letter)
 {
 	if (letter >= 'A' && letter <= 'Z')
 		return 1;
@@ -47,7 +47,7 @@ static inline int isalpha_upper(char letter)
 
 static inline int is_alpha2(const char *alpha2)
 {
-	if (isalpha_upper(alpha2[0]) && isalpha_upper(alpha2[1]))
+	if (reglib_isalpha_upper(alpha2[0]) && reglib_isalpha_upper(alpha2[1]))
 		return 1;
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

