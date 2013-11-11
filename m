Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfxLP-0002ne-4J
 for wireless-regdb@lists.infradead.org; Mon, 11 Nov 2013 19:40:20 +0000
Received: by mail-bk0-f51.google.com with SMTP id my12so1894971bkb.10 for
 <wireless-regdb@lists.infradead.org>; Mon, 11 Nov 2013 11:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20120113;
 h=from:to:cc:subject:date:message-id:user-agent:mime-version
 :content-transfer-encoding:content-type;
 bh=wiVOs3/kacxywAJJ2tde/4wFB8aXbc5wYAWpuMlwxJ8=;
 b=MDYNTE52jERh71Y6Obqi5Ebg3WvsprLIUhNYAbHlJP51f3DjiGW14tElOFXWjWn5dc
 7GxJhpPuwz1MmqeBEJODpQbTwaV0wr2opE2MvXVd80GOzkNxIpBR06I4TRVNWrksrm2Q
 YNFBzjxlAN2nsGrEsPIK3SOIl6xUi0/D7pVk07M4yOI1Oc+WQ8mXu4UGfi616+JUFtrI
 zZ9oA7iVo9Lqx0YyxMTo3VwKsl7igmzgENz1ZjGl6TKfO8iNydnqt7wTwZFqblOrAeDB
 V2o075yaF/aSdPZBk+zM7/AcLKUwxV5FgQqmPys0PV8noxyM+pag2TLTzNOic/Nrjfhx
 1Igw==
From: Christian Lamparter <chunkeey@googlemail.com>
Date: Mon, 11 Nov 2013 20:39:50 +0100
Message-ID: <2765421.8z1iAPSgk6@blech>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] reglib: fix memset usage
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, mcgrof@do-not-panic.com
List-ID: <wireless-regdb@lists.infradead.org>

gcc-4.8 fails to compile reglib due to:

reglib.c:1133:22: error: argument to ‘sizeof’ in ‘memset’ call is
			 the same expression as the destination; did you mean
			 to dereference it? [-Werror=sizeof-pointer-memaccess]
  memset(rd, 0, sizeof(rd));
                      ^
reglib.c:1155:22: error: argument to ‘sizeof’ in... (same as above)

Signed-off-by: Christian Lamparter <chunkeey@googlemail.com>
---
 reglib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/reglib.c b/reglib.c
index 9577ada..1e57634 100644
--- a/reglib.c
+++ b/reglib.c
@@ -1127,7 +1127,7 @@ reglib_parse_country_simple(char *line, struct ieee80211_regdomain *rd)
 	char alpha2[2];
 	int hits;
 
-	memset(rd, 0, sizeof(rd));
+	memset(rd, 0, sizeof(*rd));
 	memset(alpha2, 0, sizeof(alpha2));
 	memset(dfs_region_alpha, 0, sizeof(dfs_region_alpha));
 
@@ -1149,7 +1149,7 @@ static int reglib_parse_country_dfs(char *line, struct ieee80211_regdomain *rd)
 	char alpha2[2];
 	int hits;
 
-	memset(rd, 0, sizeof(rd));
+	memset(rd, 0, sizeof(*rd));
 	memset(alpha2, 0, sizeof(alpha2));
 	memset(dfs_region_alpha, 0, sizeof(dfs_region_alpha));
 
-- 
1.8.4.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
