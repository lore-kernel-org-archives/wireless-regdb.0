Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=iTz4vIqYVJSir96jOiTALmfk16hWKe53NtRG5J/3pAA=;
 b=B4WT6ZIBhckq0dyh1XX3ihf2yu
 WDDPO+rdY+lnCOqC6ODhKutCCqFcxRXoN3kOKy9C3zblt71WrHQPDmxZ9RM5HNQ0xFRm0miYqyoje
 NqjagnF2EOYuyKDCYlL/CNrMQ/KggTMIMYCLsM7gi0yefVZFXV7Sw35ZEzmCm3JH6K2plwbJCgQp9
 ya6u4x17sxo2C/YIK4M1Wa8sgjQkIY0OxIADe2o8LY+51F7fGB02MGNFXIEGbZ3DMKfbXehYYNxIM
 +/dZ00pPbcFP8mFic+u2rVP7aE23vaqpEl7NPcUMCyLgw4J+VsMIdWRbumarGjB5XnKuOjUB7TYau
 vJ0nmLOQ==;
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kuLF4-0001wB-8n
 for wireless-regdb@lists.infradead.org; Tue, 29 Dec 2020 20:05:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id i9so15619100wrc.4 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Dec 2020 12:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PPs7e52j0MruEfTDx7S6xZAJfhWHdbowdofq3XG1NZQ=;
 b=fABRlHmpWRHxp9lWlhtrIsXaPWHr9t55GQ0ampr6gozeohTJe37K9x34PQVrmL/hu5
 vrkHhtotfnE95IJW+NEyNajXDAffxzoPLGLDRwXiZQ5PzgFeJAZQ+yfmiCFp/Yg+2c18
 FAi5zHghAVZKBolEnEq3Wa/sjrP67t94oamY3Au4KeEJdx85P5sytwSm3N1Sba7HzDAL
 1Q8vmp+26o/tIKJuPjVQAYDhZ8byvs9xLqeoCNGQpzjVIPkH7yL3hrfRemVyhX0GHdNY
 CB6YzkrtLfp8UDH5cMj5PXRGdpSejeDssWAIXjI4cbm9eUrPFNuOdlCrCExxJ/UAam1q 0geA==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Tue, 29 Dec 2020 21:05:04 +0100
Message-Id: <20201229200504.6383-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update CNAF regulation
 url for ES
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
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, Xose Vazquez Perez <xose.vazquez@gmail.com>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index c71a03a..d03f3fa 100644
--- a/db.txt
+++ b/db.txt
@@ -527,7 +527,7 @@ country EG: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
-# ES: https://avancedigital.gob.es/espectro/Paginas/cnaf.aspx
+# ES: https://avancedigital.mineco.gob.es/espectro/Paginas/cnaf.aspx
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-- 
2.29.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

