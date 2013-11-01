Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFF2-0000IU-Ca
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:25 +0000
Received: by mail-wi0-f174.google.com with SMTP id cb5so1108377wib.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pk4+ieLWhR69owEdjm/vZbyLrTWcXo9KLSkkIqi8wtg=;
 b=cQFVe3nHsYkJhvzdCULD1jF6apwpq0l1ONMLki/sVOfDTxZ2qY3+gG6d0Ji4mdGeOO
 VScLmdrCqaK4/wiKkuZbNLkOeVOArok5y9K9lxlesiepi+pysuJV0lpA3QI2/hnt9hgD
 ToShwTc/Uz9rLXh1K6Ptl5cE+CtmXHugZwUXsehjqqkp4+h9uNvyzdO1zuoZrETRR8+L
 s21/PqgIImuhowREwxNUrUrf3zbyVy5CTbAwf98VC6GlvB6JlX30BwafU1VVKf/2Gxz8
 XShvR6Ay+RO35AUPAuDtAUTRjWgi5aUQ0FVQud38cAvpXaJYZ/0UPBDhEz3cCxzRgrYK 8kag==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:51 +0100
Message-Id: <1383314275-20960-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 01/65] wireless-regdb: enable HT40 for AL
	on 2.4 GHz
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
index 11e0cb8..4c22199 100644
--- a/db.txt
+++ b/db.txt
@@ -26,7 +26,7 @@ country AE: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 
 country AL: DFS-ETSI
-	(2402 - 2482 @ 20), (20)
+	(2402 - 2482 @ 40), (20)
 
 country AM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

