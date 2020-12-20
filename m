Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=VH+CtS56ndXQFwfHj4MtfhmXpY5ru7vdvbN1KWf/F0w=;
 b=tZkGZlaBSZtXpenZQABaFs2ZfF
 1AcxOn0icdkalTOynwyVDbO57FhE8Yk8Weh225eowr6hUc+cWI/4bkJG4Uchad2cERYaqBTw5f2vl
 oEFGBMHv87uzYAaZNPC8iDvmhKQFBDcADkRYdN1HCKn9n3eTUeTclNha4sSQdFnx8EXqoK11/PtZu
 HoWAXxyCK+SxK7tR3JKsv10JpbSBLMWLcOMFZgxN95w+dW01WUn799OUYxS+fBz6B3HQO/O4PA81S
 lo8rw69fH/MICLz+3HIXvi3/GL5rfkq5RqBIcNVhgzrqCVg+nVHD7c8TGSGz+ZQrgjOP5M9xoMFDk
 jY0F/3Rw==;
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kr6FI-0008Gi-NK
 for wireless-regdb@lists.infradead.org; Sun, 20 Dec 2020 21:28:06 +0000
Received: by mail-lf1-x131.google.com with SMTP id o13so19063274lfr.3 for
 <wireless-regdb@lists.infradead.org>; Sun, 20 Dec 2020 13:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/e3jNsq3iy3v40rws4mJ4ddje4NCepqN/jkGkUQj+WE=;
 b=IGyJLrwNPs7nGGEVHTQab82fiJjb6Idsp5s6IB1R4RaWfyeKeQXU9t3UEqBpVGkMZD
 qgXp8QFGBZ3P4HidQCrMOA6IrDOZQiKoA8xy8w43f/dCVFRQoNda8JDbNKiT4OS1zUso
 dfpbm6nrZJoavjjOduhKN7Cj1BFsZwkoYO53ksa94098xyxknJiiZSaXoskClm0PI5MJ
 dVlGOVXrB7FYjTROt6AVHUX5JzymRBThW1vAsfMgCeNZiraktIlK55yVSg49HUwOaKzR
 7SFMGDvetsBuUQS15b0Wn7HnkOsrIGe7fappaBw6Lgpf+mRr0yO43orO0ebtKm5OzlYt hSew==
From: Illia Volochii <illia.volochii@gmail.com>
Date: Sun, 20 Dec 2020 23:27:21 +0200
Message-Id: <20201220212721.22450-1-illia.volochii@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Ukraine (UA)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Illia Volochii <illia.volochii@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

This patch is based on the latest Ukrainian norms https://zakon.rada.gov.ua/laws/show/z0201-15#n48.

* Extend some frequency ranges.
* Increase EIRP of frequency ranges.
* Set wmmrule=ETSI to frequency ranges that are related to EN 301 893.
* Permit outdoor usage of 2.4 GHz band channels.
* Prohibit outdoor usage of some 5 GHz band channels.

Signed-off-by: Illia Volochii <illia.volochii@gmail.com>
---
 db.txt | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/db.txt b/db.txt
index c71a03a..86073d2 100644
--- a/db.txt
+++ b/db.txt
@@ -1548,21 +1548,20 @@ country TZ:
 	(2402 - 2482 @ 40), (20)
 	(5735 - 5835 @ 80), (30)
 
-# Source:
-# #914 / 06 Sep 2007: http://www.ucrf.gov.ua/uk/doc/nkrz/1196068874
-# #1174 / 23 Oct 2008: http://www.nkrz.gov.ua/uk/activities/ruling/1225269361
-# (appendix 8)
-# Listed 5GHz range is a lowest common denominator for all related
-# rules in the referenced laws. Such a range is used because of
-# disputable definitions there.
+# Source: https://zakon.rada.gov.ua/laws/show/z0201-15#n48
+# Although it is allowed to use up to 250 mW for some 5 GHz frequency ranges,
+# all of them are limited to 100 mW for IEEE 802.11n and IEEE 802.11ac.
+# 2.4 GHz band channels can be used outdoors when some requirements are met.
+# 5 GHz band channels must be used only indoors in some cases. They are neither
+# permitted nor denied outdoors in others.
 country UA: DFS-ETSI
-	(2400 - 2483.5 @ 40), (20), NO-OUTDOOR
-	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
-	(5250 - 5350 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW
-	(5490 - 5670 @ 160), (20), DFS
-	(5735 - 5835 @ 80), (20)
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (100 mW), DFS, NO-OUTDOOR, wmmrule=ETSI
+	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
+	(57000 - 66000 @ 2160), (40 mW), NO-OUTDOOR
 
 country UG: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

