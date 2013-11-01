Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKS-00016C-E6
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:00 +0000
Received: by mail-we0-f177.google.com with SMTP id x55so3977398wes.36 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SHvn7NK7oOc3MTEXg2KarGyyEgNNa5PyAdaKc8eTtno=;
 b=Y4qbdr/6dLhwAqt+Na+h6nBWppqqJ9brL0uxDeVe/3c+BDjAid9BfA6NSCIHTEwBi5
 qGjlf6Z5rf9C+ysPHml8gDMi8zpp6kQPyn6R1FjEv4rZ5I5cajJnDaUZNXAys8uK/YC3
 WTeHHNvSQ7OmHOGmGGLFYMwLEgjarGX4LtOusrQBlF9Ruldv6+100VheyFsbZSXSxF8g
 afRdH1hfHGyduGVH0Kki+tAZ3qsnTXqgxhKO4imycPoJ3XLUWYxBZ4MvzPpIXGrqFKWH
 jcrMLDL9ZCvWdX8FgW0kGJwVClkXMuXxZJpHF3SS4rmbW3imMJxxKtA2qwUydw3FfNmN Fv8A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:02:58 +0100
Message-Id: <1383314598-21240-4-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 03/23] wireless-regdb: update KE's 5 GHz
	rules
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

  o Shrinks the existing 5 GHz band by 60 MHz
    and decreases its max EIRP from 30 dBm to
    23 dBm

  o Adds new 5 GHz frequency ranges with VHT80
    support

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 16c4865..80a394a 100644
--- a/db.txt
+++ b/db.txt
@@ -450,7 +450,9 @@ country JO: DFS-JP
 
 country KE: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (23)
+	(5490 - 5570 @ 80), (30), DFS
+	(5735 - 5775 @ 40), (23)
 
 country KH: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

