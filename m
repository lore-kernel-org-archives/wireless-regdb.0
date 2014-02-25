Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ee0-x236.google.com ([2a00:1450:4013:c00::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WICPe-0006NI-9I
 for wireless-regdb@lists.infradead.org; Tue, 25 Feb 2014 07:26:46 +0000
Received: by mail-ee0-f54.google.com with SMTP id c41so2905579eek.13 for
 <wireless-regdb@lists.infradead.org>; Mon, 24 Feb 2014 23:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google; h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ebHpUMnzpc7Cr1OfSwrtf4VOlv9VYbxzi68yVWhf6+E=;
 b=hdY94iVRwIr9qoxo5BSh0vI+hvpWstll2JrlJkZUMX78EXni9kaP/Gv4wJXYwD7ITd
 +Ysgei9tCbw+3Akdsqm6Oz5UQXtJG+Q/uDBdcHFsQ4rB64nAQSlBQVpG08+m/qHpyhrT
 WxRNGz9L0gwhpaUYSCfW7HdLVdtEr17MdOgj8=
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date: Tue, 25 Feb 2014 08:26:03 +0100
Message-Id: <1393313163-9568-2-git-send-email-janusz.dziedzic@tieto.com>
In-Reply-To: <1393313163-9568-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1393313163-9568-1-git-send-email-janusz.dziedzic@tieto.com>
Subject: [wireless-regdb] [PATCH 2/2] crda: add AUTO-BW rule flag support
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, johannes@sipsolutions.net, linux-wireless@vger.kernel.org, linville@tuxdriver.com, mcgrof@do-not-panic.com
List-ID: <wireless-regdb@lists.infradead.org>

Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
---
 regdb.h  |    1 +
 reglib.c |    4 ++++
 2 files changed, 5 insertions(+)

diff --git a/regdb.h b/regdb.h
index 20f29e9..3ffb781 100644
--- a/regdb.h
+++ b/regdb.h
@@ -81,6 +81,7 @@ enum reg_rule_flags {
 					 * Point links */
 	RRF_NO_IR		= 1<<7, /* do not initiate radiation */
 	__RRF_NO_IBSS		= 1<<8, /* old no-IBSS rule, maps to no-ir */
+	RRF_AUTO_BW		= 1<<11, /* Auto BW calculations */
 };
 
 #define RRF_NO_IR_ALL	(RRF_NO_IR | __RRF_NO_IBSS)
diff --git a/reglib.c b/reglib.c
index 1e57634..3deca4a 100644
--- a/reglib.c
+++ b/reglib.c
@@ -750,6 +750,8 @@ static void print_reg_rule(const struct ieee80211_reg_rule *rule)
 		printf(", PTMP-ONLY");
 	if (rule->flags & RRF_NO_IR_ALL)
 		printf(", NO-IR");
+	if (rule->flags & RRF_AUTO_BW)
+		printf(", AUTO-BW");
 
 	printf("\n");
 }
@@ -793,6 +795,8 @@ static uint32_t reglib_parse_rule_flag(char *flag_s)
 		return RRF_PTMP_ONLY;
 	if (strncmp(flag_s, "NO-IR", 5) == 0)
 		return RRF_NO_IR;
+	if (strncmp(flag_s, "AUTO-BW", 7) == 0)
+		return RRF_AUTO_BW;
 
 	return 0;
 }
-- 
1.7.9.5


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

