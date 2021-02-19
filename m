Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
 :List-Id:Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=vAIYxfazd3t/WgNSOkal035f7NBB2MGJtJW9FbUFHeg=;
 b=234xOYVeJyGhwuhjGTKttlkipd
 QkYtx8cSnE+yLSyhHCZOsiotV1CE7U9qA8aKyA+cGuROS2JBtzVlfAuoR3eR44TYyezeon4VY1y85
 PCYIfZaNI8ew1Lza6QThbmdV+ZjorU7LSL1uGrGSIYREl3rIMoIu/y1ylIlFGy1Mb5Ry8cExFeZs+
 qPaZrKoOp8A9NZjasBFAlmJE46WsqHEgvfDatvMl60+XGSgigHZDaWjoomaM6kSshAm6LNCL4bN2H
 8p/n5TRJjvXB57MWJ/4qDhnaNo85aeHQy7zopLYCIIPHNa60Ku3QwB7gEt34wp7DVd8JUX0dh+4TJ
 9g2PwGFg==;
Received: from forward106p.mail.yandex.net
 ([2a02:6b8:0:1472:2741:0:8b7:109]) by merlin.infradead.org with esmtps
 (Exim 4.92.3 #3 (Red Hat Linux)) id 1lCwE0-0007Jf-Ui for
 wireless-regdb@lists.infradead.org; Fri, 19 Feb 2021 03:13:03 +0000
Received: from sas1-c5718652e2f2.qloud-c.yandex.net
 (sas1-c5718652e2f2.qloud-c.yandex.net
 [IPv6:2a02:6b8:c14:496:0:640:c571:8652]) by forward106p.mail.yandex.net
 (Yandex) with ESMTP id D252D1C8168D for
 <wireless-regdb@lists.infradead.org>; Fri, 19 Feb 2021 06:12:52 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
 t=1613704372; bh=WpI49cq3KXWxkE3cKJd2Yz5H+aFZFynso8njsUWlxNU=;
 h=Subject:Date:References:To:From:Message-ID:In-Reply-To;
 b=rwVaZD+Bl0bws+wKw9AN53BRO+wBtnSJus3xRx8W/SL3evXhqFHBH1vkpIfmwkC38
 t9Xe+FJ/9qWvHmXqDvzmYms8xDnyfvtN6pIQWwPZimMpbQSE90PnYz/C8aF80OJPQ9
 jxSdu/Cd7qvluAIkUqjOkHP0yy+t9I8sZ+6B6s8E=
From: "Jose Daniel Rodriguez" <josedanielr@yandex.com>
References: 
In-Reply-To: 
Date: Thu, 18 Feb 2021 22:12:45 -0500
Message-ID: <002501d7066d$1a51cf50$4ef56df0$@yandex.com>
MIME-Version: 1.0
Content-Language: es
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for Cuba
 (CU) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello

I'm sending this patch to update wireless regulations of Cuba based on the
linked resolution of the Ministry of Communications from 2019.

Best,
Jose D.


PS: The linux-wireless mailing list rejects my messages, it says: "Your
address is not liked source for email".


---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 32d71f5..e6e26ce 100644
--- a/db.txt
+++ b/db.txt
@@ -372,11 +372,12 @@ country CR: DFS-FCC
 	(5735 - 5835 @ 20), (30)
=20
 # Source:
-# https://www.mincom.gob.cu/es/marco-legal
-# - Redes Inform=E1ticas
-# Resoluci=F3n 127- 2011 Reglamento de Banda de frecuencias de 2,4 GHz.
+#
https://www.mincom.gob.cu/sites/default/files/marcoregulatorio/r_98-19_regla
mento_redes_inalambricas.pdf
 country CU: DFS-FCC
 	(2400 - 2483.5 @ 40), (200 mW)
+	(5150 - 5350 @ 80), (200 mW), NO-IR, NO-OUTDOOR
+	(5470 - 5725 @ 80), (200 mW), NO-IR
+	(5725 - 5850 @ 80), (200 mW)
=20
 country CX: DFS-FCC
 	(2402 - 2482 @ 40), (20)
--=20
2.26.0.windows.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

