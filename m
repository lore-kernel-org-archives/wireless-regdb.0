Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0vql-0005GB-8X
 for wireless-regdb@lists.infradead.org; Mon, 23 Nov 2015 18:28:29 +0000
From: Michal Sojka <sojkam1@fel.cvut.cz>
Date: Mon, 23 Nov 2015 19:27:20 +0100
Message-Id: <1448303241-27747-8-git-send-email-sojkam1@fel.cvut.cz>
In-Reply-To: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
Subject: [wireless-regdb] [PATCH v2 7/8] cfg80211: Add Kconfig option for
	ITS-G5 band (5.9 GHz)
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
Cc: =?UTF-8?q?Jan=20Kaisrl=C3=ADk?= <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de, Michal Sojka <sojkam1@fel.cvut.cz>
List-ID: <wireless-regdb@lists.infradead.org>

This option is meant for use by drivers and other subsystems to enable
support for the Intelligent Transportation System (ITS-G5) band. The
option depends on CFG80211_CERTIFICATION_ONUS as the use of this band is
restricted. EU allows using it only for certain applications, USA
require certification.

Signed-off-by: Michal Sojka <sojkam1@fel.cvut.cz>
---
 net/wireless/Kconfig | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/net/wireless/Kconfig b/net/wireless/Kconfig
index da72ed3..faa0ab1 100644
--- a/net/wireless/Kconfig
+++ b/net/wireless/Kconfig
@@ -132,6 +132,33 @@ config CFG80211_REG_RELAX_NO_IR
 	 support this feature by declaring the appropriate channel flags and
 	 capabilities in their registration flow.
 
+config CFG80211_REG_ITSG5_BAND
+	bool "cfg80211 support for ITS-G5 band (5.9 GHz)"
+	def_bool n
+	depends on CFG80211_CERTIFICATION_ONUS
+	---help---
+	This option enables support for Inteligent Transportation System (ITS)
+	band i.e. frequencies from 5.850 to 5.925 GHz. In Europe, the band is
+	standardized in the ETSI EN 302 663 standard. The use of this band is
+	restricted by regulatory documents mentioned below. Enable this option
+	only if you comply with them.
+
+	In Europe, the band is split into several sub-bands regulated by
+	separate documents:
+
+	- ITS-G5A (5.875 to 5.905 GHz) band is reserved for ITS road safety
+	  related applications and is regulated by Commission Decision
+	  2008/671/EC.
+
+	- ITS-G5B (5.855 to 5.875 GHz) band is reserved for ITS non-safety
+	  applications and is regulated by ECC Recommendation ECC/REC/(08)01.
+
+	- ITS-G5D (5.905 to 5.925 GHz) band is reserved for future ITS
+	  applications and is regulated by ECC Decision ECC/DEC(02)01.
+
+	In the US, the band is regulated by FCC 03-324 and the devices using it
+	must be certified.
+
 config CFG80211_DEFAULT_PS
 	bool "enable powersave by default"
 	depends on CFG80211
-- 
2.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

