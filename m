Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vfyq2-0002TN-3Q
 for wireless-regdb@lists.infradead.org; Mon, 11 Nov 2013 21:16:03 +0000
Received: by mail-wi0-f174.google.com with SMTP id cb5so2785896wib.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 11 Nov 2013 13:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yx45Vzwt+2oq23GQ6SCCjmeZ7OdepU1tBnWsXHBmeys=;
 b=dmtTHnqpx/SNDmTbRx4odvsF5fV72ym5wplsHyg8HHfD5GJWAVvr4o1S4KBnIFK89N
 19EfhNvWnBzP8dgvRlGq/4BDaUFcyMf0u9cXarZ8dgQtL5rZ4RH4aDqAxtRwsuhoY16z
 nrYXOOjhfERNVwmtF3i1me6jfWGXBAVmhhpoF0iJqpxwIEs4U8Mte9yZPlHyQTcIUgBz
 pnS4DSGHyTKyS4hAS6oUF+7LUF0NX2YyNPWkxmaK1OrCRoyEN33VWMIKyzA9mposL5hl
 Y26ijrJ2FMMOz9Wm17EMzWMER4Ry99IUDgopyn8c/cw6FnyU6uq5CK+ncL2HCqvtf4tK iShg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 11 Nov 2013 22:15:30 +0100
Message-Id: <1384204531-10025-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1384204531-10025-1-git-send-email-mcgrof@do-not-panic.com>
References: <1384204531-10025-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 2/3] cfg80211: add flags to define country
	IE processing rules
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
To: johannes@sipsolutions.net, linville@tuxdriver.com
Cc: Henri Bahini <hbahini@qca.qualcomm.com>, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>, linux-wireless@vger.kernel.org, Mihir Shete <smihir@qti.qualcomm.com>, Tushnim Bhattacharyya <tushnimb@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

802.11 cards may have different country IE parsing behavioural
preferences and vendors may want to support these. These preferences
were managed by the REGULATORY_CUSTOM_REG and the REGULATORY_STRICT_REG
flags and their combination. Instead of using this existing notation,
split out the country IE behavioural preferences as a new flag. This
will allow us to add more customizations easily and make the code more
maintainable.

Cc: Mihir Shete <smihir@qti.qualcomm.com>
Cc: Henri Bahini <hbahini@qca.qualcomm.com>
Cc: Tushnim Bhattacharyya <tushnimb@qca.qualcomm.com>
Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 drivers/net/wireless/ath/regd.c |  3 ++-
 include/net/regulatory.h        | 36 ++++++++++++++++++++++++------------
 net/wireless/reg.c              |  8 +++-----
 3 files changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/net/wireless/ath/regd.c b/drivers/net/wireless/ath/regd.c
