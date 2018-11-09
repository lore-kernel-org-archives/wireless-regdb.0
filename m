Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=7gHaAWoZoxVCwice7kK6JzyqvkvVr7uZC4SdpdowjPs=;
 b=P5v7tJCnkx794E
 fAnDrhOx7xLftXQeUUJVeKg169t7j2z9oo99CWKBuAnYGZhHFyPmpJr+3fP3nIGt9q3zi6ZObalt8
 kXfX8RiNXdEXjf+dltJg6qEdNVXBGyKWNODPEI9I2by29UUApJYCanXW6fDwY6r+YvpcZy6BMbhrV
 oMBNS8u/MgI2SeOd9KABej5p1ps71sGF4ycRZYZG9geTmGvjpzuVnR0kHTk6FJ/Oyi4GGd8uyYQ+u
 CFi3J9+AXnjilu+N191Lpdz5F24GpLQyJ4ZMEOyi0zfrlfhh6k1BG/kFXPe9D+TrDlnpxUjU7UYv6
 wRe3GDC3u1h5RSjQzsBg==;
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3xq-0001j6-PU
 for wireless-regdb@lists.infradead.org; Fri, 09 Nov 2018 10:24:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id p2-v6so1436270wmc.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 09 Nov 2018 02:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=udkfn3yVvuCceV04j1gaobWyIMbXJgFe43wdapuUuMA=;
 b=eqAlwpEWY1w2BD8bTMx0QQZSowZ62pP7bHJZDLXd+mVmCKT9zzfPeGaVw1yCbbkVvJ
 EL2S+RYDhZAFQb5ed3zEmgsYLV6UYFRIwJBuKlRorHUiBdCttJonetHjMKIyU1KUqhOR
 SJP6yfg84JXuUVlE5S0GeLwsXaQdA3fwq0XSdNoslckIh+tHezTi7sZtM6dGJg7lMC4e
 JFp6iaPjQBri59mZczvIqxjLmTR81NzEq5384dMMopaX5pMRwo1FCOpRDolZkn3y/ooO
 Yb4x9T6oZaIUONslSc3Jk7ya2q9ZHJZXk4WBY6P7XaXB+CPsc8yj1Ts4uc9bUHIgldDn VNtA==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Fri,  9 Nov 2018 11:24:20 +0100
Message-Id: <20181109102420.3539-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: delete outdated comment
 for DE
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, Xose Vazquez Perez <xose.vazquez@gmail.com>, REGDB ML <wireless-regdb@lists.infradead.org>, Sven Eckelmann <sven.eckelmann@openmesh.com>
List-ID: <wireless-regdb@lists.infradead.org>

d46d731c made it obsolete.

Cc: Sven Eckelmann <sven.eckelmann@openmesh.com>
Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/db.txt b/db.txt
index 8f356f7..fa5c0e0 100644
--- a/db.txt
+++ b/db.txt
@@ -359,13 +359,6 @@ country CZ: DFS-ETSI
 # Funkanwendungen zur breitbandigen Datenübertragung, WAS/WLAN („Wireless
 # Access Systems including Wireless Local Area Networks“).
 # https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2010_07_WLAN_5GHz_pdf.pdf
-# The values for the 5 GHz have been reduced by a factor of 2 (3db) for non TPC
-# devices (in other words: devices with TPC can use twice the tx power of this
-# table). Note that the docs do not require TPC for 5150--5250; the reduction
-# to 100mW thus is not strictly required -- however the conservative 100mW
-# limit is used here as the non-interference with radar and satellite
-# apps relies on the attenuation by the building walls only in the
-# absence of DFS; the neighbour countries have 100mW limit here as well.
 #
 # The ETSI EN 300 440-1 standard for short range devices in the 5 GHz band has
 # been implemented in Germany:
-- 
2.19.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
