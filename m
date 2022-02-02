Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=+5Gvo22u9XE8wzh89PJ+FU2q8YFa5TBYe0IaeVSXhTA=;
 b=hXPq5ei1XCg2Iw
 t6O71J3LMwP95QGP7DVa9qxYEtSgh8a+ErXCnWKenbfPQ71o4YVkGWmzrTwnZ0/K0gxHgB8NjZgYQ
 dIF1Q6JNbZhNxbi8oZCBVbqLLSXObw2DM2u7N2A3cp37UD7tT4vN4p9ovqQOeTDHqZzvwW0S+si/b
 B43CwuW+F8pJfphI2WaSX4T3kV5WRVIHQCv2E8rpwgQybI6wMvftG2pcFwIZkTzaE3TIIMNdnd7ba
 cd1BQi0zMOR2nw956dCuk4rr3jcR2Ssd9YIiKtIJZZDYJ7Uevo3o0mIBIv4qizecpGGspXWo/XT19
 m3kP1dF1fJpUCR4rl4jg==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFOTp-00H2qA-Do
 for wireless-regdb@lists.infradead.org; Wed, 02 Feb 2022 22:52:03 +0000
Received: by mail-wr1-x42a.google.com with SMTP id h7so1333139wrc.5 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 Feb 2022 14:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Y1jPAyL1xOFLM7YyaPmwDCktPz/RiDJpfcKX/6shOE=;
 b=MzLQPo1bVMe7ZXHrz7gLw7NxC2q8exlBDDXekuoVgoAOZhZJff7f5Az/hi/+MYsnEK
 MRZXzREFPYyidN8sxxvnsaCKK1t5389Odl+Q672ewsl1rn+NIvqJCjLgZTwdVb5u5Lvd
 8OhsDBHADg46uQFKUO4Ty3B08Jrne3/TkNOvBSeHS+93TVrBfte6mFccov2XPaUNyRRe
 gL88CxDEEIG1lgVbbb7k0RPQQ4ejaW9I3aRC0Nf+1tZ6IDx+IciUf7EE/vm0QRWdGPXP
 +cIO+krxjWYSSeS/WvzYxHm6816D7ie0DTEkxktyuOgbvce3C+Qb6zgPo/9Brse8J73m SXlA==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Wed,  2 Feb 2022 23:51:57 +0100
Message-Id: <20220202225157.91989-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Spain (ES) on 6GHz
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
Cc: Xose Vazquez Perez <xose.vazquez@gmail.com>, Seth Forshee <sforshee@kernel.org>, WIRELESS ML <linux-wireless@vger.kernel.org>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Add WiFi 6E frequency band.

Sources:
(EU) 2021/1067: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32021D1067
BOE numero 308, de 24/12/202: Orden ETD/1449/2021: CNAF-2021 (page 302): https://www.boe.es/buscar/pdf/2021/BOE-A-2021-21346-consolidado.pdf

UN-167 RLANs en 6 GHz

Aplicaciones de uso común en la banda de 5945-6425 MHz.

De conformidad con la Decisión de Ejecución (UE) 2021/1067 de la Comisión, sobre el uso
armonizado de la banda 5945-6425 MHz para sistemas de acceso inalámbrico, incluidas las
redes de área local (WAS/RLAN), se permiten estas aplicaciones en la citada banda de
frecuencias bajo la consideración de uso común con arreglo a las condiciones técnicas
indicadas en el anexo a la citada Decisión.

Los dispositivos de baja potencia para uso en interiores (LPI), tendrán una potencia máxima
de 23 dBm (p.i.r.e.), con una densidad de potencia p.i.r.e. media máxima de 10 dBm/MHz
para las emisiones en banda y de -22 dBm/MHz para emisiones fuera de banda.

Los dispositivos de muy baja potencia para uso en interiores y en exteriores (VLP), tendrán
una potencia máxima de 14 dBm (p.i.r.e.), con una densidad de potencia p.i.r.e. media
máxima de 1 dBm/MHz para emisiones en banda, o hasta 10 dBm/MHz si funcionan con
canalización que no supere los 20 MHz, y de -45 dBm/MHz para emisiones fuera de banda.

En cualquier caso, estos dispositivos deberán utilizar técnicas de acceso al espectro y
mitigación de interferencias que garanticen los requisitos esenciales de la Directiva
2014/53/UE.

Cc: Seth Forshee <sforshee@kernel.org>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index 6dbda3c..5e41f7d 100644
--- a/db.txt
+++ b/db.txt
@@ -549,6 +549,8 @@ country ES: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
