Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vac1P-0000ZI-QM
 for wireless-regdb@lists.infradead.org; Mon, 28 Oct 2013 01:53:36 +0000
Received: by mail-wg0-f42.google.com with SMTP id n12so2865087wgh.5 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Oct 2013 18:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qZW6UKLJgyDiQrpdsy4NsUDyBuIP2ShiFRTk/Rf6LAo=;
 b=oTaXcvVBSBYIreYE4SISCRSxHBfrI8xBS0ndC+6X9FdBQfwwNmsDbkR3jNrrPaPl38
 eIgryMQneLON5gww0k+bBNdfwM3aV2aLdvEQ4lsI4gpTWiBaIT7fhYI7F+scCDJgYyVG
 1jWAms3Kne/TkWhVka/gHrCkptMKZIHVqP1nRquV17g/Kztqw4X+bYBF8rDIPpN+rp9B
 aORQ3FI9NRMvIqX0McmxcJ6oUdt6+6PDUGMvElLU/fEG3MieMXRxEWIzFRl8DGjZgq3A
 4KVBN5U6KstR/eM2sors79N3fL+khafZbUYwLqKWc/3DBYMlKkkvr4xa2v9Yx3yjrxy1 069A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 28 Oct 2013 02:52:58 +0100
Message-Id: <1382925182-7393-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1382925182-7393-1-git-send-email-mcgrof@do-not-panic.com>
References: <1382925182-7393-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 2/6] crda: fix -pedantic gcc compilation
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

gcc likes to complain about this, fix that as we're
going to get a bit more anal with code here soon as
we're moving towards making a library out of reglib.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 crda.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/crda.c b/crda.c
index 2a601eb..4751a39 100644
--- a/crda.c
+++ b/crda.c
@@ -141,13 +141,15 @@ int main(int argc, char **argv)
 {
 	int fd = -1;
 	int i = 0, j, r;
-	char alpha2[3] = {}; /* NUL-terminate */
+	char alpha2[3];
 	char *env_country;
 	struct nl80211_state nlstate;
 	struct nl_cb *cb = NULL;
 	struct nl_msg *msg;
 	int finished = 0;
 
+	memset(alpha2, 0, 3);
+
 	struct nlattr *nl_reg_rules;
 	const struct ieee80211_regdomain *rd = NULL;
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

