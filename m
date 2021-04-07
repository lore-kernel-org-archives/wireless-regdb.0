Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=XKGdfwWMRS0A+B9SmMaeGE8dMH4DlO3s7eV3mLSMH/8=;
 b=Ex3d1UGAdAXGggA0pNg+LARua4
 Nk5KK8km70DXyX6XAS7TySMeAZKznlf4j/+x5KcmC9E/0/MmXFvtWqPkCUecTz+zfxvxBzt0thZFt
 IBrrFaHZr72eldufjj77oeAdLKmrnBe8FgayHdAI9XxB7PVZh1/a5ucJ119wJMBST/MC9QB1dmk/u
 7Be7oCHq1gfHB6z1fv+hJ4lUJqiQeAT1/pn1wpy1D0jH19AjuPt8oTVOnEk+i+SP3gNAOIySdPHaJ
 Lm2NhfTT4cWFKwbGz2h57F/bzJUlCQ1/QZ8v5Hz8R4f7H9gNJYvGoj6/kouiOzsFAfbaeHEnQaIYH
 TIinvypA==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUGES-0067m5-29
 for wireless-regdb@lists.infradead.org; Wed, 07 Apr 2021 22:01:06 +0000
Received: by mail-wr1-x434.google.com with SMTP id u11so7087465wrp.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 07 Apr 2021 15:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YO+Luw6+NxVvRkcrJgxuPRq03WcH9gZGARw02gdsBak=;
 b=Oeix9diGFjjdj63SNKEfk54iKoS4V89riVBANyDi1RhIC7/pv5pBZKm3PrVY0muvCX
 eTpGX4bYLlAVgtOUBEknDmAdHO1AHQN/Tby13yV/KqI3L0EW5y3/XFMSAbmGC49hQmp4
 lPZgns1Ba2CmeipJsmXVPEwiuJhQmQs12fNyH1NE24Gl5jDrzGb9A3Mc2p+fIV7BoGjF
 uBqPYWKe3W/HqiTZnLV4TCn9+tTtmHITd9XisPqh9vB8Il9INNP1AuFK3fKc7p1SZff7
 Jw10GzLIjPQPeqtdC76g7kLQm841oD9n2IbRX1gcXr2xIlropsr1VpK4IrbrjX/jHEH0 aM0g==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Thu,  8 Apr 2021 00:00:54 +0200
Message-Id: <20210407220054.9347-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: re-add source url and
 info for CU
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
Cc: Xose Vazquez Perez <xose.vazquez@gmail.com>, =?UTF-8?q?Jos=C3=A9=20Daniel=20Rodr=C3=ADguez?= <josedanielr@yandex.com>, Seth Forshee <seth.forshee@canonical.com>, WIRELESS ML <linux-wireless@vger.kernel.org>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Handy to find modifications or new rules.

Cc: José Daniel Rodríguez <josedanielr@yandex.com>
Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index b0d6689..5e72469 100644
--- a/db.txt
+++ b/db.txt
@@ -372,6 +372,9 @@ country CR: DFS-FCC
 	(5735 - 5835 @ 20), (30)
 
 # Source:
+# https://www.mincom.gob.cu/es/marco-legal
+# - Redes Informáticas
+#    Resolución 98- 2019 Reglamento de Redes Inalámbricas:
 # https://www.mincom.gob.cu/sites/default/files/marcoregulatorio/r_98-19_reglamento_redes_inalambricas.pdf
 country CU: DFS-FCC
 	(2400 - 2483.5 @ 40), (200 mW)
-- 
2.31.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