index e557e57..55ad36e 100644
--- a/drivers/net/wireless/ath/regd.c
+++ b/drivers/net/wireless/ath/regd.c
@@ -505,7 +505,8 @@ ath_regd_init_wiphy(struct ath_regulatory *reg,
 		 * saved on the wiphy orig_* parameters
 		 */
 		regd = ath_world_regdomain(reg);
-		wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;
+		wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG |
+					   REGULATORY_COUNTRY_IE_FOLLOW_POWER;
 	} else {
 		/*
 		 * This gets applied in the case of the absence of CRDA,
diff --git a/include/net/regulatory.h b/include/net/regulatory.h
index a77368c..bc41203 100644
--- a/include/net/regulatory.h
+++ b/include/net/regulatory.h
@@ -96,27 +96,39 @@ struct regulatory_request {
  * 	initiator is %REGDOM_SET_BY_CORE). Drivers that use
  * 	wiphy_apply_custom_regulatory() should have this flag set
  * 	or the regulatory core will set it for the wiphy.
- * @REGULATORY_FLAG_STRICT_REG: tells us the driver for this device will
- *	ignore regulatory domain settings until it gets its own regulatory
- *	domain via its regulatory_hint() unless the regulatory hint is
- *	from a country IE. After its gets its own regulatory domain it will
- *	only allow further regulatory domain settings to further enhance
- *	compliance. For example if channel 13 and 14 are disabled by this
- *	regulatory domain no user regulatory domain can enable these channels
- *	at a later time. This can be used for devices which do not have
- *	calibration information guaranteed for frequencies or settings
- *	outside of its regulatory domain. If used in combination with
- *	REGULATORY_FLAG_CUSTOM_REG the inspected country IE power settings
- *	will be followed.
+ * @REGULATORY_FLAG_STRICT_REG: tells us that the wiphy for this device
+ *	has regulatory domain that it wishes to be considered as the
+ *	superset for regulatory rules. After this device gets its regulatory
+ *	domain programmed further regulatory hints shall only be considered
+ *	for this device to enhance regulatory compliance, forcing the
+ *	device to only possibly use subsets of the original regulatory
+ *	rules. For example if channel 13 and 14 are disabled by this
+ *	device's regulatory domain no user specified regulatory hint which
+ *	has these channels enabled would enable them for this wiphy,
+ *	the device's original regulatory domain will be trusted as the
+ *	base. You can program the superset of regulatory rules for this
+ *	wiphy with regulatory_hint() for cards programmed with an
+ *	ISO3166-alpha2 country code. wiphys that use regulatory_hint()
+ *	will have their wiphy->regd programmed once the regulatory
+ *	domain is set, and all other regulatory hints will be ignored
+ *	until their own regulatory domain gets programmed.
  * @REGULATORY_FLAG_DISABLE_BEACON_HINTS: enable this if your driver needs to
  *	ensure that passive scan flags and beaconing flags may not be lifted by
  *	cfg80211 due to regulatory beacon hints. For more information on beacon
  *	hints read the documenation for regulatory_hint_found_beacon()
+ * @REGULATORY_COUNTRY_IE_FOLLOW_POWER:  for devices that have a preference
+ *	that even though they may have programmed their own custom power
+ *	setting prior to wiphy registration, they want to ensure their channel
+ *	power settings are updated for this connection with the power settings
+ *	derived from the regulatory domain. The regulatory domain used will be
+ *	based on the ISO3166-alpha2 from country IE provided through
+ *	regulatory_hint_country_ie()
  */
 enum ieee80211_regulatory_flags {
 	REGULATORY_CUSTOM_REG			= BIT(0),
 	REGULATORY_STRICT_REG			= BIT(1),
 	REGULATORY_DISABLE_BEACON_HINTS		= BIT(2),
+	REGULATORY_COUNTRY_IE_FOLLOW_POWER	= BIT(3),
 };
 
 struct ieee80211_freq_range {
diff --git a/net/wireless/reg.c b/net/wireless/reg.c
index e44b4bb..6b3051f 100644
--- a/net/wireless/reg.c
+++ b/net/wireless/reg.c
@@ -921,13 +921,11 @@ static void handle_channel(struct wiphy *wiphy,
 	chan->max_reg_power = (int) MBM_TO_DBM(power_rule->max_eirp);
 	if (chan->orig_mpwr) {
 		/*
-		 * Devices that have their own custom regulatory domain
-		 * but also use REGULATORY_STRICT_REG will follow the
-		 * passed country IE power settings.
+		 * Devices that use REGULATORY_COUNTRY_IE_FOLLOW_POWER
+		 * will always follow the passed country IE power settings.
 		 */
 		if (initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE &&
-		    wiphy->regulatory_flags & REGULATORY_CUSTOM_REG &&
-		    wiphy->regulatory_flags & REGULATORY_STRICT_REG)
+		    wiphy->regulatory_flags & REGULATORY_COUNTRY_IE_FOLLOW_POWER)
 			chan->max_power = chan->max_reg_power;
 		else
 			chan->max_power = min(chan->orig_mpwr,
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

