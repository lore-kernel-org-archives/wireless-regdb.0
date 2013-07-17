Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOR-0006JJ-DP
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:03 +0000
Received: by mail-pb0-f47.google.com with SMTP id rr13so1336143pbb.20 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Sy4X2io+zWDeKNsoi8F4vDro+Dyy382bwceNEVyJGqs=;
 b=eQbk+JU9TYY12QbKCmYJ031XzSMEky7UKt/uYfZQ1aCsQSbZIwMaw6IBbps1aghG20
 DQOHV3Hi2Y8WhKrIRT/lBbPUcAFvj0/9Sw4GBWjC77h1jNHTPXdGdYu0/3JllBDb4BR5
 5XpKxe3F8YtiRBdfhgvwTiLFwy857JL8hoModQFbcmx1ufnijmXd+2riPRGe07Uxpny5
 L6PWrmTxQhziUxcglM2POjBlngtSufswnIijJfS2FeZU3QF+5ywstvYCyPVeLHE333FV
 3DPyrT+fsc4018vETpZSwu8HhH/7/oca7hn4G3UlhrKf0zUp4aXkz8rQFM2tUJFRTNTd 9YHQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:35 -0700
Message-Id: <1374027522-18488-47-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 46/53] wireless-regdb: MA,
	Morocco - enable 5 GHz and VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This adds 5 GHz support for Morocco with VHT80 support.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index c626a48..c76131b 100644
--- a/db.txt
+++ b/db.txt
@@ -523,6 +523,8 @@ country MC: DFS-ETSI
 
 country MA:
 	(2402 - 2482 @ 40), (N/A, 20)
+	(5170 - 5250 @ 80), (N/A, 23)
+	(5735 - 5835 @ 80), (N/A, 23)
 
 country MO:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

