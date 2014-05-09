Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WigKv-0007wH-KL
 for wireless-regdb@lists.infradead.org; Fri, 09 May 2014 08:39:22 +0000
Received: by mail-ee0-f45.google.com with SMTP id d49so2415694eek.4 for
 <wireless-regdb@lists.infradead.org>; Fri, 09 May 2014 01:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google; h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ebHpUMnzpc7Cr1OfSwrtf4VOlv9VYbxzi68yVWhf6+E=;
 b=pwfqiwnJM7+wlZQY+8HpvLVGbq5BIgTINHyr02AUsuMfRXXM2TQ+6AJh7HH8W/jiDt
 Tg/MxVwBm3JygQqih7Cwisv8x6RP5k6iMaJDlFpSwupHvRRD6PLK7BSNwYKRHdgWTuIc
 IdolmVDNjiW2C236YGB7DIa19OHjjFprzSmKs=
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date: Fri,  9 May 2014 10:38:43 +0200
Message-Id: <1399624723-9167-3-git-send-email-janusz.dziedzic@tieto.com>
In-Reply-To: <1399624723-9167-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1399624723-9167-1-git-send-email-janusz.dziedzic@tieto.com>
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless@vger.kernel.org, mcgrof@do-not-panic.com
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

