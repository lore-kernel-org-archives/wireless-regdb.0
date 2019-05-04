Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=0FPyjp+3cr+86pp1ZHUAAi/31R+TszZrL5Kf5VnmZX4=;
 b=SVXAv4elWiykZJ
 73QGlnMOu8A2MHV/Jh8QIn9jLPGe9ne8KTLeNxA/a073rMVFYq6b3eJqwCXHguNvrYU09vAT/5oWm
 4A4JSPOV5IefoU7A9Jwby33TJMuOhBF5G2ETLZVpGyGlcjUlA8uKg1v+Hw6OQMfaGaE0ikpmESSpz
 3krhBF3JDqFOLNgzOJP5iO8u2HaYlisRhf3BnquGFjofolO03+tkWZET9qjhrLpf5q+JvLji33WoW
 jWUFtQu3l/pebJxsWjmJBHYGd02761m9l2OBwITQD0mz1MgQEhTMGNX5SvRYgrkxLeW2z4Oeco8GI
 9KvWRcF0N7/SNsD3khKA==;
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN0Aw-0003pE-Do
 for wireless-regdb@lists.infradead.org; Sat, 04 May 2019 19:18:24 +0000
Received: by mail-wm1-x32c.google.com with SMTP id t76so10953604wmt.1 for
 <wireless-regdb@lists.infradead.org>; Sat, 04 May 2019 12:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HI5w6ujO6T0yJN9Qynb2wYlJVmzdy1Uxf1JSDTX/jJE=;
 b=QsMLywWmFfZHolAXf9gVDS/QpKgOOj5xasXqGL6ErgqJWOObr6XfOPH9HDtJsl6V5I
 sgROGd577LJLCSfyPe2ldUsyt7bmMTt8npw1bi85jmbOAQYy+uwXwSHPBq2LFAb1Giiu
 iXFlfbmxuPhWvX21x2NR1FzADh2b2vLIEdQptP8p0arghFZO29RcAs0FLOpPAwdsemlj
 kzIoJr5PY7aFUrQRUuzGJuYU5j91vYzDVopupEEa3zeb47EEstXfoUvNgBnF6mHJons+
 rhaUK8sJt3oO+BKwD5OaXwxuDnDREUVwXbqtCt/usTlVKOyp/xugwvD+xlbaVWbjLNg9 qz4Q==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Sat,  4 May 2019 21:18:17 +0200
Message-Id: <20190504191817.3668-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update source of
 information for ES
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
index 4fb1948..fe909a8 100644
--- a/db.txt
+++ b/db.txt
@@ -432,7 +432,7 @@ country EG: DFS-ETSI
 
 # Source:
 # Cuadro nacional de atribución de frecuencias (CNAF)
-# http://www.mincotur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx
+# https://avancedigital.gob.es/espectro/Paginas/cnaf.aspx
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-- 
2.21.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
