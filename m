Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22b.google.com ([2607:f8b0:400e:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEoo-0005WA-9Q
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:50 +0000
Received: by mail-pb0-f43.google.com with SMTP id ma3so1394010pbc.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=zP9ipKkx64tfYCT5sBBXa5RMB0u470nQag+ouuEv9pI=;
 b=1Cl7dgCaiAlDCMOWZmHKSvWFo08hfo3Ym95lrUURRTUkosCVOBiaZATSE5hezFlwQ0
 TxmKb9nKBGDMvYYRyz6SV6r1a8EAiv0PGtPYddGtIsP/chH2Vy8pL1oBnCVIUuBFVk1c
 OIRovcJVyeDonOdwFu1q2D6Tx2LGKq1PUDMbNtdyCfxOZhD8jbh4v+9sbbFCoiXU1+Lg
 QYh5k0B/PMKMOhuwbLTflJ7M5vnwa1NGM286bJY24i8T8S58QAyjd2maONznP2P9piOa
 cT3d4OHVZqe0+blbdGidrtL8m831dQT4EdJuP47A+VuJaplCPKypPI8sPtGzDbZYhtO8 FoBg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:13 -0700
Message-Id: <1369966169-23640-25-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 24/40] crda: add regdb_dfs_regions
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

These are already in dbparse.py. As it stands silicon
vendor DFS solutions group up DFS compliance requirements
into three categorical groups. Each country that requires
DFS has opted to follow one type of group category set
of rules.

CRDA was already reading the DFS regions but using
nl80211.h definitions for its parsing and printing of
these flags, its best to use our own OS agnostic
definitions.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 regdb.h |   24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/regdb.h b/regdb.h
index afb7284..4508621 100644
--- a/regdb.h
+++ b/regdb.h
@@ -7,6 +7,10 @@
  * WARNING: This file needs to be kept in sync with
  *  - the parser (dbparse.py)
  *  - the generator code (db2bin.py)
+ *
+ * As it is only Linux is using these so we have a direct one to
+ * one map for flags. Each respective OS flag is listed where
+ * appropriate.
  */
 
 /* spells "RGDB" */
@@ -61,8 +65,9 @@ struct regdb_file_power_rule {
 	uint32_t	max_eirp;
 };
 
-/* must match <linux/nl80211.h> enum nl80211_reg_rule_flags */
-
+/*
+ * The Linux map defined in <linux/uapi/nl80211.h> enum nl80211_reg_rule_flags
+ */
 enum reg_rule_flags {
 	RRF_NO_OFDM		= 1<<0, /* OFDM modulation not allowed */
 	RRF_NO_CCK		= 1<<1, /* CCK modulation not allowed */
@@ -78,6 +83,21 @@ enum reg_rule_flags {
 	RRF_NO_IBSS		= 1<<8, /* IBSS is not allowed */
 };
 
+/**
+ * enum regdb_dfs_regions - regulatory DFS regions
+ *
+ * @REGDB_DFS_UNSET: Country has no DFS master region specified
+ * @REGDB_DFS_FCC: Country follows DFS master rules from FCC
+ * @REGDB_DFS_ETSI: Country follows DFS master rules from ETSI
+ * @REGDB_DFS_JP: Country follows DFS master rules from JP/MKK/Telec
+ */
+enum regdb_dfs_regions {
+	REGDB_DFS_UNSET	= 0,
+	REGDB_DFS_FCC	= 1,
+	REGDB_DFS_ETSI	= 2,
+	REGDB_DFS_JP	= 3,
+};
+
 struct regdb_file_reg_rule {
 	/* pointers (offsets) into the file */
 	uint32_t	freq_range_ptr; /* pointer to a struct regdb_file_freq_range */
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

