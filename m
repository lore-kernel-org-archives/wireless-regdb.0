Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFN-0000Jz-QT
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:46 +0000
Received: by mail-wg0-f41.google.com with SMTP id b13so1062621wgh.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=s9vXetnEQvCBwlLIeLjLj1371K4u3oLJZIG4e9imV/g=;
 b=B6DLV9o6o6YuI0C8bb/cIRApTseZ7pOzLfR4JLYy/P2NsFgjwA07vmfAfVfaaatvho
 RuMzLRUUjIWTkSlFiCYgEhAJQ9L8lFU4eFsoC+8aCcWj4i5Je4sLh/w/EHryNxfd9Uzj
 YiLiBLyJTwiKkQesctb7y9EhxLtq1FFFQev2NAdG8CqgSQiAQjifKeTbAl4ioHssI9qm
 l1KmuVB6E1dOR3GyiiDqZLesEMMCMBRepmjtQadRJ/VKaYoyvoAkq7Lmty2jMeNS+c6i
 +Sa9kaj7f7lwIGHLa3+00pKoVvNxcDk+W6v4vQJ1IeKvsH8a4uxInt2T1Bvi6l/QPqpc W34Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:01 +0100
Message-Id: <1383314275-20960-12-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 11/65] wireless-regdb: enable VHT80 for BZ
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
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 5bdb532..51841a2 100644
--- a/db.txt
+++ b/db.txt
@@ -141,7 +141,7 @@ country BY: DFS-ETSI
 
 country BZ: DFS-JP
 	(2402 - 2482 @ 40), (30)
-	(5735 - 5835 @ 40), (30)
+	(5735 - 5835 @ 80), (30)
 
 country CA: DFS-FCC
 	(2402 - 2472 @ 40), (27)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

