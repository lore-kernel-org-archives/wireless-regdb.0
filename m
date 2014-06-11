Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wuaeq-00009J-AB
 for wireless-regdb@lists.infradead.org; Wed, 11 Jun 2014 05:01:09 +0000
Received: by mail-wg0-f45.google.com with SMTP id l18so2356548wgh.28 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Jun 2014 22:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google; h=from:to:cc:subject:date:message-id;
 bh=hHyVvlMC/yBCjI65Wq0P/5v2icFIYRI7upW4AApf9qk=;
 b=vIsDLY7MgJSm/0q4G7kR5YhZDjqQHDKxeCwYuq6aQu46xK2TLRuXTvG07nAkyUgk5v
 JYukO2K8XF1RH5xRowCFOuiU5yQWpD2qJhujcpq7CJSlCOPJ5b2JjSxCa0e8sIRv+isW
 cS4w5iKVqAylJNAjbSF0avAU184YHm9XoXjJ4=
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date: Wed, 11 Jun 2014 07:00:35 +0200
Message-Id: <1402462835-3281-1-git-send-email-janusz.dziedzic@tieto.com>
Subject: [wireless-regdb] [PATCH] cfg80211: reg: setup correct alpha2 after
	intersection
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, johannes@sipsolutions.net, wireless-regdb@lists.infradead.org, mcgrof@do-not-panic.com
List-ID: <wireless-regdb@lists.infradead.org>

Setup correct alfa2 in last request after intersection.
In other case after intersection we could not change/set
new country using eg. iw reg set

Failed scenario:
- insmod cfg80211.ko
- iw reg set FR
- modprobe ath10k_pci (US hint)
- intersection and country set as "98"
- no way to setup new country using iw reg set

Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
---
@Luis I am not sure this is the best way to fix it, please review.

 net/wireless/reg.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/net/wireless/reg.c b/net/wireless/reg.c
index 82948c8..8fd82b2 100644
--- a/net/wireless/reg.c
+++ b/net/wireless/reg.c
@@ -271,6 +271,7 @@ static void reset_regdomains(bool full_reset,
 			     const struct ieee80211_regdomain *new_regdom)
 {
 	const struct ieee80211_regdomain *r;
+	struct regulatory_request *lr;
 
 	ASSERT_RTNL();
 
@@ -284,6 +285,12 @@ static void reset_regdomains(bool full_reset,
 	if (r == &world_regdom)
 		r = NULL;
 
+	lr = get_last_request();
+	if (lr && new_regdom) {
+		lr->alpha2[0] = new_regdom->alpha2[0];
+		lr->alpha2[1] = new_regdom->alpha2[1];
+	}
+
 	rcu_free_regdom(r);
 	rcu_free_regdom(cfg80211_world_regdom);
 
-- 
1.7.9.5


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

