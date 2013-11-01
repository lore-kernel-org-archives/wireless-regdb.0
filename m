Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFLF-0001Gq-QF
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:50 +0000
Received: by mail-we0-f169.google.com with SMTP id q58so4068438wes.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KNOaAjXujI7i2HEqJVbWXdQXRj1Dl8eJHRVmBHzQST8=;
 b=oGAlTvaPZYa7rTSj0Rwhyvg9GDWGEABU2YrtGuPk9vXd79o7e65d2/fB5FNoyf5TUq
 fX3fD9Pu762Gr8p5pf4xA+YQhjzV1U+xJsfh8DOfx7n6aSmHPGfW5wKDK2HLoCthyrgS
 sAlOYgtfbMo/q0Xwk9ULxisxwDfuBd7J1jZ7fUbAL7yAH+xZ8l3+UiXtOF7V4RwQ9H/v
 hpRKdvNKKoCZtdo4ACbSSAF3DQ0AFCzeiroccNVYdWIJZ5ts3JnIF3QGKGxaGGPsGMj7
 cCUPrHqZRvbSxICAAKG0VhezV24NAn/KN23J1qyfI7PbEWEuJ428uzhEx7uae9Mw9xVH 1O+Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:15 +0100
Message-Id: <1383314598-21240-21-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 20/23] wireless-regdb: update MX's
	regulatory rules
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

This:

  o increases the 2.4 GHz frequency range but with the
    compromise of reducing the max EIRP from 27 dBm to
    20 dBm

  o extends the second 5 GHz DFS frequency range

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 9158448..40a64d7 100644
--- a/db.txt
+++ b/db.txt
@@ -567,10 +567,10 @@ country MY: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 
 country MX: DFS-FCC
-	(2402 - 2472 @ 40), (27)
+	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country NL: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

