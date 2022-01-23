Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=pS2cCdtMsfpeEE+kUgX/4qUCkP+LlWD3qLHqzBxNva0=;
 b=QBu9iwptiPb005
 qjR1plPdsjHDQPosXJJnfp68LlwCzrOMibimPEaX32rNNHCuZetpo9jBnywxDuJhDhpI4FwhhSfrS
 hGmz34EOLRRUXCRCFTldK80UwJrqGah5zUN3lhedFvKpKT41msFe0/etcpXTZVJcRg4/Q6Lzg4jCn
 +mnj0xqrT9JgPlrftmORCvxA9WvWZf9AqiShnuC/fA4RZ0kSzAS0qSKC557u/ffz6OgRefkqQARq5
 +5GH2zuLYFIA/2eQanRpErhrKIPEH/Ptv3SP9W2xFIanZJ4O9O/MEUKIYdwhP9NymU1RW7VLCAFvo
 UF78hto9TI/Phh54QCkQ==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBjic-001n6k-8U
 for wireless-regdb@lists.infradead.org; Sun, 23 Jan 2022 20:44:12 +0000
Received: by mail-wr1-x42c.google.com with SMTP id l25so9967734wrb.13 for
 <wireless-regdb@lists.infradead.org>; Sun, 23 Jan 2022 12:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7ZBEjCn+lkjb6jeRnJ16QVEUOr4HiZcOfZUdeWEHec=;
 b=oHbJ8xkO/Ojfj4RINLfEgVPxcYIcndQPhd9V0tZFwi9pZY5O74GuNTwar3ZSENwflH
 xQxaFNMgNQJb8oPsNjIjoYsmWkrigHadLYN/T4PpNgidooMnJhcKhT1Pw0JHIqBpl8+v
 k22egn6Vk8Vx098ngy/ruGz7vKxmXzMPskFLBkpSMxYaVAwR4fH5QOSB0CHIyj94yANW
 UZ+wbuMbH2IAdHrHhTHY+vkX0orqsvPz7tL+0ulhbOgEIoCScVRuymV9Qe646Kj9fqpC
 yOAg2H5YKr0wIDJwQh5pl4HmAhwuFOzsGS1k/VITgLSYQWwkK5PXaaRDNBlyYzaRIbFT EyRg==
From: Romain Izard <romain.izard.pro@gmail.com>
Date: Sun, 23 Jan 2022 21:43:46 +0100
Message-Id: <20220123204346.14588-1-romain.izard.pro@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for France (FR) on 6 and 60 GHz
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Romain Izard <romain.izard.pro@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

The French national agency for radio frequencies (ANFR) has published an updated
revision of the normative radio band allocation table on 2021-12-14. It includes
the authorization for the lower 6 GHz band for 802.11ax as prescribed by the EU
2021/1067 decision, as well as the authorization for channels 5 and 6 in the 60
GHz band for 802.11ay.

The declaration for the 6 GHz band follows the Low Power Indoor constraints.

https://www.anfr.fr/fileadmin/mediatheque/documents/tnrbf/TNRBF_2021-12-14.pdf

Signed-off-by: Romain Izard <romain.izard.pro@gmail.com>
---
 db.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 6dbda3c..436d4d7 100644
--- a/db.txt
+++ b/db.txt
@@ -585,6 +585,7 @@ country FM: DFS-FCC
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# FR: https://www.anfr.fr/fileadmin/mediatheque/documents/tnrbf/TNRBF_2021-12-14.pdf
 country FR: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -592,8 +593,10 @@ country FR: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
-	# 60 GHz band channels 1-4 (ETSI EN 302 567)
-	(57000 - 66000 @ 2160), (40)
+	# WiFi 6E low power indoor
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	# 60 GHz band channels 1-6 (ETSI EN 302 567 v2.2.1)
+	(57000 - 71000 @ 2160), (40)
 
 # GB as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.20.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

