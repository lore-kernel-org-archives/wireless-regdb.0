Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x236.google.com ([2607:f8b0:400e:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY6x-0003HJ-Cp
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:13:27 +0000
Received: by mail-pb0-f54.google.com with SMTP id ro2so668442pbb.41 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=UeT/V/WE5ZG5+Fq1JYUzi0pJ6Mmj9+lLgQEc2tch95g=;
 b=SRaNMzy/Rjqfgw+5bksx6iMbx5Xoe9iuN5EaICGwVXqX0cUUYbJ8kwSpNDEzU/1mSn
 A4RDRlE8dJgXIMZX2xdUlQR9l+/xf73D4aP7W29YNSwkRrtTiyvsS3mW0dwN184YvsCo
 2AKnEBZfVB1H07ZyPAjVep1rwuU2Hn4kDZzVqEK/9Bc5w1qK65/RloHiS79MsyxSktyM
 LlXyhuefILeTjDCgrmU12A0j3vj42rDxxq4JC8JK7GLgqPd5ungd98yfWqQn7WFfhTFG
 XZXKX9mCThXkNkzXwL04aG7h42hBlCyyZ8bmkUJwIacMtNj81bPBIcDPUudBUEPOgXEz lujw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:07 -0700
Message-Id: <1372899889-19183-12-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 11/53] wireless-regdb: PH,
	Philippines - enable VHT80
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

This enables 80 MHz bandwidth usage the existing only
5 GHz band but also adds 3 other new 5 GHz bands with
80 MHz bandwidth support.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 00e5993..c37c3d6 100644
--- a/db.txt
+++ b/db.txt
@@ -610,7 +610,10 @@ country PG:
 
 country PH:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 40), (N/A, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country PK:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

