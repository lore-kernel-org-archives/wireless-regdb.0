Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFLB-0001FI-6v
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:45 +0000
Received: by mail-wg0-f48.google.com with SMTP id b13so4077720wgh.15 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hD3lqt5eF/ygeZAFc8ulC22yjkrjtmUa6uXKHNORBBU=;
 b=DKUgOTvzkdLUhvj1Nd62xmHzpBCKaLYaPMSbkkAqJ/HVotkk8glleeRfAJgLOfKY+y
 9MLnDKRyfJgwYYMdML7GsVgqRcSxJ6vc3hw3GJ+USsw5xSCuDltlPEJGv5JVyo83AHZt
 ZA502NX31SCpWfxyHpF7QjtUZyp5FSShk7J2SA50h7NO4q9oFHrosArqyf08352M+J7g
 vfprHzbpYiJUzdeMu7Keuz2r9N+/K0N8DY17Uc7n/AYAzDCjBw2EhOvSeuIclM3DKf8P
 oQN/DqpP88nPuKwOYf0M97ZjH8ci8KkGHm/vOWGq0B6PKLWlGkpEZNe23f4cB0mle1dr Jo7Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:14 +0100
Message-Id: <1383314598-21240-20-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 19/23] wireless-regdb: update KR's
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

  o enables HT40 for the 2.4 GHz frequency range
  o extends the 5 GHz DFS frequency range

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index b54ebd8..9158448 100644
--- a/db.txt
+++ b/db.txt
@@ -469,9 +469,10 @@ country KP: DFS-JP
 
 country KR: DFS-JP
 	(2402 - 2482 @ 20), (20)
+	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20)
 	(5250 - 5330 @ 80), (20), DFS
-	(5490 - 5630 @ 80), (30), DFS
+	(5490 - 5710 @ 80), (30), DFS
 	(5735 - 5815 @ 80), (30)
 
 country KW: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

