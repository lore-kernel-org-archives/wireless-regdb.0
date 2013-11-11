Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vfyq1-0002TP-Bj
 for wireless-regdb@lists.infradead.org; Mon, 11 Nov 2013 21:16:02 +0000
Received: by mail-wi0-f179.google.com with SMTP id fb10so2774567wid.12 for
 <wireless-regdb@lists.infradead.org>; Mon, 11 Nov 2013 13:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1HSHHHgqaGbgj7DPcwCf3OWGI45JuYphEEFgqSHQBIs=;
 b=VXcAtyV1Yqbsfr2XVcFJYojEft8hlw60h1JdFonXm5h42w/R4Djw8CnplG0+8fjtkV
 JZQ7tawCKQbMez05FUYSOTlQqCilhrMwYvdv+LeF1TWFCUyJ7nWkKpKgvTKFwiHXCzOx
 VMCWngn1JVctgrUluGIkjvNWITg9g2lXFAhMLjxQazeTJ20rOL+E0rrrRys612kvzUb0
 Tbm9t1FtjCg13Atga8mRJAeh+qOiWMSUxQzbbRxwzIGrVjnZksG/7HOFwQTDPdSoCU8T
 xa0NohgOpIrNK/cIIgzrc8TA1lWlFD+KPlfdLnRHVRO3Q7onnOp/6omwG0LtgX0JiCky K13A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 11 Nov 2013 22:15:31 +0100
Message-Id: <1384204531-10025-4-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1384204531-10025-1-git-send-email-mcgrof@do-not-panic.com>
References: <1384204531-10025-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 3/3] cfg80211: add an option to disable
	processing country IEs
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

Certain vendors may want to disable the processing of
country IEs so that they can continue using the regulatory
domain the driver or user has set.  Currently there is no
way to stop the core from processing country IEs, so add
support to the core to ignore country IE hints.

Cc: Mihir Shete <smihir@qti.qualcomm.com>
Cc: Henri Bahini <hbahini@qca.qualcomm.com>
Cc: Tushnim Bhattacharyya <tushnimb@qca.qualcomm.com>
Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 include/net/regulatory.h | 5 +++++
 net/wireless/reg.c       | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/include/net/regulatory.h b/include/net/regulatory.h
index bc41203..7e98e5a 100644
--- a/include/net/regulatory.h
+++ b/include/net/regulatory.h
@@ -123,12 +123,17 @@ struct regulatory_request {
  *	derived from the regulatory domain. The regulatory domain used will be
  *	based on the ISO3166-alpha2 from country IE provided through
  *	regulatory_hint_country_ie()
+ * @REGULATORY_COUNTRY_IE_IGNORE: for devices that have a preference to ignore
+ * 	all country IE information processed by the regulatory core. This will
+ * 	override %REGULATORY_COUNTRY_IE_FOLLOW_POWER as all country IEs will
+ * 	be ignored.
  */
 enum ieee80211_regulatory_flags {
 	REGULATORY_CUSTOM_REG			= BIT(0),
 	REGULATORY_STRICT_REG			= BIT(1),
 	REGULATORY_DISABLE_BEACON_HINTS		= BIT(2),
 	REGULATORY_COUNTRY_IE_FOLLOW_POWER	= BIT(3),
+	REGULATORY_COUNTRY_IE_IGNORE		= BIT(4),
 };
 
 struct ieee80211_freq_range {
diff --git a/net/wireless/reg.c b/net/wireless/reg.c
index 6b3051f..067c1f6 100644
--- a/net/wireless/reg.c
+++ b/net/wireless/reg.c
@@ -1543,6 +1543,9 @@ __reg_process_hint_country_ie(struct wiphy *wiphy,
 		if (regdom_changes(country_ie_request->alpha2))
 			return REG_REQ_IGNORE;
 		return REG_REQ_ALREADY_SET;
+	} else {
+		if (wiphy->regulatory_flags & REGULATORY_COUNTRY_IE_IGNORE)
+			return REG_REQ_IGNORE;
 	}
 
 	if (unlikely(!is_an_alpha2(country_ie_request->alpha2)))
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

