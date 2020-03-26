Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ZRI2me1GEwIfc13QKotR0sQi79N7O3hJwp18wWsWGIY=;
 b=JEAug0ssuz70qh
 dl8SawvM7ycO1tNWjuuWNHzeWSZpSCoo5GKujBNMlmDEErzsDhiNxxUuhtww0izG4FTOAlpl1crYn
 KPMm55EuYxjR07JKG8LCNHLZ00H7cmzS/Kw0SppvQo4Ygr0Titto4W15LcFUbBV5xf1w4vOzakfqq
 a93nWs53XlKzeLGanhbS2TN6lQ3NShnm81wmrR849dIL9hZDNgU6U71pG4sHepjq4ItTXvmuwiGtB
 Y/ael381xth7czrkqAUnROZqQZVyZ0mhL7ELtQZO2RLJD6gUmuccnDfKY1DdTqJtGdOLmIrmDUt1n
 g5bA4JEsw8KQNQLpXFzg==;
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQwn-0007zP-Th
 for wireless-regdb@lists.infradead.org; Thu, 26 Mar 2020 11:45:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id q3so2608152pff.13 for
 <wireless-regdb@lists.infradead.org>; Thu, 26 Mar 2020 04:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id;
 bh=QNc7sUitYw+STr16lrtQWpfnsD8DXSPcqt4YHYoo/vA=;
 b=Ii+N+nH3zPPvVwnTqGDG7+afr0CZ0b58kdFhT46r2UJZcO49+8kv638i8xqsSKsVOk
 H+lf7rtAPu4VvQKNjuEwj0YOdDCT9Ct3WNDQC7jMXWxY/XUzMcsop24gWRg9ckVeCYW1
 Tfw1JYeTRp6ucho8i1sz4Ovm1iNqNCNCW0LlFJKKE3j3rZHSoPaxYKJWT2++RAplJCXc
 fvDotAPc0GRnPOszJor2boD2GbSq56SsfRcI7aSVNMfKBVd2OA8fHJkpr/dCEUu0hICh
 hxUmBKa2si3hvPKjinJ0D2fd1r2zQr0CvYYHFGC3yo7fHWXWKxYD8nprCz/zekmEh7pV llCA==
From: chaitanya.mgit@gmail.com
Date: Thu, 26 Mar 2020 17:15:06 +0530
Message-Id: <20200326114506.943-1-chaitanya.mgit@gmail.com>
Subject: [wireless-regdb] [PATCH] GB: Extend to cover DMG channels 5 & 6
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
To: seth.forshee@canonical.com, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Cc: Chaitanya Tata <chaitanya.mgit@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: Chaitanya Tata <chaitanya.mgit@gmail.com>

OFCOM extended the DMG band to include till 71GHz.

Signed-off-by: Chaitanya Tata <chaitanya.mgit@gmail.com>
---
 db.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 9c4b447..c5750f2 100644
--- a/db.txt
+++ b/db.txt
@@ -587,6 +587,7 @@ country FR: DFS-ETSI
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0019/136009/Ofcom-Information-Sheet-5-GHz-RLANs.pdf
 # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
+# GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0013/126121/Statement_Implementing-Ofcoms-decision-on-the-57-71GHz-band.pdf
 country GB: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -594,8 +595,8 @@ country GB: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
-	# 60 GHz band channels 1-4 (ETSI EN 302 567)
-	(57000 - 66000 @ 2160), (40)
+	# 60 GHz band channels 1-6
+	(57000 - 71000 @ 2160), (40)
 
 country GD: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-- 
2.17.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

