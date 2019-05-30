Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=NyJ2X3E58xJ8mTB4IyHKNKTcjfGW+354JqpVwRVlJMU=;
 b=ZYYqR9Jz7JSNWP
 9kidLWdgs7IniqwbzpUvtIB+WGXqFgzddWjpuqY7yaOkzUBrtXqoxu0barwDriDPfGbg13j+JUUlz
 PJNGLhrNBiY/TGK7c5Bkgimgl70aFVAfqJIh1gBzU3Pc75z4pI2P5QFaEaUqEjyMlc/b7offKam+e
 Oyc91ktebGw7M27jRBT04Bm0pNOheBIxIMjFFd6PZ/S3oFW8+8KUbEf40dQi16JetPj3SqTXbTvh4
 CHIUDMoWFcxb4W5oWHCucDBl+YRhPLF90Ojv+NxqO4yXkmX3XJC5lUUkr7WiqXnDcx/yf36KEANcm
 teCMLMe6BS0IMnXu7mAg==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWInm-0004iP-6B
 for wireless-regdb@lists.infradead.org; Thu, 30 May 2019 11:00:55 +0000
Received: by mail-wr1-x434.google.com with SMTP id c2so3903734wrm.8 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2019 04:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MGPVSvsyKkN6sDIhHTrpeJlzh0x/CzT2w7QlXH6Xvy0=;
 b=KiaAOaDvOsiPSwH83Hpw+7stZDBgTmT5AgqYI9ExYk2RVu3jpecfhZ2PW9wf0qGP8G
 9TltfC/MM1+heZMb9OkVRTcX7SzJuTpkldF0zgSyXiIzcEptIGN8fpZHW4QB/3GPT7h7
 mGuHJuGwfWn1VZ+mFAVDdlhqjdsfkjilKxr4CbGLUM21uhgZaO0kEsJsVqQ3GPO7CEpH
 oxEx3piaksfnb5c/zkJVvElpSesTQWVkH3oHjb445r01grjfY7WrbqYRnmLUkIayQgcG
 3T698YqHEznrelnfEBGHj7RIc0z2jV5elKZNISsPtNsL9XKIbwVatdrP4p/HKkr8GXwb L3og==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Thu, 30 May 2019 13:00:47 +0200
Message-Id: <20190530110047.3449-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update source of
 information for CU
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
index 6b65312..3bdc7c0 100644
--- a/db.txt
+++ b/db.txt
@@ -316,7 +316,7 @@ country CR: DFS-FCC
 	(5735 - 5835 @ 20), (30)
 
 # Source:
-# http://www.mincom.gob.cu/?q=marcoregulatorio
+# https://www.mincom.gob.cu/es/marco-legal
 # - Redes Informáticas
 # Resolución 127- 2011 Reglamento de Banda de frecuencias de 2,4 GHz.
 country CU: DFS-FCC
-- 
2.21.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
