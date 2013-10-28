Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VacRC-0000vT-Bp
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 02:20:16 +0000
Received: by mail-wi0-f180.google.com with SMTP id ey11so3301202wid.13 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Oct 2013 19:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HR05dmKCRY+mxFZbojituW69H1f+/jCMpNv2uYJ2/Kg=;
 b=w7ioTvhs7yc9rIQ2arUKsIhSkMM65hkITj+qGZtQPnDSJ/EuOq0r1z6vXzvuk7BB1P
 fj2awMBri9j/kSV+2kvfipvVjyWZyLMYxxmB/89LgOEvKDk1bdQrHkieWzsDeISZ4lLe
 2pRWTnQQTaif1O60BxzhAnSkd35r4lxrw+RsaZb93kYSOvGQlsDRp7/gixDhxmigxcU1
 DqkQjUrYdjx2+TcSZCyT0dLTAun8O+ioNVX9M3w95Y4rMufb9Z65yhelJLUMS/orE7vM
 RosYZdVg6GTUBdfRVISd9jAd92/WMhKXuy2176xtSLOIKwQgT0AHdePE5PNg/gHFE6Q5 BQOg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 03:19:45 +0100
Message-Id: <1382926786-7904-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1382926786-7904-1-git-send-email-mcgrof@do-not-panic.com>
References: <1382926786-7904-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 1/2] cfg80211: add function helpers to
	genregdb.awk
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
Cc: wireless-regdb@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This has no functional change, this just lets us reuse
helpers at a later time.

Cc: John W. Linville <linville@tuxdriver.com>
Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 net/wireless/genregdb.awk | 36 +++++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/net/wireless/genregdb.awk b/net/wireless/genregdb.awk
index 3e241e4e..95baf61 100755
--- a/net/wireless/genregdb.awk
+++ b/net/wireless/genregdb.awk
@@ -33,15 +33,7 @@ BEGIN {
 	regdb = "const struct ieee80211_regdomain *reg_regdb[] = {\n"
 }
 
-/^[ \t]*#/ {
-	# Ignore
-}
-
-!active && /^[ \t]*$/ {
-	# Ignore
-}
-
-!active && /country/ {
+function parse_country_head() {
 	country=$2
 	sub(/:/, "", country)
 	printf "static const struct ieee80211_regdomain regdom_%s = {\n", country
@@ -57,7 +49,8 @@ BEGIN {
 	regdb = regdb "\t&regdom_" country ",\n"
 }
 
-active && /^[ \t]*\(/ {
+function parse_reg_rule()
+{
 	start = $1
 	sub(/\(/, "", start)
 	end = $3
@@ -117,7 +110,8 @@ active && /^[ \t]*\(/ {
 	rules++
 }
 
-active && /^[ \t]*$/ {
+function print_tail_country()
+{
 	active = 0
 	printf "\t},\n"
 	printf "\t.n_reg_rules = %d\n", rules
@@ -125,6 +119,26 @@ active && /^[ \t]*$/ {
 	rules = 0;
 }
 
+/^[ \t]*#/ {
+	# Ignore
+}
+
+!active && /^[ \t]*$/ {
+	# Ignore
+}
+
+!active && /country/ {
+	parse_country_head()
+}
+
+active && /^[ \t]*\(/ {
+	parse_reg_rule()
+}
+
+active && /^[ \t]*$/ {
+	print_tail_country()
+}
+
 END {
 	print regdb "};"
 	print ""
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

